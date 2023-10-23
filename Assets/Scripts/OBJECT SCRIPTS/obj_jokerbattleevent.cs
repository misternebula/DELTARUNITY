using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_jokerbattleevent : GamemakerObject
	{
		public override void Create()
		{
			quick = 0;
			if (global.tempflag[4] == true)
				quick = 1;
			if (global.flag[241] >= 6)
			{
				con = 999;
				instance_destroy();
			}
			else
			{
				con = 1;
				image_xscale = 2;
				image_yscale = 2;
				image_speed = 0;
				bulcon = 0;
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
				scr_encountersetup(25);
				x = global.monstermakex[0];
				y = (global.monstermakey[0] + 100);
				obj_mainchara.visible = false;
				foreach (var item in with<obj_caterpillarchara>())
				{
					item.visible = false;
				}

				for (i = 0; i < 3; i += 1)
				{
					c[i] = scr_dark_marker((global.heromakex[i] - 100), global.heromakey[i], "spr_krisr_dark");
					c[i].scr_depth();
					c[i].hspeed = 2;
					c[i].image_speed = 0.2;
					if (quick == 1)
					{
						c[i].x += 1;
						c[i].scr_depth();
						c[i].hspeed = 5;
						c[i].image_speed = 0.334;
					}
				}

				k = c[0];
				s = c[1];
				s.sprite_index = "spr_susier_dark";
				r = c[2];
				r.sprite_index = "spr_ralseir";
				con = 2;
				alarm[4] = 83;
				if (quick == 1)
					alarm[4] = 33;
			}

			if (con == 2)
				global.interact = 1;

			if (con == 3)
			{
				for (i = 0; i < 3; i += 1)
				{
					c[i].scr_halt();
					con = 4;
					alarm[4] = 20;
					if (quick == 1)
					{
						con = 6;
						alarm[4] = -10;
					}
				}
			}

			if (con == 5)
			{
				snd_play("snd_joker_laugh1");
				global.typer = 35;
				global.fc = 0;
				global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_59_0");
				global.msg[1] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_60_0");
				scr_ralface(2, 0);
				global.msg[3] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_62_0");
				scr_noface(4);
				global.msg[5] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_64_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 6;
			}

			if (con == 6 && (!d_ex()))
			{
				image_speed = 0.5;
				snd_play("snd_joker_laugh0");
				con = 9;
				alarm[4] = 10;
			}

			if (con == 10)
			{
				snd_play("snd_rudebuster_swing");
				bulcon = 1;
				smax = 2;
				con = 11;
				alarm[4] = 10;
			}

			if (bulcon == 1)
			{
				for (i = 0; i < smax; i += 1)
				{
					sbul[i] = scr_dark_marker((s.x + 70), (((-i) * 100) - 40), "spr_joker_scythebody");
					sbul[i].vspeed = 24;
					sbul[i].image_angle = random(360);
				}

				bulcon = 2;
			}

			if (bulcon == 2)
			{
				below = 0;
				for (i = 0; i < smax; i += 1)
				{
					sbul[i].image_angle += 24;
					sbul[i].aft = sbul[i].scr_afterimage();
					sbul[i].aft.image_alpha = 0.5;
					if (sbul[i].y >= (__view_get(1, 0) + 580))
						below += 1;
				}

				if (below >= smax)
					bulcon = 3;
			}

			if (con == 12)
			{
				s.sprite_index = "spr_susie_shock_r";
				r.sprite_index = "spr_ralsei_shock_overworld";
				for (i = 0; i < 3; i += 1)
				{
					c[i].hspeed = -10;
					c[i].friction = 1;
				}

				con = 13;
				alarm[4] = 45;
				if (quick == 1)
				{
					con = 22;
					alarm[4] = 40;
					snd_free_all();
				}
			}

			if (con == 14)
			{
				image_speed = 0;
				s.sprite_index = "spr_susier_dark_unhappy";
				r.sprite_index = "spr_ralseir";
				global.typer = 30;
				global.fe = 0;
				global.typer = 35;
				global.fc = 0;
				global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_140_0");
				scr_susface(1, 0);
				global.msg[2] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_142_0");
				global.msg[3] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_143_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 15.1;
			}

			if (con == 15.1 && (!d_ex()))
			{
				s.sprite_index = "spr_susieb_attack";
				r.sprite_index = "spr_ralseib_attack";
				k.sprite_index = "spr_krisb_attack";
				for (i = 0; i < 3; i += 1)
				{
					c[i].image_index = 0;
					c[i].image_speed = 0.25;
				}

				con = 16;
				alarm[4] = 60;
				snd_play("snd_laz_c");
			}

			if (con == 16)
			{
				if (s.image_index >= 5)
					s.image_speed = 0;
				if (k.image_index >= 6)
					k.image_speed = 0;
				if (r.image_index >= 5)
					r.image_speed = 0;
			}

			if (con == 17)
			{
				global.fe = 3;
				global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_175_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 18;
			}

			if (con == 18 && (!d_ex()))
			{
				jlaugh = snd_loop("snd_joker_laugh0");
				image_speed = 0.25;
				con = 19;
				alarm[4] = 15;
			}

			if (con == 20)
			{
				global.typer = 35;
				global.fc = 0;
				global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_192_0");
				global.msg[1] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_193_0");
				con = 21;
				instance_create(0, 0, "obj_dialoguer");
			}

			if (con == 21 && (!d_ex()))
			{
				snd_free_all();
				snd_stop(jlaugh);
				con = 22;
				alarm[4] = 1;
			}

			if (con == 23)
			{
				obj_mainchara.x = k.x;
				obj_mainchara.y = k.y;
				global.cinstance[0].x = s.x;
				global.cinstance[0].y = s.y;
				global.cinstance[1].x = r.x;
				global.cinstance[1].y = r.y;
				global.cinstance[0].scr_caterpillar_interpolate();
				global.cinstance[1].scr_caterpillar_interpolate();
				scr_caterpillar_facing(1);
				obj_mainchara.visible = true;
				global.cinstance[0].visible = true;
				global.cinstance[1].visible = true;
				k.visible = false;
				r.visible = false;
				s.visible = false;
				global.flag[9] = 1;
				global.batmusic0 = snd_init("joker.ogg");
				global.encounterno = 25;
				global.specialbattle = 3;
				instance_create(0, 0, "obj_encounterbasic");
				con = 25;
				bultimer = 0;
				bulcon = 10;
			}

			if (bulcon == 10)
			{
				image_speed = 0.5;
				bultimer += 1;
				aft = scr_afterimage();
				aft.image_alpha = 0.5;
				y -= 16;
				x += 5;
				bultimer += 1;
				if (bultimer >= 10)
					bulcon = 11;
			}

			if (con == 25)
			{
				if (instance_exists("obj_battlecontroller"))
				{
					visible = false;
					FindObjectOfType<obj_jokerbg_triangle_real>().on = 1;
					if (global.flag[8] == 1)
					{
						FindObjectOfType<obj_jokerbg_triangle_real>().on = 0;
					}

					con = 28;
				}
			}

			if (con == 28)
			{
				if (!instance_exists("obj_battlecontroller"))
				{
					if (global.flag[241] != 6)
						global.flag[241] = 7;
					con = 29;
					alarm[4] = 30;
				}
			}
		}
	}
}
