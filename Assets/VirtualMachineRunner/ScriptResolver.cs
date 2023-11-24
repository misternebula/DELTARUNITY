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

		public Dictionary<string, Action<Arguments>> VoidBuiltInFunctions = new()
		{
			{ "layer_force_draw_depth", layer_force_draw_depth }
		};

		public Dictionary<string, Func<Arguments, object>> BuiltInFunctions = new();

		public Dictionary<string, VMScript> NameToScript = new();

		public void Awake()
		{
			Instance = this;
			foreach (var item in Scripts)
			{
				NameToScript.Add(item.Name, item);
			}
		}

		private static void layer_force_draw_depth(Arguments args)
		{
			var force = VMExecuter.Convert<bool>(args.ArgumentList[0]);
			var depth = VMExecuter.Convert<int>(args.ArgumentList[1]);
			Debug.Log($"layer_force_draw_depth force:{force} depth:{depth}");
		}
	}

	public class Arguments
	{
		public NewGamemakerObject Context;
		public List<object> ArgumentList = new();
	}
}
