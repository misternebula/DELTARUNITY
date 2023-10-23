namespace OBJECT_SCRIPTS
{
	internal class obj_dbullet_vert : obj_collidebullet
	{
		public override void Create()
		{
			if (y < (__view_get(1, 0) + 20))
				y = (__view_get(1, 0) + 20);
			if (y > (__view_get(1, 0) + 460))
				y = (__view_get(1, 0) + 460);
			difficulty = 1;
			times = 0;
			activetimer = 0;
			grazed = false;
			grazepoints = 5;
			timepoints = 5;
			target = 0;
			dont = 1;
			inv = 120;
			damage = 124;
			active = false;
			image_alpha = 0;
			if (!instance_exists("obj_heart"))
				instance_destroy();
			type = 0;
		}

		public override void Draw_0()
		{
			if (dont == 0)
			{
				if (active == false)
				{
					draw_sprite_ext(sprite_index, 0, x, y, (3 - (image_alpha * 2)), (3 - (image_alpha * 2)), 0, c_white, image_alpha);
					if (image_alpha < 1)
					{
						image_alpha += 0.1;
						if (type == 1)
						{
							vspeed = 3;
							gravity = -0.5;
						}
					}
					else
					{
						if (type == 0)
						{
							var obj_heart = FindObjectOfType<obj_heart>();
							if ((obj_heart.y + 8) < y)
							{
								vspeed = 1;
								gravity = -0.2;
							}
							else
							{
								vspeed = -2;
								gravity = 1;
							}
						}

						active = true;
					}
				}

				draw_sprite_ext(sprite_index, 0, x, y, (2 - image_alpha), (2 - image_alpha), 0, c_white, image_alpha);
				if (type == 0)
				{
					if (speed > 8)
						speed = 8;
				}

				if (y > (__view_get(1, 0) + 500))
					instance_destroy();
				if (y < (__view_get(1, 0) - 20))
					instance_destroy();
			}

			dont = 0;
		}
	}
}
