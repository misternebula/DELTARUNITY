using System;
using System.Collections.Generic;
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
			if (!_globalVariables.ContainsKey(name))
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
	}
}
