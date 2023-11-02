using System;
using System.Collections.Generic;
using System.Linq;
using Assets.SpriteManager;
using OBJECT_SCRIPTS;
using UnityEditor;
using UnityEngine;

namespace Assets.CollisionManager
{
	public enum SepMasks
	{
		AxisAlignedRect,
		Precise,
		RotatedRect
	}

	public enum BoundingBoxMode
	{
		Automatic = 0,
		FullImage = 1,
		UserDefined = 2
	}

	public class ColliderClass
	{
		public GamemakerObject GMObject;

		private Vector3 _pos => GMObject.transform.position;
		private Vector3 _scale => GMObject.transform.localScale;

		public Vector2Int Origin; /*=> SpriteManager.SpriteManager.GetSpriteOrigin(GMObject.sprite_index);*/

		public ColliderClass(GamemakerObject obj)
		{
			GMObject = obj;
			Origin = SpriteManager.SpriteManager.GetSpriteOrigin(GMObject.sprite_index);
		}

		public Vector4 Margins;

		public Vector2 BBTopLeft => new(
			_pos.x + (Margins.x * _scale.x) - (Origin.x * _scale.x),
			_pos.y - (Margins.w * _scale.y) + (Origin.y * _scale.y));

		public Vector2 BBBottomRight => new(
			_pos.x + (Margins.y * _scale.x) - (Origin.x * _scale.x),
			_pos.y - (Margins.z * _scale.y) + (Origin.y * _scale.y));

		public Vector3 BBCenter => new(
			(BBTopLeft.x + BBBottomRight.x) / 2,
			(BBTopLeft.y + BBBottomRight.y) / 2,
			0);

		public Vector3 BBSize => new(
			BBBottomRight.x - BBTopLeft.x,
			BBTopLeft.y - BBBottomRight.y,
			1);

		public Vector3 Position => new Vector3(_pos.x + Origin.x, _pos.y - Origin.y, 0);
		public Vector3 Scale => _scale;

		public SepMasks SepMasks;
		public BoundingBoxMode BoundingBoxMode;
		public bool[,] CollisionMask;
	}

	public class CollisionManager : MonoBehaviour
	{
		private static List<ColliderClass> colliders = new();

		public static CollisionManager Instance;

		public void Awake()
		{
			Instance = this;
		}

		public static void RegisterCollider(GamemakerObject sprite, Vector4 margins)
		{
			var spriteAsset = string.IsNullOrEmpty(sprite.mask_id)
				? SpriteManager.SpriteManager.GetSpriteAsset(sprite.sprite_index)
				: SpriteManager.SpriteManager.GetSpriteAsset(sprite.mask_id);

			CollisionMaskPreload preload = null;
			Texture2D actualMask = null;

			if (spriteAsset == null)
			{
				Debug.LogError($"Couldn't find sprite for {(string.IsNullOrEmpty(sprite.mask_id) ? sprite.sprite_index : sprite.mask_id)}! (for obj {sprite.object_index})");
				return;
			}

			if (spriteAsset.CollisionMasks == null)
			{
				Debug.LogError($"No collision masks defined for {spriteAsset.name}!");
				return;
			}

			if (spriteAsset.CollisionMasks.Count - 1 < (int)sprite.image_index)
			{
				preload = spriteAsset.CollisionMaskPreloads[0];
				actualMask = spriteAsset.CollisionMasks[0];
			}
			else
			{
				preload = spriteAsset.CollisionMaskPreloads[(int)sprite.image_index];
				actualMask = spriteAsset.CollisionMasks[(int)sprite.image_index];
			}

			var collisionMask = new bool[preload.Height, preload.Width];

			if (actualMask == null)
			{
				collisionMask = null;
			}
			else
			{
				var index = 0;
				for (var i = 0; i < preload.Height; i++)
				{
					for (var j = 0; j < preload.Width; j++)
					{
						var val = preload.Data[index++];
						collisionMask[i, j] = val;
					}
				}
			}

			if (colliders.Any(x => x.GMObject == sprite))
			{
				var collider = colliders.Single(x => x.GMObject == sprite);
				collider.Margins = margins;
				collider.SepMasks = spriteAsset.SepMasks;
				collider.BoundingBoxMode = spriteAsset.BoundingBoxMode;
				collider.CollisionMask = collisionMask;
				collider.Origin = spriteAsset.Origin;
				return;
			}

			colliders.Add(new ColliderClass(sprite)
			{
				Margins = margins,
				SepMasks = spriteAsset.SepMasks,
				BoundingBoxMode = spriteAsset.BoundingBoxMode,
				CollisionMask = collisionMask,
				Origin = spriteAsset.Origin
			});
		}

