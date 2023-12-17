using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using Assets.SpriteManager;
using Assets.VirtualMachineRunner;
using Unity.Profiling;
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
		public NewGamemakerObject GMObject;

		public string spriteAssetName;
		public int collisionMaskIndex;

		private Vector3 _pos => GMObject.transform.position;
		private Vector3 _scale => GMObject.transform.localScale;

		public Vector2Int Origin; /*=> SpriteManager.SpriteManager.GetSpriteOrigin(GMObject.sprite_index);*/

		public ColliderClass(NewGamemakerObject obj)
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

		/// <summary>
		/// The position of the collider, in Unity space (up = +y)
		/// </summary>
		public Vector3 Position => new(
			_pos.x - (Origin.x * _scale.x),
			_pos.y + (Origin.y * _scale.y),
			0);

		public Vector3 Scale => _scale;

		public SepMasks SepMasks;
		public BoundingBoxMode BoundingBoxMode;
		public bool[,] CollisionMask;

		public bool[,] CachedRotatedMask = null;
		public Vector2Int CachedRotatedMaskOffset;
	}

	public class CollisionManager : MonoBehaviour
	{
		private static List<ColliderClass> colliders = new();

		public static CollisionManager Instance;

		public void Awake()
		{
			Instance = this;
		}

		public static void UpdateRotationMask(NewGamemakerObject obj)
		{
			var collider = colliders.Single(x => x.GMObject == obj);

			if (collider.SepMasks != SepMasks.Precise)
			{
				return;
			}

			(collider.CachedRotatedMask, collider.CachedRotatedMaskOffset) = RotateMask(collider.CollisionMask, collider.GMObject.image_angle, collider.Origin.x, collider.Origin.y, collider.Scale.x, collider.Scale.y);
		}

		public static void RegisterCollider(NewGamemakerObject sprite, Vector4 margins)
		{
			var spriteAsset = sprite.mask_id == -1
				? SpriteManager.SpriteManager.GetSpriteAsset(sprite.sprite_index)
				: SpriteManager.SpriteManager.GetSpriteAsset(sprite.mask_id);

			CollisionMaskPreload preload = null;
			Texture2D actualMask = null;

			if (spriteAsset == null)
			{
				Debug.LogError($"Couldn't find sprite for {(sprite.mask_id == -1 ? sprite.sprite_index : sprite.mask_id)}! (for obj {sprite.object_index})");
				return;
			}

			if (spriteAsset.CollisionMasks == null)
			{
				Debug.LogError($"No collision masks defined for {spriteAsset.name}!");
				return;
			}

			int colIndex = 0;

			if (spriteAsset.CollisionMasks.Count - 1 < (int)sprite.image_index)
			{
				preload = spriteAsset.CollisionMaskPreloads[0];
				actualMask = spriteAsset.CollisionMasks[0];
				colIndex = 0;
			}
			else
			{
				preload = spriteAsset.CollisionMaskPreloads[(int)sprite.image_index];
				actualMask = spriteAsset.CollisionMasks[(int)sprite.image_index];
				colIndex = (int)sprite.image_index;
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

				if (collider.spriteAssetName != spriteAsset.name
				    || collider.collisionMaskIndex != colIndex)
				{
					UpdateRotationMask(sprite);
				}

				collider.spriteAssetName = spriteAsset.name;
				collider.collisionMaskIndex = colIndex;
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
			UpdateRotationMask(sprite);
		}

		public static void UnregisterCollider(NewGamemakerObject sprite)
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

		public static NewGamemakerObject instance_place_assetid(double x, double y, int assetId, NewGamemakerObject current)
		{
			var marker = new ProfilerMarker("instance_place");
			marker.Begin(current);

			// gamemaker floors the x/y coords
			x = Math.Floor(x);
			y = Math.Floor(y);

			var savedX = current.x;
			var savedY = current.y;
			current.x = x;
			current.y = y;

			var movedBox = colliders.Single(b => b.GMObject == current);

			foreach (var checkBox in colliders)
			{
				if (checkBox == null)
				{
					Debug.LogWarning($"Null collider in colliders!");
					continue;
				}

				if (checkBox.GMObject.Definition.AssetId != assetId)
				{
					var currentDefinition = checkBox.GMObject.Definition.parent;
					var matches = false;
					while (currentDefinition != null)
					{
						if (currentDefinition.AssetId == assetId)
						{
							matches = true;
							break;
						}

						currentDefinition = currentDefinition.parent;
					}

					if (!matches)
					{
						continue;
					}
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

					//var (currentRotatedMask, currentOffset) = RotateMask(movedBox.CollisionMask, movedBox.GMObject.image_angle, movedBox.Origin.x, movedBox.Origin.y, movedBox.Scale.x, movedBox.Scale.y);
					//var (checkRotatedMask, checkOffset) = RotateMask(checkBox.CollisionMask, checkBox.GMObject.image_angle, checkBox.Origin.x, checkBox.Origin.y, checkBox.Scale.x, checkBox.Scale.y);

					if (movedBox.CachedRotatedMask == null)
					{
						(movedBox.CachedRotatedMask, movedBox.CachedRotatedMaskOffset) = RotateMask(movedBox.CollisionMask, movedBox.GMObject.image_angle, movedBox.Origin.x, movedBox.Origin.y, movedBox.Scale.x, movedBox.Scale.y);
					}

					if (checkBox.CachedRotatedMask == null)
					{
						(checkBox.CachedRotatedMask, checkBox.CachedRotatedMaskOffset) = RotateMask(checkBox.CollisionMask, checkBox.GMObject.image_angle, checkBox.Origin.x, checkBox.Origin.y, checkBox.Scale.x, checkBox.Scale.y);
					}

					var currentRotatedMask = movedBox.CachedRotatedMask;
					var currentOffset = movedBox.CachedRotatedMaskOffset;
					var checkRotatedMask = checkBox.CachedRotatedMask;
					var checkOffset = checkBox.CachedRotatedMaskOffset;

					var currentMaskHeight = currentRotatedMask.GetLength(0);
					var currentMaskLength = currentRotatedMask.GetLength(1);
					var checkMaskHeight = checkRotatedMask.GetLength(0);
					var checkMaskLength = checkRotatedMask.GetLength(1);

					// iterate through every pixel in the current object's rotated mask
					for (var row = 0; row < currentMaskHeight; row++)
					{
						for (var col = 0; col < currentMaskLength; col++)
						{
							// if it's false, dont even both checking the value of the other mask
							if (currentRotatedMask[row, col] == false)
							{
								continue;
							}

							// Get the world space position of the center of this pixel (up = +y)
							var currentPixelPos = new Vector2((int)movedBox.Position.x + currentOffset.x + col + 0.5f, (int)movedBox.Position.y + currentOffset.y - row - 0.5f);

							// Get the world space position of the top-left of the other rotated mask (up = +y)
							var checkMaskTopLeft = new Vector2Int((int)checkBox.Position.x + checkOffset.x, (int)checkBox.Position.y + checkOffset.y);

							var placeInOtherMask = currentPixelPos - checkMaskTopLeft;

							var snappedToGrid = new Vector2Int((int)Math.Floor(placeInOtherMask.x), (int)Math.Ceiling(-placeInOtherMask.y));

							if (snappedToGrid.x < 0 || snappedToGrid.x >= checkMaskLength)
							{
								continue;
							}

							if (snappedToGrid.y < 0 || snappedToGrid.y >= checkMaskHeight)
							{
								continue;
							}

							if (checkRotatedMask[snappedToGrid.y, snappedToGrid.x])
							{
								current.x = savedX;
								current.y = savedY;
								marker.End();
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
						marker.End();
						return checkBox.GMObject;
					}
				}
			}

			current.x = savedX;
			current.y = savedY;
			marker.End();
			return null;
		}

		public static NewGamemakerObject instance_place_instanceid(double x, double y, int instanceId, NewGamemakerObject current)
		{
			var marker = new ProfilerMarker("instance_place");
			marker.Begin(current);

			// gamemaker floors the x/y coords
			x = Math.Floor(x);
			y = Math.Floor(y);

			var savedX = current.x;
			var savedY = current.y;
			current.x = x;
			current.y = y;

			var movedBox = colliders.Single(b => b.GMObject == current);

			foreach (var checkBox in colliders)
			{
				if (checkBox == null)
				{
					Debug.LogWarning($"Null collider in colliders!");
					continue;
				}

				if (checkBox.GMObject.instanceId != instanceId)
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

					//var (currentRotatedMask, currentOffset) = RotateMask(movedBox.CollisionMask, movedBox.GMObject.image_angle, movedBox.Origin.x, movedBox.Origin.y, movedBox.Scale.x, movedBox.Scale.y);
					//var (checkRotatedMask, checkOffset) = RotateMask(checkBox.CollisionMask, checkBox.GMObject.image_angle, checkBox.Origin.x, checkBox.Origin.y, checkBox.Scale.x, checkBox.Scale.y);

					if (movedBox.CachedRotatedMask == null)
					{
						(movedBox.CachedRotatedMask, movedBox.CachedRotatedMaskOffset) = RotateMask(movedBox.CollisionMask, movedBox.GMObject.image_angle, movedBox.Origin.x, movedBox.Origin.y, movedBox.Scale.x, movedBox.Scale.y);
					}

					if (checkBox.CachedRotatedMask == null)
					{
						(checkBox.CachedRotatedMask, checkBox.CachedRotatedMaskOffset) = RotateMask(checkBox.CollisionMask, checkBox.GMObject.image_angle, checkBox.Origin.x, checkBox.Origin.y, checkBox.Scale.x, checkBox.Scale.y);
					}

					var currentRotatedMask = movedBox.CachedRotatedMask;
					var currentOffset = movedBox.CachedRotatedMaskOffset;
					var checkRotatedMask = checkBox.CachedRotatedMask;
					var checkOffset = checkBox.CachedRotatedMaskOffset;

					var currentMaskHeight = currentRotatedMask.GetLength(0);
					var currentMaskLength = currentRotatedMask.GetLength(1);
					var checkMaskHeight = checkRotatedMask.GetLength(0);
					var checkMaskLength = checkRotatedMask.GetLength(1);

					// iterate through every pixel in the current object's rotated mask
					for (var row = 0; row < currentMaskHeight; row++)
					{
						for (var col = 0; col < currentMaskLength; col++)
						{
							// if it's false, dont even both checking the value of the other mask
							if (currentRotatedMask[row, col] == false)
							{
								continue;
							}

							// Get the world space position of the center of this pixel (up = +y)
							var currentPixelPos = new Vector2((int)movedBox.Position.x + currentOffset.x + col + 0.5f, (int)movedBox.Position.y + currentOffset.y - row - 0.5f);

							// Get the world space position of the top-left of the other rotated mask (up = +y)
							var checkMaskTopLeft = new Vector2Int((int)checkBox.Position.x + checkOffset.x, (int)checkBox.Position.y + checkOffset.y);

							var placeInOtherMask = currentPixelPos - checkMaskTopLeft;

							var snappedToGrid = new Vector2Int((int)Math.Floor(placeInOtherMask.x), (int)Math.Ceiling(-placeInOtherMask.y));

							if (snappedToGrid.x < 0 || snappedToGrid.x >= checkMaskLength)
							{
								continue;
							}

							if (snappedToGrid.y < 0 || snappedToGrid.y >= checkMaskHeight)
							{
								continue;
							}

							if (checkRotatedMask[snappedToGrid.y, snappedToGrid.x])
							{
								current.x = savedX;
								current.y = savedY;
								marker.End();
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
						marker.End();
						return checkBox.GMObject;
					}
				}
			}

			current.x = savedX;
			current.y = savedY;
			marker.End();
			return null;
		}

		// TODO : make these not just duplicated functions

		public static int collision_rectangle_assetid(double topLeftX, double topLeftY, double bottomRightX, double bottomRightY, int assetId, bool precise, bool notme, NewGamemakerObject current)
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
				if (checkBox.GMObject.Definition.AssetId != assetId)
				{
					var currentDefinition = checkBox.GMObject.Definition.parent;
					var matches = false;
					while (currentDefinition != null)
					{
						if (currentDefinition.AssetId == assetId)
						{
							matches = true;
							break;
						}

						currentDefinition = currentDefinition.parent;
					}

					if (!matches)
					{
						continue;
					}
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
										return checkBox.GMObject.instanceId;
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
										return checkBox.GMObject.instanceId;
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
					return checkBox.GMObject.instanceId;
				}
			}

			return GMConstants.noone;
		}

		public static int collision_rectangle_instanceid(double topLeftX, double topLeftY, double bottomRightX, double bottomRightY, int instanceId, bool precise, bool notme, NewGamemakerObject current)
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
				if (checkBox.GMObject.instanceId != instanceId)
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
										return checkBox.GMObject.instanceId;
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
										return checkBox.GMObject.instanceId;
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
					return checkBox.GMObject.instanceId;
				}
			}

			return GMConstants.noone;
		}

		public static bool place_meeting_assetid(double x, double y, int assetId, NewGamemakerObject current)
		{
			return instance_place_assetid(x, y, assetId, current);
		}

		public static bool place_meeting_instanceid(double x, double y, int instanceId, NewGamemakerObject current)
		{
			return instance_place_instanceid(x, y, instanceId, current);
		}

		public static NewGamemakerObject collision_line(float x1, float y1, float x2, float y2, string name, bool prec, bool notme)
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

		public static (bool[,] buffer, Vector2Int topLeftOffset) RotateMask(bool[,] mask, double angle, int pivotX, int pivotY, double xScale, double yScale)
		{
			/*
			 * Nearest-Neighbour algorithm for rotating a collision mask.
			 * Assume that the given mask is positioned at (0, 0), and that the given pivot is relative to (0, 0).
			 * We need to return the rotated mask in a new buffer, and where the top left of the new mask is, relative to (0, 0).
			 */

			var marker = new ProfilerMarker("Rotate Mask");
			marker.Begin();

			var sin = Math.Sin(Mathf.Deg2Rad * angle);
			var cos = Math.Cos(Mathf.Deg2Rad * angle);

			var maskWidth = mask.GetLength(1);
			var maskHeight = mask.GetLength(0);

			void RotateAroundPoint(int pivotX, int pivotY, bool reverse, double x, double y, out float rotatedX, out float rotatedY)
			{
				x -= pivotX;
				y -= pivotY;

				var useSin = sin;
				if (reverse)
				{
					useSin = -sin;
				}

				var xnew = (x * cos) - (y * useSin);
				var ynew = (x * useSin) + (y * cos);

				rotatedX = (float)xnew + pivotX;
				rotatedY = (float)ynew + pivotY;
			}

			// Calculate where the corners of the given mask will be when rotated.
			RotateAroundPoint(pivotX, pivotY, false, 0, 0, out var newTLx, out var newTLy);
			RotateAroundPoint(pivotX, pivotY, false, (int)(maskWidth * xScale), 0, out var newTRx, out var newTRy);
			RotateAroundPoint(pivotX, pivotY, false, 0, -(int)(maskHeight * yScale), out var newBLx, out var newBLy);
			RotateAroundPoint(pivotX, pivotY, false, (int)(maskWidth * xScale), -(int)(maskHeight * yScale), out var newBRx, out var newBRy);

			// Calculate where the edges of the bounding box will be.
			var fMinX = Mathf.Min(newTLx, newTRx, newBLx, newBRx);
			var fMaxX = Mathf.Max(newTLx, newTRx, newBLx, newBRx);
			var fMinY = Mathf.Min(newTLy, newTRy, newBLy, newBRy);
			var fMaxY = Mathf.Max(newTLy, newTRy, newBLy, newBRy);

			// Get the minimum-sized bounding box in pixels.
			var iMinX = Mathf.FloorToInt(fMinX);
			var iMaxX = Mathf.CeilToInt(fMaxX);
			var iMinY = Mathf.FloorToInt(fMinY);
			var iMaxY = Mathf.CeilToInt(fMaxY);

			// Define the (needed) corners of the bounding box.
			/*var bbTopLeft = new Vector2Int(iMinX, iMaxY);
			var bbTopRight = new Vector2Int(iMaxX, iMaxY);
			var bbBottomLeft = new Vector2Int(iMinX, iMinY);*/

			//var bbWidth = bbTopRight.x - bbTopLeft.x;
			//var bbHeight = bbTopLeft.y - bbBottomLeft.y;
			var bbWidth = iMaxX - iMinX;
			var bbHeight = iMaxY - iMinY;
			var returnBuffer = new bool[bbHeight, bbWidth];

			// For each pixel in the return buffer...
			for (var row = 0; row < bbHeight; row++)
			{
				for (var col = 0; col < bbWidth; col++)
				{
					// Get the position of the center of this pixel
					var pixelCenterX = iMinX + col + 0.5f;
					var pixelCenterY = iMaxY - row - 0.5f;

					// Rotate the center position backwards around the pivot to get a position in the original mask.
					RotateAroundPoint(pivotX, pivotY, true, pixelCenterX, pixelCenterY, out var centerRotatedX, out var centerRotatedY);

					// account for scaling
					var vectorX = centerRotatedX - pivotX;
					var vectorY = centerRotatedY - pivotY;
					vectorX /= (float)xScale;
					vectorY /= (float)yScale;

					centerRotatedX = vectorX;
					centerRotatedY = vectorY;

					centerRotatedX += pivotX / (float)xScale;
					centerRotatedY += pivotY / (float)yScale;

					// Force this position to be an (int, int), so we can sample the original mask.
					var snappedToGridX = Mathf.FloorToInt(centerRotatedX);
					var snappedToGridY = Mathf.CeilToInt(centerRotatedY);

					if (snappedToGridX < 0 || 
					    snappedToGridX > maskWidth - 1 ||
					    snappedToGridY > 0 ||
					    -snappedToGridY > maskHeight - 1)
					{
						// Sampling position is outside the original mask.
						continue;
					}

					try
					{
						returnBuffer[row, col] = mask[-snappedToGridY, snappedToGridX];
					}
					catch (IndexOutOfRangeException e)
					{
						Debug.LogError($"Mask size : ({mask.GetLength(0)}, {mask.GetLength(1)}) -snappedToGrid.y:{-snappedToGridY} snappedToGrid.x:{snappedToGridX}");
						Debug.Break();
					}
				}
			}

			marker.End();

			return (returnBuffer, new Vector2Int(iMinX, iMaxY));
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
