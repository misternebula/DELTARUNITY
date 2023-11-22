using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assets.RoomManager;
using Assets.SpriteManager;
using UnityEditor;
using UnityEngine;
using static UnityEngine.GraphicsBuffer;
using UnityEngine.SceneManagement;
using Assets.Instances;
using System.Reflection;
using UnityEngine.Serialization;
using System.Security.Policy;

namespace Assets
{
	public abstract partial class GamemakerObject : DrawWithDepth
	{
		#region Virtual Method Block
		public virtual void Precreate() { }
		internal bool _createRan;
		public virtual void Create() { }
		public virtual void Destroy() { }

		public virtual void Step_0() { } // step
		public virtual void Step_1() { } // begin step
		public virtual void Step_2() { } // end step

		public virtual void Draw_0() { _baseDraw = true; } // draw
		public virtual void Draw_64() { } // draw gui
		public virtual void Draw_65() { } // resize
		public virtual void Draw_72() { } // draw begin
		public virtual void Draw_73() { } // draw end
		public virtual void Draw_74() { } // draw GUI begin
		public virtual void Draw_75() { } // draw GUI end
		public virtual void Draw_76() { } // pre-draw
		public virtual void Draw_77() { } // post-draw

		public virtual void Alarm_0() { }
		public virtual void Alarm_1() { }
		public virtual void Alarm_2() { }
		public virtual void Alarm_3() { }
		public virtual void Alarm_4() { }
		public virtual void Alarm_5() { }
		public virtual void Alarm_6() { }
		public virtual void Alarm_7() { }
		public virtual void Alarm_8() { }
		public virtual void Alarm_9() { }
		public virtual void Alarm_10() { }
		public virtual void Alarm_11() { }

		// 0 - outside room
		// 1 - intersect boundary
		// 2 - game start
		// 3 - game end
		public virtual void Other_4() { } // room start
		public virtual void Other_5() { } // room end
		// 6 - no more lives
		public virtual void Other_7() { } // animation end
		// 8 - path ended
		// 9 - no more health

		public virtual void Other_10() { }
		public virtual void Other_11() { }
		public virtual void Other_12() { }
		public virtual void Other_13() { }
		public virtual void Other_14() { }
		public virtual void Other_15() { }
		public virtual void Other_16() { }
		public virtual void Other_17() { }
		public virtual void Other_18() { }
		public virtual void Other_19() { }
		public virtual void Other_20() { }
		public virtual void Other_21() { }
		public virtual void Other_22() { }
		public virtual void Other_23() { }
		public virtual void Other_24() { }
		public virtual void Other_25() { }
		public virtual void Other_26() { }
		public virtual void Event_13() { }
		public virtual void Event_14() { }
		public virtual void Event_15() { }
		#endregion

		public string object_index => GetType().Name;

		[SerializeField]
		[FormerlySerializedAs("sprite_index")]
		private string _sprite_index;
		public string sprite_index
		{
			get => _sprite_index;
			set
			{
				if (_sprite_index == value)
				{
					return;
				}

				_sprite_index = value;

				if (string.IsNullOrEmpty(value))
				{
					return;
				}

				var sprite = SpriteManager.SpriteManager.GetSpriteAsset(_sprite_index);
				_cachedSpriteWidth = sprite.SubImages[0].width;
				_cachedSpriteHeight = sprite.SubImages[0].height;
				_cached_sprite_xoffset = sprite.Origin.x;
				_cached_sprite_yoffset = sprite.Origin.y;

				if (!string.IsNullOrEmpty(mask_id))
				{
					return;
				}

				if (sprite == null)
				{
					return;
				}

				margins = sprite.Margins;

				if (margins != Vector4.zero)
				{
					CollisionManager.CollisionManager.RegisterCollider(this, margins);
				}
			}
		}

		[SerializeField]
		[FormerlySerializedAs("texture_mask_id")]
		private string _mask_id;
		public string mask_id
		{
			get => _mask_id;
			set
			{
				_mask_id = value;

				if (string.IsNullOrEmpty(value))
				{
					sprite_index = sprite_index; // force the setter to run again
					return;
				}

				var maskSprite = SpriteManager.SpriteManager.GetSpriteAsset(_mask_id);

				if (maskSprite == null)
				{
					return;
				}

				margins = maskSprite.Margins;
				_cached_sprite_xoffset = maskSprite.Origin.x;
				_cached_sprite_yoffset = maskSprite.Origin.y;

				if (margins != Vector4.zero)
				{
					Debug.Log($"mask_id changed");
					CollisionManager.CollisionManager.RegisterCollider(this, margins);
				}
			}
		}

