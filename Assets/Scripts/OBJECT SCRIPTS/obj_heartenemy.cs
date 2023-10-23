using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_heartenemy : obj_monsterparent
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
			image_xscale = 2;
			image_yscale = 2;
			idlesprite = "spr_heartenemy_idle";
			hurtsprite = "spr_heartenemy_hurt";
			sparedsprite = "spr_heartenemy_spared";
		}

		public override void Alarm_4()
		{
			actcon += 1;
		}

		public override void Draw_0()
		{
			if (state == 3)
			{
				if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
				{
					global.monsterstatus[myself] = true;
					if (global.monstercomment[myself] == " ")
						global.monstercomment[myself] = scr_84_get_lang_string("obj_heartenemy_slash_Draw_0_gml_6_0");
				}

				hurttimer -= 1;
				if (hurttimer < 0)
					state = 0;
				else
				{
					if (global.monster[myself] == 0)
					{
						if (global.flag[(51 + myself)] == 5)
							global.flag[524] += 1;
						global.flag[521] += 1;
						scr_defeatrun();
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

					draw_sprite_ext("spr_heartenemy_hurt", 0, (x + shakex), y, 2, 2, 0, image_blend, 1);
				}
			}

			if (state == 0)
			{
				siner += 1;
				thissprite = "spr_heartenemy_idle";
				if (global.mercymod[myself] >= global.mercymax[myself])
					thissprite = "spr_heartenemy_spared";
				draw_sprite_ext(thissprite, (siner / 5.0), x, y, 2, 2, 0, image_blend, 1);
				if (flash == true)
				{
					fsiner += 1;
					d3d_set_fog(true, c_white, 0, 1);
					draw_sprite_ext(thissprite, (siner / 5.0), x, y, 2, 2, 0, image_blend, (((-(cos((fsiner / 5.0)))) * 0.4) + 0.6));
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
			if (global.monster[myself] == 1)
			{
				if (global.mnfight == 1 && talked == false)
				{
					scr_randomtarget();
					if (!instance_exists("obj_darkener"))
						instance_create(0, 0, "obj_darkener");
					hb = instance_create((x - 100), y, "obj_heartblcon");
					hb.sprite_index = choose("spr_heartblcon_0", "spr_heartblcon_1");
					if (acting == 2)
						hb.sprite_index = "spr_heartblcon_2";
					if (acting == 3)
						hb.sprite_index = "spr_heartblcon_3";
					talked = true;
					talktimer = 0;
				}

				if (talked == true && global.mnfight == 1)
				{
					rtimer = 0;
					if (button1_p() && talktimer > 15)
						talktimer = talkmax;
					talktimer += 1;
					if (talktimer >= talkmax)
					{
						foreach (var item in with<obj_heartblcon>())
						{
							item.instance_destroy();
						}
						global.mnfight = 2;
					}

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
					foreach (var item in with<obj_heartblcon>())
					{
						item.instance_destroy();
					}

					rtimer += 1;
					if (rtimer == 12)
					{
						rr = scr_monsterpop();
						global.turntimer = 140;
						if (rr == 1)
						{
							dc = instance_create(x, y, "obj_spinheart");
							dc.type = 0;
							dc.target = mytarget;
							dc.damage = (global.monsterat[myself] * 5);
						}
						else
						{
							dc = instance_create(x, y, "obj_heartshaper");
							dc.type = 0;
							dc.target = mytarget;
							dc.damage = (global.monsterat[myself] * 5);
							if (global.encounterno == 9)
								global.turntimer = 100;
						}

						turns += 1;
						attacked = true;
						global.typer = 6;
						global.fc = 0;
						rr = choose(0, 1, 2, 3, 4);
						if (rr == 0)
							global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_79_0");
						if (rr == 1)
							global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_80_0");
						if (rr == 2)
							global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_81_0");
						if (rr == 3)
							global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_82_0");
						if (rr == 4)
							global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_83_0");
						if (global.monsterstatus[myself] == true)
							global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_84_0");
						if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
							global.battlemsg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_85_0");
						if (global.mercymod[myself] >= global.mercymax[myself])
							global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_86_0");
					}
					else
						global.turntimer = 120;
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
					global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_127_0");
					scr_battletext_default();
				}

				if (acting == 2 && actcon == 0)
				{
					rr = choose(0, 1, 2);
					global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_136_0");
					if (rr == 1)
						global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_137_0");
					if (rr == 2)
						global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_138_0");
					scr_mercyadd(myself, 100);
					scr_battletext_default();
					battlecancel = 1;
					actcon = 1;
				}

				if (acting == 3 && actcon == 0)
				{
					global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_147_0");
					scr_ralface(1, 0);
					rr = choose(0, 1, 2);
					global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_150_0");
					if (rr == 1)
						global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_151_0");
					if (rr == 2)
						global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_152_0");
					scr_mercyadd(0, 100);
					scr_mercyadd(1, 100);
					scr_mercyadd(2, 100);
					actcon = 1;
					scr_battletext_default();
				}

				if (acting == 4 && actcon == 0)
				{
					actcon = 1;
					if (global.plot < 150)
					{
						global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_168_0");
						if (scr_monsterpop() > 1)
							global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_170_0");
						for (i = 0; i < 3; i += 1)
						{
							global.monstercomment[i] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_173_0");
							global.automiss[i] = true;
						}
					}
					else
					{
						global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_179_0");
						scr_susface(1, 2);
						rr = choose(0, 1, 2);
						global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_182_0");
						global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_183_0");
						if (rr == 1)
							global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_184_0");
						if (rr == 2)
							global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_185_0");
						scr_mercyadd(0, 100);
						scr_mercyadd(1, 100);
						scr_mercyadd(2, 100);
					}

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
					if (obj_herosusie != null)
					{
						obj_herosusie.attacktimer = 0;
						obj_herosusie.state = 1;
						obj_herosusie.points = (100 + round(random(40)));
						global.faceaction[obj_herosusie.myself] = 0;
						if (global.automiss[0] == true)
							obj_herosusie.points = 0;
					}

					alarm[4] = 50;
				}

				if (actcon == 7)
				{
					global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_223_0");
					scr_ralface(1, 3);
					global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_225_0");
					if (global.automiss[0] == true)
					{
						global.msg[0] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_228_0");
						scr_ralface(1, 3);
						global.msg[2] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_230_0");
						global.msg[3] = scr_84_get_lang_string("obj_heartenemy_slash_Step_0_gml_231_0");
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
