﻿using System;
using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_lancerbike : obj_regularbullet
	{
		public override void Create()
		{
			grazed = false;
			grazepoints = 10;
			timepoints = 0;
			target = 0;
			dont = 1;
			inv = 60;
			damage = 20;
			spec = 0;
			if (global.hp[1] <= (global.maxhp[1] / 2d))
				damage = 10;
			if (global.hp[1] <= (global.maxhp[1] / 4d))
				damage = 5;
			image_xscale = 2;
			image_yscale = 2;
			loop = false;
			lcon = 0;
			flip = 0;
			ltimer = 0;
			btimer = 0;
			endcon = 0;
			racecon = 0;
			yy = __view_get(1, 0);
			xx = __view_get(0, 0);
			topy = (yy + 120);
			bottomy = (yy + 250);
		}

		public override void Other_15()
		{
			if (target == 0)
			{
				if (global.hp[1] <= (global.maxhp[1] / 2d))
					damage = ceil((global.hp[1] / 3d));
			}

			scr_damage();
		}

		public override void Step_0()
		{
			if (lcon == 1)
			{
				orx = x;
				ory = y;
				ang = 0;
				ltimer = 0;
				shrinktimer = 0;
				lcon = 1.5;
			}

			if (lcon == 1.5)
			{
				ltimer += 1;
				if (ltimer >= 10)
				{
					ltimer = 0;
					lcon = 2;
					snd_play("snd_cardrive");
				}
			}

			if (lcon >= 6 && lcon < 10)
			{
				btimer += 1;
				if (btimer >= 10)
				{
					xoff = lengthdir_x(40, (image_angle - 20));
					yoff = lengthdir_y(40, (image_angle - 20));
					snd_play("snd_spearrise");
					bullet = instance_create((x - xoff), (y - yoff), "obj_regularbullet");
					bullet.target = target;
					bullet.damage = damage;
					if (bullet.target == 0)
					{
						if (global.hp[1] <= (global.maxhp[1] / 2d))
							bullet.damage = ceil((global.hp[1] / 3d));
					}

					bullet.timepoints = 0;
					bullet.sprite_index = "spr_spadebullet";
					var obj_heart = FindObjectOfType<OBJECT_SCRIPTS.obj_heart>();
					bullet.move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), 4);
					bullet.image_angle = bullet.direction;
					bullet.friction = -0.4;

					bullet.depth = (depth + 1);
					btimer = 0;
				}
			}

			if (lcon == 2)
			{
				ltimer += 1;
				shrinktimer += 1;
				hspeed = (sin((ltimer / 3)) * 5);
				image_yscale = (2 - (sin((ltimer / 5)) * 1));
				if (shrinktimer > 4)
					image_yscale = (2 - ((sin((ltimer / 5)) * 1) * (8 / shrinktimer)));
				if (ltimer > 7)
				{
					image_angle -= (abs(sin((ltimer / 5))) * 4);
					ang = (-image_angle);
				}

				if (ltimer > 4 && abs(sin((ltimer / 5))) <= 0.06)
				{
					lcon = 5;
					image_yscale = 2;
					direction = 180;
					speed = 4;
				}
			}

			if (lcon == 5)
			{
				if (speed < 16)
					speed += 2;
				if (ang < 45)
					ang += 4;
				image_angle = (-ang);
				if (x < (__view_get(0, 0) + 80))
					lcon = 6;
			}

			if (lcon == 6)
			{
				if (ang < 135)
					ang += 10;
				image_angle = (-ang);
				if (x <= (__view_get(0, 0) + 5))
				{
					lcon = 7;
					direction = 90;
				}
			}

			if (lcon == 7)
			{
				if (y < (__view_get(1, 0) + 80))
				{
					if (ang < 225)
						ang += 10;
					if (y <= (__view_get(1, 0) + 5))
					{
						direction = 0;
						lcon = 8;
					}
				}
				else if (ang < 135)
					ang += 10;

				image_angle = (-ang);
			}

			if (lcon == 8)
			{
				if (x >= (__view_get(0, 0) + 540))
				{
					if (ang < 315)
						ang += 10;
					if (x >= (__view_get(0, 0) + 630))
					{
						direction = 270;
						lcon = 9;
					}
				}
				else if (ang < 225)
					ang += 10;

				image_angle = (-ang);
			}

			if (lcon == 9)
			{
				if (y > (ory - 70))
				{
					if (ang < 360)
						ang += 10;
					if (y >= (ory - 5))
					{
						y = ory;
						direction = 180;
						lcon = 10;
					}
				}
				else if (ang < 315)
					ang += 10;

				image_angle = (-ang);
			}

			if (lcon == 10)
			{
				ang = 0;
				image_angle = 0;
				if (x <= orx)
				{
					speed = 0;
					x = orx;
					lcon = 11;
					ltimer = 0;
				}
			}

			if (lcon == 11)
			{
				sprite_index = "spr_lancerbike_l";
				ltimer += 1;
				if (ltimer >= 25)
				{
					foreach (var item in with<obj_regularbullet>())
					{
						item.active = false;
						item.image_alpha -= 0.2;
					}

					image_alpha = 1;
				}

				if (ltimer >= 30)
				{
					lcon = 0;
					endcon = 1;
				}
			}

			if (racecon == 1)
			{
				sy = 0;
				s_moveup = 0;
				if (instance_exists("obj_susieandlancer_event"))
				{
					throw new NotImplementedException();
				}
				else if (instance_exists("obj_susieenemy"))
				{
					throw new NotImplementedException();
				}

				orx = x;
				ory = y;
				ang = 0;
				racecon = 2;
				vspeed = (-14 * choose(1, -1));
				rtimer = 0;
				maxr = (15 + random(25));
			}

			if (racecon == 2)
			{
				if (s_moveup == 1)
				{
					if (s.y > -20)
						s.y -= 10;
				}

				if (y < (topy + 10))
					vspeed = 12;
				if (y > (bottomy - 10))
					vspeed = -12;
				rtimer += 1;
				if (rtimer > maxr)
				{
					vspeed = 0;
					racecon = 3;
					rtimer = 0;
				}
			}

			if (racecon == 3)
			{
				rtimer += 1;
				if (rtimer == 5 || rtimer == 10)
				{
					snd_play("snd_lancerhonk");
					honkimg = instance_create((x - 60), (y - 40), "obj_afterimage_grow");
					honkimg.sprite_index = "spr_lancernoise";
				}

				if (rtimer >= 25)
				{
					snd_play("snd_drive");
					racecon = 4;
					hspeed = -20;
					rtimer = 0;
					ang = 0;
				}
			}

			if (racecon == 4)
			{
				if (s_moveup == 1)
				{
					s.y += 10;
					if (s.y >= sy)
					{
						s.y = sy;
						s_moveup = 0;
					}
				}

				rtimer += 1;
				ang += ((rtimer * 2) + 4);
				if (ang > 50)
					ang = 50;
				image_angle = (-ang);
				if (x <= (__view_get(0, 0) - 40))
				{
					ang = 0;
					image_angle = 0;
					x = (__view_get(0, 0) + 740);
					y = ory;
					hspeed = -12;
					racecon = 5;
				}
			}

			if (racecon == 5)
			{
				if (x <= (orx + 5))
				{
					hspeed = 0;
					x = orx;
					racecon = 0;
					endcon = 1;
				}
			}

			if (endcon == 1)
			{
				global.turntimer = 2;

				var obj_lancerboss = FindObjectOfType<obj_lancerboss>();
				obj_lancerboss.visible = true;
				if (obj_lancerboss.turns >= 4)
				{
					obj_lancerboss.con = 1;
					FindObjectOfType<obj_battlecontroller>().noreturn = true;
				}

				// TODO : lancerboss3 stuff

				instance_destroy();
			}

			if (FindObjectOfType<obj_lancerboss>().compliment >= 3)
			{
				FindObjectOfType<obj_dmgwriter>().spec = 1;
			}
		}
	}
}
