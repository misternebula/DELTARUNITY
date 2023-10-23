using Assets;
using OBJECT_SCRIPTS.COLLISION;
using OBJECT_SCRIPTS.DOOR;

namespace OBJECT_SCRIPTS
{
	public class obj_classscene : GamemakerObject
	{
		public override void Create()
		{
			door = scr_marker(236, 26, "spr_classdoor");
			door.scr_depth();
			con = 0;
			global.facing = 0;
			if (global.plot < 2)
			{
				global.facing = 0;
				con = 1;
				obj_mainchara.x = 240;
				obj_mainchara.y = 30;
				obj_mainchara.scr_depth();
				alphys = scr_marker(50, 50, "spr_alphysd");
				alphys.scr_depth();
				global.interact = 1;
			}
			if (global.plot >= 3)
			{
				doorb = instance_create<obj_doorB>(242, 48, "obj_doorB");
				door.depth = 900000;

				foreach (var item in with<obj_npc_facing>())
				{
					item.instance_destroy();
				}

				foreach (var item in with<obj_tem_school>())
				{
					item.instance_destroy();
				}

				sunset = scr_marker(3, 0, "spr_torielclass_sunsetoverlay");
				sunset.image_alpha = 0.4;
				sunset.depth = 2000;
				instance_destroy();
			}
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Step_0()
		{
			if (con == 1)
{
				alarm[4] = 30;
				con = 1.5;
}

			if (con == 2.5)
{
				global.currentsong0 = snd_init("mus_school.ogg");
				global.fe = 0;
				global.fc = 11;
				global.typer = 20;
				global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_14_0");
				d = instance_create<obj_dialoguer>(0, 0, "obj_dialoguer");
				con = 3;
}
			if (con == 3 && instance_exists("obj_dialoguer") == false)
			{
				snd_play("snd_dooropen");
				door.image_index = 1;
				con = 4;
				alphys.sprite_index = "spr_alphysr";
				alarm[4] = 30;
			}
			if (con == 5)
			{
				obj_mainchara.fun = true;
				obj_mainchara.sprite_index = "spr_krisd";
				obj_mainchara.image_speed = 0.2;
				obj_mainchara.vspeed = 2;
				con = 6;
				alarm[4] = 10;
			}
			if (con == 7)
			{
				obj_mainchara.image_index = 0;
				obj_mainchara.vspeed = 0;
				obj_mainchara.image_speed = 0;
				door.image_index = 0;
				snd_play("snd_doorclose");
				con = 8;
				alarm[4] = 30;
			}
			if (con == 9)
{
				global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_60_0");
				global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_61_0");
				global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_62_0");
				con = 10;
				instance_create(0, 0, "obj_dialoguer");
}
			if (con == 10 && instance_exists("obj_dialoguer") == false)
			{
				mus_loop(global.currentsong0);
				__view_set(9, 0, null);
				door_readable = instance_create<obj_readable_room1>(244, 51, "obj_readable_room1");
				alphys_facing = instance_create<obj_npc_facing>(alphys.x, (alphys.y + alphys.sprite_height), "obj_npc_facing");
				alphys.instance_destroy();
				doorsolid = instance_create<obj_solidblock>(236, 52, "obj_solidblock");
				doorsolid.image_xscale = 2;
				door.depth = 500000;
				obj_mainchara.fun = false;
				global.plot = 2;
				global.interact = 0;
				con = 11;
			}

			if (con == 20 && instance_exists("obj_dialoguer") == false)
			{
				global.interact = 1;
				con = 21;
				alarm[4] = 2;
			}

			if (con == 21)
				global.interact = 1;

			if (con == 22)
			{
				global.typer = 13;
				global.fc = 12;
				global.fe = 3;
				global.facing = 2;
				global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_107_0");
				global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_108_0");
				global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_109_0");
				global.msg[3] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_110_0");
				global.msg[4] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_111_0");
				global.msg[5] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_112_0");
				con = 23;
				instance_create(0, 0, "obj_dialoguer");
			}

			if (con == 23 && instance_exists("obj_dialoguer") == false)
			{
				instance_create(0, 0, "obj_shake");
				snd_stop_all();
				snd_free(global.currentsong0);
				door.image_index = 0;
				door.image_speed = 0.5;
				door.sprite_index = "spr_classdoorslam";
				door.depth = 5000;
				sus = scr_marker(237, 24, "spr_susied_plain");
				sus.scr_depth();
				con = 24;
				alarm[4] = 4;
				doorsolid.instance_destroy();
			}

			if (con == 25)
			{
				snd_play("snd_impact");
				alphys = scr_marker(alphys_facing.x, alphys_facing.y, "spr_alphysr_shock");
				alphys.scr_depth();
				alphys_facing.instance_destroy();
				con = 26;
				alarm[4] = 6;
			}

			if (con == 27)
			{
				door.image_speed = 0;
				door.depth = 500000;
				con = 32;
				alarm[4] = 50;
			}

			if (con == 29 && instance_exists("obj_dialoguer") == false)
			{
				sus.image_speed = 0.1;
				sus.vspeed = 0.5;
				con = 30;
				alarm[4] = 40;
			}

			if (con == 31)
			{
				sus.image_index = 0;
				sus.image_speed = 0;
				sus.vspeed = 0;
				con = 34;
				alarm[4] = 30;
			}

			if (con == 33)
{
				global.fe = 2;
				global.fc = 11;
				global.typer = 22;
				global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_190_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 28;
				alarm[4] = 20;
}

			if (con == 35)
			{
				global.fc = 1;
				global.fe = 0;
				global.typer = 10;
				global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_203_0");
				global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_204_0");
				global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_205_0");
				global.msg[3] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_206_0");
				global.msg[4] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_207_0");
				scr_susface(5, 0);
				global.msg[6] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_209_0");
				global.msg[7] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_210_0");
				con = 36;
				instance_create(0, 0, "obj_dialoguer");
			}

			if (con == 36 && instance_exists("obj_dialoguer") == false)
			{
				con = 37;
				alarm[4] = 40;
				alphys.sprite_index = "spr_alphysd";
			}

			if (con == 38)
{
				global.fc = 11;
				global.typer = 20;
				global.fe = 6;
				global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_230_0");
				global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_231_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 39;
}

			if (con == 39 && instance_exists("obj_dialoguer") == false)
			{
				alphys.sprite_index = "spr_alphysr";
				alphys.hspeed = 3;
				alphys.image_speed = 0.2;
				con = 40;
				alarm[4] = 26;
			}

			if (con == 41)
			{
				alphys.sprite_index = "spr_alphysu";
				alphys.image_index = 0;
				alphys.image_speed = 0;
				alphys.hspeed = 0;
				con = 42;
				alarm[4] = 30;
			}

			if (con == 43)
			{
				global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_263_0");
				con = 44;
				instance_create(0, 0, "obj_dialoguer");
			}

			if (con == 44 && instance_exists("obj_dialoguer") == false)
			{
				con = 45;
				alphys.sprite_index = "spr_alphysl";
				con = 46;
				alarm[4] = 20;
			}

			if (con == 47)
			{
				alphys.sprite_index = "spr_alphysr";
				con = 48;
				alarm[4] = 20;
			}

			if (con == 49)
			{
				alphys.sprite_index = "spr_alphysd";
				con = 50;
				alarm[4] = 30;
			}

			if (con == 51)
			{
				global.fe = 8;
				global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_294_0");
				global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_295_0");
				global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_296_0");
				global.msg[3] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_298_0");
				global.msg[4] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_299_0");
				global.msg[5] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_300_0");
				global.msg[6] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_301_0");
				global.msg[7] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_302_0");
				global.msg[8] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_303_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 51.1;
			}

			if (con == 51.1 && d_ex() == false)
			{
				alphys.sprite_index = "spr_alphysd";
				con = 50.2;
				alarm[4] = 90;
			}

			if (con == 51.2)
			{
				alphys.sprite_index = "spr_alphysd";
				global.fe = 6;
				global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_319_0");
				global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_320_0");
				con = 51.3;
				instance_create(0, 0, "obj_dialoguer");
			}

			if (con == 51.3 && d_ex() == false)
			{
				alphys.sprite_index = "spr_alphysr";
				con = 50.4;
				alarm[4] = 90;
			}

			if (con == 51.4)
			{
				alphys.sprite_index = "spr_alphysd";
				global.fe = 9;
				global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_336_0");
				global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_337_0");
				global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_338_0");
				global.msg[3] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_339_0");
				global.msg[4] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_340_0");
				global.msg[5] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_341_0");
				global.msg[6] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_342_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 52;
			}

			if (con == 52)
			{
				if (instance_exists("obj_writer"))
				{
					if (FindObjectOfType<obj_writer>().msgno == 4)
					{
						alphys.sprite_index = "spr_alphysr";
					}
				}
			}

			if (con == 52 && instance_exists("obj_dialoguer") == false)
			{
				sus.vspeed = -1;
				sus.sprite_index = "spr_susieu";
				sus.image_speed = 0.2;
				con = 53;
				alarm[4] = 15;
			}

			if (con == 54)
			{
				sus.instance_destroy();
				instance_create(0, 0, "obj_shake");
				snd_play("snd_impact");
				door.image_index = 0;
				con = 55;
				alarm[4] = 50;
			}

			if (con == 56)
			{
				sus.instance_destroy();
				alphys.sprite_index = "spr_alphysd";
				global.fc = 11;
				global.typer = 20;
				global.fe = 4;
				global.msg[0] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_394_0");
				global.msg[1] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_395_0");
				global.msg[2] = scr_84_get_lang_string("obj_classscene_slash_Step_0_gml_396_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 57;
			}

			if (con == 57 && instance_exists("obj_dialoguer") == false)
			{
				door_readable.instance_destroy();
				doorb = instance_create<obj_doorB>(242, 51, "obj_doorB");
				global.plot = 3;
				global.facing = 0;
				alphys_facing = instance_create<obj_npc_facing>(alphys.x, (alphys.y + alphys.sprite_height), "obj_npc_facing");

				foreach (var item in with<obj_npc_facing>())
				{
					item.talked = 0;
				}

				alphys.instance_destroy();
				doorsolid.instance_destroy();
				global.interact = 0;
				con = 58;
			}
		}
	}
}
