using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_carcutscene : GamemakerObject
	{
		public override void Create()
		{
			for (i = 0; i < 20; i += 1)
{
				prevalpha[i] = 0;
				prevwx[i] = -200;
				prevwy[i] = -200;
				prevstringmax[i] = 0;
				prevhspace[i] = 0;
				prevlinecount[i] = 0;
				prevvspace[i] = 0;
}
			carcon = 0;
			drawwave = 0;
			con = 0;
			dhaver = false;
			v = 0;
			vx = 0;
			vy = 0;
			myd = null;
			if (global.plot > 1)
				instance_destroy();
			else
			{
				global.facing = 0;
				foreach (var item in with<obj_npc_sign>())
				{
					item.instance_destroy();
				}
				global.currentsong0 = snd_init("mus_introcar.ogg");
				con = 1;
				alarm[4] = 30;
				global.interact = 1;
				t = scr_marker(195, 240, "spr_toriel_lt");
				t.depth = 400000;
				c = scr_marker(131, 240, "spr_torcar_d");
				c.depth = 500000;
			}
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Alarm_5()
		{
			global.typer = 8;
			global.msg[0] = scr_84_get_lang_string("obj_carcutscene_slash_Alarm_5_gml_2_0");
			global.msg[1] = scr_84_get_lang_string("obj_carcutscene_slash_Alarm_5_gml_3_0");
			global.msg[2] = scr_84_get_lang_string("obj_carcutscene_slash_Alarm_5_gml_4_0");
			global.msg[3] = scr_84_get_lang_string("obj_carcutscene_slash_Alarm_5_gml_5_0");
			myd = instance_create<obj_writer>((__view_get(0, 0) + 40), (__view_get(1, 0) + 40), "obj_writer");
			myd.skippable = false;
			myd.persistent = true;
			dhaver = true;
		}

		public override void Draw_0()
		{
			if (instance_exists((GamemakerObject)myd))
			{
				depth = (myd.depth + 1000);
				draw_set_color(c_black);
				draw_set_alpha(0.15);
				prevalpha[0] = 1;
				prevwx[0] = myd.writingx;
				prevwy[0] = myd.writingy;
				prevstringmax[0] = myd.stringmax;
				prevhspace[0] = myd.hspace;
				prevlinecount[0] = myd.linecount;
				prevvspace[0] = myd.vspace;
				for (i = 6; i > 0; i -= 1)
    {
					prevalpha[i] = prevalpha[(i - 1)];
					prevwx[i] = prevwx[(i - 1)];
					prevwy[i] = prevwy[(i - 1)];
					prevstringmax[i] = prevstringmax[(i - 1)];
					prevhspace[i] = prevhspace[(i - 1)];
					prevlinecount[i] = prevlinecount[(i - 1)];
					prevvspace[i] = prevvspace[(i - 1)];
					if (prevalpha[i] > 0)
						draw_rectangle(((prevwx[0] - 10) - i), ((prevwy[0] - 10) - i), (((prevwx[0] + (prevstringmax[0] * prevhspace[0])) + 10) + i), (((prevwy[0] + ((prevlinecount[0] + 1) * prevvspace[0])) + 15) + i), false);
    }
				draw_set_alpha(1);
			}
		}

		public override void Step_2()
		{
			if (dhaver == true)
			{
				myd.writingx = (__view_get(0, 0) + 40);

				myd.writingy = (__view_get(1, 0) + 20);
			}
			if (v == 1)
			{
				__view_set(0, 0, (c.x - vx));
				__view_set(1, 0, (c.y - vy));
			}
		}

		public override void Step_0()
		{
			if (con > 0)
			{
				if (con == 2)
				{
					persistent = true;
					__view_set(9, 0, null);
					obj_mainchara.fun = true;
					obj_mainchara.cutscene = true;
					t.sprite_index = "spr_toriel_u";
					global.fc = 4;
					global.fe = 2;
					global.typer = 7;
					global.msg[0] = scr_84_get_lang_string("obj_carcutscene_slash_Step_0_gml_17_0");
					dd = instance_create<obj_dialoguer>(0, 0, "obj_dialoguer");
					dd.side = 0;
					con = 3;
				}
				if (con == 3 && instance_exists("obj_dialoguer") == false)
				{
					mus_play(global.currentsong0);
					alarm[5] = 20;
					t.image_speed = 0;
					t.image_index = 0;
					scr_pan(0, 1, 60);
					con = 2.1;
					alarm[4] = 40;
					obj_mainchara.sprite_index = "spr_krisl";
					obj_mainchara.image_speed = 0.25;
					obj_mainchara.hspeed = -1;
				}
				if (con == 3.1)
				{
					t.sprite_index = "spr_toriel_l";
					obj_mainchara.scr_halt();
					obj_mainchara.sprite_index = "spr_krisd";
					obj_mainchara.vspeed = 1;
					obj_mainchara.image_speed = 0.2;
					con = 4;
					alarm[4] = 60;
				}
				if (con == 5)
				{
					t.sprite_index = "spr_toriel_l";
					obj_mainchara.scr_halt();
					obj_mainchara.sprite_index = "spr_krisr";
					con = 8;
					alarm[4] = 40;
				}
				if (con == 9)
				{
					c.depth = 6000;
					t.hspeed = -1;
					t.image_speed = 0.2;
					obj_mainchara.sprite_index = "spr_krisr";
					obj_mainchara.hspeed = 1;
					obj_mainchara.vspeed = 0;
					obj_mainchara.image_speed = 0.2;
					con = 10;
					alarm[4] = 32;
				}
				if (con == 11)
				{
					con = 12;
					alarm[4] = 30;
					ckx = (c.x - obj_mainchara.x);
					cky = (c.y - obj_mainchara.y);
					ctx = (c.x - t.x);
					cty = (c.y - t.y);
					t.visible = false;
					obj_mainchara.visible = false;
				}
				if (con == 13)
				{
					c.sprite_index = "spr_torcar_l";
					c.hspeed = 1;
					c.image_speed = 0.25;
					con = 14;
					alarm[4] = 80;
				}
				if (con == 15)
				{
					c.scr_halt();
					con = 16;
					alarm[4] = 30;
				}
				if (con == 17)
				{
					c.hspeed = -1;
					c.image_speed = 0.25;
					con = 18;
					alarm[4] = 80;
				}
				if (con == 19)
				{
					scr_pan(0, 0.5, 100);
					c.sprite_index = "spr_torcar_d";
					c.hspeed = 0;
					c.vspeed = 2;
					fade = instance_create<obj_fadeout>(0, 0, "obj_fadeout");
					fade.depth = 4000;
					fade.height = 400;
					fade.fadespeed = 0.01;
					con = 20;
					alarm[4] = 190;
				}

				if (con == 21)
				{
					fade = instance_create<obj_fadeout>(0, 0, "obj_fadeout");
					fade.depth = -200;
					fade.height = 400;
					fade.fadespeed = 0.025;
					fade.image_blend = c_white;
					con = 22;
					alarm[4] = 45;
				}

				if (con == 23.1)
				{
					car = scr_marker(390, 0, "spr_torcar_d");
					car.scr_depth();
					car.image_speed = 0.25;
					car.vspeed = 3;
					__view_set(9, 0, null);
					obj_mainchara.visible = false;
					obj_mainchara.cutscene = true;
					__view_set(0, 0, 180);
					scr_pan(2.5, 0, 900);
					global.interact = 1;
					con = 24;
					alarm[4] = (int)(140 / car.vspeed);
					carcon = 1;
					foreach (var item in with<obj_npc_room>())
					{
						item.instance_destroy();
					}
					catty = scr_marker(486, 68, "spr_npc_catty");
					cattydad = scr_marker(574, 64, "spr_npc_cattydad");
					bratty = scr_marker(744, 174, "spr_npc_bratty");
					froggit = scr_marker(800, 114, "spr_npc_froggit");
					froggit.scr_depth();
					froggit.image_speed = 0.2;
					catty.scr_depth();
					cattydad.scr_depth();
					bratty.scr_depth();
				}

				if (con == 23)
				{
					foreach (var item in with<obj_writer>())
					{
						item.instance_destroy();
					}
					fade2 = instance_create<obj_persistentfadein>(0, 0, "obj_persistentfadein");
					fade2.image_blend = c_white;
					con = 23.1;
					room_goto("room_town_north");
				}

				if (carcon == 1)
				{
					if (car.y >= 100)
					{
						catty.sprite_index = "spr_npc_catty_wave";
						catty.image_speed = 0.2;
					}
					if (car.x >= 550)
					{
						cattydad.sprite_index = "spr_npc_cattydad_wave";
						cattydad.image_speed = 0.2;
					}
				}

				if (con == 24)
					global.interact = 1;

				if (con == 25)
				{
					car.sprite_index = "spr_torcar_r";
					car.vspeed = 0;
					car.hspeed = 3;
					con = 26;
					alarm[4] = (int)(240 / car.hspeed);
				}

				if (con == 27)
				{
					car.sprite_index = "spr_torcar_d";
					car.hspeed = 0;
					car.vspeed = 3;
					carcon = 0;
					con = 133;
					instance_create(0, 0, "obj_fadeout");
					alarm[4] = 30;
				}

				if (con == 130)
				{

				}

				if (con == 29)
				{

				}

				if (con == 131)
					global.interact = 1;

				if (con == 132)
				{
					instance_create(0, 0, "obj_fadeout");
					alarm[4] = 30;
					con = 133;
				}

				if (con == 140)
				{
					car = scr_marker(810, 0, "spr_torcar_d");
					car.scr_depth();
					car.image_speed = 0.25;
					car.vspeed = 3;

					foreach (var item in with<obj_npc_room>())
					{
						item.instance_destroy();
					}

					foreach (var item in with<obj_npc_facing>())
					{
						item.instance_destroy();
					}

					__view_set(9, 0, null);
					obj_mainchara.visible = false;
					obj_mainchara.cutscene = true;
					__view_set(0, 0, 660);
					scr_pan(2, 0, 300);
					global.interact = 1;
					con = 141;
					alarm[4] = (int)(140 / car.vspeed);
					carcon = 2;
					qc = scr_marker(764, 85, "spr_npc_qc_stand");
					undyne = scr_marker(905, 80, "spr_undyne_dt");
					bear = scr_marker(710, 82, "spr_npc_politicsbear");
					bear.scr_depth();
					qc.scr_depth();
					undyne.scr_depth();
				}

				if (con == 134)
				{
					instance_create(0, 0, "obj_persistentfadein");
					room_goto("room_town_south");
					con = 140;
				}

				if (carcon == 2)
				{
					if (car.y >= 100)
					{
						qc.sprite_index = "spr_npc_qc_wave";
						qc.image_speed = 0.2;
						undyne.sprite_index = "spr_undyne_d_wave";
						undyne.image_speed = 0.2;
					}
					if (car.x >= 1000)
					{
					}
				}

				if (con == 141)
					global.interact = 1;

				if (con == 142)
				{
					car.vspeed = 0;
					car.hspeed = 3;
					car.sprite_index = "spr_torcar_r";
					con = 143;
					alarm[4] = (int)(260 / car.hspeed);
				}

				if (con == 144)
				{
					carcon = 0;
					instance_create(0, 0, "obj_fadeout");
					alarm[4] = 30;
					con = 145;
				}

				if (con == 161)
				{
					car = scr_marker(0, 220, "spr_torcar_r");
					car.scr_depth();
					car.image_speed = 0.25;
					car.hspeed = 2;
					__view_set(9, 0, null);
					obj_mainchara.visible = false;
					obj_mainchara.cutscene = true;
					__view_set(0, 0, 0);
					__view_set(1, 0, (room_height - __view_get(3, 0)));
					global.interact = 1;
					con = 162;
					scr_pan(1, 0, 100);
					alarm[4] = (int)(240 / car.hspeed);
				}

				if (con == 146)
				{
					instance_create(0, 0, "obj_persistentfadein");
					room_goto("room_town_school");
					con = 161;
				}

				if (con == 162)
					global.interact = 1;

				if (con == 163)
				{
					car.vspeed = -2;
					car.hspeed = 0;
					car.sprite_index = "spr_torcar_u";
					con = 164;
					alarm[4] = 30;
				}

				if (con == 165)
				{
					car.scr_halt();
					con = 36;
					alarm[4] = 30;
				}

				if (con == 37)
				{
					v = 0;
					car.speed = 0;
					car.image_speed = 0;
					con = 38;
					alarm[4] = 15;
				}

				if (con == 39)
				{
					scr_pan(1, -0.334, 100);
					car.depth = 500;
					k = scr_marker(((car.x - ctx) + 10), (car.y - cty), "spr_krisr");
					t = scr_marker((car.x - ckx), (car.y - cky), "spr_toriel_l");
					k.depth = 50000;
					k.visible = true;
					k.image_speed = 0.2;
					k.sprite_index = "spr_krisr";
					k.hspeed = 1;
					t.image_speed = 0.2;
					t.depth = 50000;
					t.visible = true;
					t.sprite_index = "spr_toriel_l";
					t.hspeed = -1;
					con = 40;
					alarm[4] = 30;
				}

				if (con == 41)
				{
					car.depth = 600000;
					k.speed = 0;
					k.sprite_index = "spr_krisd";
					k.image_index = 0;
					k.image_speed = 0;
					t.vspeed = 2;
					t.hspeed = 0;
					t.depth = 10000;
					t.sprite_index = "spr_toriel_d";
					t.image_speed = 0.25;
					con = 42;
					alarm[4] = 15;
				}

				if (con == 43)
				{
					t.sprite_index = "spr_toriel_r";
					t.vspeed = 0;
					t.hspeed = 2;
					con = 44;
					alarm[4] = 51;
				}

				if (con == 45)
				{
					k.sprite_index = "spr_krisr";
					t.hspeed = 0;
					t.vspeed = -2;
					t.sprite_index = "spr_toriel_u";
					con = 46;
					alarm[4] = 22;
				}

				if (con == 47)
				{
					t.speed = 0;
					t.sprite_index = "spr_toriel_l";
					t.image_speed = 0;
					t.image_index = 0;
					con = 48;
					alarm[4] = 30;
				}

				if (con == 49)
				{
					k.visible = false;
					t.sprite_index = "spr_toriel_handhold_r";
					con = 50;
					alarm[4] = 30;
				}

				if (con == 51)
				{
					scr_pan(0, -0.5, 999);
					t.vspeed = -0.25;
					t.hspeed = 0;
					t.sprite_index = "spr_toriel_handhold_u";
					fade = instance_create<obj_fadeout>(0, 0, "obj_fadeout");
					fade.fadespeed = 0.03;
					con = 56;
					persistent = false;
					alarm[4] = 40;
				}

				if (con == 55)
					alarm[4] = 40;
				if (con == 56)
					fade.y = 0;

				if (con == 57)
				{
					pf = instance_create<obj_persistentfadein>(0, 0, "obj_persistentfadein");
					pf.image_alpha = 1.2;
					room_goto("room_schoollobby");
				}
			}
		}
	}
}
