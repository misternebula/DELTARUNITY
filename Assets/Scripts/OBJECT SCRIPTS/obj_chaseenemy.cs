using Assets;
using OBJECT_SCRIPTS.COLLISION;

namespace OBJECT_SCRIPTS
{
	internal class obj_chaseenemy : GamemakerObject
	{
		public override void Precreate()
		{
			AddCollideEvent(typeof(obj_mainchara));
		}

		public override void Create()
		{
			image_xscale = 2;
			image_yscale = 2;
			facing = 0;
			walk_index = 0;
			state = 0;
			alertcon = 0;
			alerttimer = 0;
			facetimer = 0;
			chasetype = 0;
			pacetype = 1;
			pacecon = 0;
			pacecon2 = 0;
			pacetimer = 0;
			targetx = 0;
			targety = 0;
			scr_depth();
			radius = 200;
			moveradius = 160;
			pacespeed = 1;
			frozen = false;
			hadfrozen = false;
			offscreen_frozen = true;
			remspeed = 0;
			myencounter = 4;
			touchsprite = "spr_diamondm_hurt";
			cancelwalk = false;
			eraser = false;
			touchflag = 0;
			ignoresolid = false;
			if (room == "room_battletest")
				myencounter = 40;
			if (room == "room_field1")
				myencounter = 4;
			if (room == "room_field2")
			{
				myencounter = 5;
				if (global.flag[501] > 0)
					instance_destroy();
			}

			if (room == "room_field_puzzle1")
			{
				myencounter = 6;
				radius = 200;
				pacetype = 5;
			}

			if (room == "room_field_getsusie")
			{
				myencounter = 7;
				sprite_index = "spr_smallchecker_front";
				touchsprite = sprite_index;
				pacetype = 6;
				image_speed = 0.2;
			}

			if (room == "room_field4")
				myencounter = 33;
			if (room == "room_field_secret1")
			{
				sprite_index = "spr_jigsawry_idle";
				touchsprite = "spr_jigsawry_idle";
				myencounter = 23;
				if (global.plot < 130)
					instance_destroy();
			}

			if (room == "room_forest_area0")
			{
				sprite_index = "spr_rabbick_enemy_overworld";
				myencounter = 16;
				touchsprite = "spr_rabbick_enemy_overworld";
				alertcon = -1;
				pacetype = 10;
			}

			if (room == "room_forest_area1" || room == "room_forest_area3" || room == "room_forest_secret1")
			{
				pacetype = 7;
				sprite_index = "spr_rabbick_enemy_overworld";
				if (room == "room_forest_area1")
					pacetype = 11;
				myencounter = 17;
				touchflag = 505;
				touchsprite = "spr_rabbick_enemy_overworld";
				if (room == "room_forest_area3")
					myencounter = 24;
				if (room == "room_forest_secret1")
					myencounter = 32;
				alertcon = -1;
			}

			if (room == "room_forest_maze1")
			{
				touchflag = 505;
				sprite_index = "spr_rabbick_enemy_overworld";
				myencounter = 17;
				touchsprite = "spr_rabbick_enemy_overworld";
				pacetype = 1;
				if (global.flag[505] == 1)
					chasetype = 3;
			}

			if (room == "room_forest_maze2")
			{
				touchflag = 506;
				myencounter = 18;
				sprite_index = "spr_blockguy_overworld";
				touchsprite = "spr_blockguy_overworld";
				pacetype = 1;
				if (global.flag[506] == 1)
					chasetype = 3;
				else
					chasetype = 4;
			}

			if (room == "room_forest_beforeclover")
			{
				myencounter = 18;
				sprite_index = "spr_blockguy_overworld";
				touchsprite = "spr_blockguy_overworld";
				pacetype = 7;
				alertcon = -1;
			}

			if (room == "room_forest_area4")
			{
				myencounter = 19;
				sprite_index = "spr_blockguy_overworld";
				touchsprite = "spr_blockguy_overworld";
				pacetype = 7;
				if (x < (room_width / 2))
					pacetype = 7.5;
				eraser = true;
				touchflag = 506;
				chasetype = 4;
				radius = 90;
				ignoresolid = true;
				offscreen_frozen = false;
				if (global.flag[506] >= 1)
					alertcon = -1;
			}

			if (room == "room_cc_1f")
			{
				pacetype = 9;
				chasetype = 4;
				moveradius = 160;
				sprite_index = "spr_daimond_knight_idle";
				myencounter = 28;
				touchsprite = "spr_daimond_knight_idle";
				touchflag = 507;
				if (global.flag[507] == 1)
					alertcon = -1;
			}

			if (room == "room_cc_3f")
			{
				eraser = true;
				ignoresolid = true;
				chasetype = 4;
				pacetype = 9;
				radius = 165;
				moveradius = 160;
				if (x >= (room_width / 2))
					moveradius = -160;
				sprite_index = "spr_hathyx_overworld";
				myencounter = 30;
				touchsprite = "spr_hathyx_overworld";
				offscreen_frozen = false;
				touchflag = 508;
				if (global.flag[508] == 1)
					alertcon = -1;
			}
		}

