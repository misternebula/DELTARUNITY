using Assets.Scripts;
using Assets.Scripts.IniFiles;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
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
			{ "ds_map_size", ds_map_size }
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

			_dsMapDict.Add(highestIndex + 1, new Dictionary<object, object>());
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

		public static object ds_list_create(Arguments args) => throw new NotImplementedException();
		public static object ds_list_destroy(Arguments args) => throw new NotImplementedException();
		public static object ds_list_add(Arguments args) => throw new NotImplementedException();

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
						var dsMap = (int)ds_list_create(null);
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

		public static object ds_map_size(Arguments args)
		{
			var id = (int)args.ArgumentArray[0];
			return _dsMapDict[id].Count;
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
