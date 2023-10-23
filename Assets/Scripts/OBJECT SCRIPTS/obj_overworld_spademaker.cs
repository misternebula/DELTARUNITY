using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_overworld_spademaker : GamemakerObject
	{
		public override void Create()
		{
			timer = 0;
			darkamt = 0;
			obj_mainchara.battlemode = 1;
			global.charinstance[0] = obj_mainchara;
			alarm[0] = 5;
			side = 0;
			homing = 0;
			if (room == "room_dark_chase2")
				homing = 2;
			if (room == "room_forest_chase1")
				homing = 3;
			if (room == "room_forest_chase2")
				homing = 4;
			sidespade[0] = null;
			sidespade[1] = null;
			intensity = 0;
			tile_fade = false;
		}

		public override void Alarm_0()
		{
			if (homing == 1)
			{
				dir = random(360);
				radius = (200 + random(40));
				dirx = lengthdir_x(radius, dir);
				diry = lengthdir_y(radius, dir);
				xx = ((dirx + obj_mainchara.x) + 10);
				yy = ((diry + obj_mainchara.y) + 40);
				instance_create(xx, yy, "obj_overworld_spade_homing");
				alarm[0] = 10;
			}
			if (homing == 0)
			{
				radius = (-300 + random(1000));
				if (global.facing == 3)
					radius *= -1;
				alarm[0] = 5;
				fallspade = instance_create((obj_mainchara.x + radius), (__view_get(1, 0) - 500), "obj_overworld_spade");
				fallspade.image_angle = 270;
				fallspade.gravity = 0.08;
				fallspade.speed = 0;
				fallspade.vspeed = 6;
				fallspade.hspeed = (-0.8 + random(1.6));
			}
			if (homing == 2)
			{
				alarmamt = (10 - (intensity / 20d));
				if (alarmamt < 5)
					alarmamt = 5;
				if (sidespade[side] != null)
				{
					sidespade[side].speed = 11;
				}
				alarm[0] = (int)alarmamt;
				if (side == 0)
					radius = 80;
				else
					radius = 560;
				sidespade[side] = instance_create(radius, ((__view_get(1, 0) + 30) + random(420)), "obj_overworld_spade");
				if (side == 0)
					sidespade[side].direction = 0;
				if (side == 1)
					sidespade[side].direction = 180;

				sidespade[side].damage = 17;
				if (global.hp[1] <= 40)
					sidespade[side].damage = 13;
				sidespade[side].image_angle = sidespade[side].direction;

				intensity += 1;
			}
			if (homing == 3)
			{
				radius = (100 + random(900));
				if (global.facing == 3)
					radius -= 500;
				alarm[0] = 7;
				fallspade = instance_create((obj_mainchara.x + radius), choose((__view_get(1, 0) + 550), (__view_get(1, 0) - 100)), "obj_overworld_spade");

				fallspade.damage -= 4;
				fallspade.damage += (global.battledf[0] * 2);
				fallspade.image_xscale = 1.5;
				fallspade.image_yscale = 1.5;
				fallspade.friction = -0.1;
				fallspade.sprite_index = "spr_diamondbullet";
				if (fallspade.y >= (room_height / 2d))
				{
					fallspade.image_angle = 135;
					fallspade.vspeed = -5;
					fallspade.hspeed = -5;
				}
				else
				{
					fallspade.image_angle = 225;
					fallspade.vspeed = 5;
					fallspade.hspeed = -5;
				}
			}
			if (homing == 4)
			{
				slow_bonus = (1 - (global.hp[1] / (float)global.maxhp[1]));
				alarm[0] = (20 + (15 * slow_bonus));
				side = choose(0, 1);
				if (obj_mainchara.y >= 400)
				{
					for (i = 0; i < 6; i += 1)
					{
						fallspade = instance_create(((220 + (20 * i)) + (side * 120)), (__view_get(1, 0) + 500), "obj_overworld_spade");
						fallspade.vvalue = (-10 + (3 * slow_bonus));
						fallspade.fvalue = (-0.5 + (0.2 * slow_bonus));
						fallspade.damage -= 4;
						fallspade.damage += (global.battledf[0] * 2);
						fallspade.image_angle = 90;
						fallspade.image_xscale = 1.5;
						fallspade.image_yscale = 1.5;
						fallspade.vspeed = fallspade.vvalue;
						fallspade.friction = fallspade.fvalue;
						fallspade.sprite_index = "spr_diamondbullet";
					}
				}
			}
			if (side == 0)
				side = 1;
			else
				side = 0;
		}

		public override void Draw_0()
		{
			cur_alpha = darkamt;
			if (darkamt < 0.6)
				darkamt += 0.04;
			if (tile_fade == true)
			{
				if (cur_alpha != darkamt)
				{
					for (var i = 0; i < array_length_1d(tilearray); i++)
						tile_set_alpha(tilearray[i], (darkamt * 2));
				}
			}
			draw_set_alpha(darkamt);
			draw_set_color(c_black);
			draw_rectangle((__view_get(0, 0) - 10), (__view_get(1, 0) - 10), (__view_get(0, 0) + 650), (__view_get(1, 0) + 650), false);
			draw_set_alpha(1);
		}
	}
}
