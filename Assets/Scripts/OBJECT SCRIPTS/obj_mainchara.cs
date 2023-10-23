using Assets;
using OBJECT_SCRIPTS.COLLISION;
using OBJECT_SCRIPTS.DOOR;
using OBJECT_SCRIPTS.MARKER;

namespace OBJECT_SCRIPTS
{
	public class obj_mainchara : GamemakerObject
	{
		public override void Create()
		{
			scr_depth();
			alarm[2] = 2;
			global.currentroom = room;
			autorun = 0;
			bg = 0;
			if (instance_exists("obj_backgrounderparent"))
				bg = 1;
			stepping = 0;
			stepped = false;
			battlemode = 0;
			battleheart = instance_create<obj_overworldheart>(x, y, "obj_overworldheart");
			battleheart.image_alpha = 0;
			battleheart.image_speed = 0;
			battlealpha = 0;
			becamebattle = false;
			darkmode = global.darkzone;
			if (darkmode == true)
{
				stepping = 1;
				image_xscale = 2;
				image_yscale = 2;
}
			cutscene = false;
			press_l = 0;
			press_r = 0;
			press_d = 0;
			press_u = 0;
			px = 0;
			py = 0;
			wallcheck = 0;
			wspeed = 3;
			bwspeed = 3;
			if (darkmode == true)
{
				bwspeed = 4;
				wspeed = 4;
}
			run = 0;
			runtimer = 0;
			subxspeed = 0;
			subyspeed = 0;
			subx = 0;
			suby = 0;
			walkanim = 0;
			walkbuffer = 0;
			walktimer = 0;
			image_speed = 0;
			dsprite = "spr_krisd";
			rsprite = "spr_krisr";
			usprite = "spr_krisu";
			lsprite = "spr_krisl";
			if (global.darkzone == true)
{
				dsprite = "spr_krisd_dark";
				rsprite = "spr_krisr_dark";
				lsprite = "spr_krisl_dark";
				usprite = "spr_krisu_dark";
}
			fun = false;
			if (global.facing == 0)
				sprite_index = dsprite;
			if (global.facing == 1)
				sprite_index = rsprite;
			if (global.facing == 2)
				sprite_index = usprite;
			if (global.facing == 3)
				sprite_index = lsprite;
			onebuffer = 0;
			twobuffer = 0;
			threebuffer = 0;
			global.menuno = 0;
			for (i = 0; i < 10; i += 1)
				global.menucoord[i] = 0;
			if (global.interact == 3)
			{
				if (global.entrance > 0)
				{
					global.interact = 0;
					if (global.entrance == 1)
					{
						x = FindObjectOfType<obj_markerA>().x;
						y = FindObjectOfType<obj_markerA>().y;
					}
					if (global.entrance == 2)
					{
						x = FindObjectOfType<obj_markerB>().x;
						y = FindObjectOfType<obj_markerB>().y;
					}
					if (global.entrance == 4)
					{
						x = FindObjectOfType<obj_markerC>().x;
						y = FindObjectOfType<obj_markerC>().y;
					}
					if (global.entrance == 5)
					{
						x = FindObjectOfType<obj_markerD>().x;
						y = FindObjectOfType<obj_markerD>().y;
					}
					if (global.entrance == 6)
					{
						x = FindObjectOfType<obj_markerE>().x;
						y = FindObjectOfType<obj_markerE>().y;
					}
					if (global.entrance == 7)
					{
						x = FindObjectOfType<obj_markerF>().x;
						y = FindObjectOfType<obj_markerF>().y;
					}
					if (global.entrance == 18)
					{
						x = FindObjectOfType<obj_markerr>().x;
						y = FindObjectOfType<obj_markerr>().y;
					}
					if (global.entrance == 19)
					{
						x = FindObjectOfType<obj_markers>().x;
						y = FindObjectOfType<obj_markers>().y;
					}
					if (global.entrance == 20)
					{
						x = FindObjectOfType<obj_markert>().x;
						y = FindObjectOfType<obj_markert>().y;
					}
					if (global.entrance == 21)
					{
						x = FindObjectOfType<obj_markeru>().x;
						y = FindObjectOfType<obj_markeru>().y;
					}
					if (global.entrance == 22)
					{
						x = FindObjectOfType<obj_markerv>().x;
						y = FindObjectOfType<obj_markerv>().y;
					}
					if (global.entrance == 23)
					{
						x = FindObjectOfType<obj_markerw>().x;
						y = FindObjectOfType<obj_markerw>().y;
					}
					if (global.entrance == 24)
					{
						x = FindObjectOfType<obj_markerX>().x;
						y = FindObjectOfType<obj_markerX>().y;
					}
				}
			}
			initwd = sprite_width;
			initht = sprite_height;
			mywidth = sprite_width;
			myheight = sprite_height;
			for (i = 0; i < 3; i += 1)
				global.battledf[i] = (((global.df[global.chara[i]] + global.itemdf[global.chara[i], 0]) + global.itemdf[global.chara[i], 1]) + global.itemdf[global.chara[i], 2]);
		}

