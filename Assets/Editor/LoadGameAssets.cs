using Assets.AudioManager;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using Newtonsoft.Json;
using UnityEditor;
using UnityEngine;
using Assets.SpriteManager;
using Debug = UnityEngine.Debug;
using UnityEngine.TextCore.Text;

public class LoadGameAssets
{
	[MenuItem("DELTARUNITY/Import Game Assets")]
	public static void LoadGameassets()
	{
		var winPath = EditorUtility.OpenFilePanel("Select data.win", "", "win");
		var deltarunityFolder = Path.GetDirectoryName(Application.dataPath);
		var exe = Path.Combine(deltarunityFolder, $"DeltaruneExporter/bin/Debug/net6.0/DeltaruneExporter.exe");
		var outputDir = Path.Combine(Application.dataPath, ".TempExportDir");
		if (!Directory.Exists(outputDir)) { Directory.CreateDirectory(outputDir); }
		var process = Process.Start(exe, $"\"{winPath}\" \"{outputDir}\"");
		process.WaitForExit();

		// copy sounds
		var soundsFolder = Path.Combine(outputDir, "Sounds");
		var soundsDi = new DirectoryInfo(soundsFolder);
		var destSoundsFolder = Path.Combine(Application.dataPath, "Sounds");
		if (!Directory.Exists(destSoundsFolder)) { Directory.CreateDirectory(destSoundsFolder); }

		var audioDatabase = AssetDatabase.LoadAssetAtPath<AudioDatabase>("Assets/ScriptableObjects/AudioDatabase.asset");
		audioDatabase.SoundClips.Clear();

		foreach (var sound in soundsDi.GetFiles())
		{
			var destFile = Path.Combine(destSoundsFolder, sound.Name);
			var unityDestFile = $"Assets/Sounds/{sound.Name}";
			File.Copy(sound.FullName, destFile);
			AssetDatabase.ImportAsset(unityDestFile);
			
			var audioClip = AssetDatabase.LoadAssetAtPath<AudioClip>(unityDestFile);
			audioDatabase.SoundClips.Add(audioClip);

		}

		EditorUtility.SetDirty(audioDatabase);
		AssetDatabase.Refresh();
		AssetDatabase.SaveAssets();

		// copy sprites
		var spritesFolder = Path.Combine(outputDir, "Sprites");
		var spriteDi = new DirectoryInfo(spritesFolder);
		var destSpritesFolder = Path.Combine(Application.dataPath, "Sprites");
		if (!Directory.Exists(destSpritesFolder)) { Directory.CreateDirectory(destSpritesFolder); }
		var database = AssetDatabase.LoadAssetAtPath<CustomSpriteLibrary>("Assets/ScriptableObjects/SpriteDatabase.asset");
		database.Sprites.Clear();

		foreach (var spriteFolder in spriteDi.GetDirectories())
		{
			var dataFile = Path.Combine(spriteFolder.FullName, "data.json");

			if (!File.Exists(dataFile))
			{
				continue;
			}

			var spriteData = JsonConvert.DeserializeObject<SpriteData>(File.ReadAllText(dataFile));
			var asset = ScriptableObject.CreateInstance<SpriteSubLibrary>();

			asset.BoundingBoxMode = (Assets.CollisionManager.BoundingBoxMode)spriteData.boundingBoxMode;
			asset.SepMasks = (Assets.CollisionManager.SepMasks)spriteData.sepMasks;
			asset.Origin = new Vector2Int(spriteData.originX, spriteData.originY);
			asset.PlaybackSpeed = (int)spriteData.animationSpeed;
			asset.PlaybackSpeedType = (PlaybackSpeedType)spriteData.animationType;
			asset.Margins = new Vector4(spriteData.marginLeft, spriteData.marginRight + 1, spriteData.marginBottom + 1, spriteData.marginTop);
			asset.SubImages = new List<Texture2D>();
			asset.CollisionMasks = new List<Texture2D>();

			var spriteDir = Path.Combine(destSpritesFolder, spriteData.name);
			if (!Directory.Exists(spriteDir))
			{
				Directory.CreateDirectory(spriteDir);
			}

			foreach (var subtexture in spriteFolder.GetFiles("*.png"))
			{
				var destFile = Path.Combine(spriteDir, subtexture.Name);
				var unityDestFile = $"Assets/Sprites/{spriteData.name}/{subtexture.Name}";
				File.Copy(subtexture.FullName, destFile);
				AssetDatabase.ImportAsset(unityDestFile);
				//var texture = AssetDatabase.LoadAssetAtPath<Texture2D>(unityDestFile);
				//asset.SubImages.Add(texture);
			}

			var maskDir = Path.Combine(spriteDir, "Masks");
			if (!Directory.Exists(maskDir))
			{
				Directory.CreateDirectory(maskDir);
			}

			foreach (var maskFile in spriteFolder.GetDirectories("masks")[0].GetFiles())
			{
				var unityDestFile = $"Assets/Sprites/{spriteData.name}/Masks/{maskFile.Name}";
				File.Copy(maskFile.FullName, Path.Combine(maskDir, maskFile.Name));
				AssetDatabase.ImportAsset(unityDestFile);
				//var texture = AssetDatabase.LoadAssetAtPath<Texture2D>(unityDestFile);
				//asset.CollisionMasks.Add(texture); 
			}

			var destAssetPath = $"Assets/Sprites/{spriteData.name}/{spriteData.name}.asset";
			AssetDatabase.CreateAsset(asset, destAssetPath);

			database.Sprites.Add(asset);
		}

		EditorUtility.SetDirty(database);
		AssetDatabase.SaveAssets();
		AssetDatabase.Refresh();

		RegenerateSpriteAssets();
	}

