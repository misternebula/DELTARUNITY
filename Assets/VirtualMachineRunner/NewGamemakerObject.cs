using Assets.Instances;
using Assets.RoomManager;
using Assets.SpriteManager;
using AYellowpaper.SerializedCollections;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Printing;
using System.Linq;
using System.Security.Claims;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Serialization;
using Object = System.Object;

namespace Assets.VirtualMachineRunner
{
	public class NewGamemakerObject : DrawWithDepth
	{
		public Dictionary<string, object> SelfVariables = new();

		public ObjectDefinition Definition;

		public string object_index => name;

		[SerializeField]
		[FormerlySerializedAs("sprite_index")]
		private int _sprite_index = -1;
		public int sprite_index
		{
			get => _sprite_index;
			set
			{
				if (_sprite_index == value)
				{
					return;
				}

				_sprite_index = value;

				if (value == -1)
				{
					return;
				}

				var sprite = SpriteManager.SpriteManager.GetSpriteAsset(_sprite_index);
				_cachedSpriteWidth = sprite.SubImages[0].width;
				_cachedSpriteHeight = sprite.SubImages[0].height;
				_cached_sprite_xoffset = sprite.Origin.x;
				_cached_sprite_yoffset = sprite.Origin.y;

				if (mask_id != -1)
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
		private int _mask_id = -1;
		public int mask_id
		{
			get => _mask_id;
			set
			{
				_mask_id = value;

				if (value == -1)
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

				if (mask_id != -1)
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
			=> sprite_index == -1
					? x
					: _cached_sprite_xoffset;

		private double _cached_sprite_yoffset;
		public double sprite_yoffset
			=> sprite_index == -1
				? y
				: _cached_sprite_yoffset;

		private int _updateCounter;

		internal bool _createRan;
		public int[] alarm = Enumerable.Repeat(-1, 12).ToArray();

		private void Awake()
		{
			sprite_index = Definition.sprite;
			visible = Definition.visible;
			persistent = Definition.persistent;
			mask_id = Definition.textureMaskId;

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
			VMExecuter.ExecuteScript(Definition.DestroyScript, this, Definition, EventType.Destroy);

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

		public sealed override void Draw()
		{
			if (visible && gameObject.activeInHierarchy)
			{
				ExecuteScript(this, Definition, EventType.Draw, (int)DrawType.PreDraw);
				ExecuteScript(this, Definition, EventType.Draw, (int)DrawType.DrawBegin);
				ExecuteScript(this, Definition, EventType.Draw, (int)DrawType.Draw);
				ExecuteScript(this, Definition, EventType.Draw, (int)DrawType.DrawEnd);
				ExecuteScript(this, Definition, EventType.Draw, (int)DrawType.PostDraw);
				ExecuteScript(this, Definition, EventType.Draw, (int)DrawType.DrawGUIBegin);
				ExecuteScript(this, Definition, EventType.Draw, (int)DrawType.DrawGUI);
				ExecuteScript(this, Definition, EventType.Draw, (int)DrawType.DrawGUIEnd);
			}

			for (var i = 0; i < alarm.Length; i++)
			{
				if (alarm[i] != -1)
				{
					alarm[i]--;

					if (alarm[i] == 0)
					{
						VMExecuter.ExecuteScript(Definition.AlarmScript[i], this, Definition, EventType.Alarm, i);

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
						VMExecuter.ExecuteScript(Definition.OtherScript[OtherType.AnimationEnd], this, Definition, EventType.Other, (int)OtherType.AnimationEnd);
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

		public static void ExecuteScript(NewGamemakerObject obj, ObjectDefinition definition, EventType type, int otherData = 0)
		{
			Debug.Log($"Trying to execute {type} {otherData} on {obj.object_index} with definition {definition.name}");

			void TryExecute(VMScript script)
			{
				if (script != null)
				{
					VMExecuter.ExecuteScript(script, obj, definition, type, otherData);
				}
				else if (definition.parent != null)
				{
					ExecuteScript(obj, definition.parent, type, otherData);
				}
				else
				{
					// event not found, and no parent to check
				}
			}

			void TryExecuteDict<T>(Dictionary<T, VMScript> dict, T index)
			{
				if (dict.TryGetValue(index, out var script))
				{
					VMExecuter.ExecuteScript(script, obj, definition, type, otherData);
				}
				else if (definition.parent != null)
				{
					ExecuteScript(obj, definition.parent, type, otherData);
				}
				else
				{
					// event not found, and no parent to check
				}
			}

			switch (type)
			{
				case EventType.Create:
					TryExecute(definition.CreateScript);
					break;
				case EventType.Destroy:
					TryExecute(definition.DestroyScript);
					break;
				case EventType.Alarm:
					TryExecuteDict(definition.AlarmScript, otherData);
					break;
				case EventType.Step:
					TryExecuteDict(definition.StepScript, (StepType)otherData);
					break;
				case EventType.Other:
					TryExecuteDict(definition.OtherScript, (OtherType)otherData);
					break;
				case EventType.Draw:
					TryExecuteDict(definition.DrawScript, (DrawType)otherData);
					break;
				case EventType.PreCreate:
					TryExecute(definition.PreCreateScript);
					break;
				case EventType.KeyPress:
				case EventType.KeyRelease:
				case EventType.Trigger:
				case EventType.CleanUp:
				case EventType.Gesture:
				case EventType.Collision:
				case EventType.Keyboard:
				case EventType.Mouse:
					Debug.LogError($"{type} not implemented!");
					break;
			}
		}

		public void Step()
		{
			ExecuteScript(this, Definition, EventType.Step, (int)StepType.BeginStep);

			// DO COLLISION STUFF

			ExecuteScript(this, Definition, EventType.Step, (int)StepType.Step);
			ExecuteScript(this, Definition, EventType.Step, (int)StepType.EndStep);
		}

		public double degtorad(double deg) => deg * (Math.PI / 180);

		private double VectorToDir(double gmHoriz, double gmVert)
		{
			if (gmHoriz >= 0 && gmVert == 0)
			{
				return 0;
			}

			if (gmHoriz > 0 && gmVert == 0)
			{
				return 0;
			}

			if (gmHoriz == 0 && gmVert < 0)
			{
				return 90;
			}

			// +gmVert means down, -gmVert means up
			gmVert = -gmVert;

			var angle = Math.Atan(gmVert / gmHoriz) * Mathf.Rad2Deg;

			if (gmVert > 0)
			{
				if (gmHoriz > 0)
				{
					return angle;
				}

				return angle + 180;
			}

			if (gmHoriz > 0)
			{
				return 360 + angle;
			}

			return 180 + angle;
		}
	}
}