		public override void Alarm_1()
		{
			if (global.interact == 1)
			{
				global.interact = 0;
			}
		}

		public override void Alarm_2()
		{
			global.lcharname = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_345_0");
			global.charname[0] = " ";
			global.charname[1] = scr_84_get_lang_string("obj_initializer_slash_Create_0_gml_48_0");
			global.charname[2] = scr_84_get_lang_string("obj_initializer_slash_Create_0_gml_49_0");
			global.charname[3] = scr_84_get_lang_string("obj_initializer_slash_Create_0_gml_50_0");
		}

		public override void Step_0()
		{
			scr_depth();
			wallcheck = 0;
			nowx = x;
			nowy = y;
			if (press_d == 0 && press_l == 0 && press_u == 0 && press_r == 0)
				nopress = 1;
			press_l = 0;
			press_r = 0;
			press_d = 0;
			press_u = 0;
			bkx = 0;
			bky = 0;
			bkxy = 0;
			jelly = 2;
			if (global.interact == 0)
			{
				if (button3_p() && threebuffer < 0)
				{
					if (global.flag[7] == 0 && battlemode == 0)
					{
						foreach (var item in with<obj_overworldc>())
						{
							item.movenoise = true;
						}

						global.menuno = 0;
						global.interact = 5;
						threebuffer = 2;
						twobuffer = 2;
					}
				}
			}
			if (global.interact == 0)
			{
				if (global.flag[11] == 1)
				{
					if (button2_h() && twobuffer < 0)
						run = 0;
					else
						run = 1;
				}
				else if (button2_h() && twobuffer < 0)
					run = 1;
				else
					run = 0;
				if (autorun > 0)
				{
					if (autorun == 1)
					{
						run = 1;
						runtimer = 200;
					}
					if (autorun == 2)
					{
						run = 1;
						runtimer = 50;
					}
				}
				if (run == 1)
				{
					if (darkmode == false)
					{
						wspeed = (bwspeed + 1);
						if (runtimer > 10)
							wspeed = (bwspeed + 2);
						if (runtimer > 60)
							wspeed = (bwspeed + 3);
					}
					if (darkmode == true)
					{
						wspeed = (bwspeed + 2);
						if (runtimer > 10)
							wspeed = (bwspeed + 4);
						if (runtimer > 60)
							wspeed = (bwspeed + 5);
					}
				}
				if (run == 0)
					wspeed = bwspeed;
				if (left_h())
					press_l = 1;
				if (right_h())
					press_r = 1;
				if (up_h())
					press_u = 1;
				if (down_h())
					press_d = 1;
				px = 0;
				py = 0;
				pressdir = -1;
				if (press_r == 1)
				{
					px = wspeed;
					pressdir = 1;
				}
				if (press_l == 1)
				{
					px = (-wspeed);
					pressdir = 3;
				}
				if (press_d == 1)
				{
					py = wspeed;
					pressdir = 0;
				}
				if (press_u == 1)
				{
					py = (-wspeed);
					pressdir = 2;
				}
				if (nopress == 1 && pressdir != -1)
					global.facing = pressdir;
				if (global.facing == 2)
				{
					if (press_d == 1)
						global.facing = 0;
					if (press_u == 0 && pressdir != -1)
						global.facing = pressdir;
				}
				if (global.facing == 0)
				{
					if (press_u == 1)
						global.facing = 2;
					if (press_d == 0 && pressdir != -1)
						global.facing = pressdir;
				}
				if (global.facing == 3)
				{
					if (press_r == 1)
						global.facing = 1;
					if (press_l == 0 && pressdir != -1)
						global.facing = pressdir;
				}
				if (global.facing == 1)
				{
					if (press_l == 1)
						global.facing = 3;
					if (press_r == 0 && pressdir != -1)
						global.facing = pressdir;
				}
				nopress = 0;
				xmeet = 0;
				ymeet = 0;
				xymeet = 0;
				if (place_meeting<obj_solidblock>((x + px), (y + py)))
					xymeet = 1;
				if (place_meeting<obj_solidblock>((x + px), y))
				{
					if (place_meeting<obj_solidblock>((x + px), y))
					{
						g = wspeed;
						while (g > 0)
						{
							mvd = 0;
							if (press_d == 0 && (!(place_meeting<obj_solidblock>((x + px), (y - g)))))
							{
								y -= g;
								py = 0;
								break;
							}
							else if (press_u == 0 && mvd == 0 && (!(place_meeting<obj_solidblock>((x + px), (y + g)))))
							{
								y += g;
								py = 0;
								break;
							}
							else
							{
								g -= 1;
								continue;
							}
						}
					}
					xmeet = 1;
					bkx = 0;
					if (px > 0)
					{
						i = px;
						while (i >= 0)
						{
							if (!(place_meeting<obj_solidblock>((x + i), y)))
							{
								px = i;
								bkx = 1;
								break;
							}
							else
							{
								i -= 1;
								continue;
							}
						}
					}
					if (px < 0)
					{
						i = px;
						while (i <= 0)
						{
							if (!(place_meeting<obj_solidblock>((x + i), y)))
							{
								px = i;
								bkx = 1;
								break;
							}
							else
							{
								i += 1;
								continue;
							}
						}
					}
					if (bkx == 0)
						px = 0;
				}
				if (place_meeting<obj_solidblock>(x, (y + py)))
				{
					ymeet = 1;
					bky = 0;
					if (place_meeting<obj_solidblock>(x, (y + py)))
					{
						g = wspeed;
						while (g > 0)
						{
							mvd = 0;
							if (press_r == 0 && (!(place_meeting<obj_solidblock>((x - g), (y + py)))))
							{
								x -= g;
								px = 0;
								break;
							}
							else if (mvd == 0 && press_l == 0 && (!(place_meeting<obj_solidblock>((x + g), (y + py)))))
							{
								x += g;
								px = 0;
								break;
							}
							else
							{
								g -= 1;
								continue;
							}
						}
					}
					if (py > 0)
					{
						i = py;
						while (i >= 0)
						{
							if (!(place_meeting<obj_solidblock>(x, (y + i))))
							{
								py = i;
								bky = 1;
								break;
							}
							else
							{
								i -= 1;
								continue;
							}
						}
					}
					if (py < 0)
					{
						i = py;
						while (i <= 0)
						{
							if (!(place_meeting<obj_solidblock>(x, (y + i))))
							{
								py = i;
								bky = 1;
								break;
							}
							else
							{
								i += 1;
								continue;
							}
						}
					}
					if (bky == 0)
						py = 0;
				}
				if (place_meeting<obj_solidblock>((x + px), (y + py)))
				{
					xymeet = 1;
					bkxy = 0;
					i = px;
					j = py;
					while (j != 0 || i != 0)
					{
						if (!(place_meeting<obj_solidblock>((x + i), (y + j))))
						{
							px = i;
							py = j;
							bkxy = 1;
							break;
						}
						else
						{
							if (abs(j) >= 1)
							{
								if (j > 0)
									j -= 1;
								if (j < 0)
									j += 1;
							}
							else
								j = 0;
							if (abs(i) >= 1)
							{
								if (i > 0)
									i -= 1;
								if (i < 0)
									i += 1;
							}
							else
								i = 0;
							continue;
						}
					}
					if (bkxy == 0)
					{
						px = 0;
						py = 0;
					}
				}
				runmove = false;
				if (run == 1 && xmeet == 0 && ymeet == 0 && xymeet == 0)
				{
					if (abs(px) > 0 || abs(py) > 0)
					{
						runmove = true;
						runtimer += 1;
					}
					else
						runtimer = 0;
				}
				else
					runtimer = 0;
				x += px;
				y += py;
			}
			walk = false;
			if (x != nowx && nopress == 0)
				walk = true;
			if (y != nowy && nopress == 0)
				walk = true;
			if (walk == true)
				walkbuffer = 6;
			if (walkbuffer > 3 && fun == false)
			{
				walktimer += 1.5;
				if (runmove == true)
					walktimer += 1.5;
				if (walktimer >= 40)
					walktimer -= 40;
				if (walktimer < 10)
					image_index = 0;
				if (walktimer >= 10)
					image_index = 1;
				if (walktimer >= 20)
					image_index = 2;
				if (walktimer >= 30)
					image_index = 3;
			}
			if (walkbuffer <= 0 && fun == false)
			{
				if (walktimer < 10)
					walktimer = 9.5;
				if (walktimer >= 10 && walktimer < 20)
					walktimer = 19.5;
				if (walktimer >= 20 && walktimer < 30)
					walktimer = 29.5;
				if (walktimer >= 30)
					walktimer = 39.5;
				image_index = 0;
			}
			walkbuffer -= 0.75;
			if (fun == false)
			{
				if (global.facing == 0)
					sprite_index = dsprite;
				if (global.facing == 1)
					sprite_index = rsprite;
				if (global.facing == 2)
					sprite_index = usprite;
				if (global.facing == 3)
					sprite_index = lsprite;
			}
			if (stepping == 1)
			{
				if (image_index == 1 && stepped == false)
				{
					if (global.flag[31] == 0)
						snd_play("snd_step1");
					stepped = true;
				}
				if (image_index == 0 || image_index == 2)
					stepped = false;
				if (image_index == 3 && stepped == false)
				{
					stepped = true;
					if (global.flag[31] == 0)
						snd_play("snd_step2");
				}
			}
			if (onebuffer < 0)
			{
				if (global.interact == 0)
				{
					if (button1_p())
					{
						thisinteract = 0;
						d = ((global.darkzone ? 1 : 0) + 1);
						if (global.facing == 1)
						{
							if (collision_rectangle<obj_interactable>((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), ((x + sprite_width) + (13 * d)), (y + sprite_height), false, true) != null)
								thisinteract = 1;
							if (collision_rectangle<obj_interactablesolid>((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), ((x + sprite_width) + (13 * d)), (y + sprite_height), false, true) != null)
								thisinteract = 2;
						}
						if (thisinteract > 0)
						{
							if (thisinteract == 1)
								interactedobject = collision_rectangle<obj_interactable>((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), ((x + sprite_width) + (13 * d)), (y + sprite_height), false, true);
							if (thisinteract == 2)
								interactedobject = collision_rectangle<obj_interactablesolid>((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), ((x + sprite_width) + (13 * d)), (y + sprite_height), false, true);
							if (interactedobject != null)
							{
								interactedobject.facing = 3;
								interactedobject.scr_interact();
							}
						}
						thisinteract = 0;
						if (global.facing == 3)
						{
							if (collision_rectangle<obj_interactable>((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), (x - (13 * d)), (y + sprite_height), false, true) != null)
								thisinteract = 1;
							if (collision_rectangle<obj_interactablesolid>((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), (x - (13 * d)), (y + sprite_height), false, true) != null)
								thisinteract = 2;
						}
						if (thisinteract > 0)
						{
							if (thisinteract == 1)
								interactedobject = collision_rectangle<obj_interactable>((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), (x - (13 * d)), (y + sprite_height), false, true);
							if (thisinteract == 2)
								interactedobject = collision_rectangle<obj_interactablesolid>((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), (x - (13 * d)), (y + sprite_height), false, true);
							if (interactedobject != null)
							{
								interactedobject.facing = 1;
								interactedobject.scr_interact();
							}
						}
						thisinteract = 0;
						if (global.facing == 0)
						{
							if (collision_rectangle<obj_interactable>((x + (4 * d)), (y + (28 * d)), ((x + sprite_width) - (4 * d)), ((y + sprite_height) + (15 * d)), false, true) != null)
								thisinteract = 1;
							if (collision_rectangle<obj_interactablesolid>((x + (4 * d)), (y + (28 * d)), ((x + sprite_width) - (4 * d)), ((y + sprite_height) + (15 * d)), false, true) != null)
								thisinteract = 2;
						}
						if (thisinteract > 0)
						{
							if (thisinteract == 1)
								interactedobject = collision_rectangle<obj_interactable>((x + (4 * d)), (y + (28 * d)), ((x + sprite_width) - (4 * d)), ((y + sprite_height) + (15 * d)), false, true);

							if (thisinteract == 2)
								interactedobject = collision_rectangle<obj_interactablesolid>((x + (4 * d)), (y + (28 * d)), ((x + sprite_width) - (4 * d)), ((y + sprite_height) + (15 * d)), false, true);

							if (interactedobject != null)
							{
								interactedobject.facing = 2;
								interactedobject.scr_interact();

							}
						}
						thisinteract = 0;
						if (global.facing == 2)
						{
							if (collision_rectangle<obj_interactable>((x + 3), ((y + sprite_height) - (5 * d)), ((x + sprite_width) - (5 * d)), (y + (5 * d)), false, true) != null)
								thisinteract = 1;
							if (collision_rectangle<obj_interactablesolid>((x + 3), ((y + sprite_height) - (5 * d)), ((x + sprite_width) - (5 * d)), (y + (5 * d)), false, true) != null)
								thisinteract = 2;
						}
						if (thisinteract > 0)
						{
							if (thisinteract == 1)
								interactedobject = collision_rectangle<obj_interactable>((x + (3 * d)), ((y + sprite_height) - (5 * d)), ((x + sprite_width) - (5 * d)), (y + (5 * d)), false, true);
							if (thisinteract == 2)
								interactedobject = collision_rectangle<obj_interactablesolid>((x + (3 * d)), ((y + sprite_height) - (5 * d)), ((x + sprite_width) - (5 * d)), (y + (5 * d)), false, true);
							if (interactedobject != null)
							{
								interactedobject.facing = 0;
								interactedobject.scr_interact();
							}
						}
					}
				}
			}
			onebuffer -= 1;
			twobuffer -= 1;
			threebuffer -= 1;
			var door = collision_rectangle<obj_doorparent>(bbox_left, bbox_top, bbox_right, bbox_bottom, false, false);
			door?.event_user(9);
			if (battlemode == 1)
			{
				global.inv -= 1;
				if (global.inv < 0)
				{
					collision_rectangle<obj_overworldbulletparent>((x + 12), (y + 40), (x + 27), (y + 49), true, false)?.event_user(5);
					//collision_line<obj_overworldbulletparent>((x + 12), (y + 49), (x + 19), (y + 57), true, false)?.event_user(5);
					//collision_line<obj_overworldbulletparent>((x + 26), (y + 49), (x + 19), (y + 57), true, false)?.event_user(5);
				}
			}
		}

