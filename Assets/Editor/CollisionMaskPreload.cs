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

			foreach (var collisionMask in spriteAsset.CollisionMasks)
			{
				var preload = new SpriteManager.CollisionMaskPreload();

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

				spriteAsset.CollisionMaskPreloads.Add(preload);
			}
		}
	}
}
