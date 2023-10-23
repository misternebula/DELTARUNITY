using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_krisroom : GamemakerObject
	{
		public override void Create()
		{
			con = 0;
			image_speed = 0;
			wallwindow = scr_marker(140, 40, "spr_housewindow");
			wallwindow.scr_depth();
			if (global.plot > 0)
			{
				scr_depth();
				wallwindow.image_index = 1;
				image_index = 1;
			}
			else
			{
				scr_windowcaption(scr_84_get_lang_string("obj_krisroom_slash_Create_0_gml_14_0"));
				t = scr_marker(151, 97, "spr_toriel_rt");
				t.scr_depth();
				t.image_speed = 0.25;
				global.msc = 0;
				global.typer = 7;
				global.fc = 4;
				global.fe = 1;
				global.msg[0] = scr_84_get_lang_string("obj_krisroom_slash_Create_0_gml_21_0");
				global.msg[1] = scr_84_get_lang_string("obj_krisroom_slash_Create_0_gml_22_0");
				d = instance_create<obj_dialoguer>(0, 0, "obj_dialoguer");
				con = 1;
				global.interact = 1;
				global.facing = 3;
			}
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Step_0()
		{
			if (con > 0 && con < 50)
			{
				if (con == 1 && instance_exists("obj_dialoguer") == false)
				{
					t.image_index = 0;
					t.image_speed = 0.25;
					t.vspeed = -2;
					t.sprite_index = "spr_toriel_u";
					alarm[4] = 20;
					con = 2;
				}

				if (con == 3)
				{
					t.image_speed = 0;
					t.image_index = 0;
					t.vspeed = 0;
					alarm[4] = 10;
					con = 4;
				}

				if (con == 5)
				{
					t.image_speed = 0.25;
					t.sprite_index = "spr_toriel_windowopen";
					alarm[4] = 10;
					con = 6;
					wallwindow.image_index = 1;
					snd_play("snd_wing");
				}

				if (con == 7)
				{
					t.image_speed = 0;
					con = 8;
					alarm[4] = 20;
				}

				if (con == 9)
				{
					t.sprite_index = "spr_toriel_d";
					t.image_index = 0;
					t.image_speed = 0.25;
					t.vspeed = 2;
					alarm[4] = 20;
					con = 10;
				}

				if (con == 11)
				{
					t.image_speed = 0;
					t.image_index = 0;
					t.vspeed = 0;
					alarm[4] = 20;
					con = 12;
				}

				if (con == 13)
				{
					t.sprite_index = "spr_toriel_rt";
					alarm[4] = 20;
					con = 14;
				}

				if (con == 15)
				{
					global.fe = 0;
					t.image_speed = 0.25;
					global.msg[0] = scr_84_get_lang_string("obj_krisroom_slash_Step_0_gml_92_0");
					d = instance_create<obj_dialoguer>(0, 0, "obj_dialoguer");
					con = 20;
				}

				if (con == 20 && instance_exists("obj_dialoguer") == false)
				{
					t.image_index = 0;
					t.sprite_index = "spr_toriel_d";
					t.image_speed = 0.25;
					t.vspeed = 3;
					alarm[4] = 90;
					con = 21;
				}

				if (con == 22)
				{
					snd_play("snd_wing");
					image_index = 1;
					alarm[4] = 40;
					con = 23;
				}

				if (con == 24)
				{
					obj_mainchara.fun = true;
					obj_mainchara.image_speed = 0.25;
					obj_mainchara.sprite_index = "spr_krisl";
					obj_mainchara.hspeed = -1;
					alarm[4] = 40;
					if (button2_h())
					{
						obj_mainchara.fun = true;
						obj_mainchara.image_speed = 0.25;
						obj_mainchara.sprite_index = "spr_krisl";
						obj_mainchara.hspeed = -4;
						alarm[4] = 10;
					}
					con = 25;
				}

				if (con == 26)
				{
					global.facing = 3;
					obj_mainchara.image_index = 0;
					obj_mainchara.hspeed = 0;
					obj_mainchara.image_speed = 0;
					obj_mainchara.fun = false;
					con = 27;
					alarm[4] = 20;
					if (button2_h())
						alarm[4] = 5;
				}

				if (con == 28)
				{
					global.facing = 0;
					obj_mainchara.image_index = 0;
					obj_mainchara.hspeed = 0;
					obj_mainchara.sprite_index = "spr_krisd";
					obj_mainchara.image_speed = 0;
					obj_mainchara.fun = false;
					scr_depth();
					con = 30;
					global.interact = 0;
					scr_tempsave();
					if (global.plot < 1)
						global.plot = 1;
				}
			}

			if (con >= 50 && con < 100)
			{

			}
		}
	}
}
