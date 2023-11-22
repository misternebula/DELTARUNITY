using Assets.Instances;
using Assets.RoomManager;
using Assets.Scripts;
using Assets.Scripts.IniFiles;
using Assets.SpriteManager;
using Assets.TextManager;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine.Windows;

namespace Assets
{
	public partial class GamemakerObject
	{
		#region MATHS
		public float random(double upper) => UnityEngine.Random.Range(0f, (float)upper);
		public double point_direction(double x1, double y1, double x2, double y2) => VectorToDir(x2 - x1, y2 - y1);
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
		public double point_distance(double x1, double y1, double x2, double y2)
		{
			var horizDistance = Math.Abs(x2 - x1);
			var vertDistance = Math.Abs(y2 - y1);

			return Math.Sqrt((horizDistance * horizDistance) + (vertDistance * vertDistance));
		}
		public double cos(double num) => Math.Cos(num);
		public double sin(double num) => Math.Sin(num);
		public float pi => Mathf.PI;
		public double abs(double num) => Math.Abs(num);
		public int floor(double num) => Mathf.FloorToInt((float)num);
		public int round(double num) => Mathf.RoundToInt((float)num);
		public int ceil(double num) => Mathf.CeilToInt((float)num);
		public static T choose<T>(params T[] args) => args[UnityEngine.Random.Range(0, args.Length)];
		public double lengthdir_x(double len, double dir) => len * Math.Cos(dir * Mathf.Deg2Rad);
		public double lengthdir_y(double len, double dir) => -len * Math.Sin(dir * Mathf.Deg2Rad);
		public float power(float x, float n) => Mathf.Pow(x, n);
		public float arcsin(float x) => Mathf.Asin(x);
		public float sqr(float val) => val * val;
		public float sqrt(float val) => Mathf.Sqrt(val);
		public double real(string val) => double.Parse(val);
		#endregion

		#region DRAWING
		public readonly HAlign fa_left = HAlign.left;
		public readonly HAlign fa_center = HAlign.center;
		public readonly HAlign fa_right = HAlign.right;
		public void draw_set_alpha(double alpha) => SpriteManager.SpriteManager.DrawAlpha = (float)alpha;
		public void draw_set_font(string name)
		{
			var library = TextManager.TextManager.instance.FontAssets;
			var font = library.FirstOrDefault(x => x.name == name);

			if (font == null)
			{
				Debug.LogError($"Couldn't find a font called {name}");
				draw_set_font("fnt_main");
				return;
			}

			TextManager.TextManager.fontAsset = font;
		}
		public void draw_set_font(int index)
		{
			var fonts = new string[]
			{
				"fnt_tinynoelle",
				"fnt_dotumche",
				"fnt_mainbig",
				"fnt_main",
				"fnt_comicsans",
				"fnt_small"
			};

			draw_set_font(fonts[index - 1]);
		}
		public void draw_set_color(int col) => SpriteManager.SpriteManager.DrawColor = col;
		public void draw_set_colour(int col) => SpriteManager.SpriteManager.DrawColor = col;
		public static int draw_get_color() => SpriteManager.SpriteManager.DrawColor;
		public void draw_set_halign(HAlign ha) => TextManager.TextManager.halign = ha;
		public void draw_set_valign(VAlign va) => TextManager.TextManager.valign = va;
		public void draw_sprite(string name, int index, double x, double y) => SpriteManager.SpriteManager.DrawSprite(name, index, x, y);
		public void draw_sprite(string name, double index, double x, double y) => SpriteManager.SpriteManager.DrawSprite(name, (int)index, x, y);
		public void draw_sprite_ext(string name, double index, double x, double y, double xscale, double yscale, double rot, int blend, double alpha) => SpriteManager.SpriteManager.DrawSpriteExt(name, index, x, y, xscale, yscale, rot, blend, alpha);
		public void draw_sprite_stretched(string name, int subimg, double x, double y, double w, double h) => SpriteManager.SpriteManager.draw_sprite_stretched(name, subimg, x, y, w, h);
		public void draw_sprite_part_ext(string name, double index, int left, int top, int width, int height, double x, double y, double xscale, double yscale, int blend, double alpha)=> SpriteManager.SpriteManager.DrawSpritePartExt(name, index, left, top, width, height, x, y, xscale, yscale, blend, alpha);
		public void draw_rectangle(double x1, double y1, double x2, double y2, bool outline)
		{
			if (outline)
			{
				draw_rectangle(x1, y1, x2, y1 + 1, false);
				draw_rectangle(x2 - 1, y1 + 1, x2, y2, false);
				draw_rectangle(x1, y2 - 1, x2, y2, false);
				draw_rectangle(x1, y1, x1 + 1, y2, false);
				return;
			}

			var width = (x2 - x1);
			var height = (y2 - y1);

			if (height < 0)
			{
				height = -height;
				y1 -= height;
			}

			GamemakerCamera.RenderJobs.Add(new GMRectangleJob()
			{
				width = (float)width,
				height = (float)height,
				screenPos = new Vector2((float)x1, (float)y1),
				blend = SpriteManager.SpriteManager.DrawColor.BGRToColor(),
				alpha = SpriteManager.SpriteManager.DrawAlpha
			});
		}
		public void draw_text(double x, double y, string text) => TextManager.TextManager.DrawText(x, y, text);
		public void draw_text_color(double x, double y, string text, int c1, int c2, int c3, int c4, double alpha) => draw_text_colour(x, y, text, c1, c2, c3, c4, alpha);
		public void draw_text_colour(double x, double y, string text, int c1, int c2, int c3, int c4, double alpha) => TextManager.TextManager.DrawTextColor(x, y, text, c1, c2, c3, c4, alpha);
		public void draw_text_transformed(double x, double y, string text, double xscale, double yscale, float angle) => TextManager.TextManager.DrawTextTransformed(x, y, text, xscale, yscale, angle);
		public void draw_text_ext(float x, float y, string text, float sep, float w) => TextManager.TextManager.DrawText(x, y, text);
		public void draw_self() => SpriteManager.SpriteManager.DrawSelf(this);
		public void draw_triangle(double x1, double y1, double x2, double y2, double x3, double y3, bool outline)
		{
			if (outline)
			{
				throw new NotImplementedException();
			}

			GamemakerCamera.RenderJobs.Add(new GMTriangleJob()
			{
				blend = SpriteManager.SpriteManager.DrawColor.BGRToColor(),
				alpha = SpriteManager.SpriteManager.DrawAlpha,
				firstCorner = new Vector2((float)x1, (float)y1),
				secondCorner = new Vector2((float)x2, (float)y2),
				thirdCorner = new Vector3((float)x3, (float)y3)
			});

			/*if (renderer == null)
			{
				// mesh doesnt exist, we have to create it from scratch!
				var mesh = new Mesh
				{
					vertices = new Vector3[] { new Vector3(x1, -y1, 0), new Vector3(x2, -y2, 0), new Vector3(x3, -y3, 0) },
					triangles = new int[] { 0, 1, 2 },
					normals = new Vector3[] { Vector3.back, Vector3.back, Vector3.back } // towards camera
				};

				mesh.RecalculateBounds();

				var newGO = new GameObject();
				renderer = newGO.AddComponent<MeshRenderer>();
				var mf = newGO.AddComponent<MeshFilter>();
				mf.mesh = mesh;

				renderer.transform.position = new Vector3(0, 0, (depth - drawOffset));
				drawOffset += 0.5f;

				var material = Instantiate(SpriteManager.SpriteManager.Instance.TriangleMaterial);
				material.color = SpriteManager.SpriteManager.DrawColor.BGRToColor();

				renderer.sharedMaterial = material;

				renderer.gameObject.AddComponent<SpriteDeleter>().DrawnThisFrame = true;

				return;
			}

			var mmeshToChange = renderer.GetComponent<MeshFilter>().mesh;
			mmeshToChange.vertices = new Vector3[] { new Vector3(x1, -y1, 0), new Vector3(x2, -y2, 0), new Vector3(x3, -y3, 0) };
			mmeshToChange.RecalculateBounds();
			renderer.material.color = SpriteManager.SpriteManager.DrawColor.BGRToColor();

			renderer.transform.position = new Vector3(0, 0, (depth - drawOffset));
			drawOffset += 0.5f;

			renderer.GetComponent<SpriteDeleter>().DrawnThisFrame = true;*/
		}
		public int sprite_get_number(string name) => SpriteManager.SpriteManager.GetNumberOfFrames(name);
		public void d3d_set_fog(bool enable, int color, float start, float end)
		{
			if ((start != 0&& start != 1) || (end != 0 && end != 1))
			{
				throw new NotImplementedException("actual fog");
			}

			SpriteManager.SpriteManager.FogEnabled = enable;
			SpriteManager.SpriteManager.FogColor = color;
		}
		#endregion

