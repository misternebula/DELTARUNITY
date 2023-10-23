using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_testoverworldenemy : GamemakerObject
	{
		public override void Precreate()
		{
			AddCollideEvent(typeof(obj_mainchara));
		}

		public override void Create()
		{
			scr_depth();
			vspeed = 12;
			con = 0;
			image_speed = 0;
			image_xscale = 2;
			image_yscale = 2;
			frozen = false;
			hadfrozen = false;
			fliptimer = 15;
			touchsprite = "spr_diamondm_hurt";
			slidesprite = "spr_diamondm_idle";
			eraser = false;
		}

		public void Collision_obj_mainchara(GamemakerObject other)
		{
			event_user(0);
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Other_10()
		{
			if (global.interact == 0)
			{
				global.specialbattle = 0;
				global.flag[9] = 1;
				global.batmusic0 = snd_init("battle.ogg");
				alarm[5] = -300;
				vspeed = 0;
				global.interact = 1;
				con = 1;
			}
		}

		public override void Step_0()
		{
			if (con == 0)
			{
				if (global.interact == 0)
					frozen = false;
				if (scr_outside_camera(200))
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
				}

				if (frozen == false)
				{
					fliptimer += 1;
					if (fliptimer >= 30)
					{
						vspeed = (-vspeed);
						fliptimer = 0;
					}
				}
			}

			if (con == 1)
			{
				sprite_index = touchsprite;
				hnka = snd_play("snd_tensionhorn");
				con = 2;
				alarm[4] = 8;
			}

			if (con == 3)
			{
				hnkb = snd_play("snd_tensionhorn");
				snd_pitch(hnkb, 1.1);
				con = 4;
				alarm[4] = 12;
			}

			if (con == 5)
			{
				depth = 5000;
				instance_create(0, 0, "obj_battleback");
				instance_create(0, 0, "obj_encounterbasic");
				con = 6;
				sprite_index = slidesprite;
				direction = point_direction(x, y, global.monstermakex[0], global.monstermakey[0]);
				speed = (point_distance(x, y, global.monstermakex[0], global.monstermakey[0]) / 10);
				copyhave = 0;
				for (cc = 0; cc < 2; cc += 1)
				{
					if (global.monstertype[(cc + 1)] != 0)
					{
						copyhave += 1;
						if (global.monstertype[(cc + 1)] == global.monstertype[0])
						{
							copy[cc] = scr_dark_marker(x, y, sprite_index);
							copy[cc].direction = point_direction(x, y, global.monstermakex[(cc + 1)], global.monstermakey[(cc + 1)]);
							copy[cc].speed = (point_distance(x, y, global.monstermakex[(cc + 1)], global.monstermakey[(cc + 1)]) / 10);
							copy[cc].depth = ((depth - 1) - cc);
						}
						else
						{
							copy[cc] = scr_dark_marker((global.monstermakex[(cc + 1)] + 200), global.monstermakey[(cc + 1)], object_get_sprite(global.monsterinstancetype[(cc + 1)]));
							copy[cc].cc = cc;
							copy[cc].depth = ((depth - 1) - cc);
							copy[cc].direction = point_direction(x, y, global.monstermakex[(cc + 1)], global.monstermakey[(cc + 1)]);
							copy[cc].speed = (point_distance(x, y, global.monstermakex[(cc + 1)], global.monstermakey[(cc + 1)]) / 10);
						}
					}
				}

				alarm[4] = 10;
			}

			if (con == 7)
			{
				if (copyhave > 0)
				{
					for (c = 0; c < copyhave; c += 1)
					{
						copy[c].speed = 0;
					}
				}

				speed = 0;
				if (instance_exists("obj_battlecontroller"))
				{
					if (eraser == true)
					{
						foreach (var item in with<obj_chaseenemy>())
						{
							item.instance_destroy();
						}
					}

					instance_destroy();
					if (copyhave > 0)
					{
						for (c = 0; c < copyhave; c += 1)
						{
							copy[c].instance_destroy();
						}
					}
				}
			}
		}
	}
}
