namespace OBJECT_SCRIPTS
{
	internal class obj_heartshaper : obj_bulletparent
	{
		public override void Create()
		{
			siner = 0;
			radius = 160;
			dir = 0;
			norot = 0;
			actual = true;
			var obj_heart = FindObjectOfType<obj_heart>();
			thisx = obj_heart.x;
			thisy = obj_heart.y;
			made = 0;
			damage = 100;
			active = true;
			type = 0;
			maxradius = 80;
			movespeed = 0.5;
			radcon = 0;
		}

		public override void Step_0()
		{
			var obj_heart = FindObjectOfType<obj_heart>();

			if (actual == false)
			{
				siner += 1;
				dir += 2;
				xdir = (dir + 180);
				if (norot == 1)
				{
					for (i = 0; i < 20; i += 1)
					{
						t = ((((i * 2d) * pi) / 20d) + (siner / 60d));
						xx = (16d * ((sin(t) * sin(t)) * sin(t)));
						yy = ((((13d * cos(t)) - (5 * cos((2 * t)))) - (2 * cos((3 * t)))) - cos((4 * t)));
						xxx = ((obj_heart.x + 8) + (xx * radius));
						yyy = ((obj_heart.y + 8) - (yy * radius));
						draw_sprite("spr_heartbullet", 0, xxx, yyy);
					}
				}
			}

			if (actual == true)
			{
				if (made == 0)
				{
					for (t = 0; t < 16; t += 1)
					{
						bul[t] = instance_create(-20, -20, "obj_regularbullet_permanent");
						bul[t].damage = damage;
						bul[t].grazepoints = 2;
						bul[t].timepoints = 1;
						bul[t].depth = 0;
						bul[t].image_alpha = 0;
						bul[t].sprite_index = "spr_heartbullet";
					}

					made = 1;
				}

				if (type == 0)
				{
					if (radius > maxradius)
						radius -= 5;
					else
						radius += (sin((siner / 10d)) / 2d);
				}

				if (type == 1)
				{
					if (radius > maxradius && radcon == 0)
						radius -= 4;
					else
					{
						radcon = 1;
						radius += 8;
						active = false;
						image_alpha -= 0.1;
					}
				}

				dir += 2;
				siner += 1.5;
				tcount = 0;
				for (t = 0; t < 16; t += 1)
				{
					if (instance_exists(bul[t]))
					{
						tcount += 1;
						if (radcon == 0)
						{
							if (bul[t].image_alpha < 1)
								bul[t].image_alpha += 0.1;
						}

						xx = (sin((((pi * t) / 8d) + (siner / 20d))) * radius);
						yy = (cos((((pi * t) / 8d) + (siner / 20d))) * radius);
						xxx = ((thisx + 8) + xx);
						yyy = ((thisy + 8) - yy);
						bul[t].x = xxx;
						bul[t].y = yyy;
						if (radcon == 1)
						{
							bul[t].image_alpha -= 0.1;
							bul[t].active = false;
							if (bul[t].image_alpha <= 0.1)
								bul[t].instance_destroy();
						}
					}
				}

				if (tcount == 0)
					instance_destroy();
			}
		}
	}
}