		[SerializeField]
		[FormerlySerializedAs("image_index")]
		private double _image_index;
		public double image_index
		{
			get => _image_index;
			set
			{
				if ((int)_image_index == (int)value)
				{
					return;
				}

				var prevValue = _image_index;

				_image_index = value;

				if (!string.IsNullOrEmpty(mask_id))
				{
					return;
				}

				if (margins != Vector4.zero)
				{
					CollisionManager.CollisionManager.RegisterCollider(this, margins);
				}
			}
		}

		public double image_speed = 1;

		private double _hspeed;
		public double hspeed
		{
			get => _hspeed;
			set
			{
				_hspeed = value;
				_direction = VectorToDir(hspeed, vspeed);
				___speed = Mathf.Sign((float)___speed) * Math.Sqrt(Math.Pow(_hspeed, 2) + Math.Pow(_vspeed, 2));
			}
		}

		private double _vspeed;
		public double vspeed
		{
			get => _vspeed;
			set
			{
				_vspeed = value;
				_direction = VectorToDir(hspeed, vspeed);
				___speed = Mathf.Sign((float)___speed) * Math.Sqrt(Math.Pow(_hspeed, 2) + Math.Pow(_vspeed, 2));
			}
		}

		public int image_blend = 16777215;
		public double image_alpha = 1;

		private bool _persistentPrev = false;
		public bool persistent = false;

		public double gravity = 0;
		public double gravity_direction = 270;
		public bool visible = true;
		public double xstart = 0;
		public double ystart = 0;
		public double friction = 0;
		public Vector4 margins = Vector4.zero;
		public int view_current = 0;

		private double _direction;
		public double direction
		{
			get
			{
				return _direction;
			}

			set
			{
				_direction = value;
				_hspeed = Math.Cos(value * Mathf.Deg2Rad) * speed;
				_vspeed = -Math.Sin(value * Mathf.Deg2Rad) * speed;
			}
		}

		private double ___speed;
		public double speed
		{
			get => ___speed;
			set
			{
				___speed = value;
				var d = direction;
				_hspeed = Math.Cos(d * Mathf.Deg2Rad) * value;
				_vspeed = -Math.Sin(d * Mathf.Deg2Rad) * value;
			}
		}

		public double image_angle
		{
			get
			{
				return transform.rotation.eulerAngles.z;
			}

			set
			{
				if (transform.rotation.eulerAngles.z == (float)value)
				{
					return;
				}

				transform.rotation = Quaternion.Euler(0, 0, (float)value);
				CollisionManager.CollisionManager.UpdateRotationMask(this);
			}
		}

		public float path_speed = 0;

		public float drawOffset;
		private bool _baseDraw;

		public string room => RoomManager.Room.Instance.name;
		public float room_height => Room.Instance.Size.y;
		public float room_width => Room.Instance.Size.x;

