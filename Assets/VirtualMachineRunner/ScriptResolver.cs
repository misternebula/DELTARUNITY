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
			{ "layer_force_draw_depth", layer_force_draw_depth },
			{ "draw_set_colour", draw_set_colour },
			{ "array_length_1d", array_length_1d },
			{ "@@NewGMLArray@@", newgmlarray },
			{ "asset_get_index", asset_get_index },
			{ "event_inherited", event_inherited }
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
			//Debug.Log($"layer_force_draw_depth force:{force} depth:{depth}");

			// not implementing yet because uhhhhhhhhhhhhhhhhhhh

			return null;
		}

		public static object draw_set_colour(Arguments args)
		{
			var color = VMExecuter.Convert<int>(args.ArgumentArray[0]);
			//Debug.Log($"draw_set_color color:{color}");

			SpriteManager.SpriteManager.DrawColor = color;

			return null;
		}

		public static object array_length_1d(Arguments args)
		{
			var array = (Dictionary<int, object>)args.ArgumentArray[0];
			return array.Count;
		}

		public static object newgmlarray(Arguments args)
		{
			return new Dictionary<int, object>();
		}

		public static object asset_get_index(Arguments args)
		{
			var name = (string)args.ArgumentArray[0];
			return GameLoader.Instance.NameToIndex[name];
		}

		public static object event_inherited(Arguments args)
		{
			if (args.Context.ObjectDefinition.parent == null)
			{
				return null;
			}

			NewGamemakerObject.ExecuteScript(args.Context.Self, args.Context.ObjectDefinition.parent, args.Context.EventType, args.Context.EventIndex);
			return null;
		}
	}

	public class Arguments
	{
		public VMScriptExecutionContext Context;
		public object[] ArgumentArray;
	}
}