		// INSTANCE MANAGEMENT
		public static GamemakerObject instance_create(double x, double y, string name) => InstanceManager.Instance.instance_create(x, y, name).GetComponent<GamemakerObject>();
		public static T instance_create<T>(double x, double y, string name) => instance_create(x, y, name).GetComponent<T>();
		public static T instance_create_depth<T>(float x, float y, float depth, string name) where T : GamemakerObject
		{
			var ret = instance_create<T>(x, y, name);
			ret.depth = depth;
			return ret;
		}
		public GMBOOL instance_exists(GamemakerObject obj) => obj != null;
		public GMBOOL instance_exists(string name) => InstanceManager.Instance.instance_exists(name);
		public int instance_number(string name) => InstanceManager.Instance.instance_number(name);
		public int instance_number(GamemakerObject obj) => obj == null ? 0 : InstanceManager.Instance.instance_number(obj.object_index);
		public void instance_destroy() => InstanceManager.Instance.instance_destroy(this);
		public void instance_destroy<T>()
			where T : GamemakerObject
		{
			foreach (var item in with<T>())
			{
				item.instance_destroy();
			}
		}

		#region COLORS
		public readonly int c_black = 0;
		public readonly int c_dkgray = 4210752;
		public readonly int c_gray = 8421504;
		public readonly int c_silver = 12632256;
		public readonly int c_white = 16777215;
		public readonly int c_red = 255;
		public readonly int c_lime = 65280;
		public readonly int c_blue = 16711680;
		public readonly int c_yellow = 65535;
		public readonly int c_aqua = 16776960;
		public readonly int c_fuchsia = 16711935;
		public readonly int c_maroon = 128;
		public readonly int c_green = 32768;
		public readonly int c_navy = 8388608;
		public readonly int c_purple = 8388736;
		public readonly int c_orange = 4235519;
		public int merge_color(int one, int two, double t)
		{
			var oneBytes = BitConverter.GetBytes(one);
			var twoBytes = BitConverter.GetBytes(two);
			var aa = oneBytes.Length == 4 ? oneBytes[3] : 255;
			var ba = twoBytes.Length == 4 ? twoBytes[3] : 255;
			t = Math.Clamp(t, 0, 1);
			var mr = oneBytes[0] + (twoBytes[0] - oneBytes[0]) * t;
			var mg = oneBytes[1] + (twoBytes[1] - oneBytes[1]) * t;
			var mb = oneBytes[2] + (twoBytes[2] - oneBytes[2]) * t;
			var ma = aa + (ba - aa) * t;
			return BitConverter.IsLittleEndian
				? BitConverter.ToInt32(new byte[] { (byte)mr, (byte)mg, (byte)mb, (byte)ma }, 0)
				: BitConverter.ToInt32(new byte[] { (byte)ma, (byte)mb, (byte)mg, (byte)mr }, 0);
		}
		#endregion

		// MOVEMENT
		public void move_towards_point(double targetx, double targety, double sp)
		{
			direction = point_direction(x, y, targetx, targety);
			speed = sp;
		}

		// CAMERA
		public double __view_get(int arg0, int arg1) => __view_get(arg0);
		public double __view_get(int arg0) => arg0 switch
		{
			0 => GamemakerCamera.Instance.x,
			1 => -GamemakerCamera.Instance.y,
			2 => (int)Room.Instance.ViewSize.x,
			3 => (int)Room.Instance.ViewSize.y,
			_ => throw new NotImplementedException(arg0.ToString())
		};
		
		public void __view_set(int arg0, int arg1, object arg2) => __view_set(arg0, arg2);
		public object __view_set(int arg0, object arg1) => arg0 switch
		{
			0 => GamemakerCamera.Instance.x = Convert.ToInt32(arg1),
			1 => GamemakerCamera.Instance.y = -Convert.ToInt32(arg1),
			9 => GamemakerCamera.Instance.ObjectToFollow = (GamemakerObject)arg1,
			_ => throw new NotImplementedException(arg0.ToString())
		};

		// misc
		public string string_hash_to_newline(string text)
		{
			if (string.IsNullOrEmpty(text))
			{
				return text;
			}

			return text.Replace("#", Environment.NewLine);
		}
		public string string_hash_to_newline(int number)
		{
			return number.ToString();
		}
		public int string_width(string text)
		{
			return TextManager.TextManager.StringWidth(text);
		}
		public void event_user(int arg)
		{
			switch (arg)
			{
				case 0:
					Other_10();
					break;
				case 1:
					Other_11();
					break;
				case 2:
					Other_12();
					break;
				case 3:
					Other_13();
					break;
				case 4:
					Other_14();
					break;
				case 5:
					Other_15();
					break;
				case 6:
					Other_16();
					break;
				case 7:
					Other_17();
					break;
				case 8:
					Other_18();
					break;
				case 9:
					Other_19();
					break;
				case 10:
					Other_20();
					break;
				case 11:
					Other_21();
					break;
				case 12:
					Other_22();
					break;
				case 13:
					Other_23();
					break;
				case 14:
					Other_24();
					break;
				case 15:
					Other_25();
					break;
				case 16:
					Other_26();
					break;
				default:
					Debug.LogError(arg);
					Debug.Break();
					break;
			}
		}
		public T collision_rectangle<T>(double x1, double y1, double x2, double y2, bool precise, bool notme) where T : GamemakerObject => CollisionManager.CollisionManager.collision_rectangle<T>(x1, y1, x2, y2, precise, notme, this);
		public string gm_string(double num)
		{
			// return float to 2 decimal places, but only if it has a fractional part
			var afterTwoDigits = num % 0.01f;
			var truncated = num - afterTwoDigits;

			return (truncated % 1) == 0
				? truncated.ToString()
				: Math.Round((double)truncated, 2).ToString();
		}
		public string gm_string(string str) => str;

