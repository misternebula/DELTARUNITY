using System;
using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_joker : obj_monsterparent
	{
		public override void Create()
		{
			bikeflip = false;
			becomeflash = false;
			turnt = 0;
			turns = 0;
			talktimer = 0;
			talkmax = 90;
			state = 0;
			flash = false;
			siner = 0;
			fsiner = 0;
			talked = false;
			attacked = false;
			hurt = false;
			hurtamt = 0;
			hurttimer = 0;
			hurtshake = 0;
			mywriter = null;
			acting = 0;
			actcon = 0;
			acttimer = 0;
			mercymod = -9999;
			maxmercy = 9999;
			warned = false;
			compliment = 0;
			tired = false;
			pirouette = 0;
			pirouettecounter = 0;
			pfactor = 1;
			hypnosis = 0;
			hypnosiscounter = 0;
			chaosdance = 0;
			reminvc = global.invc;
			for (i = 0; i < 4; i += 1)
				remmaxhp[i] = global.maxhp[i];
			attacks = false;
			dodgetimer = 0;
			candodge = false;
			con = 0;
			battlecancel = 0;
			nexttry = false;
			mytarget = 3;
			image_speed = 0;
			image_xscale = 2;
			image_yscale = 2;
			idlesprite = "spr_joker_main";
			hurtsprite = "spr_joker_main";
			sparedsprite = "spr_joker_main";
			body = instance_create(x, y, "obj_joker_body");
			laughnoise = 0;
			beepnoise = 0;
			beepbuffer = 0;
			burstnoise = false;
			jturn = 0;
			jattack = 0;
			global.tempflag[4] = true;
		}

		public override void Draw_0()
		{
			if (state == 3)
			{
				if (hurttimer > 0)
				{
					hurttimer = 0;
					body.condition = 1;
					body.siner = 0;
					body.maxdist += (20 + (hurtamt / 5.0));
					if (body.maxdist < 30)
						body.maxdist = 30;
					mhpratio = (global.monsterhp[myself] / (double)global.monstermaxhp[myself]);
					body.floatsinerspeed = (1 + (1 - mhpratio));
					if (mhpratio <= 0.8 && body.dancelv == 0)
						body.dancelv = 1;
					if (mhpratio <= 0.4 && jturn < 17)
						body.dancelv = 3;
					if (mhpratio <= 0.2 && jturn == 17)
						body.dancelv = 2;
					if (mhpratio <= 0)
					{
						event_user(10);
						global.flag[241] = 6;
					}
					if (instance_exists("obj_jokerbg_triangle_real"))
					{
						if (mhpratio > 0)
							FindObjectOfType<obj_jokerbg_triangle_real>().rotspeed = (1 + (1.5 - (mhpratio * 1.5)));
					}

					laughnoise = choose(0, 1, 2);
					if (laughnoise == 0)
						snd_play("snd_joker_laugh0");
					if (laughnoise == 1)
						snd_play("snd_joker_ha1");
					if (laughnoise == 2)
						snd_play("snd_joker_ha0");
				}

				hurttimer -= 1;
				if (hurttimer < 0)
					state = 0;
				else if (global.monster[myself] == 0)
				{
				}
			}

			if (state == 0)
			{
				siner += 1;
				thissprite = idlesprite;
				if (flash == true)
				{
					fsiner += 1;
					body.fsiner = fsiner;

					d3d_set_fog(true, c_white, 0, 1);
					if (dancelv == 0)
						draw_sprite_ext("spr_joker_main", 0, (body.offx + body.flyx), (body.offy + body.fly), 2, 2, 0, body.image_blend, (((-(cos((body.fsiner / 5.0)))) * 0.4) + 0.6));
					if (dancelv == 1)
						draw_sprite_ext("spr_joker_dance", (body.floatsiner / 3.0), (body.offx + body.flyx), (body.offy + body.fly), 2, 2, 0, body.image_blend, (((-(cos((body.fsiner / 5.0)))) * 0.4) + 0.6));
					if (dancelv == 2)
						draw_sprite_ext("spr_joker_tired", 0, (body.offx + body.flyx), (body.offy + body.fly), 2, 2, 0, body.image_blend, (((-(cos((body.fsiner / 5.0)))) * 0.4) + 0.6));
					d3d_set_fog(false, c_black, 0, 0);
				}
			}

			if (becomeflash == false)
				flash = false;
			becomeflash = false;
		}

		public override void Other_15()
		{
			if (attacked == false)
			{
				turns += 1;
				chaosdance += 1;
				if (chaosdance >= 9)
					chaosdance = 0;
				remat = global.monsterat[myself];
				global.monsterat[myself] *= pfactor;
				if (jattack == 0)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 70;
					dc.target = mytarget;
					dc.grazepoints = 2;
					dc.damage = (global.monsterat[myself] * 5);
					body.condition = 2;
				}

				if (jattack == 1)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.grazepoints = 3;
					dc.type = 65;
					dc.target = mytarget;
					dc.damage = (global.monsterat[myself] * 5);
				}

				if (jattack == 2)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 49;
					dc.target = 3;
					dc.damage = (global.monsterat[myself] * 4);
					dc.grazepoints = 3;
					body.condition = 2;
				}

				if (jattack == 3)
				{
					if (body.condition < 4)
						body.condition = 5;
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.grazepoints = 3;
					dc.type = 75;
					dc.target = mytarget;
					dc.damage = (global.monsterat[myself] * 6);
				}

				if (jattack == 4)
				{
					snd_play(scr_84_get_sound("snd_joker_anything"));
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 62;
					dc.target = mytarget;
					dc.inv = 20;
					dc.damage = (global.monsterat[myself] * 5);
					dc.grazepoints = 2;
				}

				if (jattack == 5)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.grazepoints = 3;
					dc.type = 50;
					dc.target = 3;
					dc.damage = (global.monsterat[myself] * 4);
					global.turntimer = 300;
					body.condition = 2;
				}

				if (jattack == 6)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 73;
					dc.target = mytarget;
					dc.damage = (global.monsterat[myself] * 5);
				}

				if (jattack == 7)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 68;
					dc.target = mytarget;
					dc.grazepoints = 2;
					dc.damage = (global.monsterat[myself] * 5);
				}

				if (jattack == 8)
				{
					snd_play(scr_84_get_sound("snd_joker_anything"));
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.inv = 20;
					dc.type = 61;
					dc.target = mytarget;
					dc.grazepoints = 3;
					dc.damage = (global.monsterat[myself] * 5);
					global.turntimer = 240;
				}

				if (jattack == 9)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 48;
					dc.target = 3;
					dc.damage = (global.monsterat[myself] * 4);
					dc.grazepoints = 4;
					global.turntimer = 270;
					body.condition = 2;
				}

				if (jattack == 10)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 72;
					dc.target = mytarget;
					dc.damage = (global.monsterat[myself] * 5);
				}

				if (jattack == 11)
				{
					if (body.condition < 4)
						body.condition = 5;
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 76;
					dc.target = mytarget;
					dc.grazepoints = 3;
					dc.damage = (global.monsterat[myself] * 6);
				}

				if (jattack == 12)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 71;
					dc.target = mytarget;
					dc.damage = (global.monsterat[myself] * 5);
					dc.grazepoints = 2;
					body.condition = 2;
				}

				if (jattack == 13)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 46;
					dc.target = 3;
					dc.damage = (global.monsterat[myself] * 4);
					dc.grazepoints = 4;
					global.turntimer = 330;
					body.condition = 2;
				}

				if (jattack == 14)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 74;
					dc.target = mytarget;
					dc.damage = (global.monsterat[myself] * 4);
				}

				if (jattack == 15)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 77;
					dc.target = mytarget;
					dc.damage = (global.monsterat[myself] * 4);
					global.turntimer = 1500;
					if (body.condition < 4)
						body.condition = 5;
				}

				if (jattack == 99)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 47;
					dc.target = 3;
					dc.damage = (global.monsterat[myself] * 4);
					global.turntimer = 300;
					body.condition = 2;
				}

				if (jattack == 999)
				{
					dc = instance_create(x, y, "obj_dbulletcontroller");
					dc.type = 25;
					dc.target = mytarget;
					dc.damage = (global.monsterat[myself] * 4);
					global.turntimer = 300;
				}

				foreach (var item in with<obj_dbulletcontroller>())
				{
					item.joker = 1;
				}

				pfactor = 1;
				global.monsterat[myself] = remat;
				attacked = true;
			}
		}

		public override void Other_20()
		{
			throw new NotImplementedException();
		}

		public override void Other_21()
		{

		}

		public override void Other_22()
		{
			global.monsterx[myself] = (x + 20);
			global.monstery[myself] = (y + 20);
			scr_monstersetup();
		}

		public override void Step_0()
		{
			if (global.monster[myself] == 1)
			{
				global.flag[(51 + myself)] = 4;
				if (global.mnfight == 1 && talked == false)
				{
					if (pirouette != 2)
						global.invc = reminvc;
					mhpratio = (global.monsterhp[myself] / (float)global.monstermaxhp[myself]);
					if (mhpratio <= 0.8 && jturn == 4)
					{
						jturn = 5;
						body.dancelv = 1;
					}

					if (mhpratio <= 0.6 && jturn == 9)
						jturn = 10;
					if (mhpratio <= 0.4 && jturn == 14)
					{
						jturn = 15;
						body.dancelv = 3;
					}

					if (mhpratio <= 0.15 && jturn < 17)
					{
						jturn = 17;
						body.dancelv = 2;
					}

					if (jturn >= 18)
					{
						body.dancelv = 3;
					}

					if (hypnosiscounter >= 2 && jturn == 4)
					{
						if (turns >= (5 - hypnosiscounter))
						{
							jturn = 5;
							body.dancelv = 1;
						}
					}

					if (hypnosiscounter >= 4 && jturn == 9)
					{

					}

					if (hypnosiscounter >= 6 && jturn == 14)
					{

					}

					if (jturn >= 19)
					{

					}

					if (!instance_exists("obj_darkener"))
						instance_create(0, 0, "obj_darkener");

					global.typer = 50;
					if (jturn == 0)
					{
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_35_0");
						snd_play(scr_84_get_sound("snd_joker_chaos"));
					}

					if (jturn == 1)
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_36_0");
					if (jturn == 2)
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_37_0");
					if (jturn == 3)
					{
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_38_0");
						body.condition = 5;
					}

					if (jturn == 5)
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_39_0");
					if (jturn == 6)
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_40_0");
					if (jturn == 7)
					{
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_41_0");
						snd_play(scr_84_get_sound("snd_joker_anything"));
					}

					if (jturn == 8)
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_42_0");
					if (jturn == 10)
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_43_0");
					if (jturn == 11)
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_44_0");
					if (jturn == 12)
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_45_0");
					if (jturn == 13)
					{
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_46_0");
						body.condition = 5;
					}

					if (jturn == 15)
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_47_0");
					if (jturn == 16)
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_48_0");
					if (jturn == 17)
					{
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_49_0");
						body.dancelv = 2;
					}

					if (jturn == 18)
					{
						global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_50_0");
						body.condition = 5;
					}

					if (jturn == 4 || jturn == 9 || jturn == 14 || jturn == 19)
					{
						rr = choose(0, 1, 2, 3);
						if (rr == 0)
						{
							global.msg[0] = choose(scr_84_get_lang_string("obj_joker_slash_Step_0_gml_56_0"), scr_84_get_lang_string("obj_joker_slash_Step_0_gml_56_1"));
							snd_play(scr_84_get_sound("snd_joker_chaos"));
						}

						if (rr == 1)
						{
							global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_57_0");
							snd_play(scr_84_get_sound("snd_joker_anything"));
						}

						if (rr == 2)
							global.msg[0] = choose(scr_84_get_lang_string("obj_joker_slash_Step_0_gml_58_0"), scr_84_get_lang_string("obj_joker_slash_Step_0_gml_58_1"));
						if (rr == 3)
							global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_59_0");
					}

					scr_enemyblcon((x - 160), (y - 20), 3);
					talked = true;
					talktimer = 0;
					if (jturn >= 19)
					{
						if (global.monsterdf[myself] > -10)
							global.monsterdf[myself] -= 3;
						if (global.monsterat[myself] < 11)
							global.monsterat[myself] += 0.5;
						jattack = choose(0, 4, 7, 8, 10, 11, 12, 13, 13, 13);
					}

					if (jturn >= 15 && jturn <= 18)
					{
						jattack = (jturn - 3);
						jturn += 1;
					}

					if (jturn == 14)
						jattack = choose(8, 9, 10, 11);
					if (jturn >= 10 && jturn <= 13)
					{
						jattack = (jturn - 2);
						jturn += 1;
					}

					if (jturn == 9)
						jattack = choose(4, 5, 6, 7);
					if (jturn >= 5 && jturn <= 8)
					{
						jattack = (jturn - 1);
						jturn += 1;
					}

					if (jturn == 4)
						jattack = choose(0, 1, 2, 3);
					if (jturn <= 3)
					{
						jattack = jturn;
						jturn += 1;
					}

					if (jattack == 2 || jattack == 5 || jattack == 9 || jattack == 13 || jattack == 15)
						scr_targetall();
					else
						scr_randomtarget();
				}

				if (talked == true && global.mnfight == 1)
				{
					rtimer = 0;
					scr_blconskip(15);
					if (global.mnfight == 2)
					{
						if (!instance_exists("obj_moveheart"))
							scr_moveheart();
						if (!instance_exists("obj_growtangle"))
							instance_create((__view_get(0, 0) + 320), (__view_get(1, 0) + 170), "obj_growtangle");
					}
				}

				if (global.mnfight == 2 && attacked == false)
				{
					rtimer += 1;
					if (rtimer == 12)
					{
						global.turntimer = 240;
						event_user(5);
						attacked = true;
						global.typer = 6;
						global.fc = 0;
						rr = choose(0, 1, 2, 3, 4);
						if (rr == 0)
							global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_158_0");
						if (rr == 1)
							global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_159_0");
						if (rr == 2)
							global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_160_0");
						if (rr == 3)
							global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_161_0");
						if (rr == 4)
							global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_162_0");
						if (body.dancelv == 2)
							global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_163_0");
						if (jturn == 16)
							global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_164_0");
						if (jturn == 18)
							global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_165_0");
						if (jturn >= 19)
							global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_166_0");
						if (global.monsterstatus[myself] == true)
							global.battlemsg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_167_0");
					}
					else
						global.turntimer = 120;
				}

				if (global.mnfight == 2)
				{
					if (global.turntimer <= 1)
					{
						if (battlecancel == 1)
							global.mercymod[myself] = 999;
						if (battlecancel == 2)
						{
							FindObjectOfType<obj_battlecontroller>().noreturn = true;
							con = 1;
							battlecancel = 3;
						}
					}
				}
			}

			if (con == 1)
			{
				con = 2;
				alarm[4] = 10;
			}

			if (con == 3)
			{
				global.typer = 50;
				global.mercymod[myself] = 999;
				global.msg[0] = scr_84_get_lang_string("obj_joker_slash_Step_0_gml_201_0");
				scr_enemyblcon((x - 160), y, 3);
				con = 4;
			}

			if (con == 4 && (!instance_exists("obj_writer")))
			{
				hspeed = 15;
				con = 5;
				alarm[4] = 15;
				FindObjectOfType<obj_battlecontroller>().alarm[2] = 17;
			}

			if (con == 6)
			{
				FindObjectOfType<obj_battlecontroller>().noreturn = false;
				scr_monsterdefeat();
				instance_destroy();
				con = 7;
			}

			if (global.myfight == 3)
			{

			}

			if (global.myfight == 7)
				hspeed = 15;
			beepbuffer -= 1;
			if (beepnoise == 4 && beepbuffer < 0)
			{
				snd_stop("snd_bombfall");
				snd_play("snd_bombfall");
				beepnoise = 0;
				beepbuffer = 5;
			}
			if (burstnoise == true)
			{
				snd_stop("snd_bomb");
				snd_play("snd_bomb");
				burstnoise = false;
			}
		}
	}
}
