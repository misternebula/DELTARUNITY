using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_darkslide : GamemakerObject
	{
		public override void Precreate()
		{
			AddCollideEvent(typeof(obj_mainchara));
		}

		public override void Create()
		{
			collide = 0;
			collidetimer = -1;
			cancollide = false;
			collider = 0;
			slidetimer = 0;
			abovey = 0;
		}

		public override void Step_0()
		{
			collidetimer -= 1;
			if (collidetimer < 0 && collide == 1 && global.interact == 1)
			{
				collide = 0;
				global.interact = 0;
				if (collider >= 10)
				{
					if (abovey == 1)
					{
						obj_mainchara.fun = false;

						obj_mainchara.sprite_index = "spr_krisd";
						snd_stop(slide_noise);
					}
					instance_create(x, ((y + sprite_height) - 40), "obj_soliddark");
					instance_destroy();
				}
			}
		}

		public void Collision_obj_mainchara(GamemakerObject other)
		{
			cancollide = false;
			if (global.interact == 0 || collide == 1)
				cancollide = true;
			if (cancollide == true)
			{
				if (abovey == 0)
				{
					if (obj_mainchara.y < y)
					{
						abovey = 1;
						snd_play("snd_noise");
						slide_noise = snd_loop("snd_paper_surf");
						obj_mainchara.fun = true;
						obj_mainchara.sprite_index = "spr_krisd_slide";
					}
					if (obj_mainchara.y > y)
						abovey = -1;
				}
				collide = 1;
				global.interact = 1;
				other.y += 12;
				collidetimer = 3;
				collider += 1;
				if (slidetimer == 0 && abovey == 1)
				{
					dust = instance_create((obj_mainchara.x + 20), (obj_mainchara.y + 30), "obj_slidedust");
					dust.vspeed = -6;
					dust.hspeed = (-1 + random(2));
					slidetimer = -6;
				}
				slidetimer += 1;
			}
		}
	}
}
