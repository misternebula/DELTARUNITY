using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
			{ "alarm", (get_alarm, set_alarm)}
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

		public static object get_alarm(NewGamemakerObject instance) => instance.alarm;

		public static void set_alarm(NewGamemakerObject instance, object value)
		{
			instance.alarm = (List<object>)value;
		}

		public static object GetSelfVariable(NewGamemakerObject self, Dictionary<string, object> locals, string name)
		{
			// argumentn is a self even though arguments is a local
			if (name.StartsWith("argument"))
			{
				var withoutArgument = name.Substring("argument".Length);
				if (int.TryParse(withoutArgument, out var index))
				{
					return ((object[])locals["arguments"])[index];
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
