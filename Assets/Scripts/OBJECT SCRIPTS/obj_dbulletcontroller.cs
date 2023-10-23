using Assets;
using UnityEngine;

namespace OBJECT_SCRIPTS
{
	public class obj_dbulletcontroller : obj_bulletgenparent
	{
		public override void Create()
		{
			btimer = 99;
			timermax = 12;
			difficulty = 1;
			type = 1;
			joker = 0;
			side = 1;
			damage = 100;
			grazepoints = 1;
			timepoints = 1;
			inv = 60;
			grazed = false;
			grazetimer = 0;
			target = 0;
			made = 0;
			special = false;
			miny = 150;
			maxy = 280;
			if (instance_exists("obj_growtangle"))
			{
				var obj_growtangle = FindObjectOfType<OBJECT_SCRIPTS.obj_growtangle>();
				miny = (obj_growtangle.y - (obj_growtangle.sprite_height / 2));
				maxy = (obj_growtangle.y + (obj_growtangle.sprite_height / 2));
			}

			ratio = 1;
			if (scr_monsterpop() == 2)
				ratio = 1.6;
			if (scr_monsterpop() == 3)
				ratio = 2.3;
		}

		public override void Step_0()
		{
			var obj_heart = FindObjectOfType<OBJECT_SCRIPTS.obj_heart>();

			btimer += 1;

			if (type == 0)
			{
				if (btimer >= (timermax * ratio))
				{
					btimer = 0;
					dir = (30 + random(120));
					radius = (140 + random(80));
					xx = lengthdir_x(radius, dir);
					yy = lengthdir_y(radius, dir);
					bm = instance_create(((obj_heart.x + 8) + xx), ((obj_heart.y + 8) + yy), "obj_dbullet_maker");
					if (bm.y < (__view_get(1, 0) + 40))
						bm.y = (__view_get(1, 0) + 40);
					bm.damage = damage;
					bm.target = target;
				}
			}

			if (type == 1)
			{
				if (btimer >= (9 * ratio))
				{
					btimer = 0;
					radius = (140 + random(40));
					yy = (radius * side);
					xx = (-100 + random(200));
					num = choose(0, 1, 2, 3);
					if (num == 3)
						xx = (-10 + random(20));
					d = instance_create(((obj_heart.x + 8) + xx), ((obj_heart.y + 8) + yy), "obj_dbullet_vert");
					d.damage = damage;
					d.target = target;
				}
			}

			if (type == 2)
			{
				if (btimer >= (20 * ratio))
				{
					xx = (__view_get(0, 0) - 20);
					if (side == 1)
						xx = (__view_get(0, 0) + 660);
					yy = (miny + random((maxy - miny)));
					bul = instance_create(xx, yy, "obj_clubsbullet");
					bul.speed = 12;
					bul.damage = damage;
					bul.target = target;
					if (side == 1)
					{
						bul.direction = 180;
						bul.image_angle = 180;
					}

					btimer = 0;
				}
			}

			if (type >= 80 && type <= 84)
			{
				maxtimer = 40;
				if (type == 81)
					maxtimer = 30;
				if (type == 82)
					maxtimer = 26;
				if (type == 83)
					maxtimer = 19;
				if (type == 84)
					maxtimer = 14;
				if (btimer >= maxtimer)
				{
					btimer = 0;
					var obj_battlesolid = FindObjectOfType<obj_battlesolid>();
					lx = obj_battlesolid.x;
					ly = obj_battlesolid.y;
					side = choose(0, 1);
					if (type == 81 || type == 84)
					{
						side = made;
						if (made == 0)
							made = 1;
						else
							made = 0;
					}

					if (side == 0)
					{
						puzz1 = instance_create((obj_heart.x + 8), (ly - 150), "obj_jigsawbullet");
						puzz1.side = 3;
						puzz2 = instance_create((obj_heart.x + 8), (ly + 150), "obj_jigsawbullet");
						puzz2.side = 1;
						if (type == 82)
							puzz1.timer = 10;
						if (type == 82)
							puzz2.timer = 10;
						if (type == 83 || type == 84)
							puzz1.timer = 15;
						if (type == 83 || type == 84)
							puzz2.timer = 15;
						scr_bullet_inherit(puzz1);
						scr_bullet_inherit(puzz2);
					}

					if (side == 1)
					{
						puzz1 = instance_create((lx + 150), (obj_heart.y + 8), "obj_jigsawbullet");
						puzz1.side = 2;
						puzz2 = instance_create((lx - 150), (obj_heart.y + 8), "obj_jigsawbullet");
						puzz2.side = 0;
						if (type == 82)
							puzz1.timer = 10;
						if (type == 82)
							puzz2.timer = 10;
						if (type == 83)
							puzz1.timer = 15;
						if (type == 83)
							puzz2.timer = 15;
						scr_bullet_inherit(puzz1);
						scr_bullet_inherit(puzz2);
					}

					if (type == 83)
					{
						foreach (var item in with<obj_jigsawbullet>())
						{
							item.joker = 1;
						}
					}
				}
			}

			if (joker == 1)
			{
				if (type == 45)
				{
					if (btimer >= 18)
					{
						xx = choose(0, 1);
						basex = (__view_get(0, 0) + 320);
						if (instance_exists("obj_growtangle"))
							basex = FindObjectOfType<obj_growtangle>().x;
						if (xx == 0)
							idealx = ((basex - 180) - random(100));
						if (xx == 1)
							idealx = ((basex + 180) + random(100));
						bomb = instance_create(idealx, -20, "obj_suitbomb");
						scr_bullet_inherit(bomb);
						if (bomb.type == 2)
							bomb.type = choose(0, 1, 2, 3);
						btimer = 0;
					}
				}

				if (type == 46)
				{

				}

				if (type == 47)
				{

				}

				if (type == 48)
				{

				}

				if (type == 49)
				{

				}

				if (type == 50)
				{

				}

				if (type == 55)
				{

				}

				if (type == 56)
				{

				}

				if (type == 57)
				{

				}

				if (type == 58)
				{

				}

				if (type == 60)
				{

				}

				if (type == 61)
				{

				}

				if (type == 62)
				{

				}

				if (type == 65)
				{

				}

				if (type == 66)
				{

				}

				if (type == 67)
				{

				}

				if (type == 68)
				{

				}

				if (type == 70)
				{
					if (btimer >= 20 && global.turntimer >= 30)
					{
						var obj_battlesolid = FindObjectOfType<obj_battlesolid>();
						jokerx = choose(((obj_battlesolid.x - 100) - random(100)), ((obj_battlesolid.x + 100) + random(100)));
						jokery = choose((obj_battlesolid.y - random(100)), (obj_battlesolid.y + random(100)));
						jokern = instance_create(jokerx, jokery, "obj_joker_teleport");
						jokern.type = 1;
						scr_bullet_inherit(jokern);
						jokern.active = false;
						btimer = 0;
					}
				}

				if (type == 71)
				{

				}

				if (type == 72)
				{

				}

				if (type == 73)
				{

				}

				if (type == 74)
				{

				}

				if (type == 75 || type == 76)
				{

				}

				if (type == 77)
				{

				}
			}
		}
	}
}