		[DllImport("user32.dll", EntryPoint = "SetWindowText")]
		public static extern bool SetWindowText(System.IntPtr hwnd, System.String lpString);
		[DllImport("user32.dll", EntryPoint = "FindWindow")]
		public static extern System.IntPtr FindWindow(System.String className, System.String windowName);

		private static string _caption = "DELTARUNITY";
		public void window_set_caption(string caption)
		{
#if !UNITY_EDITOR
			var windowPtr = FindWindow(null, _caption);
			SetWindowText(windowPtr, caption);
#endif
			_caption = caption;

			Debug.Log($"Window caption : {caption}");
		}

		public int display_get_height()
		{
			return Screen.mainWindowDisplayInfo.height;
		}
		public int display_get_width()
		{
			return Screen.mainWindowDisplayInfo.width;
		}
		public AudioSource audio_play_sound(string name, int pri, bool loop) => AudioManager.AudioManager.Instance.PlaySound(name, pri, loop);
		public float lerp(float a, float b, float amt) => Mathf.Lerp(a, b, amt);
		public float clamp(float val, float min, float max) => Mathf.Clamp(val, min, max);
		public int clamp(int val, int min, int max) => Mathf.Clamp(val, min, max);
		public void game_end()
		{
#if UNITY_EDITOR
			UnityEditor.EditorApplication.isPlaying = false;
#else
			Application.Quit();
#endif
		}
		public void audio_sound_gain(AudioSource index, double volume, double time) => AudioManager.AudioManager.Instance.ChangeGain(index, volume, time);
		public void audio_sound_gain(string index, double volume, double time)
		{
			foreach (var item in AudioManager.AudioManager.Instance.GetAudioSources(index))
			{
				AudioManager.AudioManager.Instance.ChangeGain(item, volume, time);
			}
		}
		public float view_hport => Room.Instance.ViewSize.y;
		public float view_wport => Room.Instance.ViewSize.x;
		public AudioSource snd_play(string argument0) => audio_play_sound(argument0, 50, false);
		public AudioSource snd_play_x(string argument0, float argument1, float argument2)
		{
			var _mysnd = audio_play_sound(argument0, 50, false);
			snd_volume(_mysnd, argument1, 0);
			snd_pitch(_mysnd, argument2);
			return _mysnd;
		}
		public void snd_volume(AudioSource argument0, double argument1, double argument2)
		{
			audio_sound_gain(argument0, argument1, ((argument2 * 1000) / 30));
		}
		public void snd_volume(string argument0, float argument1, float argument2)
		{
			foreach (var item in AudioManager.AudioManager.Instance.GetAudioSources(argument0))
			{
				audio_sound_gain(item, argument1, ((argument2 * 1000) / 30));
			}
		}
		public void snd_pitch(AudioSource argument0, double argument1)
		{
			audio_sound_pitch(argument0, argument1);
		}
		public void snd_pitch(string argument0, double argument1)
		{
			audio_sound_pitch(argument0, argument1);
		}
		public void audio_sound_pitch(string name, double pitch)
		{
			var assets = AudioManager.AudioManager.Instance.GetAudioSources(name);
			foreach (var asset in assets)
			{
				asset.pitch = (float)pitch;
			}
		}
		public void audio_sound_pitch(AudioSource index, double pitch)
		{
			index.pitch = (float)pitch;
		}
		public int string_length(string str)
		{
			if (string.IsNullOrEmpty(str))
			{
				return 0;
			}

			return str.Length;
		}
		public string string_char_at(string str, int index)
		{
			if (string.IsNullOrEmpty(str) || index > str.Length)
			{
				return "";
			}

			if (index <= 0)
			{
				return str[0].ToString();
			}

			// guh index starts at one? goofy gamemaker
			return str[index - 1].ToString();
		}
		public int ord(string str) => str[0];
		public void show_debug_message(string message) => Debug.Log(message);
		public void audio_stop_sound(string id)
		{
			AudioManager.AudioManager.Instance.audio_stop_sound(id);
		}
		public double cameraheight() => __view_get(3);
		public double camerawidth() => __view_get(2);
		public string string_delete(string str, int index, int count) => str.Remove(index - 1, count);
		public string string_insert(string substr, string str, int index) => str.Insert(index - 1, substr);
		public string string_copy(string str, int index, int count) => str.Substring(index - 1, count);
		public T[] with<T>() where T : GamemakerObject
		{
			return FindObjectsOfType<T>();
		}
		/*public IEnumerable<GamemakerObject> with(string name)
		{
			foreach (var item in InstanceManager.Instance.instances)
			{
				if (item.object_index == name)
				{
					yield return item;
					//break;
				}

				var subClasses = item.GetType().Assembly.GetTypes().Where(x => x.IsSubclassOf(item.GetType()));
				foreach (var subClass in subClasses)
				{
					if (subClass.Name == name)
					{
						yield return item;
						//break;
					}
				}
			}
		}*/
		public string chr(int val) => ((char)val).ToString();
		public int string_pos(string substr, string str)
		{
			return str.IndexOf(substr) + 1;
		}
		public float random_range(float n1, float n2) => UnityEngine.Random.Range(n1, n2);
		public bool place_meeting<T>(double x, double y)
		{
			return CollisionManager.CollisionManager.instance_place(x, y, this, typeof(T)) != null;
		}
		public bool place_meeting(double x, double y, Type obj)
		{
			return CollisionManager.CollisionManager.instance_place(x, y, this, obj) != null;
		}
		public GamemakerObject instance_place(double x, double y, Type obj)
		{
			return CollisionManager.CollisionManager.instance_place(x, y, this, obj);
		}
		public void draw_line(double x1, double y1, double x2, double y2)
		{
			draw_line_width(x1, y1, x2, y2, 1);
		}
		public void draw_line_width(double x1, double y1, double x2, double y2, int width)
		{
			GamemakerCamera.RenderJobs.Add(new GMLineJob()
			{
				blend = SpriteManager.SpriteManager.DrawColor.BGRToColor(),
				alpha = SpriteManager.SpriteManager.DrawAlpha,
				start = new Vector2((float)x1, (float)y1),
				end = new Vector2((float)x2, (float)y2),
				width = width
			});
		}
		public bool is_real(object value) => value is int or float;
		public bool is_string(object value) => value is string;
		public string string_upper(string str) => str.ToUpper();
		public string room_next(string numb) => RoomManager.RoomManager.Instance.room_next(numb);
		public string room_previous(string numb) => RoomManager.RoomManager.Instance.room_previous(numb);
		public void room_goto_next() => RoomManager.RoomManager.Instance.room_goto_next();
		public void room_goto_previous() => RoomManager.RoomManager.Instance.room_goto_previous();
		public void room_goto(string name) => RoomManager.RoomManager.Instance.ChangeRoom(name);
		public double distance_to_point(double _x, double _y)
		{
			if (sprite_index == "")
			{
				return point_distance(_x, _y, x, y);
			}

			var centerX = (bbox_left + bbox_right) / 2;
			var centerY = (bbox_top + bbox_bottom) / 2;
			var width = bbox_right - bbox_left;
			var height = bbox_bottom - bbox_top;

			var dx = Math.Max(Math.Abs(_x - centerX) - (width / 2), 0);
			var dy = Math.Max(Math.Abs(_y - centerY) - (height / 2), 0);
			return Math.Sqrt((dx * dx) + (dy * dy));
		}
		public string string_lower(string str) => str.ToLower();
		public void draw_sprite_part(string name, int index, int left, int top, int width, int height, double x, double y) => SpriteManager.SpriteManager.DrawSpritePart(name, index, left, top, width, height, x, y);
		public int sprite_get_width(string name) => SpriteManager.SpriteManager.GetSprite(name, 0).width;
		public int sprite_get_height(string name) => SpriteManager.SpriteManager.GetSprite(name, 0).height;
		public double degtorad(double deg) => deg * (Math.PI / 180);
		public string string_digits(string str)
		{
			return new String(str.Where(Char.IsDigit).ToArray());
		}
		public GamemakerObject id => this;
		public string object_get_sprite(string name)
		{
			var prefab = InstanceManager.Instance.Asset.Prefabs.FirstOrDefault(x => x.name == name);

			if (prefab == null)
			{
				return null;
			}

			return prefab.GetComponent<GamemakerObject>().sprite_index;
		}
		public void draw_sprite_tiled_ext(string sprite, int subimg, double x, double y, double xscale, double yscale, int colour, double alpha)
		{
			var spriteTex = SpriteManager.SpriteManager.GetSprite(sprite, subimg);

			var sizeWidth = spriteTex.width;
			var sizeHeight = spriteTex.height;

			var tempX = x;
			var tempY = y;

			var viewTopLeftX = GamemakerCamera.Instance.x;
			var viewTopLeftY = GamemakerCamera.Instance.y;

			while (tempX > viewTopLeftX)
			{
				tempX -= sizeWidth;
			}

			while (tempY > viewTopLeftY)
			{
				tempY -= sizeHeight;
			}

			// tempX and tempY are now the topleft-most co-ords that are offscreen

			var xOffscreenValue = viewTopLeftX - tempX;
			var yOffscreenValue = viewTopLeftY - tempY;

			var countToDrawHoriz = Mathf.CeilToInt((Room.Instance.ViewSize.x + (float)xOffscreenValue) / sizeWidth);
			var countToDrawVert = Mathf.CeilToInt((Room.Instance.ViewSize.y + (float)yOffscreenValue) / sizeHeight);

			for (var i = 0; i < countToDrawVert; i++)
			{
				for (var j = 0; j < countToDrawHoriz; j++)
				{
					draw_sprite_ext(sprite, subimg, tempX + (j * sizeWidth), tempY + (i * sizeHeight), xscale, yscale, 0, colour, alpha);
				}
			}
		}
		public int max(params int[] args)
		{
			return Mathf.Max(args);
		}
		public float max(params float[] args)
		{
			return Mathf.Max(args);
		}
		public float min(params float[] args)
		{
			return Mathf.Min(args);
		}
		public int min(params int[] args)
		{
			return Mathf.Min(args);
		}
		public int irandom(float n)
		{
			return UnityEngine.Random.Range(0, Mathf.FloorToInt(n) + 1);
		}
		public int array_length_1d(Array array)
		{
			return array.Length;
		}
		public void game_restart()
		{
			SceneManager.LoadScene(0);
		}
		public string string_replace_all(string str, string substr, string newstr)
		{
			return str.Replace(substr, newstr);
		}
		public bool audio_is_playing(string name) => AudioManager.AudioManager.Instance.GetAudioSources(name).Any();
		public void audio_stop_all()
		{
			AudioManager.AudioManager.Instance.StopAllAudio();
		}
		public void tile_layer_hide(int depth)
		{
			var layer = FindObjectsOfType<GMLayer>().First(x => x.Depth == depth);
			layer.gameObject.SetActive(false);
		}
		public GMTile[] tile_get_ids_at_depth(int depth)
		{
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().First(x => x.Depth == depth);
			var tiles = layer.GetComponentsInChildren<GMTile>();
			return tiles;
		}
		public void tile_set_alpha(GMTile tile, double alpha)
		{
			tile.Alpha = alpha;
		}
		public string font_add_sprite_ext(string sprite, string string_map, bool prop, int sep)
		{
			var spriteAsset = SpriteManager.SpriteManager.GetSpriteAsset(sprite);

			var newFont = new FontAsset();
			newFont.name = $"fnt_{sprite}";
			newFont.spriteIndex = sprite;
			newFont.sep = sep;

			for (var i = 0; i < string_map.Length; i++)
			{
				var fontAssetEntry = new Glyph
				{
					characterIndex = string_map[i]
				};

				newFont.entries.Add(fontAssetEntry);
			}

			TextManager.TextManager.instance.FontAssets.Add(newFont);

			return $"fnt_{sprite}";
		}
		public string room_get_name(int index)
		{
			return RoomManager.RoomManager.Instance.RoomGetName(index);
		}
		public bool window_get_fullscreen()
		{
			return false;
		}
		public void audio_resume_sound(AudioSource snd)
		{
			if (snd == null)
			{
				return;
			}
			snd.UnPause();
		}
		public void audio_pause_sound(AudioSource snd)
		{
			if (snd == null)
			{
				return;
			}
			snd.Pause();
		}
		public int[] layer_get_all()
		{
			// TODO : store layers in a dict
			return Resources.FindObjectsOfTypeAll<GMLayer>().Select(x => x.LayerId).ToArray();
		}
		public int layer_get_depth(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().First(x => x.LayerId == layerId);
			return layer.Depth;
		}
		public void layer_depth(int layerId, int depth)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().First(x => x.LayerId == layerId);
			layer.Depth = depth;
		}
		public int[] layer_get_all_elements(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().First(x => x.LayerId == layerId);
			var list = new List<int>();

			/*foreach (var item in layer.GetComponentsInChildren<GamemakerObject>())
			{
				list.Add(item);
			}

			foreach (var item in layer.GetComponentsInChildren<GMTile>())
			{
				list.Add(item);
			}*/

			foreach (var item in layer.GetComponentsInChildren<DrawWithDepth>())
			{
				list.Add(item.instanceId);
			}

			return list.ToArray();
		}

