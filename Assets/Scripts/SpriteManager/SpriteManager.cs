using System;
using System.Collections.Generic;
using System.Linq;
using Assets.Scripts;
using Assets.VirtualMachineRunner;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;
using UnityEngine.UIElements;

namespace Assets.SpriteManager
{
	public class SpriteManager : MonoBehaviour
	{
		public static SpriteManager Instance { get; private set; }

		public CustomSpriteLibrary Asset;
		public Material TextColorMaterial;

		public static int DrawColor = 16777215;
		public static double DrawAlpha = 1;
		public static int FogColor = 0;
		public static bool FogEnabled = false;

		private static Dictionary<int, SpriteSubLibrary> _spriteDict = null;
		private static CustomSpriteLibrary _asset;

		private void OnValidate()
		{
			_asset = Asset;
		}

		private void Awake()
		{
			Instance = this;
			_asset = Asset;
			DontDestroyOnLoad(this);
			_spriteDict = new();
			foreach (var subLibrary in Asset.Sprites)
			{

				_spriteDict.Add(subLibrary.AssetIndex, subLibrary);
			}

		}

		public static void GenerateDictionary()
		{
			_asset = FindObjectOfType<SpriteManager>().Asset;
			_spriteDict = new Dictionary<int, SpriteSubLibrary>();
			foreach (var subLibrary in _asset.Sprites)
			{
				_spriteDict.Add(subLibrary.AssetIndex, subLibrary);
			}
		}

		public static Texture2D GetSprite(string name, double index)
		{
			return GetSprite(AssetIndexManager.Instance.GetIndex(name), index);
		}

		public static Texture2D GetSprite(int name, double index)
		{
#if UNITY_EDITOR
			if (!Application.isPlaying)
			{
				var spriteDatabase = AssetDatabase.LoadAssetAtPath<CustomSpriteLibrary>("Assets/ScriptableObjects/SpriteDatabase.asset");
				var sprite = spriteDatabase.Sprites.FirstOrDefault(x => x.AssetIndex == name);

				return sprite == null ? null : sprite.SubImages[Mathf.FloorToInt((float)index)];
			}
#endif
			var subimages = _spriteDict[name].SubImages;
			index %= subimages.Count;
			return subimages[Mathf.FloorToInt((float)index)];
		}

		public static int GetNumberOfFrames(int name)
		{
			return _spriteDict[name].SubImages.Count;
		}

		public static Vector2Int GetSpriteOrigin(int name)
		{
			if (!Application.isPlaying)
			{
#if UNITY_EDITOR
				var spriteDatabase = AssetDatabase.LoadAssetAtPath<CustomSpriteLibrary>("Assets/ScriptableObjects/SpriteDatabase.asset");
				var sprite = spriteDatabase.Sprites.FirstOrDefault(x => x.AssetIndex == name);

				return sprite == null ? Vector2Int.zero : sprite.Origin;
#endif
			}

			return _spriteDict[name].Origin;
		}

		public static void DrawSelf(NewGamemakerObject obj)
		{
			if (!obj.visible || obj.sprite_index == -1)
			{
				return;
			}

			DrawSpriteExt(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.image_xscale, obj.image_yscale, obj.image_angle, obj.image_blend, obj.image_alpha);
		}

		public static void DrawSprite(int name, double index, double x, double y)
			=> DrawSpriteExt(name, index, x, y, 1, 1, 0, 16777215, 1);

		public static void DrawSpriteExt(int name, double index, double x, double y, double xscale, double yscale, double rot, int blend, double alpha)
		{
			var sprite = GetSprite(name, index);
			var origin = GetSpriteOrigin(name);

			GamemakerCamera.RenderJobs.Add(new GMSpriteJob()
			{
				texture = sprite,
				screenPos = new Vector2((float)x, (float)y),
				angle = rot,
				scale = new Vector2((float)xscale, (float)yscale),
				blend = blend.BGRToColor(),
				alpha = alpha,
				origin = origin,
				fogEnabled = FogEnabled,
				fogColor = FogColor.BGRToColor()
			});

			//DrawSpriteExt(sprite, x, y, xscale, yscale, rot, blend, alpha);
		}

