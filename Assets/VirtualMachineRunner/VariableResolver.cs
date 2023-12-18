﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assets.RoomManager;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	public static class VariableResolver
	{
		public static object ArrayGet(int index,
			Func<List<object>> get)
		{
			return get()[index];
		}

		public static void ArraySet(int index, object value,
			Func<object> get,
			Action<List<object>> set,
			Func<bool> contains)
		{
			List<object> list;
			if (!contains() || get() is not List<object>)
			{
				list = new List<object>();
				set(list);
			}
			else
			{
				list = (List<object>)get();
			}

			if (index >= list.Count)
			{
				list.AddRange(new object[index - list.Count + 1]);
			}
			
			list[index] = value;
		}

		private static readonly Dictionary<string, object> _globalVariables = new();

		public static void SetGlobalArrayIndex(string name, int index, object value)
		{
			ArraySet(index, value,
				() => GetGlobalVariable(name),
				list => SetGlobalVariable(name, list),
				() => _globalVariables.ContainsKey(name));
		}

		public static object GetGlobalArrayIndex(string name, int index)
		{
			return ArrayGet(index,
				() => (List<object>)_globalVariables[name]);
		}

		public static void SetGlobalVariable(string name, object value)
		{
			_globalVariables[name] = value;
		}

		public static object GetGlobalVariable(string name)
		{
			return _globalVariables[name];
		}

		public static bool GlobalVariableExists(string name)
		{
			return _globalVariables.ContainsKey(name);
		}


		public static Dictionary<string, (Func<NewGamemakerObject, object> getter, Action<NewGamemakerObject, object> setter)> BuiltInVariables = new()
		{
			{ "working_directory", (get_working_directory, null) },
			{ "fps", (get_fps, null) },
			{ "x", (get_x, set_x) },
			{ "y", (get_y, set_y) },
			{ "room_width", (get_room_width, null)},
			{ "room_height", (get_room_height, null)},
			{ "image_index", (get_image_index, set_image_index)},
			{ "sprite_index", (get_sprite_index, set_sprite_index)},
			{ "sprite_height", (get_sprite_height, null)},
			{ "sprite_width", (get_sprite_width, null)},
			{ "xstart", (get_xstart, set_xstart)},
			{ "ystart", (get_ystart, set_ystart)},
			{ "object_index", (get_object_index, null)},
			{ "image_blend", (get_image_blend, set_image_blend)},
			{ "depth", (get_depth, set_depth)},
			{ "room", (get_room, set_room)},
			{ "bbox_bottom", (get_bbox_bottom, null)},
			{ "bbox_top", (get_bbox_top, null)},
			{ "bbox_left", (get_bbox_left, null)},
			{ "bbox_right", (get_bbox_right, null)},
			{ "image_yscale", (get_image_yscale, set_image_yscale)},
			{ "image_xscale", (get_image_xscale, set_image_xscale)},
			{ "image_speed", (get_image_speed, set_image_speed)},
			{ "visible", (get_visible, set_visible)},
			{ "image_alpha", (get_image_alpha, set_image_alpha)},
			{ "speed", (get_speed, set_speed)},
			{ "hspeed", (get_hspeed, set_hspeed)},
			{ "vspeed", (get_vspeed, set_vspeed)},
			{ "direction", (get_direction, set_direction)},
			{ "view_current", (get_view_current, null)}
		};

		public static object get_working_directory(NewGamemakerObject instance)
		{
			return Application.persistentDataPath + Path.DirectorySeparatorChar;
		}

		public static object get_fps(NewGamemakerObject instance)
		{
			return 30; // TODO : different games have this as a different value
		}

		public static object get_x(NewGamemakerObject instance) => instance.x;

		public static void set_x(NewGamemakerObject instance, object value) => instance.x = VMExecuter.Convert<double>(value);
		public static object get_y(NewGamemakerObject instance) => instance.y;
		public static void set_y(NewGamemakerObject instance, object value) => instance.y = VMExecuter.Convert<double>(value);

		public static object get_room_width(NewGamemakerObject instance) => (double)RoomManager.Room.Instance.Size.x;
		public static object get_room_height(NewGamemakerObject instance) => (double)RoomManager.Room.Instance.Size.y;

		public static object get_image_index(NewGamemakerObject instance) => instance.image_index;
		public static void set_image_index(NewGamemakerObject instance, object value) => instance.image_index = VMExecuter.Convert<double>(value);

		public static object get_sprite_index(NewGamemakerObject instance) => instance.sprite_index;
		public static void set_sprite_index(NewGamemakerObject instance, object value) => instance.sprite_index = VMExecuter.Convert<int>(value);

		public static object get_sprite_width(NewGamemakerObject instance) => instance.sprite_width;
		public static object get_sprite_height(NewGamemakerObject instance) => instance.sprite_height;

		public static object get_xstart(NewGamemakerObject instance) => instance.xstart;
		public static void set_xstart(NewGamemakerObject instance, object value) => instance.xstart = VMExecuter.Convert<double>(value);
		public static object get_ystart(NewGamemakerObject instance) => instance.ystart;
		public static void set_ystart(NewGamemakerObject instance, object value) => instance.ystart = VMExecuter.Convert<double>(value);

		public static object get_object_index(NewGamemakerObject instance) => instance.object_index;

		public static object get_image_blend(NewGamemakerObject instance) => instance.image_blend;
		public static void set_image_blend(NewGamemakerObject instance, object value) => instance.image_blend = VMExecuter.Convert<int>(value);

		public static object get_depth(NewGamemakerObject instance) => instance.depth;
		public static void set_depth(NewGamemakerObject instance, object value) => instance.depth = VMExecuter.Convert<double>(value);

		public static object get_room(NewGamemakerObject instance) => RoomManager.RoomManager.Instance.GetRoomIndex(Room.Instance.Name);

		public static object get_bbox_bottom(NewGamemakerObject instance) => (instance.sprite_index == -1 && instance.mask_id == -1) ? instance.y : instance.bbox_bottom;
		public static object get_bbox_top(NewGamemakerObject instance) => (instance.sprite_index == -1 && instance.mask_id == -1) ? instance.y : instance.bbox_top;
		public static object get_bbox_left(NewGamemakerObject instance) => (instance.sprite_index == -1 && instance.mask_id == -1) ? instance.x : instance.bbox_left;
		public static object get_bbox_right(NewGamemakerObject instance) => (instance.sprite_index == -1 && instance.mask_id == -1) ? instance.x : instance.bbox_right;

		public static object get_image_yscale(NewGamemakerObject instance) => instance.image_yscale;
		public static void set_image_yscale(NewGamemakerObject instance, object value) => instance.image_yscale = VMExecuter.Convert<double>(value);

		public static object get_image_xscale(NewGamemakerObject instance) => instance.image_xscale;
		public static void set_image_xscale(NewGamemakerObject instance, object value) => instance.image_xscale = VMExecuter.Convert<double>(value);

		public static void set_room(NewGamemakerObject instance, object value)
		{
			RoomManager.RoomManager.Instance.ChangeRoom(VMExecuter.Convert<int>(value));
		}

		public static object get_image_speed(NewGamemakerObject instance) => instance.image_speed;
		public static void set_image_speed(NewGamemakerObject instance, object value) => instance.image_speed = VMExecuter.Convert<double>(value);

		public static object get_visible(NewGamemakerObject instance) => instance.visible;
		public static void set_visible(NewGamemakerObject instance, object value) => instance.visible = VMExecuter.Convert<bool>(value);

		public static object get_image_alpha(NewGamemakerObject instance) => instance.image_alpha;
		public static void set_image_alpha(NewGamemakerObject instance, object value) => instance.image_alpha = VMExecuter.Convert<double>(value);

		public static object get_speed(NewGamemakerObject instance) => instance.speed;
		public static void set_speed(NewGamemakerObject instance, object value) => instance.speed = VMExecuter.Convert<double>(value);

		public static object get_hspeed(NewGamemakerObject instance) => instance.hspeed;
		public static void set_hspeed(NewGamemakerObject instance, object value) => instance.hspeed = VMExecuter.Convert<double>(value);

		public static object get_vspeed(NewGamemakerObject instance) => instance.vspeed;
		public static void set_vspeed(NewGamemakerObject instance, object value) => instance.vspeed = VMExecuter.Convert<double>(value);

		public static object get_direction(NewGamemakerObject instance) => instance.direction;
		public static void set_direction(NewGamemakerObject instance, object value) => instance.direction = VMExecuter.Convert<double>(value);

		public static object get_view_current(NewGamemakerObject instance) => 0; // TODO : aghhhhh viewports aghhh

		public static object GetSelfVariable(NewGamemakerObject self, Dictionary<string, object> locals, string name)
		{
			if (name == "argument_count")
			{
				return ((List<object>)locals["arguments"]).Count;
			}

			if (name == "argument")
			{
				return (List<object>)locals["arguments"];
			}

			if (name.StartsWith("argument"))
			{
				var withoutArgument = name.Substring("argument".Length);
				if (int.TryParse(withoutArgument, out var index))
				{
					return ((List<object>)locals["arguments"])[index];
				}
			}

			// global builtins are also self for some reason
			if (BuiltInVariables.ContainsKey(name))
			{
				return BuiltInVariables[name].getter(self);
			}

			return self.SelfVariables[name];
		}

		public static void SetSelfVariable(NewGamemakerObject self, string name, object value)
		{
			// TODO: should this also set arguments????

			if (BuiltInVariables.ContainsKey(name))
			{
				BuiltInVariables[name].setter(self, value);
				return;
			}

			if (!self.SelfVariables.ContainsKey(name))
			{
				Debug.LogWarning($"Creating variable {name} for {self.name}");
			}

			self.SelfVariables[name] = value;
		}

		public static bool ContainsSelfVariable(NewGamemakerObject self, Dictionary<string, object> locals, string name)
		{
			if (name.StartsWith("argument"))
			{
				return locals.ContainsKey("arguments");
				// TODO: should this check for index (eg argument3 if less than 3 arguments)????
				// should this even be checked at all?? idk
			}

			return BuiltInVariables.ContainsKey(name) || self.SelfVariables.ContainsKey(name);
		}
	}
}