		public static void UnregisterCollider(GamemakerObject sprite)
		{
			colliders.RemoveAll(x => x.GMObject == sprite);
		}

		private void Start()
		{
			//SceneManager.sceneUnloaded += Reset;
		}

		private void OnDestroy()
		{
			//SceneManager.sceneUnloaded -= Reset;
			colliders = new();
		}

		/*private void Reset(Scene scene)
		{
			colliders = new();
		}*/

		public static GamemakerObject instance_place(double x, double y, GamemakerObject current, Type checkType)
		{
			var savedX = current.x;
			var savedY = current.y;

			// gamemaker floors the x/y coords
			current.x = Math.Floor(x);
			current.y = Math.Floor(y);

			var movedBox = colliders.Single(b => b.GMObject == current);

			foreach (var checkBox in colliders)
			{
				if (checkBox == null)
				{
					Debug.LogWarning($"Null collider in colliders!");
					continue;
				}

				if ((!checkBox.GMObject.GetType().IsSubclassOf(checkType) && checkBox.GMObject.GetType() != checkType)
					|| current == checkBox.GMObject)
				{
					continue;
				}

				// generate the collision mask if in editor
				if (checkBox.CollisionMask == null || movedBox.CollisionMask == null)
				{
					var spriteIndex = checkBox.CollisionMask == null ? checkBox.GMObject.sprite_index : movedBox.GMObject.sprite_index;
					throw new Exception($"collision mask not defined for {spriteIndex}");
				}

				if ((checkBox.SepMasks == SepMasks.Precise
					&& movedBox.SepMasks == SepMasks.Precise)
					|| (checkBox.SepMasks != movedBox.SepMasks))
				{
					// precise collisions
					if (!DoBoxesOverlap(movedBox, checkBox))
					{
						// bounding boxes don't even overlap, don't bother testing precise collision
						continue;
					}

					var (currentRotatedMask, currentOffset) = RotateMask(movedBox.CollisionMask, movedBox.GMObject.image_angle, movedBox.Origin);
					var (checkRotatedMask, checkOffset) = RotateMask(checkBox.CollisionMask, checkBox.GMObject.image_angle, checkBox.Origin);

					var currentMaskHeight = currentRotatedMask.GetLength(0);
					var currentMaskLength = currentRotatedMask.GetLength(1);
					var checkMaskHeight = checkRotatedMask.GetLength(0);
					var checkMaskLength = checkRotatedMask.GetLength(1);

					for (var row = 0; row < currentMaskHeight; row++)
					{
						for (var col = 0; col < currentMaskLength; col++)
						{
							if (currentRotatedMask[row, col] == false)
							{
								continue;
							}

							var currentPixelPos = new Vector2Int((int)movedBox.Position.x + currentOffset.x + col, (int)movedBox.Position.y + currentOffset.y - row);
							var temp = new Vector2Int((int)checkBox.Position.x + checkOffset.x, (int)checkBox.Position.y + checkOffset.y);
							var placeInOtherMask = currentPixelPos - temp;

							if (placeInOtherMask.x < 0 || placeInOtherMask.x >= checkMaskLength)
							{
								continue;
							}

							if (placeInOtherMask.y > 0 || placeInOtherMask.y <= -checkMaskHeight)
							{
								continue;
							}

							if (checkRotatedMask[-placeInOtherMask.y, placeInOtherMask.x])
							{
								return checkBox.GMObject;
							}
						}
					}
				}
				else
				{
					// bounding box collision
					if (DoBoxesOverlap(movedBox, checkBox))
					{
						current.x = savedX;
						current.y = savedY;
						return checkBox.GMObject;
					}
				}
			}

			current.x = savedX;
			current.y = savedY;
			return null;
		}

