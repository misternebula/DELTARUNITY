﻿namespace OBJECT_SCRIPTS
{
	public class obj_dbullet_maker : obj_bulletparent
	{
		public override void Create()
		{
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
			if (instance_exists("obj_heart"))
			{
				var obj_heart = FindObjectOfType<obj_heart>();
				futuredir = point_direction(x, y, (obj_heart.x + 8), (obj_heart.y + 8));
			}
			else
				instance_destroy();
		}

		public override void Draw_0()
		{
			var obj_heart = FindObjectOfType<OBJECT_SCRIPTS.obj_heart>();

			if (dont == 0)
			{
				if (active == false)
				{
					futuredir = point_direction(x, y, (obj_heart.x + 8), (obj_heart.y + 8));
					draw_sprite_ext("spr_diamondbullet_form", 0, x, y, (3 - (image_alpha * 2)), (3 - (image_alpha * 2)), futuredir, c_white, (1 - image_alpha));
					if (image_alpha < 1)
						image_alpha += 0.1;
					else
					{
						move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), 2);
						futuredir = direction;
						active = true;
						speed = 0;
					}
				}

				draw_sprite_ext(sprite_index, 0, x, y, (2 - image_alpha), (2 - image_alpha), futuredir, c_white, image_alpha);
				if (active == true)
				{
					activetimer += 1;
					if (activetimer >= 5 && times < difficulty)
					{
						mybul = instance_create(x, y, "obj_regularbullet");
						if (instance_exists(mybul))
						{
							mybul.damage = damage;
							mybul.target = target;
							mybul.sprite_index = "spr_diamondbullet";
							mybul.direction = futuredir;
							mybul.speed = 6;
							mybul.image_angle = mybul.direction;
						}

						times += 1;
						activetimer = 0;
					}

					if (activetimer >= 5 && times >= difficulty)
					{
						image_alpha -= 0.2;
						if (image_alpha <= 0)
							instance_destroy();
					}
				}
			}

			dont = 0;
		}
	}
}