		public void OnDrawGizmos()
		{
			if (Application.isPlaying || string.IsNullOrEmpty(sprite_index))
			{
				return;
			}

			var x1 = bbox_left;
			var x2 = bbox_right;
			var y1 = -bbox_top;
			var y2 = -bbox_bottom;

			var center = new Vector3((float)((x1 + x2) / 2), (float)((y1 + y2) / 2), 0);
			var size = new Vector3((float)(x2 - x1), (float)(y1 - y2), 1);

			Gizmos.color = Color.red;
			Gizmos.DrawWireCube(center, size);
			Gizmos.color = Color.white;

			Gizmos.color = Color.blue;
			var objCenter = new Vector3(
				(float)(x + (sprite_width / 2) - (sprite_xoffset * image_xscale)),
				(float)(-y - (sprite_height / 2) + (sprite_yoffset * image_yscale)),
				0);
			var objSize = new Vector3(
				(float)sprite_width,
				(float)sprite_height,
				1);
			Gizmos.DrawWireCube(objCenter, objSize);

			Gizmos.color = Color.white;

			if (sprite_index != ""/* && visible*/)
			{
				var sprite = SpriteManager.SpriteManager.GetSprite(sprite_index, image_index);

				if (sprite == null)
				{
					return;
				}

				Gizmos.DrawGUITexture(
					new Rect(
						(float)(x - (sprite_xoffset * image_xscale)),
						(float)(-y + (sprite_yoffset * image_yscale)),
						(float)sprite_width,
						(float)-sprite_height),
					sprite);
			}
		}

#if UNITY_EDITOR
		public void OnValidate()
		{
			var spriteDatabase = AssetDatabase.LoadAssetAtPath<CustomSpriteLibrary>("Assets/ScriptableObjects/SpriteDatabase.asset");

			if (!string.IsNullOrEmpty(mask_id))
			{
				var sprite = spriteDatabase.Sprites.FirstOrDefault(x => x.name == mask_id);

				if (sprite == null)
				{
					return;
				}

				margins = sprite.Margins;
				_cachedSpriteWidth = sprite.SubImages[0].width;
				_cachedSpriteHeight = sprite.SubImages[0].height;
				_cached_sprite_xoffset = sprite.Origin.x;
				_cached_sprite_yoffset = sprite.Origin.y;
			}
			else if (!string.IsNullOrEmpty(sprite_index))
			{
				var sprite = spriteDatabase.Sprites.FirstOrDefault(x => x.name == sprite_index);

				if (sprite == null)
				{
					return;
				}

				margins = sprite.Margins;
				_cachedSpriteWidth = sprite.SubImages[0].width;
				_cachedSpriteHeight = sprite.SubImages[0].height;
				_cached_sprite_xoffset = sprite.Origin.x;
				_cached_sprite_yoffset = sprite.Origin.y;
			}
		}
#endif

		public double image_xscale
		{
			get => transform.localScale.x;
			set
			{
				if (transform.localScale.x == value)
				{
					return;
				}

				transform.localScale = new Vector3((float)value, transform.localScale.y, transform.localScale.z);
				CollisionManager.CollisionManager.UpdateRotationMask(this);
			}
		}

		public double image_yscale
		{
			get => transform.localScale.y;
			set
			{
				if (transform.localScale.y == value)
				{
					return;
				}

				transform.localScale = new Vector3(transform.localScale.x, (float)value, transform.localScale.z);
				CollisionManager.CollisionManager.UpdateRotationMask(this);
			}
		}

		private int _cachedSpriteWidth;
		private int _cachedSpriteHeight;
		public double sprite_width => _cachedSpriteWidth * image_xscale;
		public double sprite_height => _cachedSpriteHeight * image_yscale;

		public double x
		{
			get => transform.position.x;
			set => transform.position = new Vector3((float)value, transform.position.y, transform.position.z);
		}

		public double y
		{
			get => -transform.position.y;
			set => transform.position = new Vector3(transform.position.x, (float)-value, transform.position.z);
		}

		public double bbox_left => transform.position.x + (margins.x * image_xscale) - (sprite_xoffset * image_xscale);
		public double bbox_right => transform.position.x + (margins.y * image_xscale) - (sprite_xoffset * image_xscale);
		public double bbox_top => -(transform.position.y - (margins.w * image_yscale)) - (sprite_yoffset * image_yscale);
		public double bbox_bottom => -(transform.position.y - (margins.z * image_yscale)) - (sprite_yoffset * image_yscale);

		private double _cached_sprite_xoffset;
		public double sprite_xoffset 
			=> string.IsNullOrEmpty(sprite_index)
					? x
					: _cached_sprite_xoffset;

		private double _cached_sprite_yoffset;
		public double sprite_yoffset
			=> string.IsNullOrEmpty(sprite_index)
				? y
				: _cached_sprite_yoffset;

		public int[] alarm = Enumerable.Repeat(-1, 12).ToArray();

		private int _updateCounter;

		private void Awake()
		{
			InstanceManager.Instance.RegisterInstance(this);
			DrawManager.Register(this);

			var sr = GetComponent<SpriteRenderer>();
			if (sr != null)
			{
				Destroy(sr);
			}

			if (margins != Vector4.zero)
			{
				CollisionManager.CollisionManager.RegisterCollider(this, margins);
			}
		}