	[MenuItem("DELTARUNITY/Regenerate Sprite Assets")]
	public static void RegenerateSpriteAssets()
	{
		var assetGUIDs = AssetDatabase.FindAssets("t:SpriteSubLibrary");
		foreach (var guid in assetGUIDs)
		{
			var assetPath = AssetDatabase.GUIDToAssetPath(guid);
			var asset = AssetDatabase.LoadAssetAtPath<SpriteSubLibrary>(assetPath);
			asset.SubImages = new List<Texture2D>();
			asset.CollisionMasks = new List<Texture2D>();
			asset.CollisionMaskPreloads = new List<CollisionMaskPreload>();

			var assetFolderDi = new DirectoryInfo(Path.GetDirectoryName(assetPath));

			var subimageTexturesFiles = assetFolderDi.GetFiles("*.png");
			var textures = subimageTexturesFiles.Select(x =>
			{
				var path = $@"Assets\{x.FullName.Replace('\\', '/').Replace(Application.dataPath, "")}";
				return AssetDatabase.LoadAssetAtPath<Texture2D>(path);
			}).ToArray();
			Array.Sort(textures.Select(x => int.Parse(x.name[(x.name.LastIndexOf('_') + 1)..])).ToArray(), textures);
			asset.SubImages = textures.ToList();

			var directories = assetFolderDi.GetDirectories("masks");
			if (directories.Length == 0)
			{
				EditorUtility.SetDirty(asset);
				continue;
			}

			var maskTexturesFiles = assetFolderDi.GetDirectories("masks")[0].GetFiles("*.png");
			var masks = maskTexturesFiles.Select(x =>
			{
				var path = $@"Assets\{x.FullName.Replace('\\', '/').Replace(Application.dataPath, "")}";
				return AssetDatabase.LoadAssetAtPath<Texture2D>(path);
			}).ToArray();
			Array.Sort(masks.Select(x => int.Parse(x.name[(x.name.LastIndexOf('_') + 1)..])).ToArray(), masks);
			asset.CollisionMasks = masks.ToList();

			// preload collision masks
			foreach (var collisionMask in asset.CollisionMasks)
			{
				var preload = new CollisionMaskPreload();

				var pixels = collisionMask.GetPixels();
				var pixelsAsBool = pixels.Select(x => x == Color.white).ToArray();

				preload.Width = collisionMask.width;
				preload.Height = collisionMask.height;
				preload.Data = new bool[collisionMask.width * collisionMask.height];

				var index = 0;
				for (var i = (collisionMask.height - 1); i >= 0; i--)
				{
					for (var j = 0; j < collisionMask.width; j++)
					{
						preload.Data[(i * collisionMask.width) + j] = pixelsAsBool[index];
						index++;
					}
				}

				asset.CollisionMaskPreloads.Add(preload);
			}

			EditorUtility.SetDirty(asset);
		}

		AssetDatabase.SaveAssets();
		AssetDatabase.Refresh();
	}

	[Serializable]
	public class SpriteData
	{
		public string name;
		public int boundingBoxMode;
		public int sepMasks;
		public int originX;
		public int originY;
		public float animationSpeed;
		public int animationType;
		public int marginLeft;
		public int marginRight;
		public int marginTop;
		public int marginBottom;
	}
}