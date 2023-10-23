﻿using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_boxpuzzle_event : GamemakerObject
	{
		public override void Create()
		{
			if (global.plot >= 50)
			{
				con = -1;
				leavecon = -1;
				boxcon = -1;
				boxon = -1;
				image_index = 1;
				if (global.flag[212] == 2)
				{
					image_index = 2;
					foreach (var item in with<obj_pushableblock>())
					{
						item.instance_destroy();
					}
				}
			}
			else
			{
				groundblock = instance_create(x, 120, "obj_soliddark");
				groundblock.image_xscale = 2;
				global.facing = 1;
				con = 1;
				leavecon = 0;
				boxcon = 0;
				boxon = 0;
			}

			image_speed = 0;
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Step_0()
		{
			if (con == 1)
			{
				global.interact = 1;
				sus = scr_dark_marker((obj_mainchara.x - 100), global.cinstance[1].y, "spr_susier_dark");
				ral = scr_dark_marker((obj_mainchara.x - 50), global.cinstance[0].y, "spr_ralseir");
				k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, "spr_krisr_dark");
				foreach (var item in with<obj_caterpillarchara>())
				{
					item.instance_destroy();
				}

				obj_mainchara.visible = false;
				foreach (var item in with<obj_marker>())
				{
					item.hspeed = 4;
					item.image_speed = 0.2;
				}

				con = 2;
				alarm[4] = 40;
			}

			if (con == 2)
				global.interact = 1;

			if (con == 3)
			{
				con = 4;
				foreach (var item in with<obj_marker>())
				{
					item.scr_halt();
				}

				obj_mainchara.x = k.x;
				obj_mainchara.visible = true;
				k.instance_destroy();
				alarm[4] = 30;
				instance_create((ral.x + 20), (ral.y - 20), "obj_excblcon");
			}

			if (con == 5)
			{
				global.typer = 31;
				global.fc = 2;
				global.fe = 8;
				global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_39_0");
				scr_susface(1, 0);
				global.msg[2] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_41_0");
				scr_ralface(3, 8);
				global.msg[4] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_43_0");
				con = 6;
				instance_create(0, 0, "obj_dialoguer");
			}

			if (con == 6 && d_ex() == 0)
			{
				sus.sprite_index = "spr_susieu_dark";
				global.facing = 2;
				ral.sprite_index = "spr_ralseiu";
				ral.vspeed = -6;
				ral.image_speed = 0.25;
				con = 12;
			}

			if (con == 12)
			{
				global.facing = 2;
				if (ral.y <= 100)
				{
					ral.scr_halt();
					ral.sprite_index = "spr_ralseid";
					con = 13;
					alarm[4] = 10;
				}
			}

			if (con == 14)
			{
				global.fc = 2;
				global.fe = 3;
				global.typer = 31;
				global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_82_0");
				global.msg[1] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_83_0");
				global.msg[2] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_84_0");
				global.msg[3] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_85_0");
				scr_susface(4, 2);
				global.msg[5] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_87_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 5.5;
			}

			if (con == 5.5 && d_ex() == 0)
			{
				global.facing = 1;
				sus.sprite_index = "spr_susier_dark";
				sus.hspeed = 12;
				sus.image_speed = 0.334;
				con = 6.5;
			}

			if (con == 6.5)
			{
				if (sus.x >= 480)
				{
					sus.vspeed = -12;
					sus.hspeed = 0;
					sus.sprite_index = "spr_susieu_dark";
					con = 7.5;
				}
			}

			if (con == 7.5)
			{
				if (sus.y <= 100)
				{
					sus.scr_halt();
					con = 8.5;
					alarm[4] = 10;
				}
			}

			if (con == 9.5)
			{
				sus.sprite_index = "spr_susied_dark";
				global.typer = 30;
				global.fc = 1;
				global.fe = 1;
				global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_134_0");
				scr_ralface(1, 3);
				global.msg[2] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_136_0");
				scr_susface(3, 2);
				global.msg[4] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_138_0");
				scr_ralface(5, 8);
				global.msg[6] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_140_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 15;
			}

			if (con == 15 && d_ex() == 0)
			{
				global.flag[212] = 1;
				foreach (var item in with<obj_pushableblock>())
				{
					item._event = 0;
				}

				sus2 = instance_create(sus.x, sus.y, "obj_npc_facing");
				ral2 = instance_create(ral.x, ral.y, "obj_npc_facing");
				sus.instance_destroy();
				ral.instance_destroy();
				global.interact = 0;
				con = 20;
				boxcon = 1;
				leavecon = 1;
			}

			if (leavecon == 1 && global.interact == 0)
			{
				if (obj_mainchara.x < 70)
				{
					obj_mainchara.x = 70;
					global.facing = 1;
					global.interact = 1;
					leavecon = 2;
					global.typer = 30;
					global.fc = 1;
					global.fe = 7;
					global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_170_0");
					instance_create(0, 0, "obj_dialoguer");
				}
			}

			if (leavecon == 2)
			{
				if (d_ex() == 0)
				{
					leavecon = 1;
					global.interact = 0;
				}
			}

			if (con == 20)
			{
				boxcount = 0;
				tilecount = 0;
				foreach (var item in with<obj_pushableblock>())
				{
					if (item.sprite_index == "spr_npc_block_solved")
					{
						boxcount += 1;
					}
				}

				foreach (var item in with<obj_blocktile>())
				{
					if (item.sprite_index == "spr_glowtile_on")
					{
						tilecount += 1;
					}
				}

				if (boxcount == 0 && global.interact == 0 && boxon == 2)
				{
					global.fc = 2;
					global.fe = 1;
					global.typer = 31;
					global.interact = 1;
					boxon = 3;
					global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_207_0");
					scr_susface(1, 2);
					global.msg[2] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_209_0");
					instance_create(0, 0, "obj_dialoguer");
				}

				if (boxcount == 1 && global.interact == 0 && boxon == 0)
				{
					global.fc = 2;
					global.fe = 6;
					global.typer = 31;
					global.interact = 1;
					boxon = 1;
					global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_220_0");
					scr_susface(1, 2);
					global.msg[2] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_222_0");
					global.msg[3] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_223_0");
					instance_create(0, 0, "obj_dialoguer");
				}

				if (boxcount >= 2 && global.interact == 0)
				{
					image_index = 1;
					groundblock.instance_destroy();
					global.interact = 1;
					instance_create(0, 0, "obj_shake");
					snd_play("snd_impact");
					con = 25;
					alarm[4] = 30;
				}
				else if (tilecount == 2 && boxcount == 1 && global.interact == 0 && boxcon == 1)
				{
					global.interact = 1;
					boxcon = 2;
					global.fc = 2;
					global.fe = 6;
					global.typer = 31;
					global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_248_0");
					global.msg[1] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_249_0");
					scr_susface(2, 1);
					global.msg[3] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_251_0");
					global.msg[4] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_252_0");
					scr_ralface(5, 1);
					global.msg[6] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_254_0");
					scr_susface(7, 2);
					global.msg[8] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_256_0");
					instance_create(0, 0, "obj_dialoguer");
				}
			}

			if (boxcon == 2)
			{
				if (d_ex() == 0)
				{
					boxcon = 3;
					global.interact = 0;
				}
			}

			if (boxon == 1)
			{
				if (d_ex() == 0)
				{
					boxon = 2;
					global.interact = 0;
				}
			}

			if (boxon == 3)
			{
				if (d_ex() == 0)
				{
					boxon = 4;
					global.interact = 0;
				}
			}

			if (con == 26)
			{
				global.typer = 31;
				global.fc = 2;
				global.fe = 0;
				global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_295_0");
				scr_susface(1, 0);
				global.msg[2] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_297_0");
				global.msg[3] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_298_0");
				con = 27;
				instance_create(0, 0, "obj_dialoguer");
			}

			if (con == 27)
			{
				if (d_ex() == 0)
				{
					global.facing = 2;
					ral3 = scr_dark_marker(ral2.x, ral2.y, "spr_ralseir");
					sus3 = scr_dark_marker(sus2.x, sus2.y, "spr_susiel_dark");
					ral2.instance_destroy();
					sus2.instance_destroy();
					sus3.scr_depth();
					sus3.hspeed = -8;
					sus3.image_speed = 0.334;
					con = 28;
				}
			}

			if (con == 28)
			{
				global.interact = 1;
				if (sus3.x <= ((room_width / 2.0) - 20) && d_ex() == 0)
				{
					sus3.image_speed = 0.334;
					sus3.vspeed = -8;
					sus3.hspeed = 0;
					sus3.sprite_index = "spr_susieu_dark";
					con = 29;
					alarm[4] = 60;
				}
			}

			if (con == 30)
			{
				ral3.sprite_index = "spr_ralseid";
				global.typer = 31;
				global.fc = 2;
				global.fe = 8;
				global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_347_0");
				dl = instance_create(0, 0, "obj_dialoguer");
				dl.side = 1;
				con = 31;
			}

			if (con == 31)
			{
				if (d_ex() == 0)
				{
					ral3.scr_depth();
					ral3.sprite_index = "spr_ralseir";
					ral3.hspeed = 6;
					ral3.image_speed = 0.25;
					con = 32;
				}
			}

			if (con == 32)
			{
				if (ral3.x >= ((room_width / 2.0) - 20))
				{
					ral3.vspeed = -6;
					ral3.hspeed = 0;
					ral3.sprite_index = "spr_ralseiu";
					con = 33;
					alarm[4] = 30;
				}
			}

			if (con == 34)
			{
				foreach (var item in with<obj_pushableblock>())
				{
					item._event = 1;
				}

				con = 35;
				scr_tempsave();
				if (global.plot < 50)
					global.plot = 50;
				global.facing = 0;
				global.interact = 0;
				leavecon = 0;
			}

			if (con == 50)
			{
				if (d_ex() == 0)
				{
					con = 51;
					global.interact = 1;
					fade = instance_create(0, 0, "obj_fadeout");
					alarm[4] = 30;
				}
			}

			if (con == 52)
			{
				instance_create(290, 200, "obj_npc_room");
				instance_create(460, 370, "obj_npc_room");
				ral3 = scr_dark_marker(ral2.x, ral2.y, "spr_ralseir");
				ral3.scr_depth();
				ral2.instance_destroy();
				sus3 = scr_dark_marker(((room_width / 2) - 22), sus2.y, "spr_susied_dark");
				sus3.scr_depth();
				sus2.instance_destroy();
				snd_play("snd_impact");
				con = 53;
				alarm[4] = 30;
			}

			if (con == 54)
			{
				image_index = 2;
				groundblock.instance_destroy();
				foreach (var item in with<obj_pushableblock>())
				{
					item.instance_destroy();
				}
				fade.instance_destroy();
				global.facing = 2;
				instance_create(0, 0, "obj_fadein");
				con = 55;
				alarm[4] = 50;
			}

			if (con == 56)
			{
				global.msg[0] = scr_84_get_lang_string("obj_boxpuzzle_event_slash_Step_0_gml_437_0");
				dl = instance_create(0, 0, "obj_dialoguer");
				dl.side = 1;
				global.interact = 1;
				con = 28;
			}
		}
	}
}