		public static T collision_rectangle<T>(double topLeftX, double topLeftY, double bottomRightX, double bottomRightY, bool precise, bool notme, GamemakerObject current)
			where T : GamemakerObject
		{
			if (bottomRightX < topLeftX)
			{
				(bottomRightX, topLeftX) = (topLeftX, bottomRightX);
			}

			if (topLeftY > bottomRightY)
			{
				(bottomRightY, topLeftY) = (topLeftY, bottomRightY);
			}

			colliders.RemoveAll(x => x.GMObject == null);

			foreach (var checkBox in colliders)
			{
				if (checkBox.GMObject is not T)
				{
					continue;
				}

				if (notme && checkBox.GMObject == current)
				{
					continue;
				}

				var boxesOverlap = DoBoxesOverlap(topLeftX, -topLeftY, bottomRightX, -bottomRightY, checkBox);

				if (!boxesOverlap)
				{
					//Debug.Log($"box at {topLeftX},{topLeftY} {bottomRightX},{bottomRightY} does not intersect with box of {checkBox.GMObject.object_index} ({checkBox.BBTopLeft} {checkBox.BBBottomRight})");
					continue;
				}

				if (precise && checkBox.SepMasks == SepMasks.Precise)
				{
					var iTopLeftX = Mathf.Max((float)topLeftX, checkBox.BBTopLeft.x);
					var iTopLeftY = Mathf.Min((float)-topLeftY, checkBox.BBTopLeft.y);
					var iBottomRightX = Mathf.Min((float)bottomRightX, checkBox.BBBottomRight.x);
					var iBottomRightY = Mathf.Max((float)-bottomRightY, checkBox.BBBottomRight.y);

					var iWidth = Mathf.FloorToInt(Mathf.Abs(iTopLeftX - iBottomRightX));
					var iHeight = Mathf.FloorToInt(Mathf.Abs(iTopLeftY - iBottomRightY));

					for (var i = 0; i < iHeight; i++)
					{
						for (var j = 0; j < iWidth; j++)
						{
							if (topLeftX == iTopLeftX)
							{
								var deltaX = Mathf.RoundToInt(Mathf.Abs(iTopLeftX - checkBox.Position.x)) + j;
								var deltaY = Mathf.RoundToInt(Mathf.Abs(iTopLeftY - checkBox.Position.y)) + i;
								deltaX /= (int)checkBox.Scale.x;
								deltaY /= (int)checkBox.Scale.y;
								try
								{
									if (checkBox.CollisionMask[deltaY, deltaX])
									{
										return (T)checkBox.GMObject;
									}
								}
								catch (IndexOutOfRangeException iex)
								{
									Debug.Break();
								}
							}
							else
							{
								var yAdjust = Mathf.RoundToInt(Mathf.Abs(checkBox.Position.y - iTopLeftY));
								yAdjust = Mathf.FloorToInt(yAdjust / checkBox.Scale.y);
								try
								{
									if (checkBox.CollisionMask[yAdjust + i, Mathf.FloorToInt(j / checkBox.Scale.x)])
									{
										return (T)checkBox.GMObject;
									}
								}
								catch (IndexOutOfRangeException iex)
								{
									Debug.Break();
								}
							}
						}
					}
				}

				if (boxesOverlap)
				{
					return (T)checkBox.GMObject;
				}
			}

			return null;
		}

		public static GamemakerObject collision_line(float x1, float y1, float x2, float y2, string name, bool prec, bool notme)
		{
			if (prec)
			{
				throw new NotImplementedException("uh oh - precise collision!");
			}

			throw new NotImplementedException();

			return null;
		}

		private static bool DoBoxesOverlap(ColliderClass a, ColliderClass b) 
			=> a.BBTopLeft.x <= b.BBBottomRight.x
			&& a.BBBottomRight.x >= b.BBTopLeft.x
			&& a.BBTopLeft.y >= b.BBBottomRight.y
			&& a.BBBottomRight.y <= b.BBTopLeft.y;

		private static bool DoBoxesOverlap(double x1, double y1, double x2, double y2, ColliderClass b)
			=> x1 <= (b.BBBottomRight.x - 1) && x2 - 1 >= b.BBTopLeft.x &&
			   y1 >= (b.BBBottomRight.y - 1) && y2 - 1 <= b.BBTopLeft.y;

