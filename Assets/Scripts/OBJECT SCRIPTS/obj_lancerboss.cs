using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_lancerboss : obj_monsterparent
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
			hurttimer = 0;
			hurtshake = 0;
			mywriter = null;
			acting = 0;
			actcon = 0;
			acttimer = 0;
			mercymod = 0;
			maxmercy = 9999;
			warned = false;
			compliment = 0;
			compliment_just = 0;
			attacks = false;
			dodgetimer = 0;
			candodge = true;
			con = 0;
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Draw_0()
		{
			if (state == 3)
			{
				hurttimer -= 1;
				if (hurttimer < 0)
					state = 0;
				else
				{
					if (global.monster[myself] == 0)
					{
						if (global.plot < 22)
							global.plot = 22;
						hspeed = 12;
						turnt -= 8;
						vspeed = -4;
					}
					hurtshake += 1;
					if (hurtshake > 1)
					{
						if (shakex > 0)
							shakex -= 1;
						if (shakex < 0)
							shakex += 1;
						shakex = (-shakex);
						hurtshake = 0;
					}
					draw_sprite_ext("spr_lancerbike_hurt", (int)(hurttimer / 2d), (x + shakex), y, 2, 2, 0, image_blend, 1);
				}
			}
			if (state == 4)
			{
				dodgetimer += 1;
				dodgeamt = (cos((((dodgetimer * 2) * pi) / 15d)) * 2);
				draw_sprite_ext("spr_lancerbike_l", 0, x, y, dodgeamt, 2, 0, image_blend, 1);
				if (dodgetimer >= 15)
					state = 0;
			}
			if (state == 0)
			{
				siner += 1;
				thissprite = "spr_lancerbike";
				if (global.mercymod[myself] >= global.mercymax[myself])
					thissprite = "spr_lancerbike";
				draw_sprite_ext(thissprite, (siner / 5), x, y, 2, 2, 0, image_blend, 1);
				if (flash == true)
				{
					fsiner += 1;
					d3d_set_fog(true, c_white, 0, 1);
					draw_sprite_ext(thissprite, (siner / 5), x, y, 2, 2, 0, image_blend, (((-(cos((fsiner / 5)))) * 0.4) + 0.6));
					d3d_set_fog(false, c_black, 0, 0);
				}
			}
			if (becomeflash == false)
				flash = false;
			becomeflash = false;
		}

		public override void Other_22()
		{
			global.monsterx[myself] = x;
			global.monstery[myself] = ((y - (sprite_height / 2d)) - 30);
			scr_monstersetup();
		}

		public override void Step_0()
		{
			if (global.monster[myself] == 1)
			{
				if (global.mnfight == 1 && talked == false)
				{
					scr_randomtarget();
					global.flag[(51 + myself)] = 4;
					global.targeted[mytarget] = true;
					if (!instance_exists("obj_darkener"))
						instance_create(0, 0, "obj_darkener");
					global.typer = 50;
					if (turns == 0)
						global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_17_0");
					if (turns == 1)
						global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_18_0");
					if (turns == 2)
						global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_19_0");
					if (turns >= 3)
						global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_20_0");
					if (compliment_just == 1)
					{
						if (compliment == 1)
							global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_26_0");
						if (compliment == 2)
							global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_30_0");
						if (compliment == 3)
							global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_34_0");
						compliment_just = 0;
					}

					scr_enemyblcon((x - 235), (y - 65), 3);
					talked = true;
					talktimer = 0;
				}

				if (talked == true && global.mnfight == 1)
				{
					if (button1_p() && talktimer > 15)
						talktimer = talkmax;
					talktimer += 1;
					if (talktimer >= talkmax)
					{
						if (!instance_exists("obj_moveheart"))
							scr_moveheart();
						if (!instance_exists("obj_growtangle"))
							instance_create((__view_get(0, 0) + 320), (__view_get(1, 0) + 170), "obj_growtangle");
						foreach (var item in with<obj_writer>())
						{
							item.instance_destroy();
						}
						global.mnfight = 2;
					}
				}

				if (global.mnfight == 2 && attacked == false)
				{
					if (attacks == false)
					{
						bike = instance_create(x, y, "obj_lancerbike");
						visible = false;
						bike.racecon = 1;
						bike.target = mytarget;
						bike.damage = (global.monsterat[myself] * 5);
						attacks = true;
					}
					else
					{
						bike = instance_create(x, y, "obj_lancerbike");
						visible = false;
						bike.lcon = 1;
						bike.target = mytarget;
						bike.damage = (global.monsterat[myself] * 5);
						attacks = false;
					}

					turns += 1;
					global.turntimer = 999;
					attacked = true;
					rr = floor(random(5));
					global.typer = 6;
					global.fc = 0;
					if (rr == 0)
						global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_90_0");
					if (rr == 1)
						global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_91_0");
					if (rr == 2)
						global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_92_0");
					if (rr == 3)
						global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_93_0");
					if (rr == 4)
						global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_94_0");
					if (turns == 1)
					{
						global.typer = 47;
						global.fc = 1;
						global.fe = 2;
						global.battlemsg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_100_0");
					}
				}
			}

			if (global.myfight == 3)
			{
				xx = __view_get(0, 0);
				yy = __view_get(1, 0);
				if (acting == 1 && actcon == 0)
				{
					actcon = 1;
					global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_118_0");
					global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_119_0");
					scr_battletext_default();
				}

				if (acting == 2 && actcon == 0)
				{
					actcon = 1;
					if (global.automiss[myself] == false)
					{
						global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_130_0");
						global.automiss[myself] = true;
					}
					else
						global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_135_0");

					scr_battletext_default();
				}

				if (acting == 3 && actcon == 0)
				{
					if (compliment >= 3)
						global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_145_0");
					if (compliment == 2)
					{
						global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_150_0");
						global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_151_0");
						scr_mercyadd(myself, 20);
					}

					if (compliment == 1)
					{
						global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_157_0");
						global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_158_0");
						scr_mercyadd(myself, 20);
						global.monsterat[myself] += 1;
					}

					if (compliment == 0)
					{
						global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_164_0");
						global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_165_0");
						scr_mercyadd(myself, 20);
						global.monsterat[myself] -= 1;
					}

					compliment_just = 1;
					compliment += 1;
					scr_battletext_default();
					actcon = 1;
				}

				if (actcon == 1 && (!instance_exists("obj_writer")))
				{
					actcon = 0;
					scr_attackphase();
				}
			}

			if (con == 1)
			{
				alarm[4] = 5;
				con = 2;
			}

			if (con == 3)
			{
				global.typer = 50;
				global.msg[0] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_196_0");
				global.msg[1] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_197_0");
				global.msg[2] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_198_0");
				global.msg[3] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_199_0");
				global.msg[4] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_200_0");
				global.msg[5] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_201_0");
				global.msg[6] = scr_84_get_lang_string("obj_lancerboss_slash_Step_0_gml_202_0");
				con = 4;
				scr_enemyblcon((x - 235), (y - 65), 3);
			}

			if (con == 4 && (!instance_exists("obj_writer")))
			{
				hspeed = 20;
				con = 5;
				alarm[4] = 15;

				var obj_battlecontroller = FindObjectOfType<obj_battlecontroller>();
				obj_battlecontroller.noreturn = false;
				obj_battlecontroller.alarm[2] = 17;
			}

			if (con == 6)
			{
				global.monsterexp[myself] -= 0;
				global.monstergold[myself] += 10;
				if (global.plot < 22)
					global.plot = 22;
				scr_monsterdefeat();
				instance_destroy();
				con = 7;
			}
		}
	}
}
