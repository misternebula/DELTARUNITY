using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_heroparent : GamemakerObject
	{
		public override void Create()
		{
			chara = 0;
			myself = 0;
			points = 0;
			becomeflash = false;
			state = 0;
			flash = false;
			siner = 0;
			fsiner = 0;
			attacktimer = 0;
			attacked = false;
			combatdarken = true;
			darkentimer = 0;
			darkify = false;
			image_xscale = 2;
			image_yscale = 2;
			myheight = 37;
			mywidth = 34;
			index = 0;
			specdraw = 0;
			is_auto_susie = false;
			normalsprite = "spr_krisr_dark";
			idlesprite = "spr_krisb_idle";
			actreadysprite = "spr_krisb_actready";
			actsprite = "spr_krisb_act";
			hurtsprite = "spr_krisb_hurt";
			defendsprite = "spr_krisb_attackready";
			attackreadysprite = "spr_krisb_attackready";
			attacksprite = "spr_krisb_attack";
			itemsprite = "spr_krisb_item";
			itemreadysprite = "spr_krisb_itemready";
			spellreadysprite = "spr_ralseib_spellready";
			spellsprite = "spr_ralseib_spell";
			defeatsprite = "spr_krisb_defeat";
			victorysprite = "spr_krisb_victory";
			victoryanim = 0;
			actframes = 7;
			victoryframes = 9;
			defendframes = 1;
			itemframes = 3;
			attackframes = 3;
			attackspeed = 0.5;
			actframes = 7;
			actreturnframes = 10;
			spellframes = 10;
			hurt = false;
			hurttimer = 0;
			hurtindex = 0;
			acttimer = 0;
			defendtimer = 0;
			itemed = false;
			tu = 0;
			if (object_index == "obj_herokris")
			{
				normalsprite = "spr_krisr_dark";
				idlesprite = "spr_krisb_idle";
				defendsprite = "spr_krisb_defend";
				hurtsprite = "spr_krisb_hurt";
				attackreadysprite = "spr_krisb_attackready";
				attacksprite = "spr_krisb_attack";
				itemsprite = "spr_krisb_item";
				actreadysprite = "spr_krisb_actready";
				actsprite = "spr_krisb_act";
				itemreadysprite = "spr_krisb_itemready";
				spellreadysprite = "spr_krisb_actready";
				spellsprite = "spr_krisb_act";
				defeatsprite = "spr_krisb_defeat";
				victorysprite = "spr_krisb_victory";
				actframes = 7;
				actreturnframes = 10;
				attackframes = 6;
				itemframes = 6;
				defendframes = 5;
				spellframes = 10;
				attackspeed = 0.5;
				victoryframes = sprite_get_number(victorysprite);
				mywidth = 68;
				myheight = 74;
			}

			if (object_index == "obj_herosusie")
			{
				attackframes = 5;
				itemframes = 5;
				defendframes = 5;
				actframes = 7;
				actreturnframes = 10;
				spellframes = 8;
				attackspeed = 0.5;
				normalsprite = "spr_susier_dark";
				idlesprite = "spr_susieb_idle";
				defendsprite = "spr_susieb_defend";
				hurtsprite = "spr_susieb_hurt";
				actreadysprite = "spr_susieb_actready";
				actsprite = "spr_susieb_act";
				attackreadysprite = "spr_susieb_attackready";
				attacksprite = "spr_susieb_attack";
				if (global.charweapon[2] == 0)
				{
					idlesprite = "spr_susieb_idle_unarmed";
					attackreadysprite = "spr_susieb_attackready_unarmed";
					attacksprite = "spr_susieb_attack_unarmed";
				}

				itemsprite = "spr_susieb_item";
				itemreadysprite = "spr_susieb_itemready";
				spellreadysprite = "spr_susieb_spellready";
				spellsprite = "spr_susieb_spell";
				defeatsprite = "spr_susieb_defeat";
				victorysprite = "spr_susieb_victory";
				victoryframes = sprite_get_number(victorysprite);
				mywidth = 70;
				myheight = 82;
			}

			if (object_index == "obj_heroralsei")
			{
				attackframes = 5;
				itemframes = 7;
				defendframes = 6;
				actframes = 7;
				actreturnframes = 10;
				attackspeed = 0.5;
				normalsprite = "spr_ralseir";
				idlesprite = "spr_ralseib_idle";
				defendsprite = "spr_ralseib_defend";
				hurtsprite = "spr_ralsei_shock";
				attackreadysprite = "spr_ralseib_attackready";
				attacksprite = "spr_ralseib_attack";
				itemsprite = "spr_ralseib_item";
				itemreadysprite = "spr_ralseib_itemready";
				spellreadysprite = "spr_ralseib_spellready";
				spellsprite = "spr_ralseib_spell";
				defeatsprite = "spr_ralseib_defeat";
				victorysprite = "spr_ralseib_victory";
				actreadysprite = "spr_ralseib_actready";
				actsprite = "spr_ralseib_act";
				victoryframes = sprite_get_number(victorysprite);
				mywidth = 52;
				myheight = 86;
			}
		}

		public override void Alarm_1()
		{
			global.faceaction[myself] = 0;
			scr_retarget(myself);
			if (cancelattack == false)
			{
				dm = instance_create(global.monsterx[global.chartarget[myself]], ((global.monstery[global.chartarget[myself]] - (global.hittarget[global.chartarget[myself]] * 20)) + 20), "obj_dmgwriter");
				dm.type = (chara - 1);
				dm.delay = 8;
				damage = round((((global.battleat[myself] * points) / 20d) - (global.monsterdf[global.chartarget[myself]] * 3)));
				if (global.monstertype[global.chartarget[myself]] == 19)
					damage = ceil((damage * 0.3));
				if (damage < 0)
					damage = 0;
				if (damage == 0)
				{
					dm.delay = 2;
					if (global.monsterinstance[global.chartarget[myself]] != null)
					{
						if (global.monsterinstance[global.chartarget[myself]].hurttimer <= 15 && global.monsterinstance[global.chartarget[myself]].candodge == true)
						{
							global.monsterinstance[global.chartarget[myself]].dodgetimer = 0;
							global.monsterinstance[global.chartarget[myself]].state = 4;
						}
					}
				}
				dm.damage = damage;
				global.hittarget[global.chartarget[myself]] += 1;
				global.monsterhp[global.chartarget[myself]] -= damage;
				if (is_auto_susie == true && global.monsterhp[global.chartarget[myself]] <= 0)
				{
					global.flag[(51 + myself)] = 5;
				}

				if (damage > 0)
				{
					if (global.monstertype[0] != 20)
						scr_tensionheal(round((points / 10d)));
					if (global.monstertype[0] == 20)
						scr_tensionheal(round((points / 15d)));
					attack = instance_create((global.monsterx[global.chartarget[myself]] + random(6)), (global.monstery[global.chartarget[myself]] + random(6)), "obj_basicattack");
					if (object_index == "obj_herosusie")
					{
						attack.sprite_index = "spr_attack_mash2";
						attack.image_speed = 0.5;
						attack.maxindex = 4;
						snd_play("snd_impact");
						instance_create(0, 0, "obj_shake");
					}

					if (object_index == "obj_heroralsei")
					{
						attack.sprite_index = "spr_attack_slap1";
						attack.maxindex = 4;
						attack.image_speed = 0.5;
					}

					if (points == 150)
					{
						attack.image_xscale = 2.5;
						attack.image_yscale = 2.5;
					}

					if (global.monsterinstance[global.chartarget[myself]] != null)
					{
						global.monsterinstance[global.chartarget[myself]].shakex = 9;
						global.monsterinstance[global.chartarget[myself]].state = 3;
						global.monsterinstance[global.chartarget[myself]].hurttimer = 30;
					}

					if (instance_exists(global.monsterinstance[global.chartarget[myself]]))
						global.monsterinstance[global.chartarget[myself]].hurtamt = damage;
				}

				if (global.monsterhp[global.chartarget[myself]] <= 0)
				{
					if (global.monsterinstance[global.chartarget[myself]] != null)
					{
						global.monsterinstance[global.chartarget[myself]].scr_monsterdefeat();
					}
				}
			}
		}

		public override void Alarm_4()
		{
			global.faceaction[myself] = 0;
			if (scr_monsterpop() > 0)
				scr_spell(global.charspecial[myself], myself);
			state = 0;
			attacktimer = 0;
		}

		public override void Draw_0()
		{
			if (global.hp[global.chara[myself]] > 0)
			{
				if (global.myfight == 3 && global.faceaction[myself] == 6)
					state = 6;
				if (state == 0 && hurt == false)
				{
					acttimer = 0;
					thissprite = idlesprite;
					if (global.faceaction[myself] == 1)
						thissprite = attackreadysprite;
					if (global.faceaction[myself] == 3)
						thissprite = itemreadysprite;
					if (global.faceaction[myself] == 2)
						thissprite = spellreadysprite;
					if (global.faceaction[myself] == 6)
						thissprite = actreadysprite;
					if (global.charcond[myself] == 5)
					{
						thissprite = defeatsprite;
						global.faceaction[myself] = 9;
					}

					if (global.faceaction[myself] == 4)
					{
						thissprite = defendsprite;
						index = defendtimer;
						if (defendtimer < defendframes)
							defendtimer += 0.5;
					}
					else
					{
						defendtimer = 0;
						index = (siner / 5d);
					}

					siner += 1;
				}

				if (state == 1 && hurt == false)
				{
					siner += 1;
					if (attacked == false)
					{
						snd_stop("snd_laz_c");
						if (object_index == "obj_herokris")
							snd_play("snd_laz_c");
						if (object_index == "obj_heroralsei")
						{
							ls = snd_play("snd_laz_c");
							snd_pitch(ls, 1.15);
						}

						if (object_index == "obj_herosusie")
						{
							ls = snd_play("snd_laz_c");
							snd_pitch(ls, 0.9);
						}

						if (points == 150)
						{
							snd_stop("snd_criticalswing");
							snd_play("snd_criticalswing");
							for (int o = 0; o < 3; o++)
							{
								anim = instance_create(((x + mywidth) + random(50)), ((y + 30) + random(30)), "obj_afterimage");
								anim.sprite_index = "spr_lightfairy";
								anim.image_speed = 0.25;
								anim.depth = -20;
								anim.image_xscale = 2;
								anim.image_yscale = 2;
								anim.hspeed = (2 + random(4));
								anim.friction = -0.25;
							}
						}

						attacked = true;
						alarm[1] = 10;
					}

					if (attacktimer < attackframes)
						image_index = (int)attacktimer;
					else
						image_index = attackframes;
					thissprite = attacksprite;
					index = image_index;
					attacktimer += attackspeed;
				}

				if (state == 2 && hurt == false)
				{
					siner += 1;
					if (itemed == false)
					{
						itemed = true;
						alarm[4] = 15;
					}

					if (attacktimer < spellframes)
						image_index = (int)attacktimer;
					else
						image_index = spellframes;
					if (scr_monsterpop() == 0)
						attacktimer = 0;
					thissprite = spellsprite;
					index = image_index;
					attacktimer += 0.5;
				}

				if (state == 4 && hurt == false)
				{
					siner += 1;
					if (itemed == false)
					{
						itemed = true;
						alarm[4] = 15;
					}

					if (attacktimer < itemframes)
						image_index = (int)attacktimer;
					else
						image_index = itemframes;
					if (scr_monsterpop() == 0)
						attacktimer = 0;
					index = image_index;
					thissprite = itemsprite;
					attacktimer += 0.5;
				}

				if (state == 6)
				{
					if (global.myfight == 3)
					{
						if (acttimer < actframes)
							acttimer += 0.5;
					}
					else
						acttimer += 0.5;

					thissprite = actsprite;
					index = acttimer;
					if (acttimer >= actreturnframes)
					{
						acttimer = 0;
						state = 0;
						global.faceaction[myself] = 0;
					}
				}

				if (state == 7)
				{
					hurt = false;
					hurttimer = 0;
					if (victoryanim < victoryframes)
					{
						thissprite = victorysprite;
						index = victoryanim;
						victoryanim += 0.334;
					}
					else
					{
						thissprite = normalsprite;
						index = 0;
					}
				}

				if (hurt == true)
				{
					hurtindex = (hurttimer / 2d);
					if (hurtindex > 2)
						hurtindex = 2;
					if (global.charcond[myself] == 5)
					{
						global.faceaction[myself] = 5;
						global.charmove[myself] = true;
						global.charcond[myself] = 0;
					}

					if (global.faceaction[myself] == 0)
						global.faceaction[myself] = 5;

					if (global.faceaction[myself] != 4)
					{
						specdraw = 1;
						draw_sprite_ext(hurtsprite, hurtindex, ((x - 20) + (hurtindex * 10)), y, 2, 2, 0, image_blend, image_alpha);
					}
					else
					{
						specdraw = 1;
						thissprite = defendsprite;
						index = defendtimer;
						draw_sprite_ext(defendsprite, defendtimer, ((x - 20) + (hurtindex * 10)), y, 2, 2, 0, image_blend, image_alpha);
					}

					if (hurttimer > 15)
					{
						hurttimer = 0;
						hurt = false;
						if (global.faceaction[myself] == 5)
							global.faceaction[myself] = 0;
					}

					hurttimer += 1;
				}
			}
			else
			{
				global.charcond[myself] = 0;
				hurttimer = 0;
				hurt = false;
				thissprite = defeatsprite;
				index = 0;
				siner += 1;
			}

			if (specdraw == 0)
			{
				sprite_index = thissprite;
				image_index = (int)index;
				draw_sprite_ext(thissprite, (int)index, x, y, 2, 2, 0, image_blend, image_alpha);
				if (flash == true)
				{
					fsiner += 1;
					d3d_set_fog(true, c_white, 0, 1);
					draw_sprite_ext(thissprite, (int)index, x, y, 2, 2, 0, image_blend, (((-(cos((fsiner / 5d)))) * 0.4) + 0.6));
					d3d_set_fog(false, c_black, 0, 0);
				}
			}

			specdraw = 0;
			if (becomeflash == false)
				flash = false;
			if (global.targeted[myself] == true)
			{
				if (global.mnfight == 1)
					draw_sprite_ext("spr_chartarget", (int)(siner / 10d), x, y, 2, 2, 0, c_white, 1);
			}
			else if (combatdarken == true && instance_exists("obj_darkener"))
			{
				if (darkify == true)
				{
					if (darkentimer < 15)
						darkentimer += 1;
					image_blend = merge_color(c_white, c_black, (darkentimer / 30d));
				}
			}

			if (darkify == false)
			{
				if (darkentimer > 0)
					darkentimer -= 3;
				image_blend = merge_color(c_white, c_black, (darkentimer / 30d));
			}

			becomeflash = false;
		}
	}
}
