using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_dustpile_susie : obj_dustpile
	{
		public override void Alarm_0()
		{
			if (bust == 0)
			{
				instance_create((x + 60), (y + 20), "obj_dustball");
				alarm[0] = 20;
			}
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Create()
		{
			image_xscale = 2;
			image_yscale = 2;
			siner = 0;
			alarm[0] = 2;
			bust = 0;
			con = 1;
			if (global.plot >= 14)
				instance_destroy();
			else
			{
				partysus = instance_create(500, 500, "obj_caterpillarchara");
				partysus.visible = false;
			}
		}

		public override void Draw_0()
		{
			if (bust == 0)
			{
				draw_sprite_ext("spr_dustpile_parts", 3, x, y, 2, 2, 0, c_white, image_alpha);
				draw_sprite_ext("spr_dustpile_parts", 2, (x - sin((siner / 5d))), (y + sin((siner / 5d))), 2, 2, 0, c_white, image_alpha);
				draw_sprite_ext("spr_dustpile_parts", 1, (x + cos((siner / 5d))), ((y + sin((siner / 5d))) + 1), 2, 2, 0, c_white, image_alpha);
				draw_sprite_ext("spr_dustpile_parts", 0, (x + sin((siner / 5d))), (y + sin((siner / 5d))), 2, 2, 0, c_white, image_alpha);
			}
			else
				draw_sprite_ext("spr_dustpile_parts", 4, x, y, 2, 2, 0, c_white, image_alpha);
		}

		public override void Other_10()
		{
			if (bust == 0)
			{
				snd_free(global.currentsong0);
				global.interact = 1;
				instance_create(0, 0, "obj_shake");
				snd_play("snd_cough");
				con = 10;
				bust = 1;
				for (i = 0; i < 12; i += 1)
					instance_create(((x + 20) + (i * 6)), ((y + 20) + random(25)), "obj_dustball_pilebreak");
				s = scr_dark_marker((x + 10), y, "spr_susie_shock");
				s.scr_depth();
				alarm[4] = 2;
				s.hspeed = 10;
				obj_mainchara.cutscene = false;
			}
		}

		public override void Step_0()
		{
			scr_depth();
			siner += 1;
			if (con == 1 && __view_get(0, 0) >= 280 && obj_mainchara.y > 535)
			{
				darksus = scr_dark_marker(873, 602, "spr_susier_shadow");
				darksus.image_speed = 0.2;
				darksus.scr_depth();
				suspeed = (point_distance(873, 602, 1116, 720) / 15d);
				darksus.speed = suspeed;
				darksus.direction = point_direction(darksus.x, darksus.y, 1116, 720);
				con = 2;
				alarm[4] = 15;
			}
			if (con == 3)
			{
				darksus.instance_destroy();
				con = 4;
			}
			if (con == 4 && __view_get(0, 0) >= 540 && obj_mainchara.y > 535)
			{
				darksus2 = scr_dark_marker(1116, 720, "spr_susier_shadow");
				darksus2.image_speed = 0.2;
				darksus2.scr_depth();
				suspeed = (point_distance(1116, 720, 1348, 643) / 15d);
				darksus2.speed = suspeed;
				darksus2.direction = point_direction(darksus2.x, darksus2.y, 1348, 643);
				con = 5;
				alarm[4] = 15;
			}
			if (con == 5)
			{
				darksus?.instance_destroy();
			}
			if (con == 11)
			{
				s.hspeed = 0;
				con = 12;
				alarm[4] = 20;
			}
			if (con == 13)
			{
				global.fc = 1;
				global.fe = 7;
				global.typer = 30;
				global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_57_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 14;
			}
			if (con == 14 && instance_exists("obj_dialoguer") == false)
{
				con = 15;
				alarm[4] = 30;
}
			if (con == 15)
				image_alpha -= 0.04;
			if (con == 16)
			{
				s.sprite_index = "spr_susiel_dark";
				global.fe = 6;
				global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_78_0");
				global.msg[1] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_79_0");
				global.msg[2] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_80_0");
				global.msg[3] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_81_0");
				global.msg[4] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_82_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 17;
			}
			if (con == 17 && instance_exists("obj_dialoguer") == false)
			{
				s.sprite_index = "spr_susier_dark";
				con = 18;
				alarm[4] = 30;
			}
			if (con == 19)
			{
				s.sprite_index = "spr_susieu_dark";
				con = 20;
				alarm[4] = 30;
			}
			if (con == 21)
			{
				global.fe = 6;
				global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_104_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 22;
			}
			if (con == 22 && instance_exists("obj_dialoguer") == false)
			{
				con = 23;
				alarm[4] = 30;
			}
			if (con == 24)
			{
				s.sprite_index = "spr_susiel_dark";
				global.fe = 7;
				global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_119_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 25;
			}
			if (con == 25 && instance_exists("obj_dialoguer") == false)
			{
				s.hspeed = -4;
				s.image_speed = 0.2;
				con = 26;
				alarm[4] = 15;
			}
			if (con == 27)
			{
				thisremx = s.x;
				thisremy = s.y;
				s.speed = (point_distance(s.x, s.y, partysus.x, partysus.y) / 10d);
				s.direction = point_direction(s.x, s.y, partysus.x, partysus.y);
				con = 28;
				alarm[4] = 10;
			}
			if (con == 29)
			{
				s.instance_destroy();
				partysus.visible = true;
				con = 30;
				alarm[4] = 30;
			}
			if (con == 31)
			{
				global.fe = 1;
				global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_156_0");
				scr_getchar(2);
				con = 32;
				instance_create(0, 0, "obj_dialoguer");
			}
			if (con == 32 && instance_exists("obj_dialoguer") == false)
			{
				y -= 200;
				con = 33;
				global.interact = 0;
				speedtimer = 0;
			}
			if (con == 33 && global.interact == 0)
			{
				speedtimer += 1;
				if (obj_mainchara.x < 560)
				{
					global.flag[202] = 2;
					global.interact = 1;
					con = 34;
					global.fc = 1;
					global.typer = 30;
					global.fe = 0;
					global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_182_0");
					instance_create(0, 0, "obj_dialoguer");
				}
				if (obj_mainchara.x > 1760)
				{
					global.interact = 1;
					con = 35;
					global.fc = 1;
					global.typer = 30;
					global.fe = 0;
					if (speedtimer < 80)
					{
						global.flag[202] = 1;
						global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_197_0");
					}
					else
						global.msg[0] = scr_84_get_lang_string("obj_dustpile_susie_slash_Step_0_gml_201_0");
					instance_create(0, 0, "obj_dialoguer");
				}
			}
			if (con == 34 && instance_exists("obj_dialoguer") == false)
			{
				partysus.visible = false;
				news = scr_dark_marker(partysus.x, partysus.y, "spr_susier_dark");
				news.move_towards_point(940, 660, 14);
				news.image_speed = 0.334;
				con = 39;
				alarm[4] = 40;
			}
			if (con == 35 && instance_exists("obj_dialoguer") == false)
			{
				partysus.visible = false;
				news = scr_dark_marker(partysus.x, partysus.y, "spr_susier_dark");
				news.hspeed = 14;
				news.image_speed = 0.334;
				con = 39;
				alarm[4] = 40;
			}
			if (con == 40)
			{
				scr_losechar();
				global.facing = 0;
				if (global.plot < 14)
					global.plot = 14;
				global.interact = 0;
				news.instance_destroy();
				con = 41;
				instance_destroy();
			}
		}
	}
}
