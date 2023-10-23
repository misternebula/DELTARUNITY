using System;
using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_savemenu : GamemakerObject
	{
		public override void Create()
		{
			cur_jewel = 0;
			saved = 0;
			coord = 0;
			ini_ex = 0;
			buffer = 3;
			name = scr_84_get_lang_string("obj_savemenu_slash_Create_0_gml_7_0");
			level = 1;
			love = 1;
			time = 0d;
			roome = "ROOM_INITIALIZE";
			endme = 0;
			global.currentroom = room;
			global.interact = 1;
			if (file_exists("dr.ini"))
			{
				ini_ex = 1;
				ini_open("dr.ini");
				name = ini_read_string(("G" + gm_string(global.filechoice)), "Name", "Kris");
				level = ini_read_real(("G" + gm_string(global.filechoice)), "Level", 1);
				love = ini_read_real(("G" + gm_string(global.filechoice)), "Love", 1);
				time = ini_read_real(("G" + gm_string(global.filechoice)), "Time", 0);
				roome = ini_read_string(("G" + gm_string(global.filechoice)), "Room", "ROOM_INITIALIZE");
				ini_close();
			}
			d = ((global.darkzone ? 1 : 0) + 1);
			minutes = floor((time / 1800));
			seconds = round((((time / 1800) - minutes) * 60));
			if (seconds == 60)
				seconds = 59;
			if (seconds < 10)
				seconds = ("0" + gm_string(seconds));
			scr_roomname(roome);
			if (d == 2)
				heartsprite = "spr_heart";
			if (d == 1)
				heartsprite = "spr_heartsmall";
			if (d == 1)
				name = scr_84_get_lang_string("obj_savemenu_slash_Create_0_gml_43_0");
		}

		public override void Draw_0()
		{
			xx = __view_get(0, 0);
			yy = __view_get(1, 0);
			scr_84_set_draw_font("main");
			if (d == 2)
				scr_84_set_draw_font("mainbig");
			if (global.lang == "ja")
			{
				throw new NotImplementedException();
			}
			else
			{
				if (d == 1)
				{
					draw_set_color(c_white);
					draw_rectangle((54 + xx), (49 + yy), (265 + xx), (135 + yy), false);
					draw_set_color(c_black);
					draw_rectangle(((57 * d) + xx), ((52 * d) + yy), ((262 * d) + xx), ((132 * d) + yy), false);
				}
				else
				{
					scr_darkbox(((54 * d) + xx), ((49 * d) + yy), ((265 * d) + xx), ((135 * d) + yy));
					draw_set_color(c_black);
					draw_rectangle(((64 * d) + xx), ((59 * d) + yy), ((255 * d) + xx), ((125 * d) + yy), false);
				}
				draw_set_color(c_white);
				if (coord == 2)
					draw_set_color(c_yellow);
				if (global.flag[912] == 0)
					draw_text(((70 * d) + xx), ((60 * d) + yy), string_hash_to_newline(name));
				else
				{
					draw_set_font("fnt_ja_main");
					if (d == 2)
						draw_set_font("fnt_ja_mainbig");
					draw_text(((70 * d) + xx), ((60 * d) + yy), string_hash_to_newline(name));
					scr_84_set_draw_font("main");
					if (d == 2)
						scr_84_set_draw_font("mainbig");
				}
				if (d == 1)
					draw_text((140 + xx), (60 + yy), string_hash_to_newline((scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_29_0") + gm_string(love))));
				if (d == 2)
					draw_text(((175 * d) + xx), ((60 * d) + yy), string_hash_to_newline((scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_33_0") + gm_string(level))));
				draw_text(((210 * d) + xx), ((60 * d) + yy), string_hash_to_newline(((gm_string(minutes) + ":") + gm_string(seconds))));
				draw_text(((70 * d) + xx), ((80 * d) + yy), string_hash_to_newline(roomname));
				if (coord == 0)
					draw_sprite(heartsprite, 0, (xx + (71 * d)), (yy + (113 * d)));
				if (coord == 1)
					draw_sprite(heartsprite, 0, (xx + (161 * d)), (yy + (113 * d)));
				if (coord < 2)
				{
					draw_text((xx + (85 * d)), (yy + (110 * d)), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_47_0")));
					draw_text((xx + (175 * d)), (yy + (110 * d)), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_48_0")));
				}
				else
					draw_text((xx + (85 * d)), (yy + (110 * d)), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_52_0")));
			}
		}

		public override void Step_0()
		{
			buffer -= 1;
			if (coord == 2 && buffer < 0)
			{
				if (button1_p())
				{
					coord = 99;
					endme = 1;
				}
			}
			if (coord < 2)
			{
				if (left_p() || right_p())
				{
					if (coord == 1)
						coord = 0;
					else
						coord = 1;
				}
			}
			if (coord == 0 && buffer < 0)
			{
				if (button1_p())
				{
					snd_play("snd_save");
					scr_save();
					coord = 2;
					buffer = 3;
					if (d == 2)
					{
						name = global.truename;
						love = global.llv;
					}
					scr_roomname(room);
					level = global.lv;
					time = global.time;
					minutes = floor((time / 1800d));
					seconds = round((((time / 1800d) - minutes) * 60));
					if (seconds == 60)
						seconds = 59;
					if (seconds < 10)
						seconds = ("0" + gm_string(seconds));
				}
			}
			if (button1_p() && coord == 1 && buffer < 0)
				endme = 1;
			if (button2_p() && buffer < 0)
				endme = 1;
			if (endme == 1)
			{
				global.interact = 0;
				obj_mainchara.onebuffer = 3;
				instance_destroy();
			}
		}
	}
}
