using System;
using Assets;
using OBJECT_SCRIPTS.COLLISION;
using OBJECT_SCRIPTS.MARKER;

namespace OBJECT_SCRIPTS
{
	public class obj_darkdoor : GamemakerObject
	{
		public override void Create()
		{
			image_speed = 0;
			open = 0;
			siner = 0;
			xsin = 0;
			con = 0;
			if (global.plot < 5)
			{
				con = 1;
				obj_mainchara.visible = false;
				k = scr_marker(290, 198, "spr_krisu");
				s = scr_marker(310, 190, "spr_susieu");
				s.vspeed = -1;
				s.image_speed = 0.2;
				k.vspeed = -1;
				k.image_speed = 0.2;
				alarm[4] = 90;
			}
			else
			{
				block = instance_create<obj_solidblock>(280, 100, "obj_solidblock");
				block.image_xscale = 4;
				sunset = scr_marker(0, 0, "spr_doorarea_sunsetoverlay");
				sunset.image_alpha = 0.4;
				sunset.depth = 2000;
			}
			if (global.plot == 250)
			{
				obj_mainchara.x = FindObjectOfType<obj_markerD>().x;
				obj_mainchara.y = FindObjectOfType<obj_markerD>().y;
				global.interact = 1;
				con = 40;
			}
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Draw_0()
		{
			if (open == 1)
			{
				xsin += 0.01;
				if (xsin > 1)
					xsin = 1;
				siner += 1;
				image_index = 1;
				amt = (sin((siner / 16d)) * 0.1);
				draw_background_ext("bg_darkdoor_open", 0, 0, 1, 1, 0, c_white, (xsin + amt));
				for (i = 1; i < 6; i += 1)
					draw_sprite_ext(sprite_index, 2, x, (y + sprite_height), 1, ((3d / i) + amt), 0, c_white, (xsin * (amt + 0.2)));
				ht = ((amt * sprite_height) * 3);
				wt = ((amt * sprite_width) * 3);
				draw_sprite_ext(sprite_index, 2, (x - (wt / 2)), (y - ht), (1 + (amt * 3)), (1 + (amt * 3)), 0, c_white, (xsin * (amt + 0.2)));
				ht = ((amt * sprite_height) * 2);
				wt = ((amt * sprite_width) * 2);
				draw_sprite_ext(sprite_index, 2, (x - (wt / 2)), (y - ht), (1 + (amt * 2)), (1 + (amt * 2)), 0, c_white, (xsin * (amt + 0.2)));
			}
			draw_self();
		}

		public override void Step_0()
		{
			if (con > 0 && con < 40)
			{
				if (con == 1)
					global.interact = 1;
				if (con == 2)
				{
					k.scr_halt();
					s.scr_halt();
					con = 3;
					alarm[4] = 30;
				}
				if (con == 4)
				{
					global.typer = 10;
					global.fc = 1;
					global.fe = 0;
					global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_21_0");
					global.msg[1] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_22_0");
					instance_create(0, 0, "obj_dialoguer");
					con = 4.5;
				}
				if (con == 4.5 && instance_exists("obj_dialoguer") == false)
				{
					snd_play("snd_locker");
					image_index = 1;
					con = 5.5;
					alarm[4] = 60;
				}
				if (con == 6.5)
    {
					global.currentsong0 = snd_init("creepydoor.ogg");
					mus_loop(global.currentsong0);
					open = 1;
					con = 6;
					alarm[4] = 60;
    }
				if (con == 7)
				{
					s.vspeed = 0.5;
					s.image_speed = 0.1;
					k.vspeed = 0.5;
					k.image_speed = 0.1;
					con = 8;
					alarm[4] = 30;
				}
				if (con == 9)
				{
					k.scr_halt();
					s.scr_halt();
					con = 10;
					alarm[4] = 30;
				}
				if (con == 11)
				{
					global.fe = 5;
					global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_72_0");
					global.msg[1] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_73_0");
					global.msg[2] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_74_0");
					instance_create(0, 0, "obj_dialoguer");
					s.sprite_index = "spr_susiel";
					con = 12;
				}
				if (con == 12 && instance_exists("obj_dialoguer") == false)
				{
					s.sprite_index = "spr_susieu";
					con = 13;
					alarm[4] = 90;
				}
				if (con == 14)
				{
					s.sprite_index = "spr_susiel";
					global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_90_0");
					instance_create(0, 0, "obj_dialoguer");
					con = 15;
				}
				if (con == 15 && instance_exists("obj_dialoguer") == false)
				{
					k.vspeed = 0.5;
					k.image_speed = 0.1;
					con = 14.5;
					alarm[4] = 30;
				}
				if (con == 15.5)
				{
					k.scr_halt();
					con = 16;
					alarm[4] = 60;
				}
				if (con == 17)
				{
					s.sprite_index = "spr_susiel";
					global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_117_0");
					instance_create(0, 0, "obj_dialoguer");
					con = 18;
				}
				if (con == 18 && instance_exists("obj_dialoguer") == false)
				{
					s.sprite_index = "spr_susieu";
					con = 19;
					alarm[4] = 90;
				}
				if (con == 20)
				{
					s.sprite_index = "spr_susiel";
					global.msg[0] = scr_84_get_lang_string("obj_darkdoor_slash_Step_0_gml_132_0");
					instance_create(0, 0, "obj_dialoguer");
					con = 21;
				}
				if (con == 21 && instance_exists("obj_dialoguer") == false)
				{
					s.sprite_index = "spr_susieu";
					s.vspeed = -0.5;
					s.image_speed = 0.1;
					k.vspeed = -0.5;
					k.image_speed = 0.1;
					con = 22;
					alarm[4] = 30;
				}
				if (con == 23)
				{
					fade = instance_create<obj_fadeout>(0, 0, "obj_fadeout");
					fade.fadespeed = 0.03;
					con = 24;
					alarm[4] = 34;
				}
				if (con == 25)
    {
					con = 26;
					global.plot = 5;
					instance_create(0, 0, "obj_persistentfadein");
					room_goto("room_insidecloset");
    }
			}
			if (con >= 40)
			{
				throw new NotImplementedException();
			}
		}
	}
}
