using Assets.SpriteManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEditor;
using UnityEngine;

namespace Assets
{
	public class GMTile : DrawWithDepth
	{
		public string Definition;
		public Vector4 Source;
		public double Alpha = 1;

		private int left => (int)Source.x;
		private int top => (int)Source.y;
		private int width => (int)Source.z;
		private int height => (int)Source.w;

		private Texture2D _gizmoTexture;
		private string _prevSprite;
		private int _holdWidth;
		private int _holdHeight;

		public override void Draw()
		{
			if (!gameObject.activeInHierarchy)
			{
				return;
			}

			if (_prevSprite != Definition)
			{
				_prevSprite = Definition;
				var sprite = SpriteManager.SpriteManager.GetSprite(Definition, 0);
				_holdWidth = sprite.width;
				_holdHeight = sprite.height;
			}

			var useWidth = Math.Min(width, _holdWidth);
			var useHeight = Math.Min(height, _holdHeight);

			SpriteManager.SpriteManager.DrawSpritePartExt(Definition, 0, left, top, useWidth, useHeight, transform.position.x, -transform.position.y, 1, 1, 16777215, Alpha);
		}

		private void Awake()
		{
			DrawManager.Register(this);
		}

		private void OnDestroy()
		{
			DrawManager.Unregister(this);
		}

#if UNITY_EDITOR
		public void OnValidate()
		{
			var database = AssetDatabase.LoadAssetAtPath<CustomSpriteLibrary>("Assets/ScriptableObjects/SpriteDatabase.asset");
			var spriteAsset = database.Sprites.FirstOrDefault(x => x.name == Definition);

			if (spriteAsset == null)
			{
				return;
			}

			var baseSprite = spriteAsset.SubImages[0];
			var useWidth = Math.Min(width, baseSprite.width);
			var useHeight = Math.Min(height, baseSprite.height);
			_gizmoTexture = new Texture2D(useWidth, useHeight, TextureFormat.RGBA32, false);
			var readPixels = baseSprite.GetPixels(left, baseSprite.height - top - useHeight, useWidth, useHeight);
			_gizmoTexture.SetPixels(0, 0, useWidth, useHeight, readPixels);
			_gizmoTexture.filterMode = FilterMode.Point;
			_gizmoTexture.Apply();
		}
#endif
		private void OnDrawGizmos()
		{
			if (_gizmoTexture != null && !Application.isPlaying)
			{
				Gizmos.DrawGUITexture(new Rect(transform.position.x, transform.position.y, width, -height), _gizmoTexture);
			}
		}
	}
}
