﻿using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_darkcastle_event : GamemakerObject
	{
		public override void Create()
		{
			con = 0;
			rflip = 0;
			if (global.plot >= 20)
				instance_destroy();
			else
			{
				snd_free_all();
				con = 1;
				obj_mainchara.visible = false;
				k = scr_dark_marker(460, (obj_mainchara.y + 60), "spr_krisu_dark");
				s = scr_dark_marker(520, (obj_mainchara.y + 100), "spr_susieu_dark");
				k.vspeed = -2;
				k.image_speed = 0.1;
				s.vspeed = -3;
				s.image_speed = 0.1;
				global.interact = 1;
				alarm[4] = 60;
			}
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Step_0()
		{
			if (con < 40)
			{
				if (con == 2)
				{
					xx = __view_get(0, 0);
					yy = __view_get(1, 0);
					k.scr_halt();
					s.scr_halt();
					con = 3;
					alarm[4] = 30;
				}
				if (con == 4)
				{
					obj_mainchara.cutscene = true;
					global.fe = 0;
					global.fc = 1;
					global.typer = 30;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_20_0");
					global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_21_0");
					con = 5;
					instance_create(0, 0, "obj_dialoguer");
				}
				if (con == 5 && d_ex() == false)
				{
					con = 6;
					global.fc = 0;
					global.typer = 42;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_32_0");
					wr = instance_create((xx + 200), (yy + 100), "obj_writer");
				}
				if (con == 6)
				{
					if (instance_exists(wr) == false)
					{
						global.fe = 9;
						global.fc = 1;
						global.typer = 30;
						global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_46_0");
						con = 7;
						instance_create(0, 0, "obj_dialoguer");
					}
				}
				if (con == 7 && d_ex() == false)
				{
					global.fc = 0;
					con = 8;
					global.typer = 42;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_58_0");
					global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_59_0");
					wr = instance_create((xx + 200), (yy + 100), "obj_writer");
				}
				if (con == 8)
				{
					if (instance_exists(wr) == false)
					{
						r = scr_dark_marker(495, 310, "spr_ralsei_hood");
						r.depth = 100;
						s.vspeed = -4;
						s.image_speed = 0.1;
						k.vspeed = -4;
						k.image_speed = 0.1;
						scr_pan(0, -4, 70);
						con = 9;
						alarm[4] = 85;
					}
				}
				if (con == 10)
				{
					k.scr_halt();
					s.scr_halt();
					con = 11;

					/*con = 39;
					alarm[4] = 30;
					global.flag[30] = 1;*/
				}
				if (con == 12)
				{
					global.typer = 6;
					global.fc = 2;
					global.fe = 0;
					global.flag[30] = 1;
					global.msc = 120;
					scr_text(global.msc);
					con = 20;
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
				}
				if (con == 20 && d_ex() == false)
				{
					fade = instance_create(0, 0, "obj_fadeout");
					fade.fadespeed = 0.01;
					con = 21;
					alarm[4] = 100;
				}
				if (con == 22)
				{
					room_persistent = true;
					con = 24;
					alarm[4] = 2;
				}
				if (con == 25)
				{
					instance_create(0, 0, "obj_persistentfadein");
					room_goto("room_legend");
					global.plot = 20;
					con = 26;
					alarm[4] = 3;
				}
				if (con == 27)
				{
					global.plot = 21;
					room_persistent = false;
					con = 28;
					alarm[4] = 60;
				}
				if (con == 29)
				{
					global.fc = 2;
					global.fe = 0;
					global.typer = 6;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_142_0");
					global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_143_0");
					global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_144_0");
					global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_145_0");
					global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_146_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 35;
				}
				if (con == 30 && d_ex() == true)
				{
					if (scr_getmsgno() == 17)
					{
						s.sprite_index = "spr_susier_dark";
					}
					if (scr_getmsgno() == 18)
					{
						s.sprite_index = "spr_susied_dark";
					}
				}
				if (con == 30 && d_ex() == false)
					con = 40;
				if (con == 35 && d_ex() == false)
				{
					s.sprite_index = "spr_susier_dark";
					con = 36;
					alarm[4] = 50;
				}
				if (con == 37)
				{
					s.sprite_index = "spr_susieu_dark";
					global.typer = 30;
					global.fe = 0;
					global.fc = 1;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_181_0");
					scr_ralface(1, 1);
					global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_183_0");
					scr_susface(3, 0);
					global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_185_0");
					global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_186_0");
					scr_ralface(6, 1);
					global.msg[7] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_188_0");
					scr_susface(8, 0);
					global.msg[9] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_190_0");
					global.msg[10] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_191_0");
					global.msg[11] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_192_0");
					scr_ralface(12, 0);
					global.msg[13] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_194_0");
					scr_susface(14, 0);
					global.msg[15] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_196_0");
					global.msg[16] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_197_0");
					global.msg[17] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_198_0");
					global.msg[18] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_199_0");
					scr_ralface(19, 1);
					global.msg[20] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_201_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 38;
				}
				if (con == 38 && d_ex() == true)
				{
					if (scr_getmsgno() == 0)
					{
						s.sprite_index = "spr_susieu_dark";
					}
					if (scr_getmsgno() == 9)
					{
						s.sprite_index = "spr_susier_dark";
					}
					if (scr_getmsgno() == 13)
					{
						s.sprite_index = "spr_susieu_dark";
					}
					if (scr_getmsgno() == 15)
					{
						s.sprite_index = "spr_susiel_dark";
					}
					if (scr_getmsgno() == 18)
					{
						s.sprite_index = "spr_susied_dark";
					}
				}
				if (con == 38 && d_ex() == false)
					con = 40;
			}
			else
			{
				if (con == 40 && d_ex() == false)
				{
					s.sprite_index = "spr_susieu_dark";
					snd_play("snd_lancerlaugh");
					con = 44;
					alarm[4] = 50;
				}
				if (con == 45)
				{
					snd_play("snd_drive");
					xx = __view_get(0, 0);
					yy = __view_get(1, 0);
					l = scr_dark_marker((xx + 720), ((r.y + r.sprite_height) - 10), "spr_lancerbike");
					l.hspeed = -32;
					con = 46;
				}
				if (con == 46)
				{
					if (l.x <= (xx + 360))
					{
						ex = instance_create((r.x + 30), (r.y + 30), "obj_animation");
						ex.sprite_index = "spr_realisticexplosion";
						ex.image_xscale = 2;
						ex.image_yscale = 2;
						ex.image_speed = 0.5;
						ex.depth = 10;
						global.currentsong0 = snd_init("lancer.ogg");
						l.hspeed = 0;
						r.hspeed = -32;
						r.vspeed = -8;
						r.gravity = 0.2;
						rflip = 1;
						snd_play("snd_badexplosion");
						instance_create(0, 0, "obj_shake");
						con = 47;
						//con = 71; // begin fight
						alarm[4] = 60;
					}
				}
				if (con == 48)
				{
					global.currentsong1 = mus_loop_ext(global.currentsong0, 0.7, 1);
					con = 49;
					global.fc = 5;
					global.fe = 1;
					global.typer = 32;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_276_0");
					global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_277_0");
					global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_278_0");
					global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_279_0");
					scr_susface(4, 9);
					global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_281_0");
					scr_lanface(6, 0);
					global.msg[7] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_283_0");
					if (global.flag[203] == 1)
					{
						global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_287_0");
						global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_288_0");
						scr_susface(2, 9);
						global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_290_0");
						scr_lanface(4, 0);
						global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_292_0");
					}
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
				}
				if (con == 49 && d_ex() == false)
				{
					con = 50;
					snd_play("snd_lancerwhistle");
					l.sprite_index = "spr_lancerbike_l";
					siner = 0;
					maxamt = 20;
				}
				if (con == 50)
				{
					siner += 1;
					l.image_xscale = (2 * cos((((siner * 2) * pi) / maxamt)));
					if (siner >= maxamt)
					{
						con = 51;
						if (global.flag[203] == 1)
							con = 54;
						l.image_xscale = 2;
						alarm[4] = 15;
					}
				}
				if (con == 52)
				{
					l.sprite_index = "spr_lancerbike";
					global.fe = 1;
					global.fc = 5;
					global.typer = 32;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_327_0");
					global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_328_0");
					global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_329_0");
					global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_330_0");
					scr_susface(4, 0);
					global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_332_0");
					scr_lanface(6, 1);
					global.msg[7] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_334_0");
					global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_335_0");
					global.msg[9] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_336_0");
					global.msg[10] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_337_0");
					global.msg[11] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_338_0");
					global.msg[12] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_339_0");
					global.msg[13] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_340_0");
					scr_susface(14, 1);
					global.msg[15] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_342_0");
					scr_lanface(16, 6);
					global.msg[17] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_344_0");
					scr_susface(18, 2);
					global.msg[19] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_346_0");
					global.msg[20] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_347_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 70;
				}
				if (con == 55)
				{
					l.sprite_index = "spr_lancerbike";
					global.fc = 5;
					global.fe = 1;
					global.typer = 32;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_360_0");
					scr_susface(1, 0);
					global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_362_0");
					scr_lanface(3, 0);
					global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_364_0");
					scr_susface(5, 1);
					global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_366_0");
					scr_lanface(7, 4);
					global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_368_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 56;
				}
				if (con == 56 && d_ex() == false)
				{
					r2 = scr_dark_marker((xx - 60), (yy + 80), "spr_ralsei_hood");
					r2.hspeed = 16;
					con = 57;
					alarm[4] = 15;
				}
				if (con == 58)
				{
					global.typer = 6;
					r2.hspeed = 0;
					global.fc = 2;
					global.fe = 1;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_388_0");
					scr_lanface(1, 0);
					global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_390_0");
					scr_ralface(3, 0);
					global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_392_0");
					scr_susface(5, 0);
					global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_394_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 59;
				}
				if (con == 59 && d_ex() == false)
				{
					r2.hspeed = -8;
					con = 60;
					alarm[4] = 30;
				}
				if (con == 61)
				{
					global.fc = 5;
					global.fe = 6;
					global.typer = 32;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_412_0");
					global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_413_0");
					global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_414_0");
					global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_415_0");
					global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_416_0");
					scr_susface(5, 2);
					global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_418_0");
					scr_lanface(7, 7);
					global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_420_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 62;
				}
				if (con == 62 && d_ex() == false)
				{
					r3 = scr_dark_marker((xx - 60), (yy + 80), "spr_ralsei_hood");
					r3.hspeed = 16;
					con = 63;
					alarm[4] = 15;
				}
				if (con == 64)
				{
					r3.hspeed = 0;
					global.typer = 6;
					global.fc = 2;
					global.fe = 1;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_440_0");
					scr_susface(1, 0);
					global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_442_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 65;
				}
				if (con == 65 && d_ex() == false)
				{
					r3.hspeed = -8;
					con = 66;
					alarm[4] = 40;
				}
				if (con == 67)
				{
					global.typer = 30;
					global.fc = 1;
					global.fe = 1;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_460_0");
					scr_lanface(1, 1);
					global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_462_0");
					scr_susface(3, 2);
					global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_464_0");
					global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_465_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 70;
				}
				if (con == 72)
				{
					global.flag[9] = 1;
					global.batmusic0 = snd_init("battle.ogg");
					global.encounterno = 2;
					global.specialbattle = 3;
					scr_getchar(2);
					obj_mainchara.x = k.x;
					obj_mainchara.y = k.y;
					global.cinstance[0] = instance_create(s.x, s.y, "obj_caterpillarchara");
					k.instance_destroy();
					s.instance_destroy();
					instance_create(0, 0, "obj_encounterbasic");
					con = 73;
					l.direction = point_direction(x, y, global.monstermakex[0], global.monstermakey[0]);
					l.speed = (point_distance(x, y, global.monstermakex[0], global.monstermakey[0]) / 10d);
					alarm[4] = 10;
				}
				if (con == 70 && d_ex() == false)
				{
					snd_free_all();
					con = 71;
					alarm[4] = 2;
				}
				if (con == 74)
				{
					l.speed = 0;
					if (instance_exists("obj_battlecontroller"))
					{
						l.instance_destroy();
						con = 75;
					}
				}
				if (con == 75)
				{
					if (global.plot == 22)
					{
						if (instance_exists("obj_battlecontroller") == false)
						{
							if (instance_exists("obj_endbattle") == false)
								con = 76;
						}
						alarm[4] = 5;
					}
				}
				if (con == 77)
				{
					rflip = 0;
					global.interact = 1;
					k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, "spr_krisu_dark");
					s = scr_dark_marker(global.cinstance[0].x, global.cinstance[0].y, "spr_susieu_dark");
					obj_mainchara.visible = false;
					global.cinstance[0].instance_destroy();
					con = 78;
					alarm[4] = 15;
				}

				if (con == 79)
				{
					r = scr_dark_marker(95, 310, "spr_ralsei_hood");
					r.hspeed = 16;
					con = 80;
					alarm[4] = 25;
				}

				if (con == 81)
				{
					r.speed = 0;
					global.fc = 2;
					global.fe = 1;
					global.typer = 6;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_552_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 82;
				}

				if (con == 82 && d_ex() == false)
				{
					r.vspeed = 6;
					r.depth = 1000;
					con = 83;
					alarm[4] = 10;
				}

				if (con == 84)
				{
					r.vspeed = 0;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_569_0");
					scr_susface(1, 0);
					global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_571_0");
					global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_572_0");
					scr_ralface(4, 0);
					global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_574_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 85;
				}

				if (con == 85 && d_ex() == false)
				{
					snd_play("snd_noise");
					r.sprite_index = "spr_ralsei_removehood";
					r.image_index = 0;
					r.image_speed = 0.1;
					con = 86;
					alarm[4] = 60;
				}

				if (con == 87)
				{
					r.sprite_index = "spr_ralseid";
					r.image_index = 0;
					r.image_speed = 0;
					global.flag[30] = 0;
					con = 88;
					alarm[4] = 30;
				}

				if (con == 89)
				{
					global.typer = 31;
					global.fc = 2;
					global.fe = 0;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_611_0");
					global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_612_0");
					global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_613_0");
					scr_susface(3, 0);
					global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_615_0");
					scr_ralface(5, 0);
					global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_617_0");
					scr_susface(7, 0);
					global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_619_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 90;
				}

				if (con == 90 && d_ex() == false)
				{
					s.sprite_index = "spr_susier_dark";
					con = 91;
					alarm[4] = 40;
				}

				if (con == 92)
				{
					k.sprite_index = "spr_krisr_dark";
					global.fc = 1;
					global.fe = 2;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_637_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 93;
				}

				if (con == 93 && d_ex() == false)
				{
					k.sprite_index = "spr_krisd_dark";
					s.vspeed = 4;
					s.image_speed = 0.2;
					s.sprite_index = "spr_susied_dark";
					con = 94;
					alarm[4] = 70;
				}

				if (con == 95)
				{
					k.sprite_index = "spr_krisu_dark";
					global.typer = 31;
					global.fc = 2;
					global.fe = 1;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_663_0");
					global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_664_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 96;
				}

				if (con == 96 && d_ex() == false)
				{
					k.sprite_index = "spr_krisr_dark";
					r.hspeed = 1;
					r.vspeed = 2;
					r.image_speed = 0.2;
					con = 97;
				}

				if (con == 97)
				{
					if (r.y >= (k.y - 12))
					{
						r.y = (k.y - 12);
						r.image_speed = 0;
						r.image_index = 0;
						r.sprite_index = "spr_ralseil";
						r.speed = 0;
						r.vspeed = 0;
						r.hspeed = 0;
						con = 98;
						alarm[4] = 30;
					}
				}

				if (con == 99)
				{
					global.fe = 5;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_702_0");
					global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_703_0");
					global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_704_0");
					global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_705_0");
					global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_706_0");
					global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_707_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 100;
				}

				if (con == 100 && d_ex() == false)
				{
					r.sprite_index = "spr_ralseid";
					con = 101;
					alarm[4] = 40;
				}

				if (con == 102)
				{
					global.fe = 0;
					global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_723_0");
					d = instance_create(0, 0, "obj_dialoguer");
					d.side = 1;
					con = 103;
				}

				if (con == 103 && d_ex() == false)
				{
					r.hspeed = -4;
					r.image_speed = 0.2;
					r.sprite_index = "spr_ralseil";
					con = 104;
				}

				if (con == 104)
				{
					if (r.x <= (k.x - 70))
					{
						r.scr_halt();
						r.sprite_index = "spr_ralseir";
						con = 105;
						global.fe = 8;
						global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_749_0");
						d = instance_create(0, 0, "obj_dialoguer");
						d.side = 1;
					}
				}

				if (con == 105 && d_ex() == false)
				{
					con = 107;
					global.currentsong0 = snd_init("castletown_empty.ogg");
					alarm[4] = 30;
					scr_pan_to_obj(obj_mainchara, 25);
				}

				if (con == 109)
				{
					r.instance_destroy();
					con = 110;
					instance_destroy();
				}

				if (con == 108)
				{
					scr_losechar();
					scr_getchar(3);
					global.facing = 1;
					obj_mainchara.visible = true;
					obj_mainchara.cutscene = false;
					k.instance_destroy();
					global.cinstance[0] = instance_create((r.x + 4), (r.y + 12), "obj_caterpillarchara");
					global.cinstance[0].scr_caterpillar_interpolate();
					global.cinstance[0].usprite = "spr_ralseiu";
					global.cinstance[0].dsprite = "spr_ralseid";
					global.cinstance[0].rsprite = "spr_ralseir";
					global.cinstance[0].lsprite = "spr_ralseil";
					for (i = 0; i < 50; i += 1)
						global.cinstance[0].facing[i] = 1;
					global.cinstance[0].x -= 4;
					global.cinstance[0].y -= 12;
					con = 109;
					scr_tempsave();
					global.currentsong1 = mus_loop(global.currentsong0);
					global.plot = 30;
					global.interact = 0;
				}
			}

			if (rflip == 1)
			{
				if (instance_exists((GamemakerObject)r))
				{
					r.image_angle += 2;
				}
			}
		}
	}
}
