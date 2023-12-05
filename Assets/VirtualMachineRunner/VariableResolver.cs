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

			if (index > list.Count)
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
			{ "fps", (get_fps, null)}
		};

		public static object get_working_directory(NewGamemakerObject instance)
		{
			return Application.persistentDataPath + Path.DirectorySeparatorChar;
		}

		public static object get_fps(NewGamemakerObject instance)
		{
			return 30; // TODO : different games have this as a different value
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

			if (self.SelfVariables.TryGetValue(name, out var variable))
			{
				return variable;
			}

			Debug.LogError($"Couldn't find variable {name}");
			return null;
		}

		public static void SetSelfVariable(NewGamemakerObject self, string name, object value)
		{
			// TODO: should this also set arguments????

			if (BuiltInVariables.ContainsKey(name))
			{
				BuiltInVariables[name].setter(self, value);
				return;
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
