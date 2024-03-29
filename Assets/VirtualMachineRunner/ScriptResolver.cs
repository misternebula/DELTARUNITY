﻿using Assets.Instances;
using Assets.RoomManager;
using Assets.Scripts;
using Assets.Scripts.IniFiles;
using Assets.SpriteManager;
using Assets.TextManager;
using Newtonsoft.Json.Linq;
using NVorbis;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.Rendering;
using static UnityEditor.Experimental.GraphView.GraphView;

namespace Assets.VirtualMachineRunner
{
	public class ScriptResolver : MonoBehaviour
	{
		public static ScriptResolver Instance { get; private set; }

		public List<VMScript> Scripts = new();

		public Dictionary<string, Func<Arguments, object>> BuiltInFunctions = new()
		{
			#region draw_
			{ "draw_set_colour", draw_set_colour },
			{ "draw_set_color", draw_set_colour }, // mfw
			{ "draw_get_colour", draw_get_colour },
			{ "draw_get_color", draw_get_colour },
			{ "draw_set_alpha", draw_set_alpha },
			{ "draw_set_font", draw_set_font },
			{ "draw_set_halign", draw_set_halign },
			{ "draw_set_valign", draw_set_valign },
			{ "draw_rectangle", draw_rectangle },
			{ "draw_text", draw_text },
			{ "draw_text_transformed", draw_text_transformed },
			{ "draw_sprite", draw_sprite },
			{ "draw_sprite_ext", draw_sprite_ext },
			{ "draw_sprite_part_ext", draw_sprite_part_ext },
			{ "draw_sprite_part", draw_sprite_part },
			{ "draw_self", draw_self },
			{ "draw_sprite_stretched", draw_sprite_stretched },
			{ "draw_text_color", draw_text_colour },
			{ "draw_text_colour", draw_text_colour },
			{ "draw_sprite_tiled_ext", draw_sprite_tiled_ext },
			#endregion

			#region file_
			{ "file_text_open_read", file_text_open_read },
			{ "file_text_open_write", file_text_open_write },
			{ "file_text_close", file_text_close },
			{ "file_text_eof", file_text_eof },
			{ "file_exists", file_exists },
			{ "file_text_readln", file_text_readln },
			{ "file_text_writeln", file_text_writeln },
			{ "file_text_read_string", file_text_read_string },
			{ "file_text_write_string", file_text_write_string },
			{ "file_text_read_real", file_text_read_real },
			{ "file_text_write_real", file_text_write_real },
			{ "file_delete", file_delete },
			{ "file_copy", file_copy },
			#endregion

			#region ds_
			{ "ds_map_create", ds_map_create },
			{ "ds_map_destroy", ds_map_destroy },
			{ "ds_map_add", ds_map_add },
			{ "ds_map_size", ds_map_size },
			{ "ds_list_create", ds_list_create },
			{ "ds_list_destroy", ds_list_destroy },
			{ "ds_list_add", ds_list_add },
			{ "ds_map_find_value", ds_map_find_value },
			#endregion

			#region ini_
			{ "ini_open", ini_open },
			{ "ini_read_string", ini_read_string },
			{ "ini_write_string", ini_write_string },
			{ "ini_read_real", ini_read_real },
			{ "ini_write_real", ini_write_real },
			{ "ini_close", ini_close },
			#endregion

			#region string_
			{ "string", _string },
			{ "string_length", string_length },
			{ "string_char_at", string_char_at },
			{ "string_width", string_width },
			{ "string_copy", string_copy },
			{ "string_insert", string_insert },
			{ "string_delete", string_delete },
			{ "string_replace_all", string_replace_all },
			{ "string_hash_to_newline", string_hash_to_newline },
			{ "string_pos", string_pos },
			#endregion

			#region camera_
			{ "camera_get_view_x", camera_get_view_x },
			{ "camera_get_view_y", camera_get_view_y },
			{ "camera_get_view_width", camera_get_view_width },
			{ "camera_get_view_height", camera_get_view_height },
			{ "camera_set_view_target", camera_set_view_target },
			{ "camera_get_view_target", camera_get_view_target },
			{ "camera_set_view_pos", camera_set_view_pos },
			#endregion

			#region audio_
			{ "audio_create_stream", audio_create_stream },
			{ "audio_destroy_stream", audio_destroy_stream },
			{ "audio_play_sound", audio_play_sound },
			{ "audio_sound_gain", audio_sound_gain },
			{ "audio_sound_pitch", audio_sound_pitch},
			{ "audio_stop_all", audio_stop_all },
			{ "audio_stop_sound", audio_stop_sound },
			{ "audio_group_load", audio_group_load },
			{ "audio_is_playing", audio_is_playing },
			{ "audio_group_set_gain", audio_group_set_gain },
			{ "audio_set_master_gain", audio_set_master_gain },
			{ "audio_pause_sound", audio_pause_sound },
			{ "audio_resume_sound", audio_resume_sound },
			{ "audio_sound_set_track_position", audio_sound_set_track_position },
			#endregion

			#region window_
			{ "window_set_caption", window_set_caption },
			{ "window_get_caption", window_get_caption },
			{ "window_set_position", window_set_position },
			{ "window_set_size", window_set_size },
			{ "window_center", window_center },
			#endregion

			#region layer_
			{ "layer_force_draw_depth", layer_force_draw_depth },
			{ "layer_get_all", layer_get_all },
			{ "layer_get_all_elements", layer_get_all_elements },
			{ "layer_get_depth", layer_get_depth },
			{ "layer_tile_alpha", layer_tile_alpha },
			{ "layer_get_element_type", layer_get_element_type },
			{ "layer_get_name", layer_get_name },
			{ "layer_create", layer_create },
			{ "layer_x", layer_x },
			{ "layer_y", layer_y },
			{ "layer_get_x", layer_get_x },
			{ "layer_get_y", layer_get_y },
			{ "layer_hspeed", layer_hspeed },
			{ "layer_vspeed", layer_vspeed },
			{ "layer_get_hspeed", layer_get_hspeed },
			{ "layer_get_vspeed", layer_get_vspeed },
			{ "layer_background_create", layer_background_create },
			{ "layer_background_visible", layer_background_visible },
			{ "layer_background_htiled", layer_background_htiled },
			{ "layer_background_vtiled", layer_background_vtiled },
			{ "layer_background_xscale", layer_background_xscale },
			{ "layer_background_yscale", layer_background_yscale },
			{ "layer_background_stretch", layer_background_stretch },
			{ "layer_background_blend", layer_background_blend },
			{ "layer_background_alpha", layer_background_alpha },
			{ "layer_background_exists", layer_background_exists },
			{ "layer_depth", layer_depth },
			#endregion

			#region instance_
			{ "instance_exists", instance_exists },
			{ "instance_create_depth", instance_create_depth },
			{ "instance_number", instance_number },
			{ "instance_destroy", instance_destroy },
			#endregion

			#region room_
			{ "room_goto", room_goto },
			{ "room_goto_next", room_goto_next },
			{ "room_goto_previous", room_goto_previous },
			{ "room_next", room_next },
			{ "room_previous", room_previous },
			#endregion

			#region Math
			{ "floor", floor },
			{ "ceil", ceil },
			{ "abs", abs },
			{ "sin", sin },
			{ "cos", cos },
			{ "random", random },
			{ "random_range", random_range },
			{ "irandom", irandom },
			{ "irandom_range", irandom_range },
			{ "round", round },
			{ "min", min },
			{ "max", max },
			#endregion

			{ "array_length_1d", array_length_1d },
			{ "@@NewGMLArray@@", newgmlarray },
			{ "asset_get_index", asset_get_index },
			{ "event_inherited", event_inherited },
			{ "font_add_sprite_ext", font_add_sprite_ext },
			{ "variable_global_exists", variable_global_exists },
			{ "show_debug_message", show_debug_message },
			{ "json_decode", json_decode },
			{ "display_get_height", display_get_height },
			{ "display_get_width", display_get_width },
			{ "keyboard_check", keyboard_check },
			{ "keyboard_check_pressed", keyboard_check_pressed },
			{ "audio_group_is_loaded", audio_group_is_loaded },
			{ "gamepad_button_check", gamepad_button_check },
			{ "gamepad_axis_value", gamepad_axis_value },
			{ "merge_colour", merge_colour },
			{ "merge_color", merge_colour },
			{ "gamepad_is_connected", gamepad_is_connected },
			{ "event_user", event_user },
			{ "view_get_camera", view_get_camera },
			{ "collision_rectangle", collision_rectangle },
			{ "place_meeting", place_meeting },
			{ "script_execute", script_execute },
			{ "move_towards_point", move_towards_point },
			{ "point_direction", point_direction },
			{ "point_distance", point_distance },
			{ "choose", choose },
			{ "real", real },
			{ "collision_line", collision_line },
			{ "sprite_get_number", sprite_get_number },
			{ "draw_line_width", draw_line_width },
			{ "d3d_set_fog", d3d_set_fog },
			{ "lengthdir_x", lengthdir_x },
			{ "lengthdir_y", lengthdir_y },
			{ "distance_to_point", distance_to_point }
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

		private static T Conv<T>(object obj) => VMExecuter.Conv<T>(obj);

		private static object layer_force_draw_depth(Arguments args)
		{
			var force = Conv<bool>(args.Args[0]);
			var depth = Conv<int>(args.Args[1]);
			//Debug.Log($"layer_force_draw_depth force:{force} depth:{depth}");

			// not implementing yet because uhhhhhhhhhhhhhhhhhhh

			return null;
		}

		private static object layer_get_all(Arguments args)
		{
			return GMLayer.LayerDict.Values.Select(x => (object)x.LayerId).ToList();
		}

		private static object layer_get_all_elements(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);

			var layer = GMLayer.LayerDict[layer_id];
			var list = new List<object>();

			foreach (var item in layer.GetComponentsInChildren<DrawWithDepth>())
			{
				list.Add(item.instanceId);
			}

			return list.ToList();
		}

