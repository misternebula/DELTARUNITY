using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_jigsawryenemy : obj_monsterparent
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
			image_speed = 0;
			image_xscale = 2;
			image_yscale = 2;
			idlesprite = "spr_jigsawry_idle";
			hurtsprite = "spr_jigsawry_hurt";
			sparedsprite = "spr_jigsawry_spared";
			global.flag[20] = 0;
			traitorp = 0;
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Other_21()
		{
			if (room == "room_field1")
				global.flag[500] += 1;
			if (room == "room_field2")
			{
				if (global.flag[50] != 0)
					global.flag[501] = global.flag[50];
			}
		}

		public override void Other_22()
		{
			global.monsterx[myself] = (x + (sprite_width / 2.0));
			global.monstery[myself] = (y + (sprite_height / 2.0));
			scr_monstersetup();
		}

		public override void Draw_0()
		{
			if (state == 3)
			{
				global.mercymod[myself] = 0;
				traitorp = 1;
				global.flag[20] = 1;
				foreach (var item in with<obj_jigsawryenemy>())
				{
					if (item.traitorp == 0)
						item.traitorp = 2;
					global.mercymod[item.myself] = 0;
				}
				if (global.monsterhp[myself] <= (global.monstermaxhp[myself] - 20))
				{
					global.monsterstatus[myself] = true;
					if (global.monstercomment[myself] == " ")
						global.monstercomment[myself] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Draw_0_gml_15_0");
				}

				hurttimer -= 1;
				if (hurttimer < 0)
					state = 0;
				else
				{
					if (global.monster[myself] == 0)
						scr_defeatrun();
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

					draw_sprite_ext(hurtsprite, 0, (x + shakex), y, 2, 2, 0, image_blend, 1);
				}
			}

			if (state == 0)
			{
				siner += 1;
				thissprite = idlesprite;
				if (global.mercymod[myself] >= global.mercymax[myself])
					thissprite = sparedsprite;
				if (global.flag[20] == 1)
					thissprite = hurtsprite;
				draw_sprite_ext(thissprite, (siner / 6.0), x, y, 2, 2, 0, image_blend, 1);
				if (flash == true)
				{
					fsiner += 1;
					d3d_set_fog(true, c_white, 0, 1);
					draw_sprite_ext(thissprite, (siner / 6.0), x, y, 2, 2, 0, image_blend, (((-(cos((fsiner / 5.0)))) * 0.4) + 0.6));
					d3d_set_fog(false, c_black, 0, 0);
				}
			}

			if (becomeflash == false)
				flash = false;
			becomeflash = false;
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
					global.typer = 50;
					rr = choose(0, 1, 2, 3);
					if (rr == 0)
						global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_11_0");
					if (rr == 1)
						global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_12_0");
					if (rr == 2)
						global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_13_0");
					if (rr == 3)
						global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_14_0");
					if (global.mercymod[myself] >= 100)
					{
						if (rr == 0 || rr == 1)
							global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_18_0");
						if (rr == 2 || rr == 3)
							global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_19_0");
					}

					if (traitorp == 1)
					{
						if (rr == 0 || rr == 1)
							global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_24_0");
						if (rr == 2 || rr == 3)
							global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_25_0");
					}

					if (traitorp == 2)
					{
						if (rr == 0 || rr == 1)
							global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_29_0");
						if (rr == 2 || rr == 3)
							global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_30_0");
					}

					traitorp = 0;
					scr_enemyblcon((x - 160), y, 3);
					talked = true;
					talktimer = 0;
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
						global.flag[20] = 0;
						rr = choose(0);
						if (rr == 0)
						{
							tellme = 0;
							var obj_dbulletcontroller = FindObjectOfType<obj_dbulletcontroller>();
							if (obj_dbulletcontroller != null)
							{
								if (obj_dbulletcontroller.type >= 80 && obj_dbulletcontroller.type <= 84)
									tellme = 1;
							}
							
							if (tellme == 0)
							{
								dc = instance_create(x, y, "obj_dbulletcontroller");
								dc.grazepoints = 4;
								dc.timepoints = 2;
								metotal = 0;
								for (i = 0; i < 3; i += 1)
								{
									if (global.monstertype[i] == 15 && global.monster[i] == 1)
										metotal += 1;
								}

								dc.type = (80 + metotal);
								dc.target = mytarget;
								dc.damage = (global.monsterat[myself] * 5);
							}
						}

						turns += 1;
						global.turntimer = 140;
						attacked = true;
						global.typer = 6;
						global.fc = 0;
						rr = choose(0, 1, 2, 3, 4);
						if (rr == 0)
							global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_89_0");
						if (rr == 1)
							global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_90_0");
						if (rr == 2)
							global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_91_0");
						if (rr == 3)
							global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_92_0");
						if (rr == 4)
							global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_93_0");
						if (global.monsterstatus[myself] == true)
							global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_94_0");
						if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
							global.battlemsg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_95_0");
						if (global.mercymod[myself] >= global.mercymax[myself])
							global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_96_0");
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

			if (global.myfight == 3)
			{
				xx = __view_get(0, 0);
				yy = __view_get(1, 0);
				if (acting == 1 && actcon == 0)
				{
					actcon = 1;
					global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_129_0");
					scr_battletext_default();
				}

				if (acting == 2 && actcon == 0)
				{
					global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_136_0");
					scr_battletext_default();
					actcon = 3;
				}

				if (actcon == 3 && (!instance_exists("obj_writer")))
				{
					foreach (var item in with<obj_jigsawryenemy>())
					{
						item.scr_mercyadd(item.myself, 100);
					}

					rr = choose(0, 1, 2, 3);
					global.typer = 50;
					if (rr == 0)
						global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_152_0");
					if (rr == 1)
						global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_153_0");
					if (rr == 2)
						global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_154_0");
					if (rr == 3)
						global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_155_0");
					scr_enemyblcon((x - 160), y, 3);
					actcon = 1;
				}

				if (acting == 3 && actcon == 0)
				{
					actcon = 1;
					global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_164_0");
					if (scr_monsterpop() > 1)
						global.msg[0] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_166_0");
					for (i = 0; i < 3; i += 1)
					{
						global.monstercomment[i] = scr_84_get_lang_string("obj_jigsawryenemy_slash_Step_0_gml_169_0");
						global.automiss[i] = true;
					}

					scr_battletext_default();
				}

				if (actcon == 1 && (!instance_exists("obj_writer")))
				{
					actcon = 0;
					scr_attackphase();
				}
			}
		}
	}
}
