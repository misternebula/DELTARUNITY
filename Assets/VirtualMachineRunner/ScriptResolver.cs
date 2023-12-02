﻿using Assets.Scripts;
using Assets.Scripts.IniFiles;
using Newtonsoft.Json.Linq;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
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
			{ "event_inherited", event_inherited },
			{ "ini_open", ini_open },
			{ "ini_read_string", ini_read_string },
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
			{ "json_decode", json_decode },
			{ "string", _string },
			{ "ds_map_find_value", ds_map_find_value }
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
			return AssetIndexManager.Instance.GetIndex(name);
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
			var spriteAssetIndex = VMExecuter.Convert<int>(args.ArgumentArray[0]);
			var string_map = VMExecuter.Convert<string>(args.ArgumentArray[1]);
			var prop = VMExecuter.Convert<bool>(args.ArgumentArray[2]);
			var sep = VMExecuter.Convert<int>(args.ArgumentArray[3]);

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
			var name = VMExecuter.Convert<string>(args.ArgumentArray[0]);
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
			var index = VMExecuter.Convert<int>(args.ArgumentArray[0]);
			_dsMapDict.Remove(index);
			return null;
		}

		public static object ds_map_add(Arguments args)
		{
			var id = VMExecuter.Convert<int>(args.ArgumentArray[0]);
			var key = args.ArgumentArray[1];
			var value = args.ArgumentArray[2];

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
			var id = (int)args.ArgumentArray[0];
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
			var index = VMExecuter.Convert<int>(args.ArgumentArray[0]);
			_dsListDict.Remove(index);
			return null;
		}

		public static object ds_list_add(Arguments args)
		{
			var id = VMExecuter.Convert<int>(args.ArgumentArray[0]);
			var values = args.ArgumentArray[1..];

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
			Debug.Log(args.ArgumentArray[0].ToString());
			return null;
		}

		private static readonly Dictionary<int, FileHandle> _fileHandles = new(32);

		public static object file_text_open_read(Arguments args)
		{
			var fname = (string)args.ArgumentArray[0];

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
			var index = (int)args.ArgumentArray[0];

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
			var fileid = (int)args.ArgumentArray[0];
			var reader = _fileHandles[fileid].Reader;
			return reader.EndOfStream;
		}

		public static object file_exists(Arguments args)
		{
			var fname = (string)args.ArgumentArray[0];
			var filepath = Path.Combine(Application.persistentDataPath, fname);
			return File.Exists(filepath);
		}

		public static object file_text_readln(Arguments args)
		{
			var fileid = (int)args.ArgumentArray[0];
			var reader = _fileHandles[fileid].Reader;
			return reader.ReadLine();
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
							ds_list_add(new Arguments { ArgumentArray = new object[] { dsList, Parse(item) } });
						}
						return dsList;
					}
					case JObject jObject:
					{
						var dsMap = (int)ds_map_create(null);
						foreach (var (name, value) in jObject)
						{
							// TODO: make and call the proper function for maps and lists
							ds_map_add(new Arguments { ArgumentArray = new object[] { dsMap, name, Parse(value) } });
						}
						return dsMap;
					}
					default:
						throw new ArgumentOutOfRangeException();
				}
			}

			var @string = (string)args.ArgumentArray[0];
			var jToken = JToken.Parse(@string);

			switch (jToken)
			{
				case JValue jValue:
				{
					var dsMap = (int)ds_map_create(null);
					ds_map_add(new Arguments { ArgumentArray = new object[] { dsMap, "default", Parse(jValue) } });
					return dsMap;
				}
				case JArray jArray:
				{
					var dsMap = (int)ds_map_create(null);
					ds_map_add(new Arguments { ArgumentArray = new object[] { dsMap, "default", Parse(jArray) } });
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
			var value_or_format = args.ArgumentArray[0];
			var values = new object[] { };
			if (args.ArgumentArray.Length > 1)
			{
				values = args.ArgumentArray[1..];
			}

			if (args.ArgumentArray.Length > 1)
			{
				// format
				// doing this like im in c lol
				var format = (string)value_or_format;

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

				if (value_or_format.GetType().IsArray)
				{
					// is any of this right? not sure.
					var enumerable = value_or_format as IEnumerable<object>;
					var index = 0;
					var result = new StringBuilder("[");
					foreach (var element in enumerable)
					{
						var elementString = (string)_string(new Arguments { ArgumentArray = new object[] { element } });

						result.Append(elementString);
						if (index < enumerable.Count() - 1)
						{
							result.Append(", ");
						}
						index++;
					}

					result.Append("]");
					return result.ToString();
				}
				else if (value_or_format is bool)
				{
					return VMExecuter.Convert<string>(value_or_format);
				}
				else if (value_or_format is string)
				{
					return value_or_format;
				}
				else
				{
					// real
					var num = VMExecuter.Convert<double>(value_or_format);
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
			var id = VMExecuter.Convert<int>(args.ArgumentArray[0]);
			var key = args.ArgumentArray[1];

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
	}

	public class Arguments
	{
		public VMScriptExecutionContext Context;
		public object[] ArgumentArray;
	}

	public class FileHandle
	{
		public StreamReader Reader;
		public StreamWriter Writer;
	}
}