		public override void Step_2()
		{
			if (global.darkzone == true)
			{
				if (cutscene == false && (!instance_exists("obj_shake")))
				{
					wd = (x - floor(((__view_get(2, 0) / 2) - (initwd / 2))));
					ht = (y - floor(((__view_get(3, 0) / 2) - (initht / 2))));
					__view_set(0, 0, wd);
					__view_set(1, 0, ht);
					if (__view_get(0, 0) < 0)
						__view_set(0, 0, 0);
					if (__view_get(0, 0) > (room_width - __view_get(2, 0)))
						__view_set(0, 0, (room_width - __view_get(2, 0)));
					if (__view_get(1, 0) < 0)
						__view_set(1, 0, 0);
					if (__view_get(1, 0) > (room_height - __view_get(3, 0)))
						__view_set(1, 0, (room_height - __view_get(3, 0)));
				}
			}
			if (global.darkzone == false && global.plot >= 245)
			{
				if (cutscene == false && (!instance_exists("obj_shake")))
				{
					__view_set(9, 0, null);
					wd = ((x - floor((__view_get(2, 0) / 2))) + 11);
					ht = ((y - floor((__view_get(3, 0) / 2))) + 17);
					__view_set(0, 0, wd);
					__view_set(1, 0, ht);
					if (__view_get(0, 0) < 0) ;
					__view_set(0, 0, 0);
					if (__view_get(0, 0) > (room_width - __view_get(2, 0))) ;
					__view_set(0, 0, (room_width - __view_get(2, 0)));
					if (__view_get(1, 0) < 0) ;
					__view_set(1, 0, 0);
					if (__view_get(1, 0) > (room_height - __view_get(3, 0))) ;
					__view_set(1, 0, (room_height - __view_get(3, 0)));
				}
			}

			if (bg == 1)
			{
				foreach (var item in with<obj_backgrounderparent>())
				{
					item.event_user(0);
				}
			}
		}

