using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	public class ScriptResolver : MonoBehaviour
	{
		public static ScriptResolver Instance { get; private set; }

		public List<VMScript> Scripts = new();

		public Dictionary<string, Func<Arguments, object>> BuiltInFunctions = new()
		{
			{ "layer_force_draw_depth", layer_force_draw_depth }
		};

		public Dictionary<string, VMScript> NameToScript = new();

		public void Awake()
		{
			Instance = this;
			foreach (var item in Scripts)
			{
				NameToScript.Add(item.Name, item);
			}
		}

		private static object layer_force_draw_depth(Arguments args)
		{
			var force = VMExecuter.Convert<bool>(args.ArgumentArray[0]);
			var depth = VMExecuter.Convert<int>(args.ArgumentArray[1]);
			Debug.Log($"layer_force_draw_depth force:{force} depth:{depth}");

			// not implementing yet because uhhhhhhhhhhhhhhhhhhh

			return null;
		}
	}

	public class Arguments
	{
		public NewGamemakerObject Context;
		public object[] ArgumentArray;
	}
}