		private void Start()
		{
			xstart = x;
			ystart = y;
		}

		private void OnDestroy()
		{
			DrawManager.Unregister(this);
			Destroy();

			if (margins != Vector4.zero)
			{
				CollisionManager.CollisionManager.UnregisterCollider(this);
			}
		}

		public void LateUpdate()
		{
			if (persistent != _persistentPrev)
			{
				_persistentPrev = persistent;

				if (persistent)
				{
					gameObject.transform.parent = null;
					DontDestroyOnLoad(gameObject);
				}
				else
				{
					// hacky way of undoing DontDestroyOnLoad
					SceneManager.MoveGameObjectToScene(gameObject, SceneManager.GetActiveScene());
				}
			}

			drawOffset = 0;
		}

		private List<Type> CollideObjects = new();

		public void AddCollideEvent(Type obj)
		{
			CollideObjects.Add(obj);
		}

		public void Step()
		{
			Step_1(); // begin

			foreach (var item in CollideObjects)
			{
				var obj = instance_place(x, y, item);
				if (obj != null)
				{
					GetType().GetMethod($"Collision_{item.Name}", BindingFlags.Public | BindingFlags.Instance).Invoke(this, new object[] { obj });
				}
			}

			Step_0(); // step

			Step_2(); // end
		}

		public sealed override void Draw()
		{
			if (visible && gameObject.activeInHierarchy)
			{
				Draw_76(); // pre
				Draw_72(); // begin
				Draw_0(); // draw
				Draw_73(); // end
				Draw_77(); // post
				Draw_74(); // gui begin
				Draw_64(); // gui
				Draw_75(); // gui end
			}

			for (var i = 0; i < alarm.Length; i++)
			{
				if (alarm[i] != -1)
				{
					alarm[i]--;

					if (alarm[i] == 0)
					{
						switch (i)
						{
							case 0:
								Alarm_0();
								break;
							case 1:
								Alarm_1();
								break;
							case 2:
								Alarm_2();
								break;
							case 3:
								Alarm_3();
								break;
							case 4:
								Alarm_4();
								break;
							case 5:
								Alarm_5();
								break;
							case 6:
								Alarm_6();
								break;
							case 7:
								Alarm_7();
								break;
							case 8:
								Alarm_8();
								break;
							case 9:
								Alarm_9();
								break;
							case 10:
								Alarm_10();
								break;
							case 11:
								Alarm_11();
								break;
						}

						if (alarm[i] == 0)
						{
							alarm[i] = -1;
						}
					}
				}
			}

			var shouldDraw = _baseDraw;
			_baseDraw = false;

			if (friction != 0)
			{
				if (speed > 0)
				{
					if (speed - friction < 0)
					{
						speed = 0;
					}
					else
					{
						speed -= friction;
					}
				}
				else if (speed < 0)
				{
					if (speed + friction > 0)
					{
						speed = 0;
					}
					else
					{
						speed += friction;
					}
				}
			}

			if (gravity != 0)
			{
				//vspeed += gravity;
				vspeed += -Math.Sin(degtorad(gravity_direction)) * gravity;
				hspeed += Math.Cos(degtorad(gravity_direction)) * gravity;
			}

			transform.position = new Vector3((float)(transform.position.x + hspeed), (float)(transform.position.y - vspeed), transform.position.z);

			var asset = SpriteManager.SpriteManager.GetSpriteAsset(sprite_index);

			if (asset != null)
			{
				var playbackType = asset.PlaybackSpeedType;
				var playbackSpeed = asset.PlaybackSpeed * image_speed;

				_updateCounter++;

				var deltaTime = 1 / 30f;
				var shouldIncrement = playbackType == PlaybackSpeedType.FramesPerSecond
					? _updateCounter >= 1f / (deltaTime / (1f / playbackSpeed))
					: _updateCounter >= 1f / playbackSpeed;

				if (shouldIncrement)
				{
					_updateCounter = 0;
					if (image_index + 1 == SpriteManager.SpriteManager.GetNumberOfFrames(sprite_index))
					{
						Other_7();
						image_index = 0;
					}
					else
					{
						image_index++;
					}
				}
			}

			if (shouldDraw)
			{
				SpriteManager.SpriteManager.DrawSelf(this);
			}
		}
	}
}