		public override void Draw_0()
		{
			draw_self();
			// debug stuff
			if (battlemode == 1)
			{
				becamebattle = true;
				if (battlealpha < 0.8)
					battlealpha += 0.04;
				global.heartx = ((x + 12) - __view_get(0, 0));
				global.hearty = ((y + 40) - __view_get(1, 0));
			}
			else if (battlealpha > 0)
				battlealpha -= 0.08;
			battleheart.image_alpha = battlealpha;
			if (fun == false)
			{
				if (global.facing == 0)
					draw_sprite_ext("spr_krisd_heart", image_index, x, y, image_xscale, image_yscale, 0, image_blend, battlealpha);
				if (global.facing == 1)
					draw_sprite_ext("spr_krisr_heart", image_index, x, y, image_xscale, image_yscale, 0, image_blend, battlealpha);
				if (global.facing == 2)
					draw_sprite_ext("spr_krisu_heart", image_index, x, y, image_xscale, image_yscale, 0, image_blend, battlealpha);
				if (global.facing == 3)
					draw_sprite_ext("spr_krisl_heart", image_index, x, y, image_xscale, image_yscale, 0, image_blend, battlealpha);
			}
			else if (sprite_index == "spr_krisd_slide")
				draw_sprite_ext("spr_krisd_slide_heart", image_index, x, y, image_xscale, image_yscale, 0, image_blend, battlealpha);
			draw_sprite_ext("spr_heart_outline2", 0, (x + 12), (y + 40), 1, 1, 0, c_white, (battlealpha * 2));
			battleheart.x = (x + 12);
			battleheart.y = (y + 40);
			if (battlemode == 4)
			{
				draw_set_color(c_lime);
				draw_set_alpha(0.5);
				draw_rectangle((x + 12), (y + 40), (x + 27), (y + 49), false);
				draw_line((x + 12), (y + 49), (x + 19), (y + 57));
				draw_line((x + 26), (y + 49), (x + 19), (y + 57));
				draw_set_alpha(1);
			}
		}
	}
}
