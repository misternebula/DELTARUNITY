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
			asset.Origin = new Vector2(spriteData.originX, spriteData.originY);
			asset.PlaybackSpeed = (int)spriteData.animationSpeed;
			asset.PlaybackSpeedType = (PlaybackSpeedType)spriteData.animationType;
			asset.Margins = new Vector4(spriteData.marginLeft, spriteData.marginRight + 1, spriteData.marginBottom + 1, spriteData.marginTop);
			asset.SubImages = new List<Texture2D>();

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
				var texture = AssetDatabase.LoadAssetAtPath<Texture2D>(unityDestFile);
				asset.SubImages.Add(texture);
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
				var texture = AssetDatabase.LoadAssetAtPath<Texture2D>(unityDestFile);
				asset.CollisionMask = texture; 
				// note - this means that sprites with multiple collision masks will only use the last one.
				// need to rewrite the collision handlers to account for multiple masks... ughhhhhhh
			}

			var destAssetPath = $"Assets/Sprites/{spriteData.name}/{spriteData.name}.asset";
			AssetDatabase.CreateAsset(asset, destAssetPath);

			database.Sprites.Add(asset);
		}

		EditorUtility.SetDirty(database);
		AssetDatabase.SaveAssets();
		AssetDatabase.Refresh();

		PopulateCollisionMasks();
	}

	[MenuItem("DELTARUNITY/Generate Collision Masks")]
	public static void PopulateCollisionMasks()
	{
		var assetGUIDs = AssetDatabase.FindAssets("t:SpriteSubLibrary");
		foreach (var guid in assetGUIDs)
		{
			var assetPath = AssetDatabase.GUIDToAssetPath(guid);
			var asset = AssetDatabase.LoadAssetAtPath<SpriteSubLibrary>(assetPath);

			if (asset.CollisionMask == null)
			{
				continue;
			}

			asset.CollisionMaskPreload = new CollisionMaskPreload();

			var pixels = asset.CollisionMask.GetPixels();
			var pixelsAsBool = pixels.Select(x => x == Color.white).ToArray();

			asset.CollisionMaskPreload.Width = asset.CollisionMask.width;
			asset.CollisionMaskPreload.Height = asset.CollisionMask.height;
			asset.CollisionMaskPreload.Data = new bool[asset.CollisionMask.width * asset.CollisionMask.height];

			var index = 0;
			for (var i = (asset.CollisionMask.height - 1); i >= 0; i--)
			{
				for (var j = 0; j < asset.CollisionMask.width; j++)
				{
					asset.CollisionMaskPreload.Data[(i * asset.CollisionMask.width) + j] = pixelsAsBool[index];
					index++;
				}
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