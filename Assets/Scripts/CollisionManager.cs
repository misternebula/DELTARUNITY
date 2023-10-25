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
		private Vector2 _origin; /*=> SpriteManager.SpriteManager.GetSpriteOrigin(GMObject.sprite_index);*/

		public ColliderClass(GamemakerObject obj)
		{
			GMObject = obj;
			_origin = SpriteManager.SpriteManager.GetSpriteOrigin(GMObject.sprite_index);
		}

		public Vector4 Margins;

		public Vector2 BBTopLeft => new(
			_pos.x + (Margins.x * _scale.x) - (_origin.x * _scale.x),
			_pos.y - (Margins.w * _scale.y) + (_origin.y * _scale.y));

		public Vector2 BBBottomRight => new(
			_pos.x + (Margins.y * _scale.x) - (_origin.x * _scale.x),
			_pos.y - (Margins.z * _scale.y) + (_origin.y * _scale.y));

		public Vector3 BBCenter => new(
			(BBTopLeft.x + BBBottomRight.x) / 2,
			(BBTopLeft.y + BBBottomRight.y) / 2,
			0);

		public Vector3 BBSize => new(
			BBBottomRight.x - BBTopLeft.x,
			BBTopLeft.y - BBBottomRight.y,
			1);

		public Vector3 Position => new Vector3(_pos.x + _origin.x, _pos.y - _origin.y, 0);
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
			var spriteAsset = SpriteManager.SpriteManager.GetSpriteAsset(sprite.sprite_index);


			CollisionMaskPreload preload = null;
			Texture2D actualMask = null;
			if (spriteAsset.CollisionMasks.Count < (int)sprite.image_index)
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
				return;
			}

			colliders.Add(new ColliderClass(sprite)
			{
				Margins = margins,
				SepMasks = spriteAsset.SepMasks,
				BoundingBoxMode = spriteAsset.BoundingBoxMode,
				CollisionMask = collisionMask
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

			var movedBox = colliders.First(b => b.GMObject == current);

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

					//ughhhhhhhhh

					var iTopLeftX = Mathf.Max(movedBox.BBTopLeft.x, checkBox.BBTopLeft.x);
					var iTopLeftY = Mathf.Min(movedBox.BBTopLeft.y, checkBox.BBTopLeft.y);
					var iBottomRightX = Mathf.Min(movedBox.BBBottomRight.x, checkBox.BBBottomRight.x);
					var iBottomRightY = Mathf.Max(movedBox.BBBottomRight.y, checkBox.BBBottomRight.y);

					var iWidth = Mathf.FloorToInt(Mathf.Abs(iTopLeftX - iBottomRightX));
					var iHeight = Mathf.FloorToInt(Mathf.Abs(iTopLeftY - iBottomRightY));

					// remember 1 unit == 1 camera pixel
					for (var i = 0; i < iHeight; i++)
					{
						for (var j = 0; j < iWidth; j++)
						{
							ColliderClass boxA;
							ColliderClass boxB;

							if (Math.Abs(movedBox.BBTopLeft.x - iTopLeftX) < 0.001f)
							{
								boxA = movedBox;
								boxB = checkBox;
							}
							else
							{
								boxA = checkBox;
								boxB = movedBox;
							}

							var yAdjust = Mathf.RoundToInt(Mathf.Abs(boxA.Position.y - iTopLeftY));
							yAdjust = Mathf.FloorToInt(yAdjust / boxA.Scale.y);

							bool pixelFromA;
							try
							{
								pixelFromA = boxA.CollisionMask[yAdjust + i, Mathf.FloorToInt(j / boxA.Scale.x)];
							}
							catch (IndexOutOfRangeException ex)
							{
								pixelFromA = false;
							}

							if (pixelFromA == false)
							{
								continue;
							}

							var deltaX = Mathf.RoundToInt(Mathf.Abs(iTopLeftX - boxB.Position.x)) + j;
							var deltaY = Mathf.RoundToInt(Mathf.Abs(iTopLeftY - boxB.Position.y)) + i;
							deltaX /= (int)boxB.Scale.x;
							deltaY /= (int)boxB.Scale.y;
							bool pixelFromB;
							try
							{
								pixelFromB = boxB.CollisionMask[deltaY, deltaX];
							}
							catch (IndexOutOfRangeException ex)
							{
								pixelFromB = false;
							}
							
							if (pixelFromA && pixelFromB)
							{
								current.x = savedX;
								current.y = savedY;
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

		private void OnDrawGizmos()
		{
			foreach (var box in colliders)
			{
				Gizmos.color = Color.red;
				Gizmos.DrawWireCube(box.BBCenter, box.BBSize);
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
