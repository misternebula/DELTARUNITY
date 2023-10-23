using Assets.AudioManager;
using Assets.SpriteManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEditor;
using UnityEngine;

namespace Assets.Editor
{
	internal class CollisionMaskPreload
	{
		[MenuItem("Assets/Preload Collision Mask")]
		private static void PreloadCollisionMask()
		{
			var spriteAsset = Selection.activeObject as SpriteSubLibrary;

			spriteAsset.CollisionMaskPreload = new SpriteManager.CollisionMaskPreload();

			var pixels = spriteAsset.CollisionMask.GetPixels();
			var pixelsAsBool = pixels.Select(x => x == Color.white).ToArray();

			spriteAsset.CollisionMaskPreload.Width = spriteAsset.CollisionMask.width;
			spriteAsset.CollisionMaskPreload.Height = spriteAsset.CollisionMask.height;
			spriteAsset.CollisionMaskPreload.Data = new bool[spriteAsset.CollisionMask.width * spriteAsset.CollisionMask.height];

			var index = 0;
			for (var i = (spriteAsset.CollisionMask.height - 1); i >= 0 ; i--)
			{
				for (var j = 0; j < spriteAsset.CollisionMask.width; j++)
				{
					spriteAsset.CollisionMaskPreload.Data[(i * spriteAsset.CollisionMask.width) + j] = pixelsAsBool[index];
					index++;
				}
			}
		}
	}
}
