using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_spareanim : GamemakerObject
	{
		public override void Create()
		{
			t = 0.0;
			image_speed = 0;
			starcount = 0;
			afterimage = 0.0;
			tone = 0;
			neotone = 0.0;
			snd_stop("snd_spare");
			snd_play("snd_spare");
		}

		public override void Draw_0()
		{
			if (t >= 6 && t <= 26)
			{
				afterimage += 1;
				d3d_set_fog(true, c_white, 0, 1);
				draw_sprite_ext(sprite_index, image_index, (x + (afterimage * 4)), y, image_xscale, image_yscale, 0, image_blend, (0.7 - (afterimage / 25.0)));
				draw_sprite_ext(sprite_index, image_index, (x + (afterimage * 8)), y, image_xscale, image_yscale, 0, image_blend, (0.4 - (afterimage / 30.0)));
				d3d_set_fog(false, c_black, 0, 0);
			}

			if (t < 6)
			{
				if (t < 5)
					draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, (1 - (neotone / 4.0)));
				d3d_set_fog(true, c_white, 0, 1);
				maxwhite = (t / 5);
				if (maxwhite > 1)
					maxwhite = 1;
				draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, (maxwhite - (tone / 5.0)));
				d3d_set_fog(false, c_black, 0, 0);
			}

			if (t >= 1 && t <= 5)
			{
				for (i = 0; i < 2; i += 1)
				{
					star[starcount] = instance_create((x + random(sprite_width)), (y + random(sprite_height)), "obj_marker");
					star[starcount].image_xscale = 2;
					star[starcount].image_yscale = 2;
					star[starcount].sprite_index = "spr_sparestar_anim";
					star[starcount].image_alpha = 2;
					star[starcount].image_speed = 0.25;
					star[starcount].hspeed = -3;
					star[starcount].gravity = 0.5;
					star[starcount].gravity_direction = 0;
					starcount += 1;
				}
			}

			if (t >= 5 && t <= 30)
			{
				for (i = 0; i < starcount; i += 1)
				{
					if (star[i] == null)
					{
						continue;
					}

					star[i].image_angle += 10;
					star[i].image_alpha -= 0.1;
					if (star[i].image_alpha <= 0)
						star[i].instance_destroy();
				}
			}

			if (t >= 5 && t < 10)
				tone += 1;

			if (t >= 9)
			{
				neotone += 1;
				if (neotone >= 30)
				{
					for (i = 0; i < starcount; i += 1)
					{
						if (star[i] == null)
						{
							continue;
						}
						star[i].instance_destroy();
					}

					instance_destroy();
				}
			}

			t += 1;
		}
	}
}