		public static (bool[,] buffer, Vector2Int topLeftOffset) RotateMask(bool[,] mask, double angle, Vector2Int pivot)
		{
			/*
			 * Nearest-Neighbour algorithm for rotating a collision mask.
			 * Assume that the given mask is positioned at (0, 0), and that the given pivot is relative to (0, 0).
			 * We need to return the rotated mask in a new buffer, and where the top left of the new mask is, relative to (0, 0).
			 */

			var sin = Math.Sin(Mathf.Deg2Rad * angle);
			var cos = Math.Cos(Mathf.Deg2Rad * angle);

			Vector2 RotateAroundPoint(Vector2 pivot, bool reverse, Vector2 point)
			{
				point.x -= pivot.x;
				point.y -= pivot.y;

				var useSin = sin;
				if (reverse)
				{
					useSin = -sin;
				}

				var xnew = (point.x * cos) - (point.y * useSin);
				var ynew = (point.x * useSin) + (point.y * cos);

				return new Vector2((float)xnew + pivot.x, (float)ynew + pivot.y);
			}

			// Calculate where the corners of the given mask will be when rotated.
			var newTL = RotateAroundPoint(pivot, false, new Vector2Int(0, 0));
			var newTR = RotateAroundPoint(pivot, false, new Vector2Int(mask.GetLength(0), 0));
			var newBL = RotateAroundPoint(pivot, false, new Vector2Int(0, -mask.GetLength(1)));
			var newBR = RotateAroundPoint(pivot, false, new Vector2Int(mask.GetLength(0), -mask.GetLength(1)));

			// Calculate where the edges of the bounding box will be.
			var fMinX = Mathf.Min(newTL.x, newTR.x, newBL.x, newBR.x);
			var fMaxX = Mathf.Max(newTL.x, newTR.x, newBL.x, newBR.x);
			var fMinY = Mathf.Min(newTL.y, newTR.y, newBL.y, newBR.y);
			var fMaxY = Mathf.Max(newTL.y, newTR.y, newBL.y, newBR.y);

			// Get the minimum-sized bounding box in pixels.
			var iMinX = Mathf.FloorToInt(fMinX);
			var iMaxX = Mathf.CeilToInt(fMaxX);
			var iMinY = Mathf.FloorToInt(fMinY);
			var iMaxY = Mathf.CeilToInt(fMaxY);

			// Define the (needed) corners of the bounding box.
			var bbTopLeft = new Vector2Int(iMinX, iMaxY);
			var bbTopRight = new Vector2Int(iMaxX, iMaxY);
			var bbBottomLeft = new Vector2Int(iMinX, iMinY);

			var bbWidth = bbTopRight.x - bbTopLeft.x;
			var bbHeight = bbTopLeft.y - bbBottomLeft.y;
			var returnBuffer = new bool[bbHeight, bbWidth];

			// For each pixel in the return buffer...
			for (var row = 0; row < bbHeight; row++)
			{
				for (var col = 0; col < bbWidth; col++)
				{
					// Get the position of the center of this pixel
					var pixelCenter = new Vector2(bbTopLeft.x + col + 0.5f, bbTopLeft.y - row - 0.5f);

					// Rotate the center position backwards around the pivot to get a position in the original mask.
					var centerRotated = RotateAroundPoint(pivot, true, pixelCenter);

					// Force this position to be an (int, int), so we can sample the original mask.
					var snappedToGrid = new Vector2Int(Mathf.FloorToInt(centerRotated.x), Mathf.CeilToInt(centerRotated.y));

					if (snappedToGrid.x < 0 || 
					    snappedToGrid.x > mask.GetLength(1) - 1 ||
					    snappedToGrid.y > 0 ||
					    -snappedToGrid.y > mask.GetLength(0) - 1)
					{
						// Sampling position is outside the original mask.
						continue;
					}

					try
					{
						returnBuffer[row, col] = mask[-snappedToGrid.y, snappedToGrid.x];
					}
					catch (IndexOutOfRangeException e)
					{
						Debug.LogError($"Mask size : ({mask.GetLength(0)}, {mask.GetLength(1)}) -snappedToGrid.y:{-snappedToGrid.y} snappedToGrid.x:{snappedToGrid.x}");
						Debug.Break();
					}
				}
			}

			return (returnBuffer, bbTopLeft);
		}

		private void OnDrawGizmos()
		{
			foreach (var box in colliders)
			{
				Gizmos.color = Color.red;
				Gizmos.DrawWireCube(box.BBCenter, box.BBSize);
				Gizmos.DrawWireSphere(box.BBTopLeft, 5);
				Gizmos.DrawWireSphere(box.BBBottomRight, 5);
				Gizmos.color = Color.yellow;
				Gizmos.DrawWireSphere(box.Position, 5);
				Gizmos.color = Color.white;

				var objCenter = new Vector3(
					(float)(box.GMObject.x + (box.GMObject.sprite_width / 2) - (box.GMObject.sprite_xoffset * box.Scale.x)),
					(float)(-box.GMObject.y - (box.GMObject.sprite_height / 2) + (box.GMObject.sprite_yoffset * box.Scale.y)),
					0);
				var objSize = new Vector3((float)box.GMObject.sprite_width, (float)box.GMObject.sprite_height, 1);

				Gizmos.color = Color.blue;
				Gizmos.DrawWireCube(objCenter, objSize);
				Gizmos.color = Color.white;
			}
		}
	}
}
