using Assets;
using UnityEngine;

namespace OBJECT_SCRIPTS
{
	internal class obj_scarelancerevent : GamemakerObject
	{
		public override void Create()
		{
			Debug.Log($"PLOT IS {global.plot}");
			if (global.plot >= 45)
				instance_destroy();
			con = 1;
			tx = 680;
			image_xscale = 2;
			image_yscale = 2;
			image_speed = 0;
		}

		public override void Alarm_4()
		{
			Debug.Log($"ALARM_4");
			con += 1;
		}

		public override void Step_1()
		{
			if (con == 1)
			{
				Debug.Log($"CON IS 1");
				if (obj_mainchara.x >= tx && global.interact == 0)
				{
					global.interact = 1;
					global.facing = 1;
					foreach (var obj_caterpillarchara in with<obj_caterpillarchara>())
					{
						obj_caterpillarchara.visible = false;
					}
					s = scr_dark_marker(global.cinstance[1].x, global.cinstance[1].y, "spr_susier_dark");
					r = scr_dark_marker(global.cinstance[0].x, global.cinstance[0].y, "spr_ralseir");
					k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, "spr_krisr_dark");
					obj_mainchara.visible = false;
					s.scr_depth();
					s.scr_move_to_point_over_time((obj_mainchara.x - 120), ((obj_mainchara.y + obj_mainchara.sprite_height) - s.sprite_height), 15);
					r.scr_depth();
					r.scr_move_to_point_over_time((obj_mainchara.x - 60), ((obj_mainchara.y + obj_mainchara.sprite_height) - r.sprite_height), 15);
					k.scr_depth();
					con = 2;
					alarm[4] = 30;
					instance_create((x + 20), (y - 10), "obj_excblcon");
					sprite_index = "spr_lancer_lt";
					snd_free_all();
				}
			}

			if (con == 3)
			{
				Debug.Log($"CON IS 3");
				con = 4;
				global.currentsong0 = snd_init("lancer.ogg");
				alarm[4] = 15;
			}

			if (con == 5)
			{
				global.currentsong1 = mus_loop(global.currentsong0);
				global.fe = 3;
				global.fc = 5;
				global.typer = 32;
				global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_49_0");
				global.msg[1] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_50_0");
				global.msg[2] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_51_0");
				global.msg[3] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_52_0");
				global.msg[4] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_53_0");
				global.msg[5] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_54_0");
				d = instance_create(0, 0, "obj_dialoguer");
				d.side = 0;
				con = 6;
			}

			if (con == 6 && d_ex() == 0)
			{
				snd_free_all();
				global.fc = 1;
				global.fe = 0;
				global.typer = 30;
				global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_66_0");
				global.msg[1] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_67_0");
				global.msg[2] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_68_0");
				scr_lanface(3, 6);
				global.msg[4] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_70_0");
				global.msg[5] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_71_0");
				scr_susface(6, 1);
				global.msg[7] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_73_0");
				scr_lanface(8, 7);
				global.msg[9] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_75_0");
				scr_susface(10, 2);
				global.msg[11] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_77_0");
				con = 7;
				d = instance_create(0, 0, "obj_dialoguer");
				d.side = 0;
			}

			if (con == 7 && d_ex() == 0)
			{
				oy = obj_mainchara.y;
				obj_mainchara.cutscene = true;
				scr_pan(2, 0, 60);
				global.currentsong0 = snd_init("s_neo.ogg");
				s.depth = 100;
				s.image_speed = 0.2;
				s.hspeed = 2;
				con = 8;
			}

			if (con == 8)
			{
				if (abs((s.x - (r.x - 20))) < 6)
				{
					r.sprite_index = "spr_ralseid";
					r.y -= 1;
				}

				if (abs((s.x - (obj_mainchara.x - 20))) < 6)
				{
					k.sprite_index = "spr_krisd_dark";
					k.y -= 1;
				}

				if (s.x > (obj_mainchara.x + 60))
				{
					s.scr_halt();
					con = 9;
					global.currentsong1 = mus_loop(global.currentsong0);
				}
			}

			if (con == 9)
			{
				global.facing = 1;
				r.sprite_index = "spr_ralseir";
				k.sprite_index = "spr_krisr_dark";
				global.fe = 2;
				global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_134_0");
				scr_lanface(1, 4);
				global.msg[2] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_136_0");
				scr_susface(3, 0);
				global.msg[4] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_138_0");
				global.msg[5] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_139_0");
				global.msg[6] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_140_0");
				con = 10;
				d = instance_create(0, 0, "obj_dialoguer");
				d.side = 0;
			}

			if (con == 10 && d_ex() == 0)
			{
				s.hspeed = 1;
				s.image_speed = 0.1;
				con = 11;
				alarm[4] = 20;
			}

			if (con == 12)
			{
				s.scr_halt();
				global.fe = 2;
				global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_163_0");
				scr_lanface(1, 5);
				global.msg[2] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_165_0");
				scr_susface(3, 1);
				global.msg[4] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_167_0");
				con = 13;
				d = instance_create(0, 0, "obj_dialoguer");
				d.side = 0;
			}

			if (con == 13 && d_ex() == 0)
			{
				s.hspeed = 2;
				s.vspeed = ((((y - y) + sprite_height) - sprite_height) / 30.0);
				s.image_speed = 0.2;
				hspeed = 1;
				con = 15;
				alarm[4] = 30;
			}

			if (con == 16)
			{
				s.scr_halt();
				visible = false;
				s.sprite_index = "spr_susie_grablancer";
				hspeed = 0;
				con = 16.1;
				alarm[4] = 30;
			}