		/*public static void DrawSpriteExt(Texture2D sprite, float x, float y, float xscale, float yscale, float rot, Color blend, float alpha)
		{
			GamemakerCamera.RenderJobs.Add(new GMSpriteJob()
			{ 
				texture = sprite,
				screenPos = new Vector2(x, y),
				angle = rot,
				scale = new Vector2(xscale, yscale),
				blend = blend,
				alpha = alpha
			});
		}*/

		public static Sprite CreateSpriteFromScreen(Vector2 pivot)
		{
			var camera = Camera.main;
			var renderTexture = new RenderTexture(camera.pixelWidth, camera.pixelHeight, 24);
			camera.targetTexture = renderTexture;
			var texture = new Texture2D(camera.pixelWidth, camera.pixelHeight, TextureFormat.RGBA32, false);
			var rect = new Rect(0, 0, camera.pixelWidth, camera.pixelHeight);

			camera.Render();

			var currentRenderTexture = RenderTexture.active;
			RenderTexture.active = renderTexture;
			texture.ReadPixels(rect, 0, 0);
			texture.Apply();

			camera.targetTexture = null;
			RenderTexture.active = currentRenderTexture;
			Destroy(renderTexture);

			return Sprite.Create(texture, rect, pivot, 1);
		}

		/*private static Texture2D SpritePart(string name, int index, int left, int top, int width, int height)
		{
			var baseSprite = GetSprite(name, index);
			var destTexture = new Texture2D(width, height, TextureFormat.RGBA32, false);

			width = Math.Min(width, baseSprite.width);
			height = Math.Min(height, baseSprite.height);

			var readPixels = baseSprite.GetPixels(left, baseSprite.height - top - height, width, height);
			destTexture.SetPixels(0, 0, width, height, readPixels);
			destTexture.filterMode = FilterMode.Point;
			destTexture.Apply();

			return destTexture;
		}*/

		public static void DrawSpritePart(int name, int index, int left, int top, int width, int height, double x, double y)
		{
			DrawSpritePartExt(name, index, left, top, width, height, x, y, 1, 1, 16777215, 1);
		}

		public static void DrawSpritePartExt(string name, double index, int left, int top, int width, int height, double x, double y, double xscale, double yscale, int blend, double alpha)
		{
			DrawSpritePartExt(AssetIndexManager.Instance.GetIndex(name), index, left, top, width, height, x, y, xscale, yscale, blend, alpha);
		}

		public static void DrawSpritePartExt(int name, double index, int left, int top, int width, int height, double x, double y, double xscale, double yscale, int blend, double alpha) 
		{
			//var sprite = SpritePart(name, index, left, top, width, height);
			var sprite = GetSprite(name, index);
			GamemakerCamera.RenderJobs.Add(new GMSpritePartJob()
			{
				texture = sprite,
				screenPos = new Vector2((float)x, (float)y),
				angle = 0,
				scale = new Vector2((float)xscale, (float)yscale),
				blend = blend.BGRToColor(),
				alpha = alpha,
				origin = Vector2.zero,
				left = left,
				top = top,
				width = width,
				height = height
			});
		}

		public static SpriteSubLibrary GetSpriteAsset(int name)
		{
			if (name == -1)
			{
				return null;
			}

			if (_spriteDict == null)
			{
				_spriteDict = new Dictionary<int, SpriteSubLibrary>();
				foreach (var subLibrary in _asset.Sprites)
				{
					_spriteDict.Add(subLibrary.AssetIndex, subLibrary);
				}
			}

			if (_spriteDict.ContainsKey(name))
			{
				return _spriteDict[name];
			}

			Debug.LogError($"Sprite Dictionary does not contain {name}");
			return null;
		}

		public static void draw_sprite_stretched(int name, int index, double x, double y, double w, double h)
		{
			var sprite = GetSprite(name, index);

			var spriteWidth = sprite.width;
			var spriteHeight = sprite.height;

			GamemakerCamera.RenderJobs.Add(new GMSpriteJob()
			{
				texture = sprite,
				screenPos = new Vector2((float)x, (float)y),
				angle = 0,
				scale = new Vector2((float)w / spriteWidth, (float)h / spriteHeight),
				blend = Color.white,
				alpha = 1,
				origin = Vector2.zero
			});

			//DrawSpriteExt(sprite, x, y, w / spriteWidth, h / spriteHeight, 0, Color.white, 1);
		}
	}
}
