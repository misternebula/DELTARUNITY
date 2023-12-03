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
		private static readonly Dictionary<string, object> _globalVariables = new();

		public static void SetGlobalArrayIndex(string name, int index, object value)
		{
			if (!_globalVariables.ContainsKey(name) || _globalVariables[name] is not Dictionary<int, object>)
			{
				_globalVariables[name] = new Dictionary<int, object>();
			}

			((Dictionary<int, object>)_globalVariables[name])[index] = value;
		}

		public static object GetGlobalArrayIndex(string name, int index)
		{
			return ((Dictionary<int, object>)_globalVariables[name])[index];
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
			{ "working_directory", (get_working_directory, null) }
		};

		public static object get_working_directory(NewGamemakerObject instance)
		{
			return Application.persistentDataPath + Path.DirectorySeparatorChar;
		}

		public static object GetSelfVariable(VMScriptExecutionContext ctx, string name)
		{
			// argumentn is a self even though arguments is a local
			if (name.StartsWith("argument"))
			{
				var withoutArgument = name.Substring("argument".Length);
				if (int.TryParse(withoutArgument, out var index))
				{
					return ((object[])ctx.Locals["arguments"])[index];
				}
			}

			// global builtins are also self for some reason
			if (BuiltInVariables.ContainsKey(name))
			{
				return BuiltInVariables[name].getter(ctx.Self);
			}

			if (ctx.Self.SelfVariables.TryGetValue(name, out var variable))
			{
				return variable;
			}

			Debug.LogError($"Couldn't find variable {name}");
			return null;
		}

		public static void SetSelfVariable(VMScriptExecutionContext ctx, string name, object value)
		{
			if (BuiltInVariables.ContainsKey(name))
			{
				BuiltInVariables[name].setter(ctx.Self, value);
				return;
			}

			if (ctx.Self.SelfVariables.ContainsKey(name))
			{
				ctx.Self.SelfVariables[name] = value;
				return;
			}

			ctx.Self.SelfVariables.Add(name, value);
		}
	}
}
