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

		public override void Draw()
		{
			if (!gameObject.activeInHierarchy)
			{
				return;
			}

			SpriteManager.SpriteManager.DrawSpritePartExt(Definition, 0, (int)Source.x, (int)Source.y, (int)Source.z, (int)Source.w, transform.position.x, -transform.position.y, 1, 1, 16777215, Alpha);
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
			_gizmoTexture = new Texture2D(width, height, TextureFormat.RGBA32, false);
			var readPixels = baseSprite.GetPixels(left, baseSprite.height - top - height, width, height);
			_gizmoTexture.SetPixels(0, 0, width, height, readPixels);
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
