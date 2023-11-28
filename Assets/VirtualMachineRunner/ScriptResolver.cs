﻿using Assets.Scripts.IniFiles;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;
using static UnityEditorInternal.ReorderableList;

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
			{ "event_inherited", event_inherited },
			{ "ini_open", ini_open },
			{ "ini_read_string", ini_read_string },
			{ "ini_close", ini_close }
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

		private static IniFile _iniFile;

		public static object ini_open(Arguments args)
		{
			var name = (string)args.ArgumentArray[0];

			if (_iniFile != null)
			{
				throw new Exception("Cannot open a new .ini file while an old one is still open!");
			}

			var filepath = Path.Combine(Application.persistentDataPath, name);

			if (!System.IO.File.Exists(filepath))
			{
				_iniFile = new IniFile { Name = name };
				return null;
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

			return null;
		}

		public static object ini_read_string(Arguments args)
		{
			var section = (string)args.ArgumentArray[0];
			var key = (string)args.ArgumentArray[1];
			var value = (string)args.ArgumentArray[2];

			var sectionClass = _iniFile.Sections.FirstOrDefault(x => x.Name == section);

			if (sectionClass == null)
			{
				return value;
			}

			if (!sectionClass.Dict.ContainsKey(key))
			{
				return value;
			}

			return sectionClass.Dict[key];
		}

		public static object ini_close(Arguments args)
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

			var text = streamWriter.ToString();

			streamWriter.Close();
			streamWriter.Dispose();
			_iniFile = null;

			return text;
		}
	}

	public class Arguments
	{
		public VMScriptExecutionContext Context;
		public object[] ArgumentArray;
	}
}
