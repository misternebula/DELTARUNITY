using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_attackpress : GamemakerObject
	{
		public override void Create()
		{
			active = false;
			fastmode = true;
			if (fastmode == true)
				active = true;
			goahead = false;
			linespeed = 2;
			linex = -10;
			spelluse = false;
			spelldelay[0] = 10;
			spelldelay[1] = 10;
			spelldelay[2] = 10;
			maxdelay = 0;
			maxdelaytimer = 0;
			if (spelluse == false)
			{
				for (xyz = 0; xyz < 3; xyz += 1)
				{
					havechar[xyz] = false;
					charitem[xyz] = 0;
					charspell[xyz] = 0;
					if (global.charaction[xyz] == 1)
						havechar[xyz] = true;
					if (global.charaction[xyz] == 4 || global.charaction[xyz] == 2)
					{
						if (maxdelay == 0)
							maxdelay = 25;
						maxdelay += 15;
						if (xyz == 2 && spelluse == true)
						{
							if (spelldelay[1] == 25)
								spelldelay[2] = 45;
							else
								spelldelay[2] = 25;
						}

						if (xyz == 1 && spelluse == true)
							spelldelay[1] = 25;
						spelluse = true;
						if (global.charaction[xyz] == 4)
							charitem[xyz] = 1;
						else
							charspell[xyz] = 1;
					}
				}
			}

			spelluse = false;
			fade = 0;
			fadeamt = 0;
			fakefade = 0;
			bcolor = c_navy;
			charcolor[0] = c_aqua;
			charcolor[1] = c_fuchsia;
			charcolor[2] = c_lime;
			target = 0;
			global.hittarget[0] = global.chartarget[0];
			global.hittarget[1] = global.chartarget[1];
			global.hittarget[2] = global.chartarget[2];
			boltcolor[0] = merge_color(c_aqua, c_white, 0.5);
			boltcolor[1] = merge_color(c_fuchsia, c_white, 0.5);
			boltcolor[2] = merge_color(c_lime, c_white, 0.5);
			imagetimer = 0;
			posttimer = 0;
			timermax = 50;
			if (havechar[0] == false && havechar[1] == false && havechar[2] == false)
			{
				timermax = 3;
				if (spelluse == true && fastmode == true)
					timermax += maxdelay;
			}

			boltorder[0] = choose(0, 1, 2);
			if (havechar[1] == false && havechar[2] == false)
				boltorder[0] = 0;
			if (boltorder[0] == 2)
				boltorder[1] = choose(0, 1);
			if (boltorder[0] == 1)
				boltorder[1] = choose(0, 2);
			if (boltorder[0] == 0)
				boltorder[1] = choose(1, 2);
			if (boltorder[1] == 2 && boltorder[0] == 0)
				boltorder[2] = 1;
			if (boltorder[1] == 0 && boltorder[0] == 2)
				boltorder[2] = 1;
			if (boltorder[1] == 1 && boltorder[0] == 0)
				boltorder[2] = 2;
			if (boltorder[1] == 0 && boltorder[0] == 1)
				boltorder[2] = 2;
			if (boltorder[1] == 2 && boltorder[0] == 1)
				boltorder[2] = 0;
			if (boltorder[1] == 1 && boltorder[0] == 2)
				boltorder[2] = 0;
			if (havechar[1] == true && havechar[2] == false)
			{
				boltorder[0] = choose(0, 1);
				if (boltorder[0] == 1)
					boltorder[2] = 0;
				else
					boltorder[2] = 1;
			}

			boltgap = 20;
			boltspeed = 8;
			boltx = 0;
			points[0] = 0;
			points[1] = 0;
			points[2] = 0;
			pressbuffer[0] = 0;
			pressbuffer[1] = 0;
			pressbuffer[2] = 0;
			pressbuffer[3] = 0;
			charbolt[0] = 1;
			charbolt[1] = 1;
			charbolt[2] = 1;
			for (i = 0; i < 3; i += 1)
			{
				if (havechar[i] == false)
					charbolt[i] = 0;
			}

			attacked[0] = false;
			attacked[1] = false;
			attacked[2] = false;
			bolttotal = ((charbolt[0] + charbolt[1]) + charbolt[2]);
			boltxoff = 0;
			method = 1;
			boltnum = 1;
			boltuse[0] = 0;
			boltuse[1] = 0;
			boltuse[2] = 0;
			lastbolt = -1;
			boltchar[0] = -1;
			diff = 10;
			if (global.flag[13] == 0)
				diff += 2;
			if (method == 1)
			{
				for (i = 0; i < bolttotal; i += 1)
				{
					boltalive[i] = 1;
					c = choose(0, 1, 2);
					while (havechar[c] == false)
						c = choose(0, 1, 2);
					while (boltuse[c] >= charbolt[c])
					{
						c = choose(0, 1, 2);
						while (havechar[c] == false)
							c = choose(0, 1, 2);
					}

					boltchar[i] = c;
					boltuse[c] += 1;
				}

				for (i = 0; i < bolttotal; i += 1)
				{
					boltred[i] = 0;
					boltxoff += lastbolt;
					boltframe[i, 0] = (30 + boltxoff);
					if (i < (bolttotal - 1))
					{
						if (lastbolt != 0 && boltchar[i] != boltchar[(i + 1)])
						{
							lastbolt = choose(0, diff, (int)(diff * 1.5));
							boltred[i] = 1;
						}
						else
							lastbolt = choose(diff, (int)(diff * 1.5));
					}
					else
						lastbolt = choose(diff, (int)(diff * 1.5));
				}
			}

			if (method == 2)
			{
				for (c = 0; c < 3; c += 1)
				{
					if (havechar[c] == true)
					{
						for (i = 0; i < boltnum; i += 1)
						{
							boltframe[i, c] = ((30 + (boltorder[c] * boltgap)) + (i * choose(5, 10, 15)));
							if (i == 2)
							{
								if (boltframe[i, 2] == boltframe[i, 0] && boltframe[i, 2] == boltframe[i, 1])
									boltframe[i, 2] += 10;
							}
						}
					}
				}
			}

			haveauto = false;
			autoed = false;

			if (global.charauto[2] == true)
			{
				if (global.chara[0] == 2 || global.chara[1] == 2 || global.chara[2] == 2)
				{
					sus = 0;
					if (global.chara[1] == 2)
						sus = 1;
					if (global.chara[2] == 2)
						sus = 2;
					if (global.hp[2] >= 0 && global.charmove[sus] == true)
					{
						haveauto = true;
						if (timermax == 3)
							timermax = 50;
					}
				}
			}
		}

		public override void Draw_0()
		{
			maxdelaytimer += 1;
			if (spelluse == true)
			{
				if (scr_monsterpop() > 0)
				{
					for (xyz = 0; xyz < 3; xyz += 1)
					{
						if (maxdelaytimer == spelldelay[xyz])
						{
							if (charitem[xyz] == 1)
							{
								global.charinstance[xyz].state = 4;
							}

							if (charspell[xyz] == 1)
							{
								global.charinstance[xyz].state = 2;
							}
						}
					}
				}
			}

			if (maxdelaytimer >= maxdelay)
				active = true;

			if (active == true)
			{
				for (i = 0; i < 3; i += 1)
				{
					draw_set_color(bcolor);

					if (i == 1 || i == 2)
						draw_rectangle(x, (y + (38 * i)), (x + 300), ((y + (38 * i)) + 2), false);

					if (global.chara[i] != 0 && global.charauto[global.chara[i]] == false && havechar[i] == true)
					{
						j = global.chara[i];
						fullbox = 0;
						if (j == 1)
						{
							draw_set_color(c_blue);
							if (pressbuffer[1] > 0)
								draw_set_color(merge_color(c_blue, c_white, (pressbuffer[1] / 5d)));
						}

						if (j == 2)
						{
							draw_set_color(c_purple);
							if (pressbuffer[2] > 0)
								draw_set_color(merge_color(c_purple, c_white, (pressbuffer[2] / 5d)));
						}

						if (j == 3)
						{
							draw_set_color(c_green);
							if (pressbuffer[3] > 0)
								draw_set_color(merge_color(c_green, c_white, (pressbuffer[3] / 5d)));
						}

						draw_rectangle((x + 78), (y + (38 * i)), ((x + 80) + (15 * boltspeed)), ((y + (38 * i)) + 36), true);
						draw_rectangle((x + 79), ((y + (38 * i)) + 1), (((x + 80) + (15 * boltspeed)) - 1), ((y + (38 * i)) + 35), true);
						draw_sprite("spr_pressfront", (j - 1), x, (y + (38 * i)));
						if (global.flag[13] == 0)
							draw_sprite("spr_pressfront_b", 0, x, (y + (38 * i)));
						if (global.flag[13] == 1)
							draw_sprite("spr_pressfront_b", i, x, (y + (38 * i)));
						draw_sprite("spr_pressspot", (j - 1), (x + 80), (y + (38 * i)));
					}
				}

				boltcount[0] = 0;
				boltcount[1] = 0;
				boltcount[2] = 0;
				if (method == 1)
				{
					for (i = 0; i < bolttotal; i += 1)
					{
						offset = boltchar[i];
						if ((boltframe[i, 0] - boltx) < -5)
							boltalive[i] = 0;
						boltalpha = 1;
						if ((boltframe[i, 0] - boltx) < 0)
							boltalpha = (1 + ((boltframe[i, 0] - boltx) / 3d));
						else if (imagetimer == 0 && boltalive[i] == 1)
						{
							img = instance_create((((x + 80) + (boltframe[i, 0] * boltspeed)) - (boltx * boltspeed)), (y + (38 * offset)), "obj_afterimage");
							img.sprite_index = "spr_attackspot";
							img.image_alpha = 0.4;
						}

						if (boltalive[i] == 1)
						{
							draw_sprite_ext("spr_attackspot", 0, (((x + 80) + (boltframe[i, 0] * boltspeed)) - (boltx * boltspeed)), (y + (38 * offset)), 1, 1, 0, c_white, boltalpha);
							boltcount[boltchar[i]] += 1;
						}
					}

					for (i = 0; i < 3; i += 1)
					{
						if (boltcount[i] == 0 && havechar[i] == true && attacked[i] == false)
						{
							attacked[i] = true;
							target = i;
							event_user(1);
						}
					}
				}

				if (scr_monsterpop() > 0)
				{
					if (global.flag[13] == 1)
					{
						if (button1_p() && havechar[0] == true)
							scr_boltcheck(0);
						if (button2_p() && havechar[1] == true)
							scr_boltcheck(1);
						if (button3_p() && havechar[2] == true)
							scr_boltcheck(2);
					}
					else if (button1_p())
						scr_boltcheck_onebutton(0);
				}
				else
				{
					fakefade = 1;
					if (posttimer < (timermax - 35))
						posttimer = (timermax - 34);
				}

				imagetimer += 1;
				boltx += 1;
				pressbuffer[0] -= 1;
				pressbuffer[1] -= 1;
				pressbuffer[2] -= 1;
				if (imagetimer > 1)
					imagetimer = 0;
				goahead = false;
				if (attacked[0] == true || havechar[0] == false)
				{
					if (attacked[1] == true || havechar[1] == false)
					{
						if (attacked[2] == true || havechar[2] == false)
							goahead = true;
					}
				}

				if (scr_monsterpop() == 0)
					goahead = true;

				if (goahead == true)
				{
					posttimer += 1;
					if (posttimer > (timermax - 35) && haveauto == true && autoed == false && scr_monsterpop() > 0)
					{
						global.charinstance[sus].points = 160;
						if (global.automiss[global.chartarget[sus]] == true)
							global.charinstance[sus].points = 0;
						global.charinstance[sus].state = 1;
						global.charinstance[sus].attacktimer = 0;
						global.charinstance[sus].is_auto_susie = true;
						posttimer -= 25;
						autoed = true;
					}

					if (posttimer > timermax)
					{
						fade = 1;
						foreach (var item in with<obj_heroparent>())
						{
							if (item.state == 1)
								item.state = 0;
							item.attacked = false;
							item.itemed = false;
						}

						techwon = false;
						if (scr_monsterpop() == 0)
							techwon = true;
						if (techwon == false)
						{
							global.mnfight = 1;
							global.myfight = -1;
						}
						else
							scr_wincombat();
					}
				}

				if (fade == 1 || fakefade == 1)
				{
					fadeamt += 0.08;
					draw_set_color(c_black);
					draw_set_alpha(fadeamt);
					draw_rectangle((x - 1), (y - 1), (x + 640), (y + 300), false);
					draw_set_alpha(1);
					if (fade == 1)
					{
						if (fadeamt > 1)
							instance_destroy();
					}
				}
			}
		}

		public override void Other_11()
		{
			if (scr_monsterpop() > 0)
			{
				for (i = 0; i < 3; i += 1)
				{
					if (target == i)
					{
						if (instance_exists(global.charinstance[i]))
						{
							global.charinstance[i].points = points[i];
							global.charinstance[i].state = 1;
							global.charinstance[i].attacktimer = 0;
						}
					}
				}
			}
		}
	}
}