			if (con == 17.1)
			{
				s.image_index += 0.25;
				if (s.image_index == 1)
					snd_play("snd_noise");
				if (s.image_index >= 3)
				{
					con = 17;
					alarm[4] = 30;
				}
			}

			if (con == 18)
			{
				visible = false;
				global.fe = 3;
				global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_215_0");
				con = 19;
				d = instance_create(0, 0, "obj_dialoguer");
				d.side = 0;
			}

			if (con == 19 && d_ex() == 0)
			{
				s.image_index += 0.25;
				if (s.image_index >= 7)
					con = 20;
				alarm[4] = 30;
			}

			if (con == 21)
			{
				global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_234_0");
				global.msg[1] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_235_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 22;
			}

			if (con == 22 && d_ex() == 0)
			{
				s.sprite_index = "spr_susie_laughlancer";
				s.image_speed = 0.25;
				s.image_index = 0;
				global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_249_0");
				d = instance_create(0, 0, "obj_dialoguer");
				d.skippable = false;
				d.skip = false;
				con = 23;
			}

			if (con == 23 && d_ex() == 0)
			{
				con = 26;
				alarm[4] = 30;
			}

			if (con == 27 && d_ex() == 0)
			{
				snd_free_all();
				s.sprite_index = "spr_susie_finelancer";
				global.fe = 3;
				global.fc = 5;
				global.typer = 32;
				global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_270_0");
				global.msg[1] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_271_0");
				scr_susface(2, "A");
				global.msg[3] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_273_0");
				scr_lanface(4, 3);
				global.msg[5] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_275_0");
				global.msg[6] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_276_0");
				scr_susface(7, 7);
				global.msg[8] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_278_0");
				scr_lanface(9, 2);
				global.msg[10] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_280_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 28;
				global.encounterno = 8;
				scr_encountersetup(global.encounterno);
			}

			if (con == 28 && d_ex() == 0)
			{
				instance_create((s.x + 20), (s.y - 10), "obj_excblcon");
				s.sprite_index = "spr_susier_dark";
				s.image_index = 0;
				s.image_speed = 0;
				visible = true;
				y -= 14;
				snd_play("snd_noise");
				hspeed = 8;
				vspeed = 2;
				con = 29;
				alarm[4] = 5;
			}

			if (con == 30)
			{
				hspeed = 0;
				vspeed = 0;
				con = 30.1;
				alarm[4] = 10;
			}

			if (con == 31.1)
			{
				for (i = 0; i < 3; i += 1)
				{
					cc[i] = scr_dark_marker((__view_get(0, 0) + 700), (y - 20), "spr_jigsawry_idle");
					cc[i].scr_move_to_point_over_time((global.monstermakex[0] + 60), cc[i].y, 30);
					cc[i].depth = 50000;
				}

				con = 31;
				alarm[4] = 30;
			}

			if (con == 32)
			{
				for (i = 0; i < 3; i += 1)
				{
					cc[i].hspeed = 0;
				}

				global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_328_0");
				global.msg[1] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_329_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 33;
			}

			if (con == 33 && d_ex() == 0)
			{
				hspeed = 16;
				global.fe = 3;
				global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_340_0");
				con = 34;
				instance_create(0, 0, "obj_dialoguer");
			}

			if (con == 34 && d_ex() == 0)
			{
				scr_pan_to_obj(obj_mainchara, 20);
				con = 35;
				for (i = 0; i < 3; i += 1)
				{
					cc[i].hspeed = -4;
				}

				k.scr_move_to_point_over_time(obj_mainchara.x, obj_mainchara.y, 20);
				s.scr_move_to_point_over_time(global.cinstance[1].x, global.cinstance[1].y, 20);
				r.scr_move_to_point_over_time(global.cinstance[0].x, global.cinstance[0].y, 20);
				alarm[4] = 30;
			}

			if (con == 36)
			{
				for (i = 0; i < 3; i += 1)
				{
					cc[i].depth = 0;
					cc[i].hspeed = 0;
				}

				foreach (var item in with<obj_caterpillarchara>())
				{
					item.visible = true;
				}

				obj_mainchara.visible = true;
				s.instance_destroy();
				r.instance_destroy();
				k.instance_destroy();
				global.fe = 0;
				global.fc = 1;
				global.typer = 30;
				global.msg[0] = scr_84_get_lang_string("obj_scarelancerevent_slash_Step_0_gml_374_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 37;
			}

			if (con == 37 && d_ex() == 0)
			{
				global.currentsong0 = snd_init("field_of_hopes.ogg");
				global.currentsong1 = mus_loop_ext(global.currentsong0, 0.7, 1);
				snd_pause(global.currentsong1);
				instance_create(0, 0, "obj_battleback");
				global.encounterno = 22;
				scr_encountersetup(global.encounterno);
				global.specialbattle = 0;
				global.flag[9] = 1;
				global.batmusic0 = snd_init("battle.ogg");
				instance_create(0, 0, "obj_encounterbasic");
				for (i = 0; i < 3; i += 1)
				{
					if (instance_exists(cc[i]))
					{
						cc[i].i = i;
						cc[i].scr_move_to_point_over_time(global.monstermakex[i], global.monstermakey[i], 25);
					}
				}

				con = 38;
				if (global.plot < 45)
					global.plot = 45;
				alarm[4] = 25;
			}

			if (con == 39)
			{
				cc[0].visible = false;
				cc[1].visible = false;
				cc[2].visible = false;
				con = 40;
				alarm[4] = 15;
			}
		}
	}
}