		public int layer_get_element_type(int elementId)
		{
			var element = Resources.FindObjectsOfTypeAll<DrawWithDepth>().First(x => x.instanceId == elementId);

			if (element is GMBackground)
			{
				return 1; // background
			}
			else if (element is GMTile)
			{
				return 7; // tile
			}
			else
			{
				return 9; // undefined
			}
		}

		public string layer_get_name(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			return layer.name;
		}

		public int layer_tile_get_x(int tileId)
		{
			var tile = Resources.FindObjectsOfTypeAll<GMTile>().FirstOrDefault(x => x.instanceId == tileId);
			return (int)tile.transform.position.x;
		}

		public int layer_tile_get_y(int tileId)
		{
			var tile = Resources.FindObjectsOfTypeAll<GMTile>().FirstOrDefault(x => x.instanceId == tileId);
			return (int)-tile.transform.position.y;
		}

		public void layer_tile_x(int tileId, int x)
		{
			var tile = Resources.FindObjectsOfTypeAll<GMTile>().FirstOrDefault(x => x.instanceId == tileId);
			tile.transform.position = new Vector3(x, tile.transform.position.y, 0);
		}

		public void layer_tile_y(int tileId, int y)
		{
			var tile = Resources.FindObjectsOfTypeAll<GMTile>().FirstOrDefault(x => x.instanceId == tileId);
			tile.transform.position = new Vector3(tile.transform.position.x, -y, 0);
		}

