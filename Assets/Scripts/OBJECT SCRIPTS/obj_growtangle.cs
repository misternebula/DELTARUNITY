namespace OBJECT_SCRIPTS
{
	public class obj_growtangle : obj_battlesolid
	{
		public override void Create()
		{
			image_xscale = 0;
			image_yscale = 0;
			image_alpha = 0.3;
			timer = 0d;
			maxtimer = 15;
			growcon = 1;
			image_speed = 0;
			image_blend = merge_color(c_green, c_lime, 0.5);
			fullgrow = 0;
			keep = 0;
			megakeep = 0;
		}

		public override void Draw_0()
		{
			draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
			draw_self();
		}

		public override void Step_0()
		{
			growth = 0;
			if (timer < maxtimer && growcon == 1)
				growth = 1;
			if (timer > 0 && growcon == 3)
				growth = 1;
			if (growth == 1)
			{
				if (growcon == 1)
					timer += 1;
				if (growcon == 3)
					timer -= 1;
				image_xscale = (2d * (timer / maxtimer));
				image_yscale = (2d * (timer / maxtimer));
				image_angle = (180d + (180d * (timer / maxtimer)));
				image_alpha = (0.5d + ((timer / maxtimer) * 0.5d));
				d = instance_create(x, y, "obj_afterimage");
				d.sprite_index = sprite_index;
				d.image_xscale = image_xscale;
				d.image_yscale = image_yscale;
				d.image_angle = image_angle;
				d.depth = (depth - 1);
				d.image_blend = image_blend;
				d.image_alpha = ((1 - image_alpha) + 0.1d);
				d.image_speed = 0;
				if (timer >= maxtimer && growcon == 1)
				{
					growcon = 2;
					image_angle = 0;
				}

				if (timer <= 0 && growcon == 3)
					instance_destroy();
			}
		}

		public override void Step_2()
		{
			if (keep == 1)
			{
				if (instance_exists("obj_heart"))
				{
					if (path_speed != 0 || speed != 0 || megakeep == 1)
					{
						lborder = (x - (sprite_width / 2d));
						rborder = (x + (sprite_width / 2d));
						uborder = (y - (sprite_height / 2d));
						dborder = (y + (sprite_height / 2d));
						var obj_heart = FindObjectOfType<obj_heart>();
						if (obj_heart.x < (lborder + 5))
							obj_heart.x = (lborder + 5);
						if (obj_heart.x > (rborder - 22))
							obj_heart.x = (rborder - 22);
						if (obj_heart.y < (uborder + 5))
							obj_heart.y = (uborder + 5);
						if (obj_heart.y > (dborder - 22))
							obj_heart.y = (dborder - 22);
					}
				}
			}
		}
	}
}
