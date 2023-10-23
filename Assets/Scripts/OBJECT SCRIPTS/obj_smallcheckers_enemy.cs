using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_smallcheckers_enemy : obj_monsterparent
	{
		public override void Create()
		{
			bikeflip = false;
			becomeflash = false;
			turnt = 0;
			turns = 0;
			talktimer = 0;
			talkmax = 5;
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
			tired = false;
			attacks = false;
			dodgetimer = 0;
			candodge = false;
			con = 0;
			battlecancel = 0;
			nexttry = false;
			mytarget = 3;
			checkhp1 = global.hp[1];
			checkhp2 = global.hp[2];
			firstturn = 0;
		}

		public override void Alarm_4()
		{
			actcon += 1;
		}

		public override void Draw_0()
		{
			if (state == 3)
			{
				if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3.0))
				{
					global.monsterstatus[myself] = true;
					if (global.monstercomment[myself] == " ")
						global.monstercomment[myself] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Draw_0_gml_6_0");
				}

				hurttimer -= 1;
				if (hurttimer < 0)
					state = 0;
				else
				{
					if (global.monster[myself] == 0)
					{
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

					draw_sprite_ext("spr_smallchecker_hurt", 0, (x + shakex), y, 2, 2, 0, image_blend, 1);
				}
			}

			if (state == 0)
			{
				siner += 1;
				thissprite = "spr_smallchecker_idle";
				if (global.mercymod[myself] >= global.mercymax[myself])
					thissprite = "spr_smallchecker_run";
				draw_sprite_ext(thissprite, (siner / 3.0), x, y, 2, 2, 0, image_blend, 1);
				if (flash == true)
				{
					fsiner += 1;
					d3d_set_fog(true, c_white, 0, 1);
					draw_sprite_ext(thissprite, (siner / 3.0), x, y, 2, 2, 0, image_blend, (((-(cos((fsiner / 5.0)))) * 0.4) + 0.6));
					d3d_set_fog(false, c_black, 0, 0);
				}
			}

			if (becomeflash == false)
				flash = false;
			becomeflash = false;
		}

		public override void Other_22()
		{
			global.monsterx[myself] = (x + (sprite_width / 2.0));
			global.monstery[myself] = (y + (sprite_height / 2.0));
			scr_monstersetup();
		}

		public override void Step_0()
		{
			if (instance_exists("obj_basicattack"))
			{
				var obj_basicattack = FindObjectOfType<OBJECT_SCRIPTS.obj_basicattack>();
				if (obj_basicattack.sprite_index == "spr_attack_cut1")
					global.flag[211] = 3;

				if (obj_basicattack.sprite_index == "spr_attack_slap1")
					global.flag[211] = 3;
			}

			if (global.monster[myself] == 1)
			{
				global.flag[(51 + myself)] = 4;
				if (global.mnfight == 1 && talked == false)
				{
					scr_randomtarget();
					talked = true;
					talktimer = 0;
				}

				if (talked == true && global.mnfight == 1)
				{
					rtimer = 0;
					if (button1_p() && talktimer > 5)
						talktimer = talkmax;
					talktimer += 1;
					if (talktimer >= talkmax)
						global.mnfight = 2;
				}

				if (global.mnfight == 2 && attacked == false)
				{
					FindObjectOfType<obj_heartblcon>().instance_destroy();
					rtimer += 1;
					if (rtimer == 12)
					{
						rr = scr_monsterpop();
						global.turntimer = 1;
						if (rr == 999)
						{
							dc = instance_create(x, y, "obj_spinheart");
							dc.type = 0;
							dc.target = mytarget;
							dc.damage = (global.monsterat[myself] * 5);
						}

						turns += 1;
						attacked = true;
						global.typer = 6;
						global.fc = 0;
						rr = choose(0);
						if (rr == 0)
							global.battlemsg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_83_0");
					}
					else
						global.turntimer = 1;
				}

				if (global.mnfight == 2)
				{
					if (global.turntimer <= 1)
					{
						if (instance_exists("obj_hathyfightevent") && firstturn == 0)
						{
							if (checkhp1 <= global.hp[1])
							{
								if (checkhp2 <= global.hp[2])
								{
									FindObjectOfType<obj_battlecontroller>().noreturn = true;
									FindObjectOfType<obj_hathyfightevent>().con = 15;
								}
							}
						}

						firstturn = 1;
						if (battlecancel == 1)
							global.mercymod[myself] = 999;
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
					global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_127_0");
					scr_battletext_default();
				}

				if (acting == 2 && actcon == 0)
				{
					global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_136_0");
					scr_susface(1, 0);
					global.msg[2] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_138_0");
					global.msg[3] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_139_0");
					scr_ralface(4, 0);
					global.msg[5] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_141_0");
					global.msg[6] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_142_0");
					scr_susface(7, 0);
					global.msg[8] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_144_0");
					global.msg[9] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_145_0");
					global.msg[10] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_146_0");
					global.msg[11] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_147_0");
					actcon = 5;
					scr_battletext_default();
				}

				if (acting == 3 && actcon == 0)
				{
					actcon = 5;
					global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_155_0");
					scr_susface(1, 0);
					global.msg[2] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_157_0");
					scr_ralface(3, 6);
					global.msg[4] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_159_0");
					scr_susface(5, 0);
					global.msg[6] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_161_0");
					global.msg[7] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_162_0");
					global.msg[8] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_163_0");
					scr_ralface(9, 8);
					global.msg[10] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_165_0");
					scr_susface(11, 0);
					global.msg[12] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_167_0");
					global.msg[13] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_168_0");
					scr_ralface(14, 0);
					global.msg[15] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_170_0");
					scr_susface(16, 4);
					global.msg[17] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_172_0");
					global.monstercomment[myself] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_174_0");
					global.automiss[0] = true;
					scr_battletext_default();
				}

				if (actcon == 1 && (!instance_exists("obj_writer")))
				{
					actcon = 0;
					scr_attackphase();
				}

				if (actcon == 5 && instance_exists("obj_writer") == 0)
				{
					global.battleat[1] = 90;
					global.battleat[2] = 90;
					actcon = 6;
					var obj_herosusie = FindObjectOfType<obj_herosusie>();
					obj_herosusie.attacktimer = 0;
					obj_herosusie.state = 1;
					obj_herosusie.points = (100 + round(random(40)));
					global.faceaction[obj_herosusie.myself] = 0;
					if (global.automiss[0] == true)
						obj_herosusie.points = 0;
					if (global.automiss[0] == true)
					{
						hspeed = 5;
						global.mercymod[myself] = 200;
					}

					alarm[4] = 50;
				}

				if (actcon == 7)
				{
					global.monster[myself] = 0;
					global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_217_0");
					scr_ralface(1, 3);
					global.flag[211] = 1;
					global.msg[2] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_220_0");
					if (global.automiss[0] == true)
					{
						global.flag[211] = 2;
						global.msg[0] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_224_0");
						scr_ralface(1, 3);
						global.msg[2] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_226_0");
						global.msg[3] = scr_84_get_lang_string("obj_smallcheckers_enemy_slash_Step_0_gml_227_0");
					}

					scr_battletext();
					actcon = 1;
				}
			}

			if (global.myfight == 7)
				hspeed = 15;
		}
	}
}