		public bool layer_get_visible(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return false;
			}
			return layer.Visible;
		}

		public void layer_set_visible(int layerId, bool visible)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			layer.Visible = visible;
		}

		public double layer_get_x(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return 0;
			}
			return layer.X;
		}

		public double layer_get_y(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return 0;
			}
			return layer.Y;
		}

		public void layer_x(int layerId, double x)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			layer.X = x;
		}

		public void layer_y(int layerId, double y)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			layer.Y = y;
		}

		public double layer_get_hspeed(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return 0;
			}
			return layer.HSpeed;
		}

		public double layer_get_vspeed(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return 0;
			}
			return layer.VSpeed;
		}

		public void layer_hspeed(int layerId, double hspeed)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			layer.HSpeed = hspeed;
		}

		public void layer_vspeed(int layerId, double vspeed)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			layer.VSpeed = vspeed;
		}

		public string layer_background_get_sprite(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return null;
			}
			var background = layer.GetComponent<GMBackground>();
			return background.sprite;
		}

		public void layer_background_change(int layerId, string spriteIndex)
		{
			layer_background_sprite(layerId, spriteIndex);
		}

		public void layer_background_sprite(int layerId, string spriteIndex)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			var background = layer.GetComponent<GMBackground>();
			background.sprite = spriteIndex;
		}

		public bool layer_background_get_htiled(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return false;
			}
			var background = layer.GetComponent<GMBackground>();
			return background.HTiled;
		}

		public bool layer_background_get_vtiled(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return false;
			}
			var background = layer.GetComponent<GMBackground>();
			return background.VTiled;
		}

		public void layer_background_htiled(int layerId, GMBOOL value)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			var background = layer.GetComponent<GMBackground>();
			background.HTiled = value;
		}

		public void layer_background_vtiled(int layerId, GMBOOL value)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			var background = layer.GetComponent<GMBackground>();
			background.VTiled = value;
		}

		public int layer_background_get_blend(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return 16777215;
			}
			var background = layer.GetComponent<GMBackground>();
			return background.Color;
		}

		public void layer_background_blend(int layerId, int color)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			var background = layer.GetComponent<GMBackground>();
			background.Color = color;
		}

		public double layer_background_get_alpha(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return 1;
			}
			var background = layer.GetComponent<GMBackground>();
			return background.Alpha;
		}

		public void layer_background_alpha(int layerId, double alpha)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			var background = layer.GetComponent<GMBackground>();
			background.Alpha = alpha;
		}

		public double layer_background_get_xscale(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return 1;
			}
			var background = layer.GetComponent<GMBackground>();
			return background.XScale;
		}

		public double layer_background_get_yscale(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return 1;
			}
			var background = layer.GetComponent<GMBackground>();
			return background.YScale;
		}

		public void layer_background_xscale(int layerId, double xscale)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			var background = layer.GetComponent<GMBackground>();
			background.XScale = xscale;
		}

		public void layer_background_yscale(int layerId, double yscale)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			var background = layer.GetComponent<GMBackground>();
			background.YScale = yscale;
		}

		public void layer_background_visible(int layerId, GMBOOL visible)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			var background = layer.GetComponent<GMBackground>();
			background.Visible = visible;
		}

		public GMBOOL layer_background_get_stretch(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return false;
			}
			var background = layer.GetComponent<GMBackground>();
			return background.Stretch;
		}

		public void layer_background_stretch(int layerId, GMBOOL stretch)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().FirstOrDefault(x => x.LayerId == layerId);
			if (layer == default)
			{
				Debug.LogError($"Could not find layer with id {layerId}");
				return;
			}
			var background = layer.GetComponent<GMBackground>();
			background.Stretch = stretch;
		}

		public GMBOOL layer_background_exists(int layerId, int backId)
		{
			return Resources.FindObjectsOfTypeAll<GMLayer>().Any(x => x.LayerId == layerId && x.GetComponent<GMBackground>() != null && x.GetComponent<GMBackground>().instanceId == backId);
		}

		public int layer_create(int depth, string name)
		{
			var id = Resources.FindObjectsOfTypeAll<GMLayer>().Max(x => x.LayerId) + 1;

			if (string.IsNullOrEmpty(name))
			{
				name = $"_layer_{Guid.NewGuid()}";
			}

			var newObj = new GameObject(name);
			var layer = newObj.AddComponent<GMLayer>();
			layer.Depth = depth;
			layer.LayerId = id;

			return id;
		}

		public void layer_destroy(int layerId)
		{
			// TODO : store layers in a dict
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().First(x => x.LayerId == layerId);
			Destroy(layer.gameObject);
		}

		public int layer_background_create(int layerId, string sprite)
		{
			var layer = Resources.FindObjectsOfTypeAll<GMLayer>().First(x => x.LayerId == layerId);

			var background = layer.gameObject.AddComponent<GMBackground>();
			background.sprite = sprite;
			background.depth = layer.Depth;
			background.instanceId = InstanceManager.Instance._highestInstanceId++;

			return background.instanceId;
		}

		public dynamic __background_get_internal(int argument0, int argument1, int[] argument2)
		{
			var __prop = argument0;
			var __bind = argument1;
			var __backinfo = argument2;
			if (__backinfo[0] == -1 || layer_background_exists(__backinfo[1], __backinfo[0]) == 0)
			{
				__backinfo = __background_get_element(__bind);
				if (__backinfo[0] == -1)
					return -1;
			}

			dynamic __res = -1;
			var __backid = __backinfo[0];
			var __layerid = __backinfo[1];
			var __isfore = __backinfo[2];
			switch (__prop)
			{
				case 0:
					__res = layer_get_visible(__layerid);
					break;
				case 1:
					__res = __isfore;
					break;
				case 2:
					__res = layer_background_get_sprite(__backid);
					break;
				case 3:
					__res = layer_get_x(__layerid);
					break;
				case 4:
					__res = layer_get_y(__layerid);
					break;
				case 5:
					__res = sprite_get_width(layer_background_get_sprite(__backid));
					break;
				case 6:
					__res = sprite_get_height(layer_background_get_sprite(__backid));
					break;
				case 7:
					__res = layer_background_get_htiled(__backid);
					break;
				case 8:
					__res = layer_background_get_vtiled(__backid);
					break;
				case 9:
					__res = layer_background_get_xscale(__backid);
					break;
				case 10:
					__res = layer_background_get_yscale(__backid);
					break;
				case 11:
					__res = layer_get_hspeed(__layerid);
					break;
				case 12:
					__res = layer_get_vspeed(__layerid);
					break;
				case 13:
					__res = layer_background_get_blend(__backid);
					break;
				case 14:
					__res = layer_background_get_alpha(__backid);
					break;
				default:
					break;
			}

			return __res;
		}

		public bool room_persistent
		{
			get => Room.Instance.Persistent;
			set => Room.Instance.Persistent = value;
		}
		public void audio_sound_set_track_position(AudioSource index, double time)
		{
			index.time = (float)time;
		}

		#region FILES
		public StreamWriter file_text_open_write(string file)
		{
			var filepath = Path.Combine(Application.persistentDataPath, file);
			System.IO.File.Delete(filepath);
			var fileStream = new FileStream(filepath, FileMode.Append, FileAccess.Write);
			return new StreamWriter(fileStream);
		}
		public StreamReader file_text_open_read(string file)
		{
			var filepath = Path.Combine(Application.persistentDataPath, file);
			var fileStream = new FileStream(filepath, FileMode.Open, FileAccess.Read);
			return new StreamReader(fileStream);
		}
		public void file_text_write_string(StreamWriter file, string str)
		{
			file.Write(str);
		}
		public string file_text_read_string(StreamReader file)
		{
			var result = "";
			while (file.Peek() != 0x0D && file.Peek() >= 0)
			{
				if (result.Length > 10)
				{
					var byteRep = "";
					foreach (var character in result)
					{
						byteRep += $"{(int)character}-";
					}
					show_debug_message($"too long! final result is : \"{result}\" ({byteRep})");
					break;
				}
				result += (char)file.Read();
			}

			return result;
		}
		public void file_text_writeln(StreamWriter file)
		{
			file.WriteLine();
		}
		public void file_text_readln(StreamReader file)
		{
			file.ReadLine();
		}
		public void file_text_write_real(StreamWriter file, int number)
		{
			file.Write(number.ToString());
		}
		public void file_text_write_real(StreamWriter file, bool number)
		{
			file.Write(number ? "1" : "0");
		}
		public double file_text_read_real(StreamReader file)
		{
			var result = "";
			while (file.Peek() != 0x0D && file.Peek() >= 0)
			{
				if (result.Length > 10)
				{
					var byteRep = "";
					foreach (var character in result)
					{
						byteRep += $"{(int)character}-";
					}
					show_debug_message($"too long! final result is : \"{result}\" ({byteRep})");
					break;
				}
				result += (char)file.Read();
			}

			return double.Parse(result);
		}
		public void file_text_close(StreamWriter file)
		{
			file.Close();
			file.Dispose();
		}
		public void file_text_close(StreamReader file)
		{
			file.Close();
			file.Dispose();
		}
		public bool file_exists(string file)
		{
			var filepath = Path.Combine(Application.persistentDataPath, file);
			return System.IO.File.Exists(filepath);
		}
		public void file_delete(string file)
		{
			Debug.Log($"file_delete {file}");
			var filepath = Path.Combine(Application.persistentDataPath, file);
			System.IO.File.Delete(filepath);
		}
		private IniFile _iniFile;

		public void ini_open(string name)
		{
			if (_iniFile != null)
			{
				throw new Exception("Cannot open a new .ini file while an old one is still open!");
			}

			var filepath = Path.Combine(Application.persistentDataPath, name);

			if (!System.IO.File.Exists(filepath))
			{
				_iniFile = new IniFile { Name = name };
				return;
			}

			var lines = System.IO.File.ReadAllLines(filepath);

			KeyValuePair<string, string> ParseKeyValue(string line)
			{
				var lineByEquals = line.Split('=');
				var key = lineByEquals[0].Trim();
				var value = lineByEquals[1].Trim();
				value = value.Trim('"');
				return new KeyValuePair<string, string>(key, value);
			}

			_iniFile = new IniFile { Name = name };
			IniSection currentSection = null;

			for (var i = 0; i < lines.Length; i++)
			{
				var currentLine = lines[i];
				if (currentLine.StartsWith('[') && currentLine.EndsWith("]"))
				{
					currentSection = new IniSection(currentLine.TrimStart('[').TrimEnd(']'));
					_iniFile.Sections.Add(currentSection);
					continue;
				}

				if (string.IsNullOrEmpty(currentLine))
				{
					continue;
				}

				var keyvalue = ParseKeyValue(currentLine);
				currentSection.Dict.Add(keyvalue.Key, keyvalue.Value);
			}
		}

		public void ini_write_string(string section, string key, string value)
		{
			var sectionClass = _iniFile.Sections.FirstOrDefault(x => x.Name == section);

			if (sectionClass == null)
			{
				sectionClass = new IniSection(section);
				_iniFile.Sections.Add(sectionClass);
			}

			sectionClass.Dict[key] = value;
		}

		public string ini_read_string(string section, string key, string _default)
		{
			var sectionClass = _iniFile.Sections.FirstOrDefault(x => x.Name == section);

			if (sectionClass == null)
			{
				return _default;
			}

			if (!sectionClass.Dict.ContainsKey(key))
			{
				return _default;
			}

			return sectionClass.Dict[key];
		}

		public void ini_write_real(string section, string key, double value)
		{
			var sectionClass = _iniFile.Sections.FirstOrDefault(x => x.Name == section);

			if (sectionClass == null)
			{
				sectionClass = new IniSection(section);
				_iniFile.Sections.Add(sectionClass);
			}

			sectionClass.Dict[key] = value.ToString();
		}

		public double ini_read_real(string section, string key, double _default)
		{
			var sectionClass = _iniFile.Sections.FirstOrDefault(x => x.Name == section);

			if (sectionClass == null)
			{
				return _default;
			}

			if (!sectionClass.Dict.ContainsKey(key))
			{
				return _default;
			}

			if (!double.TryParse(sectionClass.Dict[key], out var _res))
			{
				show_debug_message($"Couldn't parse {sectionClass.Dict[key]}");
			}

			return _res;
		}

		public void ini_close()
		{
			var filepath = Path.Combine(Application.persistentDataPath, _iniFile.Name);
			System.IO.File.Delete(filepath);
			var fileStream = new FileStream(filepath, FileMode.Append, FileAccess.Write);
			var streamWriter = new StreamWriter(fileStream);

			foreach (var section in _iniFile.Sections)
			{
				streamWriter.WriteLine($"[{section.Name}]");
				foreach (var kv in section.Dict)
				{
					streamWriter.WriteLine($"{kv.Key}=\"{kv.Value}\"");
				}
			}

			streamWriter.Close();
			streamWriter.Dispose();
			_iniFile = null;
		}

		public void file_copy(string fname, string newname)
		{
			var firstFilepath = Path.Combine(Application.persistentDataPath, fname);
			var newFilepath = Path.Combine(Application.persistentDataPath, newname);

			if (System.IO.File.Exists(newFilepath))
			{
				throw new Exception("File already exists.");
			}

			System.IO.File.Copy(firstFilepath, newFilepath);
		}
		#endregion

		// INPUT
		public const int vk_return = 13;
		public const int vk_shift = 16;
		public const int vk_control = 17;
		public const int vk_escape = 27;
		public const int vk_left = 37;
		public const int vk_up = 38;
		public const int vk_right = 39;
		public const int vk_down = 40;
		public const int vk_f4 = 115;

		public bool keyboard_check(int key)
		{
			var unityKey = Key.None;
			switch (key)
			{
				case 8:
					unityKey = Key.Backspace;
					break;
				case 9:
					unityKey = Key.Tab;
					break;
				case 12:
					unityKey = Key.Numpad5;
					break;
				case 13:
					unityKey = Key.Enter;
					break;
				case 19:
					unityKey = Key.Pause;
					break;
				case 20:
					unityKey = Key.CapsLock;
					break;
				case 27:
					unityKey = Key.Escape;
					break;
				case 32:
					unityKey = Key.Space;
					break;
				case 33:
					unityKey = Key.PageUp;
					break;
				case 34:
					unityKey = Key.PageDown;
					break;
				case 35:
					unityKey = Key.End;
					break;
				case 36:
					unityKey = Key.Home;
					break;
				case 37:
					unityKey = Key.LeftArrow;
					break;
				case 38:
					unityKey = Key.UpArrow;
					break;
				case 39:
					unityKey = Key.RightArrow;
					break;
				case 40:
					unityKey = Key.DownArrow;
					break;
				case 45:
					unityKey = Key.Insert;
					break;
				case 46:
					unityKey = Key.Delete;
					break;
				case 48:
					unityKey = Key.Digit0;
					break;
				case 49:
					unityKey = Key.Digit1;
					break;
				case 50:
					unityKey = Key.Digit2;
					break;
				case 51:
					unityKey = Key.Digit3;
					break;
				case 52:
					unityKey = Key.Digit4;
					break;
				case 53:
					unityKey = Key.Digit5;
					break;
				case 54:
					unityKey = Key.Digit6;
					break;
				case 55:
					unityKey = Key.Digit7;
					break;
				case 56:
					unityKey = Key.Digit8;
					break;
				case 57:
					unityKey = Key.Digit9;
					break;
				case 65:
					unityKey = Key.A;
					break;
				case 66:
					unityKey = Key.B;
					break;
				case 67:
					unityKey = Key.C;
					break;
				case 68:
					unityKey = Key.D;
					break;
				case 69:
					unityKey = Key.E;
					break;
				case 70:
					unityKey = Key.F;
					break;
				case 71:
					unityKey = Key.G;
					break;
				case 72:
					unityKey = Key.H;
					break;
				case 73:
					unityKey = Key.I;
					break;
				case 74:
					unityKey = Key.J;
					break;
				case 75:
					unityKey = Key.K;
					break;
				case 76:
					unityKey = Key.L;
					break;
				case 77:
					unityKey = Key.M;
					break;
				case 78:
					unityKey = Key.N;
					break;
				case 79:
					unityKey = Key.O;
					break;
				case 80:
					unityKey = Key.P;
					break;
				case 81:
					unityKey = Key.Q;
					break;
				case 82:
					unityKey = Key.R;
					break;
				case 83:
					unityKey = Key.S;
					break;
				case 84:
					unityKey = Key.T;
					break;
				case 85:
					unityKey = Key.U;
					break;
				case 86:
					unityKey = Key.V;
					break;
				case 87:
					unityKey = Key.W;
					break;
				case 88:
					unityKey = Key.X;
					break;
				case 89:
					unityKey = Key.Y;
					break;
				case 90:
					unityKey = Key.Z;
					break;
				case 91:
					return Keyboard.current[Key.LeftWindows].isPressed || Keyboard.current[Key.RightWindows].isPressed;
				case 96:
					unityKey = Key.Numpad0;
					break;
				case 97:
					unityKey = Key.Numpad1;
					break;
				case 98:
					unityKey = Key.Numpad2;
					break;
				case 99:
					unityKey = Key.Numpad3;
					break;
				case 100:
					unityKey = Key.Numpad4;
					break;
				case 101:
					unityKey = Key.Numpad5;
					break;
				case 102:
					unityKey = Key.Numpad6;
					break;
				case 103:
					unityKey = Key.Numpad7;
					break;
				case 104:
					unityKey = Key.Numpad8;
					break;
				case 105:
					unityKey = Key.Numpad9;
					break;
				case 106:
					unityKey = Key.NumpadMultiply;
					break;
				case 107:
					unityKey = Key.NumpadPlus;
					break;
				case 109:
					unityKey = Key.NumpadMinus;
					break;
				case 110:
					unityKey = Key.NumpadPeriod;
					break;
				case 111:
					unityKey = Key.NumpadDivide;
					break;
				case 112:
					unityKey = Key.F1;
					break;
				case 113:
					unityKey = Key.F2;
					break;
				case 114:
					unityKey = Key.F3;
					break;
				case 115:
					unityKey = Key.F4;
					break;
				case 116:
					unityKey = Key.F5;
					break;
				case 117:
					unityKey = Key.F6;
					break;
				case 118:
					unityKey = Key.F7;
					break;
				case 119:
					unityKey = Key.F8;
					break;
				case 120:
					unityKey = Key.F9;
					break;
				case 121:
					unityKey = Key.F10;
					break;
				case 122:
					unityKey = Key.F11;
					break;
				case 123:
					unityKey = Key.F12;
					break;
				case 144:
					unityKey = Key.NumLock;
					break;
				case 145:
					unityKey = Key.ScrollLock;
					break;
				case 160:
					unityKey = Key.LeftShift;
					break;
				case 161:
					unityKey = Key.RightShift;
					break;
				case 162:
					unityKey = Key.LeftCtrl;
					break;
				case 163:
					unityKey = Key.RightCtrl;
					break;
				case 164:
					unityKey = Key.LeftAlt;
					break;
				case 165:
					unityKey = Key.RightAlt;
					break;
				case 186:
					unityKey = Key.Semicolon;
					break;
				case 187:
					unityKey = Key.Equals;
					break;
				case 188:
					unityKey = Key.Comma;
					break;
				case 189:
					unityKey = Key.Minus;
					break;
				case 190:
					unityKey = Key.Period;
					break;
				case 191:
					unityKey = Key.Slash;
					break;
				case 192:
					unityKey = Key.Backquote;
					break;
				case 219:
					unityKey = Key.LeftBracket;
					break;
				case 220:
					unityKey = Key.Backslash;
					break;
				case 221:
					unityKey = Key.RightBracket;
					break;
				case 222:
					unityKey = Key.Backquote;
					break;
				case 16:
					return Keyboard.current[Key.LeftShift].isPressed || Keyboard.current[Key.RightShift].isPressed;
				case 17:
					return Keyboard.current[Key.LeftCtrl].isPressed || Keyboard.current[Key.RightCtrl].isPressed;
				case 18:
					return Keyboard.current[Key.LeftAlt].isPressed || Keyboard.current[Key.RightAlt].isPressed;
			}

			return unityKey != Key.None && Keyboard.current[unityKey].isPressed;
		}
		public bool keyboard_check_pressed(int key)
		{
			var unityKey = Key.None;
			switch (key)
			{
				case 8:
					unityKey = Key.Backspace;
					break;
				case 9:
					unityKey = Key.Tab;
					break;
				case 12:
					unityKey = Key.Numpad5;
					break;
				case 13:
					unityKey = Key.Enter;
					break;
				case 19:
					unityKey = Key.Pause;
					break;
				case 20:
					unityKey = Key.CapsLock;
					break;
				case 27:
					unityKey = Key.Escape;
					break;
				case 32:
					unityKey = Key.Space;
					break;
				case 33:
					unityKey = Key.PageUp;
					break;
				case 34:
					unityKey = Key.PageDown;
					break;
				case 35:
					unityKey = Key.End;
					break;
				case 36:
					unityKey = Key.Home;
					break;
				case 37:
					unityKey = Key.LeftArrow;
					break;
				case 38:
					unityKey = Key.UpArrow;
					break;
				case 39:
					unityKey = Key.RightArrow;
					break;
				case 40:
					unityKey = Key.DownArrow;
					break;
				case 45:
					unityKey = Key.Insert;
					break;
				case 46:
					unityKey = Key.Delete;
					break;
				case 48:
					unityKey = Key.Digit0;
					break;
				case 49:
					unityKey = Key.Digit1;
					break;
				case 50:
					unityKey = Key.Digit2;
					break;
				case 51:
					unityKey = Key.Digit3;
					break;
				case 52:
					unityKey = Key.Digit4;
					break;
				case 53:
					unityKey = Key.Digit5;
					break;
				case 54:
					unityKey = Key.Digit6;
					break;
				case 55:
					unityKey = Key.Digit7;
					break;
				case 56:
					unityKey = Key.Digit8;
					break;
				case 57:
					unityKey = Key.Digit9;
					break;
				case 65:
					unityKey = Key.A;
					break;
				case 66:
					unityKey = Key.B;
					break;
				case 67:
					unityKey = Key.C;
					break;
				case 68:
					unityKey = Key.D;
					break;
				case 69:
					unityKey = Key.E;
					break;
				case 70:
					unityKey = Key.F;
					break;
				case 71:
					unityKey = Key.G;
					break;
				case 72:
					unityKey = Key.H;
					break;
				case 73:
					unityKey = Key.I;
					break;
				case 74:
					unityKey = Key.J;
					break;
				case 75:
					unityKey = Key.K;
					break;
				case 76:
					unityKey = Key.L;
					break;
				case 77:
					unityKey = Key.M;
					break;
				case 78:
					unityKey = Key.N;
					break;
				case 79:
					unityKey = Key.O;
					break;
				case 80:
					unityKey = Key.P;
					break;
				case 81:
					unityKey = Key.Q;
					break;
				case 82:
					unityKey = Key.R;
					break;
				case 83:
					unityKey = Key.S;
					break;
				case 84:
					unityKey = Key.T;
					break;
				case 85:
					unityKey = Key.U;
					break;
				case 86:
					unityKey = Key.V;
					break;
				case 87:
					unityKey = Key.W;
					break;
				case 88:
					unityKey = Key.X;
					break;
				case 89:
					unityKey = Key.Y;
					break;
				case 90:
					unityKey = Key.Z;
					break;
				case 91:
					return Keyboard.current[Key.LeftWindows].wasPressedThisFrame || Keyboard.current[Key.RightWindows].wasPressedThisFrame;
				case 96:
					unityKey = Key.Numpad0;
					break;
				case 97:
					unityKey = Key.Numpad1;
					break;
				case 98:
					unityKey = Key.Numpad2;
					break;
				case 99:
					unityKey = Key.Numpad3;
					break;
				case 100:
					unityKey = Key.Numpad4;
					break;
				case 101:
					unityKey = Key.Numpad5;
					break;
				case 102:
					unityKey = Key.Numpad6;
					break;
				case 103:
					unityKey = Key.Numpad7;
					break;
				case 104:
					unityKey = Key.Numpad8;
					break;
				case 105:
					unityKey = Key.Numpad9;
					break;
				case 106:
					unityKey = Key.NumpadMultiply;
					break;
				case 107:
					unityKey = Key.NumpadPlus;
					break;
				case 109:
					unityKey = Key.NumpadMinus;
					break;
				case 110:
					unityKey = Key.NumpadPeriod;
					break;
				case 111:
					unityKey = Key.NumpadDivide;
					break;
				case 112:
					unityKey = Key.F1;
					break;
				case 113:
					unityKey = Key.F2;
					break;
				case 114:
					unityKey = Key.F3;
					break;
				case 115:
					unityKey = Key.F4;
					break;
				case 116:
					unityKey = Key.F5;
					break;
				case 117:
					unityKey = Key.F6;
					break;
				case 118:
					unityKey = Key.F7;
					break;
				case 119:
					unityKey = Key.F8;
					break;
				case 120:
					unityKey = Key.F9;
					break;
				case 121:
					unityKey = Key.F10;
					break;
				case 122:
					unityKey = Key.F11;
					break;
				case 123:
					unityKey = Key.F12;
					break;
				case 144:
					unityKey = Key.NumLock;
					break;
				case 145:
					unityKey = Key.ScrollLock;
					break;
				case 160:
					unityKey = Key.LeftShift;
					break;
				case 161:
					unityKey = Key.RightShift;
					break;
				case 162:
					unityKey = Key.LeftCtrl;
					break;
				case 163:
					unityKey = Key.RightCtrl;
					break;
				case 164:
					unityKey = Key.LeftAlt;
					break;
				case 165:
					unityKey = Key.RightAlt;
					break;
				case 186:
					unityKey = Key.Semicolon;
					break;
				case 187:
					unityKey = Key.Equals;
					break;
				case 188:
					unityKey = Key.Comma;
					break;
				case 189:
					unityKey = Key.Minus;
					break;
				case 190:
					unityKey = Key.Period;
					break;
				case 191:
					unityKey = Key.Slash;
					break;
				case 192:
					unityKey = Key.Backquote;
					break;
				case 219:
					unityKey = Key.LeftBracket;
					break;
				case 220:
					unityKey = Key.Backslash;
					break;
				case 221:
					unityKey = Key.RightBracket;
					break;
				case 222:
					unityKey = Key.Backquote;
					break;
				case 16:
					return Keyboard.current[Key.LeftShift].wasPressedThisFrame || Keyboard.current[Key.RightShift].wasPressedThisFrame;
				case 17:
					return Keyboard.current[Key.LeftCtrl].wasPressedThisFrame || Keyboard.current[Key.RightCtrl].wasPressedThisFrame;
				case 18:
					return Keyboard.current[Key.LeftAlt].wasPressedThisFrame || Keyboard.current[Key.RightAlt].wasPressedThisFrame;
			}

			return Keyboard.current[unityKey].wasPressedThisFrame;
		}
	}
}