		public override void Alarm_4()
		{
			alertcon += 1;
		}

		public override void Draw_0()
		{
			if (facing == 0)
				draw_sprite_ext(sprite_index, walk_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
			if (facing == 1)
				draw_sprite_ext(sprite_index, walk_index, (x + sprite_width), y, (-image_xscale), image_yscale, image_angle, image_blend, image_alpha);
			if (scr_debug())
			{
				draw_set_color(c_red);
				draw_rectangle((targetx - 2), (targety - 2), (targetx + 2), (targety + 2), false);
				draw_set_color(c_aqua);
				draw_rectangle(((targetx - 2) + (sprite_width / 2)), ((targety - 2) + (sprite_height / 2)), ((targetx + 2) + (sprite_width / 2)), ((targety + 2) + (sprite_height / 2)), false);
			}
		}

		public override void Other_10()
		{
			if (touchflag > 0)
				global.flag[touchflag] = 1;
			newme = instance_create(x, y, "obj_testoverworldenemy");
			newme.sprite_index = touchsprite;
			newme.touchsprite = touchsprite;
			newme.slidesprite = sprite_index;
			newme.depth = depth;
			newme.eraser = eraser;
			newme.event_user(0);
			global.encounterno = myencounter;
			instance_destroy();
		}

		public override void Step_0()
		{
			scr_depth();
			targetx = ((obj_mainchara.x + (obj_mainchara.sprite_width / 2)) - (sprite_width / 2));
			targety = ((obj_mainchara.y + (obj_mainchara.sprite_height / 2)) - (sprite_height / 2));
			if (global.interact == 0)
				frozen = false;
			if (scr_outside_camera(200) && offscreen_frozen == true)
				frozen = true;
			else
				frozen = false;
			if (global.interact != 0)
				frozen = true;
			if (frozen == true)
			{
				if (hadfrozen == false)
				{
					remspeed = speed;
					speed = 0;
					hadfrozen = true;
				}
			}

			if (frozen == false)
			{
				if (hadfrozen == true)
				{
					if (speed == 0)
						speed = remspeed;
					hadfrozen = false;
				}

				if (pacecon == 0)
				{
					pacetimer += 1;
					if (pacetype == 0)
					{
					}

					if (pacetype == 1)
					{
						if (pacetimer == 10)
							hspeed = 2;
						if (pacetimer == 34)
							hspeed = 0;
						if (pacetimer == 50)
							hspeed = -2;
						if (pacetimer == 74)
							hspeed = 0;
						if (pacetimer == 80)
							pacetimer = 0;
					}

					if (pacetype == 2)
					{
						hspeed = (sin((pacetimer / 24.0)) * 4);
						vspeed = (cos((pacetimer / 24.0)) * 4);
					}

					if (pacetype == 5)
					{
						if (pacetimer == 1)
							vspeed = 6;
						if (pacetimer == 25)
							vspeed = -6;
						if (y < ystart)
							pacetimer = 0;
					}

					if (pacetype == 6)
					{
						cancelwalk = true;
						walk_index += 0.25;
					}

					if (pacetype == 7)
						hspeed = ((-(sin((pacetimer / 30.0)))) * 10);
					if (pacetype == 7.5)
						hspeed = (sin((pacetimer / 30.0)) * 10);
					if (pacetype == 8)
						vspeed = ((-(sin((pacetimer / 25.0)))) * 12.5);
					if (pacetype == 9)
					{
						hspeed = (sin((pacetimer / (pacespeed * 30))) * (moveradius / 20));
						pacespeed = 0.8;
					}

					if (pacetype == 10)
					{
						if (pacecon2 == 0)
						{
							if (vspeed > 0)
								vspeed *= 0.9;
							if (vspeed <= 0.5 && pacecon2 == 0)
								pacecon2 = 1;
						}

						if (pacecon2 == 1)
							move_towards_point(obj_mainchara.x, obj_mainchara.y, 4);
					}
				}

				if (alertcon == 0)
				{
					alerttimer += 1;
					if (alerttimer >= 6)
					{
						alerttimer -= 6;
						if (distance_to_point((targetx + (sprite_width / 2)), (targety + (sprite_height / 2))) <= radius)
						{
							speed = 0;
							pacecon = 1;
							alerttimer = 0;
							alertcon = 1;
							snd_play("snd_b");
							instance_create((x + (sprite_width / 2)), (y - 20), "obj_excblcon");
							alarm[4] = 20;
						}
					}
				}

				if (alertcon == 2)
				{
					if (chasetype == 0)
					{
						if (speed < 4)
							speed = 4;
						if (speed < 7)
							speed += 0.5;
						move_towards_point(targetx, targety, speed);
					}

					if (chasetype == 1)
					{
						if (alerttimer == 0)
							move_towards_point(targetx, targety, 10);
						alerttimer += 1;
						if (alerttimer >= 20)
							speed *= 0.75;
						if (alerttimer >= 25)
							speed = 0;
						if (alerttimer >= 27)
							alerttimer = 0;
					}

					if (chasetype == 2)
					{
						if (alerttimer == 0)
						{
							xnext = 0;
							ynext = 0;
							if (right_h())
								xnext = 132;
							if (left_h())
								xnext = -132;
							if (down_h())
								ynext = 132;
							if (up_h())
								ynext = -132;
							move_towards_point((targetx + xnext), (targety + ynext), 10);
						}
						alerttimer += 1;
						if (alerttimer >= 20)
							speed *= 0.75;
						if (alerttimer >= 25)
							speed = 0;
						if (alerttimer >= 27)
							alerttimer = 0;
					}

					if (chasetype == 3)
					{
						if (speed < 2)
							speed = 2;
						if (speed < 4)
							speed += 0.5;
						move_towards_point(targetx, targety, speed);
					}

					if (chasetype == 4)
					{
						if (speed < 6)
							speed = 6;
						if (speed < 14)
							speed += 0.5;
						move_towards_point(targetx, targety, speed);
					}
				}

				facetimer += 1;
				if (facetimer >= 10)
				{
					if (hspeed <= -0.2 && facing == 1)
					{
						facing = 0;
						facetimer = 0;
					}

					if (hspeed >= 0.2 && facing == 0)
					{
						facing = 1;
						facetimer = 0;
					}
				}

				if (cancelwalk == false)
				{
					walk_index += (speed / 20);
					if (speed == 0)
						walk_index = 0;
				}
			}
		}

		public override void Step_2()
		{
			if (alertcon >= 1 && frozen == false && ignoresolid == false)
			{
				if (collision_rectangle<obj_solidblock>(bbox_left, bbox_top, bbox_right, bbox_bottom, false, true) || collision_rectangle<obj_solidenemy>(bbox_left, bbox_top, bbox_right, bbox_bottom, false, true))
				{
					x -= hspeed;
					y -= vspeed;
					hspeed = 0;
					vspeed = 0;
				}
			}
		}

		public void Collision_obj_mainchara(GamemakerObject other)
		{
			if (global.interact == 0)
				event_user(0);
		}
	}
}
