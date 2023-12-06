﻿using Assets.Instances;
using Assets.Scripts;
using Assets.Scripts.IniFiles;
using Newtonsoft.Json.Linq;
using NVorbis;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using Assets.TextManager;
using UnityEngine;
using UnityEngine.InputSystem;
using static UnityEditorInternal.ReorderableList;
using System.Reflection;

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
			{ "draw_set_color", draw_set_colour }, // mfw
			{ "draw_get_colour", draw_get_colour },
			{ "draw_get_color", draw_get_colour },
			{ "draw_set_alpha", draw_set_alpha },
			{ "draw_set_font", draw_set_font },
			{ "draw_set_halign", draw_set_halign },
			{ "draw_set_valign", draw_set_valign },
			{ "array_length_1d", array_length_1d },
			{ "@@NewGMLArray@@", newgmlarray },
			{ "asset_get_index", asset_get_index },
			{ "event_inherited", event_inherited },
			{ "ini_open", ini_open },
			{ "ini_read_string", ini_read_string },
			{ "ini_write_string", ini_write_string },
			{ "ini_read_real", ini_read_real },
			{ "ini_write_real", ini_write_real },
			{ "ini_close", ini_close },
			{ "font_add_sprite_ext", font_add_sprite_ext },
			{ "variable_global_exists", variable_global_exists },
			{ "ds_map_create", ds_map_create },
			{ "ds_map_destroy", ds_map_destroy },
			{ "ds_map_add", ds_map_add },
			{ "ds_map_size", ds_map_size },
			{ "ds_list_create", ds_list_create },
			{ "ds_list_destroy", ds_list_destroy },
			{ "ds_list_add", ds_list_add },
			{ "show_debug_message", show_debug_message },
			{ "file_text_open_read", file_text_open_read },
			{ "file_text_close", file_text_close },
			{ "file_text_eof", file_text_eof },
			{ "file_exists", file_exists },
			{ "file_text_readln", file_text_readln },
			{ "file_delete", file_delete },
			{ "file_copy", file_copy },
			{ "json_decode", json_decode },
			{ "string", _string },
			{ "ds_map_find_value", ds_map_find_value },
			{ "audio_group_load", audio_group_load },
			{ "instance_exists", instance_exists },
			{ "instance_create_depth", instance_create_depth },
			{ "instance_number", instance_number },
			{ "instance_destroy", instance_destroy },
			{ "display_get_height", display_get_height },
			{ "display_get_width", display_get_width },
			{ "window_set_caption", window_set_caption },
			{ "window_get_caption", window_get_caption },
			{ "window_set_position", window_set_position },
			{ "window_set_size", window_set_size },
			{ "keyboard_check", keyboard_check },
			{ "keyboard_check_pressed", keyboard_check_pressed },
			{ "audio_group_is_loaded", audio_group_is_loaded },
			{ "gamepad_button_check", gamepad_button_check },
			{ "gamepad_axis_value", gamepad_axis_value },
			{ "room_goto", room_goto },
			{ "audio_create_stream", audio_create_stream },
			{ "audio_destroy_stream", audio_destroy_stream },
			{ "merge_colour", merge_colour },
			{ "merge_color", merge_colour },
			{ "window_center", window_center },
			{ "audio_play_sound", audio_play_sound },
			{ "audio_sound_gain", audio_sound_gain },
			{ "floor", floor },
			{ "ceil", ceil },
			{ "abs", abs },
			{ "string_hash_to_newline", string_hash_to_newline },
			{ "draw_rectangle", draw_rectangle },
			{ "draw_text", draw_text },
			{ "draw_sprite", draw_sprite },
			{ "gamepad_is_connected", gamepad_is_connected },
			{ "event_user", event_user }
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

		private static T Conv<T>(object obj) => VMExecuter.Convert<T>(obj);

		private static object layer_force_draw_depth(Arguments args)
		{
			var force = Conv<bool>(args.Args[0]);
			var depth = Conv<int>(args.Args[1]);
			//Debug.Log($"layer_force_draw_depth force:{force} depth:{depth}");

			// not implementing yet because uhhhhhhhhhhhhhhhhhhh

			return null;
		}

		public static object draw_set_colour(Arguments args)
		{
			var color = Conv<int>(args.Args[0]);
			SpriteManager.SpriteManager.DrawColor = color;
			return null;
		}

		public static object draw_get_colour(Arguments args)
		{
			return SpriteManager.SpriteManager.DrawColor;
		}

		public static object draw_set_alpha(Arguments args)
		{
			var alpha = Conv<double>(args.Args[0]);
			SpriteManager.SpriteManager.DrawAlpha = alpha;
			return null;
		}

		public static object draw_set_font(Arguments args)
		{
			var font = Conv<int>(args.Args[0]);

			var library = TextManager.TextManager.instance.FontAssets;
			var fontAsset = library.FirstOrDefault(x => x.AssetIndex == font);
			TextManager.TextManager.fontAsset = fontAsset;
			return null;
		}

		public static object draw_set_halign(Arguments args)
		{
			var halign = Conv<int>(args.Args[0]);
			TextManager.TextManager.halign = (HAlign)halign;
			return null;
		}

		public static object draw_set_valign(Arguments args)
		{
			var valign = Conv<int>(args.Args[0]);
			TextManager.TextManager.valign = (VAlign)valign;
			return null;
		}

		public static object array_length_1d(Arguments args)
		{
			var array = (List<object>)args.Args[0];
			return array.Count;
		}

		public static object newgmlarray(Arguments args)
		{
			return new List<object>();
		}

		public static object asset_get_index(Arguments args)
		{
			var name = (string)args.Args[0];
			return AssetIndexManager.Instance.GetIndex(name);
		}

		public static object event_inherited(Arguments args)
		{
			if (args.Ctx.ObjectDefinition.parent == null)
			{
				return null;
			}

			NewGamemakerObject.ExecuteScript(args.Ctx.Self, args.Ctx.ObjectDefinition.parent, args.Ctx.EventType, args.Ctx.EventIndex);
			return null;
		}

		private static IniFile _iniFile;

		public static object ini_open(Arguments args)
		{
			var name = (string)args.Args[0];

			if (_iniFile != null)
			{
				throw new Exception("Cannot open a new .ini file while an old one is still open!");
			}

			var filepath = Path.Combine(Application.persistentDataPath, name);

			if (!File.Exists(filepath))
			{
				_iniFile = new IniFile { Name = name };
				return null;
			}

			var lines = File.ReadAllLines(filepath);

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
			var section = (string)args.Args[0];
			var key = (string)args.Args[1];
			var value = (string)args.Args[2];

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

		public static object ini_write_string(Arguments args)
		{
			var section = (string)args.Args[0];
			var key = (string)args.Args[1];
			var value = (string)args.Args[2];

			var sectionClass = _iniFile.Sections.FirstOrDefault(x => x.Name == section);

			if (sectionClass == null)
			{
				sectionClass = new IniSection(section);
				_iniFile.Sections.Add(sectionClass);
			}

			sectionClass.Dict[key] = value;

			return null;
		}

		public static object ini_read_real(Arguments args)
		{
			var section = (string)args.Args[0];
			var key = (string)args.Args[1];
			var value = Conv<double>(args.Args[2]);

			var sectionClass = _iniFile.Sections.FirstOrDefault(x => x.Name == section);

			if (sectionClass == null)
			{
				return value;
			}

			if (!sectionClass.Dict.ContainsKey(key))
			{
				return value;
			}

			if (!double.TryParse(sectionClass.Dict[key], out var _res))
			{
				// TODO : check what it does here. maybe it only parses up to an invalid character?
				return value;
			}

			return _res;
		}

		public static object ini_write_real(Arguments args)
		{
			var section = (string)args.Args[0];
			var key = (string)args.Args[1];
			var value = Conv<double>(args.Args[2]);

			var sectionClass = _iniFile.Sections.FirstOrDefault(x => x.Name == section);

			if (sectionClass == null)
			{
				sectionClass = new IniSection(section);
				_iniFile.Sections.Add(sectionClass);
			}

			sectionClass.Dict[key] = value.ToString();

			return null;
		}

		public static object ini_close(Arguments args)
		{
			var filepath = Path.Combine(Application.persistentDataPath, _iniFile.Name);
			File.Delete(filepath);
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

		public static object font_add_sprite_ext(Arguments args)
		{
			var spriteAssetIndex = Conv<int>(args.Args[0]);
			var string_map = Conv<string>(args.Args[1]);
			var prop = Conv<bool>(args.Args[2]);
			var sep = Conv<int>(args.Args[3]);

			var spriteAsset = SpriteManager.SpriteManager.GetSpriteAsset(spriteAssetIndex);

			var index = AssetIndexManager.Instance.Register(AssetType.fonts, $"fnt_{spriteAsset.name}");

			var newFont = new FontAsset
			{
				AssetIndex = index,
				name = $"fnt_{spriteAsset.name}",
				spriteIndex = spriteAssetIndex,
				sep = sep
			};

			for (var i = 0; i < string_map.Length; i++)
			{
				var fontAssetEntry = new Glyph
				{
					characterIndex = string_map[i]
				};

				newFont.entries.Add(fontAssetEntry);
			}

			TextManager.TextManager.instance.FontAssets.Add(newFont);

			return newFont.AssetIndex;
		}

		public static object variable_global_exists(Arguments args)
		{
			var name = Conv<string>(args.Args[0]);
			return VariableResolver.GlobalVariableExists(name);
		}

		private static Dictionary<int, Dictionary<object, object>> _dsMapDict = new();

		public static object ds_map_create(Arguments args)
		{
			var highestIndex = -1;
			if (_dsMapDict.Count > 0)
			{
				highestIndex = _dsMapDict.Keys.Max();
			}

			_dsMapDict.Add(highestIndex + 1, new());
			return highestIndex + 1;
		}

		public static object ds_map_destroy(Arguments args)
		{
			var index = Conv<int>(args.Args[0]);
			_dsMapDict.Remove(index);
			return null;
		}

		public static object ds_map_add(Arguments args)
		{
			var id = Conv<int>(args.Args[0]);
			var key = args.Args[1];
			var value = args.Args[2];

			if (!_dsMapDict.ContainsKey(id))
			{
				return false;
			}

			var dict = _dsMapDict[id];
			if (dict.ContainsKey(key))
			{
				return false;
			}

			dict.Add(key, value);
			return true;
		}

		public static object ds_map_size(Arguments args)
		{
			var id = (int)args.Args[0];
			return _dsMapDict[id].Count;
		}

		private static Dictionary<int, List<object>> _dsListDict = new();

		public static object ds_list_create(Arguments args)
		{
			var highestIndex = -1;
			if (_dsListDict.Count > 0)
			{
				highestIndex = _dsListDict.Keys.Max();
			}

			_dsListDict.Add(highestIndex + 1, new());
			return highestIndex + 1;
		}

		public static object ds_list_destroy(Arguments args)
		{
			var index = Conv<int>(args.Args[0]);
			_dsListDict.Remove(index);
			return null;
		}

		public static object ds_list_add(Arguments args)
		{
			var id = Conv<int>(args.Args[0]);
			var values = args.Args[1..];

			if (!_dsListDict.ContainsKey(id))
			{
				return null;
			}

			var list = _dsListDict[id];
			list.AddRange(values);
			return null;
		}

		public static object show_debug_message(Arguments args)
		{
			//Debug.Log(args.Args[0].ToString());
			return null;
		}

		private static readonly Dictionary<int, FileHandle> _fileHandles = new(32);

		public static object file_text_open_read(Arguments args)
		{
			var fname = (string)args.Args[0];

			var filepath = Path.Combine(Application.persistentDataPath, fname);

			if (!File.Exists(filepath))
			{
				return -1;
			}

			var fileStream = new FileStream(filepath, FileMode.Open, FileAccess.Read);

			if (_fileHandles.Count == 32)
			{
				return -1;
			}

			var highestIndex = -1;
			if (_fileHandles.Count > 0)
			{
				highestIndex = _fileHandles.Keys.Max();
			}

			var handle = new FileHandle
			{
				Reader = new StreamReader(fileStream)
			};

			_fileHandles.Add(highestIndex + 1, handle);
			return highestIndex + 1;
		}

		public static object file_text_close(Arguments args)
		{
			var index = (int)args.Args[0];

			if (_fileHandles.ContainsKey(index))
			{
				if (_fileHandles[index].Reader != null)
				{
					_fileHandles[index].Reader.Close();
					_fileHandles[index].Reader.Dispose();
				}

				if (_fileHandles[index].Writer != null)
				{
					_fileHandles[index].Writer.Close();
					_fileHandles[index].Writer.Dispose();
				}

				_fileHandles.Remove(index);
			}

			return null;
		}

		public static object file_text_eof(Arguments args)
		{
			var fileid = (int)args.Args[0];
			var reader = _fileHandles[fileid].Reader;
			return reader.EndOfStream;
		}

		public static object file_exists(Arguments args)
		{
			var fname = (string)args.Args[0];
			var filepath = Path.Combine(Application.persistentDataPath, fname);
			return File.Exists(filepath);
		}

		public static object file_text_readln(Arguments args)
		{
			var fileid = (int)args.Args[0];
			var reader = _fileHandles[fileid].Reader;
			return reader.ReadLine();
		}

		public static object file_delete(Arguments args)
		{
			var fname = (string)args.Args[0];
			var filepath = Path.Combine(Application.persistentDataPath, fname);
			File.Delete(filepath);
			return true; // TODO : this should return false if this fails.
		}

		public static object file_copy(Arguments args)
		{
			var fname = (string)args.Args[0];
			var newname = (string)args.Args[1];

			fname = Path.Combine(Application.persistentDataPath, fname);
			newname = Path.Combine(Application.persistentDataPath, newname);

			if (File.Exists(newname))
			{
				throw new Exception("File already exists.");
			}

			File.Copy(fname, newname);

			return null;
		}

		public static object json_decode(Arguments args)
		{
			// is recursive weeeeeeeeeeee
			static object Parse(JToken jToken)
			{
				switch (jToken)
				{
					case JValue jValue:
						return jValue.Value;
					case JArray jArray:
						{
							var dsList = (int)ds_list_create(null);
							foreach (var item in jArray)
							{
								// TODO: make and call the proper function for maps and lists
								ds_list_add(new Arguments { Args = new object[] { dsList, Parse(item) } });
							}
							return dsList;
						}
					case JObject jObject:
						{
							var dsMap = (int)ds_map_create(null);
							foreach (var (name, value) in jObject)
							{
								// TODO: make and call the proper function for maps and lists
								ds_map_add(new Arguments { Args = new object[] { dsMap, name, Parse(value) } });
							}
							return dsMap;
						}
					default:
						throw new ArgumentOutOfRangeException();
				}
			}

			var @string = (string)args.Args[0];
			var jToken = JToken.Parse(@string);

			switch (jToken)
			{
				case JValue jValue:
					{
						var dsMap = (int)ds_map_create(null);
						ds_map_add(new Arguments { Args = new object[] { dsMap, "default", Parse(jValue) } });
						return dsMap;
					}
				case JArray jArray:
					{
						var dsMap = (int)ds_map_create(null);
						ds_map_add(new Arguments { Args = new object[] { dsMap, "default", Parse(jArray) } });
						return dsMap;
					}
				case JObject jObject:
					{
						return Parse(jObject);
					}
				default:
					throw new ArgumentOutOfRangeException();
			}
		}

		public static object _string(Arguments args)
		{
			var valueOrFormat = args.Args[0];
			var values = new object[] { };
			if (args.Args.Length > 1)
			{
				values = args.Args[1..];
			}

			if (args.Args.Length > 1)
			{
				// format
				var format = (string)valueOrFormat;

				// doing this like im in c lol
				var result = new StringBuilder();
				var bracesString = new StringBuilder();

				var inBraces = false;
				foreach (var formatChar in format)
				{
					if (!inBraces)
					{
						if (formatChar == '{')
						{
							inBraces = true;
						}
						else
						{
							result.Append(formatChar);
						}
					}
					else
					{
						if (formatChar == '}')
						{
							inBraces = false;
							var bracesNumber = int.Parse(bracesString.ToString());
							bracesString.Clear();
							result.Append(values[bracesNumber]);
						}
						else
						{
							bracesString.Append(formatChar);
						}
					}
				}
				if (inBraces)
				{
					result.Append(bracesString);
				}

				return result.ToString();
			}
			else
			{
				// value

				if (valueOrFormat is List<object> list)
				{
					// array
					// is any of this right? not sure.
					var index = 0;
					var result = new StringBuilder("[");
					foreach (var item in list)
					{
						var elementString = (string)_string(new Arguments { Args = new object[] { item } });

						result.Append(elementString);
						if (index < list.Count - 1)
						{
							result.Append(", ");
						}
						index++;
					}

					result.Append("]");
					return result.ToString();
				}
				else if (valueOrFormat is bool)
				{
					return Conv<string>(valueOrFormat);
				}
				else if (valueOrFormat is string)
				{
					return valueOrFormat;
				}
				else
				{
					// real
					var num = Conv<double>(valueOrFormat);
					var afterTwoDigits = num % 0.01f;
					var truncated = num - afterTwoDigits;

					return (truncated % 1) == 0
						? truncated.ToString()
						: Math.Round(truncated, 2).ToString();
				}
			}
		}

		public static object ds_map_find_value(Arguments args)
		{
			var id = Conv<int>(args.Args[0]);
			var key = args.Args[1];

			if (!_dsMapDict.ContainsKey(id))
			{
				return null;
			}

			var dict = _dsMapDict[id];
			if (!dict.ContainsKey(key))
			{
				return null;
			}

			return dict[key];
		}

		public static object audio_group_load(Arguments args)
		{
			// TODO : actually implement this properly? DELTARUNITY doesnt use audio groups or any GM storage files (yet?)
			return true;
		}

		public static object instance_exists(Arguments args)
		{
			var obj = (int)args.Args[0];

			if (obj > AssetIndexManager.Instance.GetHighestIndex(AssetType.objects))
			{
				// instance id was passed
				return InstanceManager.Instance.instance_exists_instanceid(obj);
			}
			else
			{
				// asset index was passed
				return InstanceManager.Instance.instance_exists_index(obj);
			}
		}

		public static object instance_create_depth(Arguments args)
		{
			var x = Conv<double>(args.Args[0]);
			var y = Conv<double>(args.Args[1]);
			var depth = Conv<int>(args.Args[2]);
			var obj = Conv<int>(args.Args[3]);

			return InstanceManager.Instance.instance_create_depth(x, y, depth, obj);
		}

		public static object instance_number(Arguments args)
		{
			var obj = Conv<int>(args.Args[0]);
			return InstanceManager.Instance.instance_number(obj);
		}

		public static object instance_destroy(Arguments args)
		{
			if (args.Args.Length == 0)
			{
				InstanceManager.Instance.instance_destroy(args.Ctx.Self);
				NewGamemakerObject.ExecuteScript(args.Ctx.Self, args.Ctx.ObjectDefinition, EventType.Destroy);
				NewGamemakerObject.ExecuteScript(args.Ctx.Self, args.Ctx.ObjectDefinition, EventType.CleanUp);
				return null;
			}

			var id = Conv<int>(args.Args[0]);
			var execute_event_flag = true;

			if (args.Args.Length == 2)
			{
				execute_event_flag = Conv<bool>(args.Args[1]);
			}
				
			if (id < 100000)
			{
				// asset index
				var instances = InstanceManager.Instance.FindByAssetId(id);

				foreach (var instance in instances)
				{
					InstanceManager.Instance.instance_destroy(instance);

					if (execute_event_flag)
					{
						NewGamemakerObject.ExecuteScript(instance, instance.Definition, EventType.Destroy);
					}

					NewGamemakerObject.ExecuteScript(instance, instance.Definition, EventType.CleanUp);
				}
			}
			else
			{
				// instance id
				var instance = InstanceManager.Instance.FindByInstanceId(id);
				InstanceManager.Instance.instance_destroy(instance);

				if (execute_event_flag)
				{
					NewGamemakerObject.ExecuteScript(instance, instance.Definition, EventType.Destroy);
				}

				NewGamemakerObject.ExecuteScript(instance, instance.Definition, EventType.CleanUp);
			}

			return null;
		}

		public static object display_get_width(Arguments args)
		{
			return Screen.mainWindowDisplayInfo.width;
		}

		public static object display_get_height(Arguments args)
		{
			return Screen.mainWindowDisplayInfo.height;
		}

		[DllImport("user32.dll", EntryPoint = "SetWindowText")]
		public static extern bool SetWindowText(IntPtr hwnd, String lpString);

		[DllImport("user32.dll", EntryPoint = "FindWindow")]
		public static extern IntPtr FindWindow(String className, String windowName);

		private static string _caption = "DELTARUNITY";

		public static object window_set_caption(Arguments args)
		{
			var caption = Conv<string>(args.Args[0]);

#if !UNITY_EDITOR
			var windowPtr = FindWindow(null, _caption);
			SetWindowText(windowPtr, caption);
#endif
			_caption = caption;

			Debug.Log($"Window caption : {caption}");

			return null;
		}

		public static object window_get_caption(Arguments args)
		{
			return _caption;
		}

		public static object window_set_size(Arguments args)
		{
			var w = Conv<int>(args.Args[0]);
			var h = Conv<int>(args.Args[1]);
			// TODO : implement using winuser.h SetWindowPos
			return null;
		}

		public static object window_set_position(Arguments args)
		{
			var x = Conv<int>(args.Args[0]);
			var y = Conv<int>(args.Args[1]);
			// TODO : implement using winuser.h SetWindowPos
			return null;
		}

		public static object audio_group_is_loaded(Arguments args)
		{
			// TODO : actually implement this properly? DELTARUNITY doesnt use audio groups or any GM storage files (yet?)
			return true;
		}

		public static object keyboard_check(Arguments args)
		{
			var key = Conv<int>(args.Args[0]);
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

		public static object keyboard_check_pressed(Arguments args)
		{
			var key = Conv<int>(args.Args[0]);
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

		public static object gamepad_button_check(Arguments args)
		{
			// TODO : implement?
			return false;
		}

		public static object gamepad_axis_value(Arguments args)
		{
			// TODO : implement?
			return 0;
		}

		public static object room_goto(Arguments args)
		{
			var index = Conv<int>(args.Args[0]);
			RoomManager.RoomManager.Instance.ChangeRoom(index);
			return null;
		}

		public static object audio_create_stream(Arguments args)
		{
			var filename = Conv<string>(args.Args[0]);
			var path = Path.Combine(Application.persistentDataPath, filename);

			var sample_data = File.ReadAllBytes(path);
			var sample_name = Path.GetFileNameWithoutExtension(filename);

			AudioClip audioClip;
			using (var vorbis = new VorbisReader(new MemoryStream(sample_data, false)))
			{
				var _audioBuffer = new float[vorbis.TotalSamples];
				var read = vorbis.ReadSamples(_audioBuffer, 0, (int)vorbis.TotalSamples);
				audioClip = AudioClip.Create(sample_name, (int)(vorbis.TotalSamples / vorbis.Channels), vorbis.Channels, vorbis.SampleRate, false);
				audioClip.SetData(_audioBuffer, 0);
			}

			return AudioManager.AudioManager.Instance.RegisterAudioClip(audioClip);
		}

		// docs say this is passed the file path, but in DR its passed the asset index of the stream... no idea
		public static object audio_destroy_stream(Arguments args)
		{
			var index = Conv<int>(args.Args[0]);
			AudioManager.AudioManager.Instance.UnregisterAudio(index);
			return null;
		}

		public static object merge_colour(Arguments args)
		{
			var col1 = Conv<int>(args.Args[0]);
			var col2 = Conv<int>(args.Args[1]);
			var amount = Conv<double>(args.Args[2]);

			/*
			 * GameMaker stores colors in 3 bytes - BGR
			 * RED		: 255		: 00 00 FF
			 * ORANGE	: 4235519	: 40 A0 FF
			 * Alpha (or "blend") is not stored in colors.
			 */

			var oneBytes = BitConverter.GetBytes(col1);
			var twoBytes = BitConverter.GetBytes(col2);
			amount = Math.Clamp(amount, 0, 1);
			var mr = oneBytes[0] + (twoBytes[0] - oneBytes[0]) * amount;
			var mg = oneBytes[1] + (twoBytes[1] - oneBytes[1]) * amount;
			var mb = oneBytes[2] + (twoBytes[2] - oneBytes[2]) * amount;

			return BitConverter.ToInt32(new[] { (byte)mr, (byte)mg, (byte)mb, (byte)255 }, 0);
		}

		public static object window_center(Arguments args)
		{
			// TODO : implement using winuser.h SetWindowPos
			return null;
		}

		public static object audio_play_sound(Arguments args)
		{
			var index = Conv<int>(args.Args[0]);
			var priority = Conv<int>(args.Args[1]); // can this be a double?
			var loop = Conv<bool>(args.Args[2]);
			var asset = AudioManager.AudioManager.Instance.GetAudioAsset(index);
			var gain = asset.Gain;
			var offset = 0.0; // TODO
			var pitch = 1.0; // TODO
			var listener_mask = 0; // TODO : work out what the hell this is for
			if (args.Args.Length > 3)
			{
				gain = Conv<double>(args.Args[3]);
			}

			if (args.Args.Length > 4)
			{
				offset = Conv<double>(args.Args[4]);
			}

			if (args.Args.Length > 5)
			{
				pitch = Conv<double>(args.Args[5]);
			}

			if (args.Args.Length > 6)
			{
				listener_mask = Conv<int>(args.Args[6]);
			}

			return AudioManager.AudioManager.Instance.audio_play_sound(index, priority, loop, gain, offset, pitch);
		}

		public static object audio_sound_gain(Arguments args)
		{
			var index = Conv<int>(args.Args[0]);
			var volume = Conv<double>(args.Args[1]);
			var time = Conv<double>(args.Args[2]);

			if (index >= 100000)
			{
				// instance id
				// TODO : lerp on instance
			}
			else
			{
				// sound asset index
				AudioManager.AudioManager.Instance.SetAssetGain(index, volume);

				// TODO : lerp on all existing instances
			}

			return null;
		}

		public static object floor(Arguments args)
		{
			var n = Conv<double>(args.Args[0]);
			return Math.Floor(n);
		}

		public static object ceil(Arguments args)
		{
			var n = Conv<double>(args.Args[0]);
			return Math.Ceiling(n);
		}

		public static object abs(Arguments args)
		{
			var val = Conv<double>(args.Args[0]);
			return Math.Abs(val);
		}

		public static object string_hash_to_newline(Arguments args)
		{
			var text = Conv<string>(args.Args[0]);

			if (string.IsNullOrEmpty(text))
			{
				return text;
			}

			return text.Replace("#", Environment.NewLine);
		}

		public static object draw_rectangle(Arguments args)
		{
			var x1 = Conv<double>(args.Args[0]);
			var y1 = Conv<double>(args.Args[1]);
			var x2 = Conv<double>(args.Args[2]);
			var y2 = Conv<double>(args.Args[3]);
			var outline = Conv<bool>(args.Args[4]);

			if (outline)
			{
				draw(x1, y1, x2, y1 + 1);
				draw(x2 - 1, y1 + 1, x2, y2);
				draw(x1, y2 - 1, x2, y2);
				draw(x1, y1, x1 + 1, y2);
				return null;
			}

			draw(x1, y1, x2, y2);
			return null;

			static void draw(double x1, double y1, double x2, double y2)
			{
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
		}

		public static object draw_text(Arguments args)
		{
			var x = Conv<double>(args.Args[0]);
			var y = Conv<double>(args.Args[1]);
			var str = Conv<string>(args.Args[2]);
			TextManager.TextManager.DrawText(x, y, str);
			return null;
		}

		public static object draw_sprite(Arguments args)
		{
			var sprite = Conv<int>(args.Args[0]);
			var subimg = Conv<int>(args.Args[1]);
			var x = Conv<double>(args.Args[2]);
			var y = Conv<double>(args.Args[3]);

			SpriteManager.SpriteManager.DrawSprite(sprite, subimg, x, y);
			return null;
		}

		public static object gamepad_is_connected(Arguments args)
		{
			var device = Conv<int>(args.Args[0]);
			return false; // TODO : implement
		}

		public static object event_user(Arguments args)
		{
			var numb = Conv<int>(args.Args[0]);
			NewGamemakerObject.ExecuteScript(args.Ctx.Self, args.Ctx.ObjectDefinition, EventType.Other, (int)(OtherType.User0 + numb));
			return null;
		}
	}

	public class Arguments
	{
		public VMScriptExecutionContext Ctx;
		public object[] Args;
	}

	public class FileHandle
	{
		public StreamReader Reader;
		public StreamWriter Writer;
	}
}