		private static object layer_get_depth(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);

			var layer = GMLayer.LayerDict[layer_id];
			return layer.Depth;
		}

		private static object layer_tile_alpha(Arguments args)
		{
			var __index = Conv<int>(args.Args[0]);
			var __alpha = Conv<double>(args.Args[1]);
			FindObjectsOfType<GMTile>().First(x => x.instanceId == __index).Alpha = __alpha;
			return null;
		}

		private static object layer_get_element_type(Arguments args)
		{
			var element_id = Conv<int>(args.Args[0]);

			var element = Resources.FindObjectsOfTypeAll<DrawWithDepth>().First(x => x.instanceId == element_id);

			if (element is GMBackground)
			{
				return 1; // background
			}
			else if (element is GMTile)
			{
				return 7; // tile
			}
			else
			{
				return 9; // undefined
			}
		}

		private static object layer_get_name(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);
			var layer = GMLayer.LayerDict[layer_id];

			return layer.name;
		}

		private static object layer_create(Arguments args)
		{
			var depth = Conv<int>(args.Args[0]);
			var name = "";
			if (args.Args.Length > 1)
			{
				name = Conv<string>(args.Args[1]);
			}

			var id = Resources.FindObjectsOfTypeAll<GMLayer>().Max(x => x.LayerId) + 1;

			if (string.IsNullOrEmpty(name))
			{
				name = $"_layer_{Guid.NewGuid()}";
			}

			var newObj = new GameObject(name);
			newObj.SetActive(false);
			var layer = newObj.AddComponent<GMLayer>();
			layer.Depth = depth;
			layer.LayerId = id;
			newObj.SetActive(true);

			return id;
		}

		private static object layer_x(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);
			var x = Conv<double>(args.Args[1]);

			var layer = GMLayer.LayerDict[layer_id];
			layer.X = x;
			return null;
		}

		private static object layer_y(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);
			var y = Conv<double>(args.Args[1]);

			var layer = GMLayer.LayerDict[layer_id];
			layer.Y = y;
			return null;
		}

		private static object layer_get_x(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);

			var layer = GMLayer.LayerDict[layer_id];
			return layer.X;
		}

		private static object layer_get_y(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);

			var layer = GMLayer.LayerDict[layer_id];
			return layer.Y;
		}

		private static object layer_hspeed(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);
			var hspd = Conv<double>(args.Args[1]);

			var layer = GMLayer.LayerDict[layer_id];
			layer.HSpeed = hspd;
			return null;
		}

		private static object layer_vspeed(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);
			var vspd = Conv<double>(args.Args[1]);

			var layer = GMLayer.LayerDict[layer_id];
			layer.VSpeed = vspd;
			return null;
		}

		private static object layer_get_vspeed(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);

			var layer = GMLayer.LayerDict[layer_id];
			return layer.VSpeed;
		}

		private static object layer_get_hspeed(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);

			var layer = GMLayer.LayerDict[layer_id];
			return layer.HSpeed;
		}

		private static object layer_background_create(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);
			var sprite = Conv<int>(args.Args[1]);

			Debug.Log($"layer_background_create layer_id:{layer_id} sprite:{sprite}");

			var layer = GMLayer.LayerDict[layer_id];

			layer.gameObject.SetActive(false);
			var background = layer.gameObject.AddComponent<GMBackground>();
			background.sprite = sprite;
			background.depth = layer.Depth;
			background.instanceId = InstanceManager.Instance._highestInstanceId++;
			layer.gameObject.SetActive(true);

			return background.instanceId;
		}

		private static object layer_background_visible(Arguments args)
		{
			var background_element_id = Conv<int>(args.Args[0]);
			var visible = Conv<bool>(args.Args[1]);

			var background = GMBackground.BackgroundDict[background_element_id];
			background.Visible = visible;
			return null;
		}

		private static object layer_background_vtiled(Arguments args)
		{
			var background_element_id = Conv<int>(args.Args[0]);
			var vtiled = Conv<bool>(args.Args[1]);

			var background = GMBackground.BackgroundDict[background_element_id];
			background.VTiled = vtiled;
			return null;
		}

		private static object layer_background_htiled(Arguments args)
		{
			var background_element_id = Conv<int>(args.Args[0]);
			var htiled = Conv<bool>(args.Args[1]);

			var background = GMBackground.BackgroundDict[background_element_id];
			background.HTiled = htiled;
			return null;
		}

		private static object layer_background_stretch(Arguments args)
		{
			var background_element_id = Conv<int>(args.Args[0]);
			var stretch = Conv<bool>(args.Args[1]);

			var background = GMBackground.BackgroundDict[background_element_id];
			background.Stretch = stretch;
			return null;
		}

		private static object layer_background_xscale(Arguments args)
		{
			var background_element_id = Conv<int>(args.Args[0]);
			var xscale = Conv<double>(args.Args[1]);

			var background = GMBackground.BackgroundDict[background_element_id];
			background.XScale = xscale;
			return null;
		}

		private static object layer_background_yscale(Arguments args)
		{
			var background_element_id = Conv<int>(args.Args[0]);
			var yscale = Conv<double>(args.Args[1]);

			var background = GMBackground.BackgroundDict[background_element_id];
			background.YScale = yscale;
			return null;
		}

		private static object layer_background_alpha(Arguments args)
		{
			var background_element_id = Conv<int>(args.Args[0]);
			var alpha = Conv<double>(args.Args[1]);

			var background = GMBackground.BackgroundDict[background_element_id];
			background.Alpha = alpha;
			return null;
		}

		private static object layer_background_blend(Arguments args)
		{
			var background_element_id = Conv<int>(args.Args[0]);
			var blend = Conv<int>(args.Args[1]);

			var background = GMBackground.BackgroundDict[background_element_id];
			background.Color = blend;
			return null;
		}

		private static object layer_background_exists(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);
			var background_element_id = Conv<int>(args.Args[1]);

			return Resources.FindObjectsOfTypeAll<GMLayer>().Any(x => x.LayerId == layer_id && x.GetComponent<GMBackground>() != null && x.GetComponent<GMBackground>().instanceId == background_element_id);
		}

		private static object layer_depth(Arguments args)
		{
			var layer_id = Conv<int>(args.Args[0]);
			var depth = Conv<int>(args.Args[1]);

			var layer = GMLayer.LayerDict[layer_id];
			layer.Depth = depth;
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
			Debug.Log(args.Args[0].ToString());
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
				fileStream.Close();
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

		public static object file_text_open_write(Arguments args)
		{
			if (_fileHandles.Count == 32)
			{
				return -1;
			}

			var fname = (string)args.Args[0];
			var filepath = Path.Combine(Application.persistentDataPath, fname);

			File.Delete(filepath);
			var fileStream = new FileStream(filepath, FileMode.Create, FileAccess.Write);

			var highestIndex = -1;
			if (_fileHandles.Count > 0)
			{
				highestIndex = _fileHandles.Keys.Max();
			}

			var handle = new FileHandle
			{
				Writer = new StreamWriter(fileStream)
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

		public static object file_text_writeln(Arguments args)
		{
			var fileid = (int)args.Args[0];
			var writer = _fileHandles[fileid].Writer;
			writer.WriteLine();
			return null;
		}

		public static object file_text_read_string(Arguments args)
		{
			var fileid = (int)args.Args[0];
			var reader = _fileHandles[fileid].Reader;

			var result = "";
			while (reader.Peek() != 0x0D && reader.Peek() >= 0)
			{
				result += (char)reader.Read();
			}

			return result;
		}

		public static object file_text_write_string(Arguments args)
		{
			var fileid = (int)args.Args[0];
			var str = Conv<string>(args.Args[1]);
			var writer = _fileHandles[fileid].Writer;
			writer.Write(str);
			return null;
		}

		public static object file_text_read_real(Arguments args)
		{
			var fileid = (int)args.Args[0];
			var reader = _fileHandles[fileid].Reader;

			var result = "";
			while (reader.Peek() != 0x0D && reader.Peek() >= 0)
			{
				result += (char)reader.Read();
			}

			return double.Parse(result);
		}

		public static object file_text_write_real(Arguments args)
		{
			var fileid = (int)args.Args[0];
			var val = args.Args[1];
			var writer = _fileHandles[fileid].Writer;

			if (val is not int and not double and not float)
			{
				// i have no fucking idea
				writer.Write(0);
				return null;
			}

			writer.Write(Conv<double>(val));
			return null;
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

		public static object audio_is_playing(Arguments args)
		{
			var index = Conv<int>(args.Args[0]);

			if (index < GMConstants.FIRST_INSTANCE_ID)
			{
				foreach (var item in AudioManager.AudioManager.Instance.GetAudioInstances(index))
				{
					if (item != null)
					{
						return true;
					}
				}

				return false;
			}
			else
			{
				var instance = AudioManager.AudioManager.Instance.GetAudioInstance(index);
				return instance != null;
			}
		}

		public static object audio_group_set_gain(Arguments args)
		{
			// TODO : actually implement this properly? DELTARUNITY doesnt use audio groups or any GM storage files (yet?)
			return null;
		}

		public static object audio_set_master_gain(Arguments args)
		{
			// TODO : implement
			return null;
		}

		public static object audio_pause_sound(Arguments args)
		{
			var index = Conv<int>(args.Args[0]);

			if (index < GMConstants.FIRST_INSTANCE_ID)
			{
				foreach (var item in AudioManager.AudioManager.Instance.GetAudioInstances(index))
				{
					item.Source.Pause();
				}
			}
			else
			{
				var instance = AudioManager.AudioManager.Instance.GetAudioInstance(index);
				if (instance != null)
				{
					instance.Source.Pause();
				}
				
			}

			return null;
		}

		public static object audio_resume_sound(Arguments args)
		{
			var index = Conv<int>(args.Args[0]);

			if (index < GMConstants.FIRST_INSTANCE_ID)
			{
				foreach (var item in AudioManager.AudioManager.Instance.GetAudioInstances(index))
				{
					item.Source.Play();
				}
			}
			else
			{
				AudioManager.AudioManager.Instance.GetAudioInstance(index).Source.Play();
			}

			return null;
		}

		public static object audio_sound_set_track_position(Arguments args)
		{
			var index = Conv<int>(args.Args[0]);
			var time = Conv<double>(args.Args[1]);

			if (index < GMConstants.FIRST_INSTANCE_ID)
			{
				// TODO : All further instances of this sound need to start at the given time
			}
			else
			{
				AudioManager.AudioManager.Instance.GetAudioInstance(index).Source.time = (float)time;
			}

			return null;
		}

		public static object instance_exists(Arguments args)
		{
			var obj = Conv<int>(args.Args[0]);

			if (obj > GMConstants.FIRST_INSTANCE_ID)
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
				NewGamemakerObject.ExecuteScript(args.Ctx.Self, args.Ctx.ObjectDefinition, EventType.Destroy);
				NewGamemakerObject.ExecuteScript(args.Ctx.Self, args.Ctx.ObjectDefinition, EventType.CleanUp);
				InstanceManager.Instance.instance_destroy(args.Ctx.Self);
				return null;
			}

			var id = Conv<int>(args.Args[0]);
			var execute_event_flag = true;

			if (args.Args.Length == 2)
			{
				execute_event_flag = Conv<bool>(args.Args[1]);
			}
				
			if (id < GMConstants.FIRST_INSTANCE_ID)
			{
				// asset index
				var instances = InstanceManager.Instance.FindByAssetId(id);

				foreach (var instance in instances)
				{
					if (execute_event_flag)
					{
						NewGamemakerObject.ExecuteScript(instance, instance.Definition, EventType.Destroy);
					}

					NewGamemakerObject.ExecuteScript(instance, instance.Definition, EventType.CleanUp);

					InstanceManager.Instance.instance_destroy(instance);
				}
			}
			else
			{
				// instance id
				var instance = InstanceManager.Instance.FindByInstanceId(id);

				if (execute_event_flag)
				{
					NewGamemakerObject.ExecuteScript(instance, instance.Definition, EventType.Destroy);
				}

				NewGamemakerObject.ExecuteScript(instance, instance.Definition, EventType.CleanUp);

				InstanceManager.Instance.instance_destroy(instance);
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
			RoomManager.RoomManager.Instance.ChangeRoomAfterEvent(index);
			return null;
		}

		public static object room_goto_next(Arguments args)
		{
			RoomManager.RoomManager.Instance.room_goto_next();
			return null;
		}

		public static object room_goto_previous(Arguments args)
		{
			RoomManager.RoomManager.Instance.room_goto_previous();
			return null;
		}

		public static object room_next(Arguments args)
		{
			var numb = Conv<int>(args.Args[0]);
			return RoomManager.RoomManager.Instance.room_next(numb);
		}

		public static object room_previous(Arguments args)
		{
			var numb = Conv<int>(args.Args[0]);
			return RoomManager.RoomManager.Instance.room_previous(numb);
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
				// TotalSamples is actually the number of frames, not samples. (A frame is a set of samples at the same time)
				var _audioBuffer = new float[vorbis.TotalSamples * vorbis.Channels];
				vorbis.ReadSamples(_audioBuffer, 0, (int)vorbis.TotalSamples * vorbis.Channels);
				audioClip = AudioClip.Create(sample_name, (int)vorbis.TotalSamples, vorbis.Channels, vorbis.SampleRate, false);
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
			var pitch = asset.Pitch;
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

			var ret = AudioManager.AudioManager.Instance.audio_play_sound(index, priority, loop, gain, offset, pitch);
			return ret;
		}

		public static object audio_sound_gain(Arguments args)
		{
			var index = Conv<int>(args.Args[0]);
			var volume = Conv<double>(args.Args[1]);
			var time = Conv<double>(args.Args[2]);

			if (index >= GMConstants.FIRST_INSTANCE_ID)
			{
				// instance id
				var soundAsset = AudioManager.AudioManager.Instance.GetAudioInstance(index);
				if (soundAsset == null)
				{
					return null;
				}

				AudioManager.AudioManager.Instance.ChangeGain(soundAsset.Source, volume, time);
			}
			else
			{
				// sound asset index
				AudioManager.AudioManager.Instance.SetAssetGain(index, volume);

				// TODO : lerp on all existing instances
				foreach (var item in AudioManager.AudioManager.Instance.GetAudioInstances(index))
				{
					AudioManager.AudioManager.Instance.ChangeGain(item.Source, volume, time);
				}
			}

			return null;
		}

		public static object audio_sound_pitch(Arguments args)
		{
			var index = Conv<int>(args.Args[0]);
			var pitch = Conv<double>(args.Args[1]);

			if (index >= GMConstants.FIRST_INSTANCE_ID)
			{
				// instance id
				var soundAsset = AudioManager.AudioManager.Instance.GetAudioInstance(index);
				soundAsset.Source.pitch = (float)pitch;
			}
			else
			{
				// sound asset index
				AudioManager.AudioManager.Instance.SetAssetPitch(index, pitch);

				foreach (var item in AudioManager.AudioManager.Instance.GetAudioInstances(index))
				{
					item.Source.pitch = (float)pitch;
				}
			}

			return null;
		}

		public static object audio_stop_all(Arguments args)
		{
			Debug.Log($"audio_stop_all");
			AudioManager.AudioManager.Instance.StopAllAudio();
			return null;
		}

		public static object audio_stop_sound(Arguments args)
		{
			var id = Conv<int>(args.Args[0]);
			Debug.Log($"audio_stop_sound id:{id}");

			if (id < GMConstants.FIRST_INSTANCE_ID)
			{
				foreach (var item in AudioManager.AudioManager.Instance.GetAudioInstances(id))
				{
					item.Source.Stop();
					Destroy(item.Source.gameObject);
				}
			}
			else
			{
				var soundAsset = AudioManager.AudioManager.Instance.GetAudioInstance(id);
				soundAsset.Source.Stop();
				Destroy(soundAsset.Source.gameObject);
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

		public static object sin(Arguments args)
		{
			var val = Conv<double>(args.Args[0]);
			return Math.Sin(val);
		}

		public static object cos(Arguments args)
		{
			var val = Conv<double>(args.Args[0]);
			return Math.Cos(val);
		}

		public static object random(Arguments args)
		{
			var upper = Conv<double>(args.Args[0]);

			return UnityEngine.Random.Range(0f, (float)upper);
		}

		public static object random_range(Arguments args)
		{
			var n1 = Conv<double>(args.Args[0]);
			var n2 = Conv<double>(args.Args[1]);

			return UnityEngine.Random.Range((float)n1, (float)n2);
		}

		private static int realToInt(double value)
		{
			return value < 0 ? Mathf.CeilToInt((float)value) : Mathf.FloorToInt((float)value);
		}

		public static object irandom(Arguments args)
		{
			var n = realToInt(Conv<double>(args.Args[0]));

			return UnityEngine.Random.Range(0, n + 1);
		}

		public static object irandom_range(Arguments args)
		{
			var n1 = realToInt(Conv<double>(args.Args[0]));
			var n2 = realToInt(Conv<double>(args.Args[1]));

			return UnityEngine.Random.Range(n1, n2 + 1);
		}

		public static object round(Arguments args)
		{
			var num = Conv<double>(args.Args[0]);
			return Mathf.RoundToInt((float)num);
		}

		public static object min(Arguments args)
		{
			var arguments = new double[args.Args.Length];
			for (var i = 0; i < args.Args.Length; i++)
			{
				arguments[i] = Conv<double>(args.Args[i]);
			}

			return arguments.Min();
		}

		public static object max(Arguments args)
		{
			var arguments = new double[args.Args.Length];
			for (var i = 0; i < args.Args.Length; i++)
			{
				arguments[i] = Conv<double>(args.Args[i]);
			}

			return arguments.Max();
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

		public static object string_pos(Arguments args)
		{
			var substr = Conv<string>(args.Args[0]);
			var str = Conv<string>(args.Args[1]);

			return str.IndexOf(substr) + 1;
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

		public static object draw_text_transformed(Arguments args)
		{
			var x = Conv<double>(args.Args[0]);
			var y = Conv<double>(args.Args[1]);
			var str = Conv<string>(args.Args[2]);
			var xscale = Conv<double>(args.Args[3]);
			var yscale = Conv<double>(args.Args[4]);
			var angle = Conv<double>(args.Args[5]);
			TextManager.TextManager.DrawTextTransformed(x, y, str, xscale, yscale, angle);
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

		public static object draw_sprite_ext(Arguments args)
		{
			var sprite = Conv<int>(args.Args[0]);
			var subimg = Conv<int>(args.Args[1]);
			var x = Conv<double>(args.Args[2]);
			var y = Conv<double>(args.Args[3]);
			var xscale = Conv<double>(args.Args[4]);
			var yscale = Conv<double>(args.Args[5]);
			var rot = Conv<double>(args.Args[6]);
			var colour = Conv<int>(args.Args[7]);
			var alpha = Conv<double>(args.Args[8]);

			SpriteManager.SpriteManager.DrawSpriteExt(sprite, subimg, x, y, xscale, yscale, rot, colour, alpha);
			return null;
		}

		public static object draw_sprite_part_ext(Arguments args)
		{
			var sprite = Conv<int>(args.Args[0]);
			var subimg = Conv<int>(args.Args[1]);
			var left = Conv<int>(args.Args[2]);
			var top = Conv<int>(args.Args[3]);
			var width = Conv<int>(args.Args[4]);
			var height = Conv<int>(args.Args[5]);
			var x = Conv<double>(args.Args[6]);
			var y = Conv<double>(args.Args[7]);
			var xscale = Conv<double>(args.Args[8]);
			var yscale = Conv<double>(args.Args[9]);
			var colour = Conv<int>(args.Args[10]);
			var alpha = Conv<double>(args.Args[11]);

			SpriteManager.SpriteManager.DrawSpritePartExt(sprite, subimg, left, top, width, height, x, y, xscale, yscale, colour, alpha);

			return null;
		}

		public static object draw_sprite_part(Arguments args)
		{
			var sprite = Conv<int>(args.Args[0]);
			var subimg = Conv<int>(args.Args[1]);
			var left = Conv<int>(args.Args[2]);
			var top = Conv<int>(args.Args[3]);
			var width = Conv<int>(args.Args[4]);
			var height = Conv<int>(args.Args[5]);
			var x = Conv<double>(args.Args[6]);
			var y = Conv<double>(args.Args[7]);

			SpriteManager.SpriteManager.DrawSpritePart(sprite, subimg, left, top, width, height, x, y);

			return null;
		}

		public static object draw_self(Arguments args)
		{
			SpriteManager.SpriteManager.DrawSelf(args.Ctx.Self);
			return null;
		}

		public static object draw_sprite_stretched(Arguments args)
		{
			var sprite = Conv<int>(args.Args[0]);
			var subimg = Conv<int>(args.Args[1]);
			var x = Conv<double>(args.Args[2]);
			var y = Conv<double>(args.Args[3]);
			var w = Conv<double>(args.Args[4]);
			var h = Conv<double>(args.Args[5]);

			SpriteManager.SpriteManager.draw_sprite_stretched(sprite, subimg, x, y, w, h);
			return null;
		}

		public static object draw_text_colour(Arguments args)
		{
			var x = Conv<double>(args.Args[0]);
			var y = Conv<double>(args.Args[1]);
			var str = Conv<string>(args.Args[2]);
			var c1 = Conv<int>(args.Args[3]);
			var c2 = Conv<int>(args.Args[4]);
			var c3 = Conv<int>(args.Args[5]);
			var c4 = Conv<int>(args.Args[6]);
			var alpha = Conv<double>(args.Args[7]);

			TextManager.TextManager.DrawTextColor(x, y, str, c1, c2, c3, c4, alpha);

			return null;
		}

		public static object draw_sprite_tiled_ext(Arguments args)
		{
			var sprite = Conv<int>(args.Args[0]);
			var subimg = Conv<int>(args.Args[1]);
			var x = Conv<double>(args.Args[2]);
			var y = Conv<double>(args.Args[3]);
			var xscale = Conv<double>(args.Args[4]);
			var yscale = Conv<double>(args.Args[5]);
			var colour = Conv<int>(args.Args[6]);
			var alpha = Conv<double>(args.Args[7]);

			var spriteTex = SpriteManager.SpriteManager.GetSprite(sprite, subimg);

			var sizeWidth = spriteTex.width;
			var sizeHeight = spriteTex.height;

			var tempX = x;
			var tempY = y;

			var viewTopLeftX = GamemakerCamera.Instance.x;
			var viewTopLeftY = GamemakerCamera.Instance.y;

			while (tempX > viewTopLeftX)
			{
				tempX -= sizeWidth;
			}

			while (tempY > viewTopLeftY)
			{
				tempY -= sizeHeight;
			}

			// tempX and tempY are now the topleft-most co-ords that are offscreen

			var xOffscreenValue = viewTopLeftX - tempX;
			var yOffscreenValue = viewTopLeftY - tempY;

			var countToDrawHoriz = Mathf.CeilToInt((Room.Instance.ViewSize.x + (float)xOffscreenValue) / sizeWidth);
			var countToDrawVert = Mathf.CeilToInt((Room.Instance.ViewSize.y + (float)yOffscreenValue) / sizeHeight);

			for (var i = 0; i < countToDrawVert; i++)
			{
				for (var j = 0; j < countToDrawHoriz; j++)
				{
					SpriteManager.SpriteManager.DrawSpriteExt(sprite, subimg, tempX + (j * sizeWidth), tempY + (i * sizeHeight), xscale, yscale, 0, colour, alpha);
				}
			}

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

		public static object string_length(Arguments args)
		{
			var str = Conv<string>(args.Args[0]);

			if (string.IsNullOrEmpty(str))
			{
				return 0;
			}

			return str.Length;
		}

		public static object string_char_at(Arguments args)
		{
			var str = Conv<string>(args.Args[0]);
			var index = Conv<int>(args.Args[1]);

			if (string.IsNullOrEmpty(str) || index > str.Length)
			{
				return "";
			}

			if (index <= 0)
			{
				return str[0].ToString();
			}

			// guh index starts at one? goofy gamemaker
			return str[index - 1].ToString();
		}

		public static object string_width(Arguments args)
		{
			var str = Conv<string>(args.Args[0]);

			return TextManager.TextManager.StringWidth(str);
		}

		public static object string_copy(Arguments args)
		{
			var str = Conv<string>(args.Args[0]);
			var index = Conv<int>(args.Args[1]);
			var count = Conv<int>(args.Args[2]);

			return str.Substring(index - 1, count);
		}

		public static object string_insert(Arguments args)
		{
			var substr = Conv<string>(args.Args[0]);
			var str = Conv<string>(args.Args[1]);
			var index = Conv<int>(args.Args[2]);

			return str.Insert(index - 1, substr);
		}

		public static object string_delete(Arguments args)
		{
			var str = Conv<string>(args.Args[0]);
			var index = Conv<int>(args.Args[1]);
			var count = Conv<int>(args.Args[2]);

			return str.Remove(index - 1, count);
		}

		public static object string_replace_all(Arguments args)
		{
			var str = Conv<string>(args.Args[0]);
			var substr = Conv<string>(args.Args[1]);
			var newstr = Conv<string>(args.Args[2]);

			return str.Replace(substr, newstr);
		}

		public static object view_get_camera(Arguments args)
		{
			// TODO : ughhh implement multiple cameras
			return 0;
		}

		public static object camera_get_view_x(Arguments args)
		{
			var camera_id = Conv<int>(args.Args[0]);

			if (camera_id > 0)
			{
				// TODO : ughhh implement multiple cameras
				throw new NotImplementedException();
			}

			return GamemakerCamera.Instance.x;
		}

		public static object camera_get_view_y(Arguments args)
		{
			var camera_id = Conv<int>(args.Args[0]);

			if (camera_id > 0)
			{
				// TODO : ughhh implement multiple cameras
				throw new NotImplementedException();
			}

			return -GamemakerCamera.Instance.y;
		}

		public static object camera_get_view_width(Arguments args)
		{
			var camera_id = Conv<int>(args.Args[0]);

			if (camera_id > 0)
			{
				// TODO : ughhh implement multiple cameras
				throw new NotImplementedException();
			}

			return Room.Instance.ViewSize.x;
		}

		public static object camera_get_view_height(Arguments args)
		{
			var camera_id = Conv<int>(args.Args[0]);

			if (camera_id > 0)
			{
				// TODO : ughhh implement multiple cameras
				throw new NotImplementedException();
			}

			return Room.Instance.ViewSize.y;
		}

		public static object camera_set_view_target(Arguments args)
		{
			var camera_id = Conv<int>(args.Args[0]);

			if (camera_id > 0)
			{
				// TODO : ughhh implement multiple cameras
				throw new NotImplementedException();
			}

			var id = Conv<int>(args.Args[1]);

			NewGamemakerObject instance = null;

			if (id < GMConstants.FIRST_INSTANCE_ID)
			{
				instance = InstanceManager.Instance.FindByAssetId(id).FirstOrDefault();
			}
			else
			{
				instance = InstanceManager.Instance.FindByInstanceId(id);
			}

			Debug.Log($"camera_set_view_target {instance}");

			GamemakerCamera.Instance.ObjectToFollow = instance;

			return null;
		}

		public static object camera_get_view_target(Arguments args)
		{
			var camera_id = Conv<int>(args.Args[0]);

			if (camera_id > 0)
			{
				// TODO : ughhh implement multiple cameras
				throw new NotImplementedException();
			}

			// TODO : this can apparently return either an instance id or object index????
			return GamemakerCamera.Instance.ObjectToFollow == null ? -1 : GamemakerCamera.Instance.ObjectToFollow.instanceId;
		}

		public static object camera_set_view_pos(Arguments args)
		{
			var camera_id = Conv<int>(args.Args[0]);

			if (camera_id > 0)
			{
				// TODO : ughhh implement multiple cameras
				throw new NotImplementedException();
			}

			var x = Conv<double>(args.Args[1]);
			var y = Conv<double>(args.Args[2]);

			GamemakerCamera.Instance.x = x;
			GamemakerCamera.Instance.y = -y;

			return null;
		}

		public static object collision_rectangle(Arguments args)
		{
			var x1 = Conv<double>(args.Args[0]);
			var y1 = Conv<double>(args.Args[1]);
			var x2 = Conv<double>(args.Args[2]);
			var y2 = Conv<double>(args.Args[3]);
			var obj = Conv<int>(args.Args[4]); // TODO : this can be an array, or "all" or "other", or tile map stuff
			var prec = Conv<bool>(args.Args[5]);
			var notme = Conv<bool>(args.Args[6]);

			if (obj < 0)
			{
				throw new NotImplementedException($"{obj} given to collision_rectangle!");
			}

			if (obj < GMConstants.FIRST_INSTANCE_ID)
			{
				return CollisionManager.CollisionManager.collision_rectangle_assetid(x1, y1, x2, y2, obj, prec, notme, args.Ctx.Self);
			}
			else
			{
				return CollisionManager.CollisionManager.collision_rectangle_instanceid(x1, y1, x2, y2, obj, prec, notme, args.Ctx.Self);
			}
		}

		public static object place_meeting(Arguments args)
		{
			var x = Conv<double>(args.Args[0]);
			var y = Conv<double>(args.Args[1]);
			var obj = Conv<int>(args.Args[2]); // TODO : this can be an array, or "all" or "other", or tile map stuff

			if (obj < 0)
			{
				throw new NotImplementedException($"{obj} given to collision_rectangle!");
			}

			if (obj < GMConstants.FIRST_INSTANCE_ID)
			{
				return CollisionManager.CollisionManager.place_meeting_assetid(x, y, obj, args.Ctx.Self);
			}
			else
			{
				return CollisionManager.CollisionManager.place_meeting_instanceid(x, y, obj, args.Ctx.Self);
			}
		}

		public static object script_execute(Arguments args)
		{
			var scriptAssetId = Conv<int>(args.Args[0]);
			var scriptArgs = args.Args[1..];

			var scriptName = AssetIndexManager.Instance.AssetList[AssetType.scripts].First(x => x.Value == scriptAssetId).Key;
			var script = Instance.NameToScript[scriptName];
			return VMExecuter.ExecuteScript(script, args.Ctx.Self, args.Ctx.ObjectDefinition, arguments: new Arguments() { Args = scriptArgs, Ctx = args.Ctx });
		}

		public static object move_towards_point(Arguments args)
		{
			var targetx = Conv<double>(args.Args[0]);
			var targety = Conv<double>(args.Args[1]);
			var sp = Conv<double>(args.Args[2]);

			args.Ctx.Self.direction = (double)point_direction(new Arguments() { Args = new object[] { args.Ctx.Self.x, args.Ctx.Self.y, targetx, targety } });
			args.Ctx.Self.speed = sp;

			return null;
		}

		public static object point_direction(Arguments args)
		{
			var x1 = Conv<double>(args.Args[0]);
			var y1 = Conv<double>(args.Args[1]);
			var x2 = Conv<double>(args.Args[2]);
			var y2 = Conv<double>(args.Args[3]);

			// TODO : simplify this mess lol

			var gmHoriz = x2 - x1;
			var gmVert = y2 - y1;

			if (gmHoriz >= 0 && gmVert == 0)
			{
				return 0;
			}

			if (gmHoriz > 0 && gmVert == 0)
			{
				return 0;
			}

			if (gmHoriz == 0 && gmVert < 0)
			{
				return 90;
			}

			// +gmVert means down, -gmVert means up
			gmVert = -gmVert;

			var angle = Math.Atan(gmVert / gmHoriz) * Mathf.Rad2Deg;

			if (gmVert > 0)
			{
				if (gmHoriz > 0)
				{
					return angle;
				}

				return angle + 180;
			}

			if (gmHoriz > 0)
			{
				return 360 + angle;
			}

			return 180 + angle;
		}

		public static object point_distance(Arguments args)
		{
			var x1 = Conv<double>(args.Args[0]);
			var y1 = Conv<double>(args.Args[1]);
			var x2 = Conv<double>(args.Args[2]);
			var y2 = Conv<double>(args.Args[3]);

			var horizDistance = Math.Abs(x2 - x1);
			var vertDistance = Math.Abs(y2 - y1);

			return Math.Sqrt((horizDistance * horizDistance) + (vertDistance * vertDistance));
		}

		public static object choose(Arguments args)
		{
			return args.Args[UnityEngine.Random.Range(0, args.Args.Length)];
		}

		public static object real(Arguments args)
		{
			var str = Conv<string>(args.Args[0]);
			return Conv<double>(str);
		}

		public static object collision_line(Arguments args)
		{
			var x1 = Conv<double>(args.Args[0]);
			var y1 = Conv<double>(args.Args[1]);
			var x2 = Conv<double>(args.Args[2]);
			var y2 = Conv<double>(args.Args[3]);
			var obj = Conv<int>(args.Args[4]); // TODO : can also be tile map or array
			var prec = Conv<bool>(args.Args[5]);
			var notme = Conv<bool>(args.Args[6]);

			var ret = CollisionManager.CollisionManager.collision_line(x1, y1, x2, y2, obj, prec, notme);
			if (ret == null)
			{
				return GMConstants.noone;
			}

			return ret.instanceId;
		}

		public static object sprite_get_number(Arguments args)
		{
			var index = Conv<int>(args.Args[0]);
			return SpriteManager.SpriteManager.GetNumberOfFrames(index);
		}

		public static object draw_line_width(Arguments args)
		{
			var x1 = Conv<double>(args.Args[0]);
			var y1 = Conv<double>(args.Args[1]);
			var x2 = Conv<double>(args.Args[2]);
			var y2 = Conv<double>(args.Args[3]);
			var w = Conv<int>(args.Args[4]);

			GamemakerCamera.RenderJobs.Add(new GMLineJob()
			{
				blend = SpriteManager.SpriteManager.DrawColor.BGRToColor(),
				alpha = SpriteManager.SpriteManager.DrawAlpha,
				start = new Vector2((float)x1, (float)y1),
				end = new Vector2((float)x2, (float)y2),
				width = w
			});

			return null;
		}

		public static object d3d_set_fog(Arguments args)
		{
			var enable = Conv<bool>(args.Args[0]);
			var colour = Conv<int>(args.Args[1]);
			var start = Conv<double>(args.Args[2]);
			var end = Conv<double>(args.Args[3]);

			if ((start != 0 && start != 1) || (end != 0 && end != 1))
			{
				throw new NotImplementedException("actual fog");
			}

			SpriteManager.SpriteManager.FogEnabled = enable;
			SpriteManager.SpriteManager.FogColor = colour;

			return null;
		}

		public static object lengthdir_x(Arguments args)
		{
			var len = Conv<double>(args.Args[0]);
			var dir = Conv<double>(args.Args[1]);

			return len * Math.Cos(dir * Mathf.Deg2Rad);
		}

		public static object lengthdir_y(Arguments args)
		{
			var len = Conv<double>(args.Args[0]);
			var dir = Conv<double>(args.Args[1]);

			return -len * Math.Sin(dir * Mathf.Deg2Rad);
		}

		public static object distance_to_point(Arguments args)
		{
			var x = Conv<double>(args.Args[0]);
			var y = Conv<double>(args.Args[1]);

			var self = args.Ctx.Self;

			if (args.Ctx.Self.mask_id == -1 && args.Ctx.Self.sprite_index == -1)
			{
				// TODO : Docs just say this means the result will be "incorrect". Wtf does that mean???
				// just assuming it does point_distance

				var horizDistance = Math.Abs(self.x - x);
				var vertDistance = Math.Abs(self.y - y);

				return Math.Sqrt((horizDistance * horizDistance) + (vertDistance * vertDistance));
			}

			var centerX = (self.bbox_left + self.bbox_right) / 2.0;
			var centerY = (self.bbox_top + self.bbox_bottom) / 2.0;
			var width = self.bbox_right - self.bbox_left;
			var height = self.bbox_bottom - self.bbox_top;

			var dx = Math.Max(Math.Abs(x - centerX) - (width / 2.0), 0);
			var dy = Math.Max(Math.Abs(y - centerY) - (height / 2.0), 0);
			return Math.Sqrt((dx * dx) + (dy * dy));
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
