﻿using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_battleback : GamemakerObject
	{
		public override void Create()
		{
			siner = 0;
			siner2 = 0;
			image_alpha = 0;
			destroy = 0;
		}

		public override void Draw_0()
		{
			xx = __view_get(0, 0);
			yy = __view_get(1, 0);
			siner += 0.5;
			siner2 += 1;
			draw_set_alpha(image_alpha);
			draw_set_color(c_black);
			draw_rectangle(-10, -10, (room_width + 10), (room_height + 10), false);
			draw_set_alpha(1);
			if (destroy == 0)
			{
				if (image_alpha <= 1)
					image_alpha += 0.1;
			}

			draw_background_tiled_ext("bg_battleback1", round((-100 + siner)), round((-100 + siner)), 1, 1, image_blend, (image_alpha / 2));
			draw_background_tiled_ext("bg_battleback1", round((-200 - siner2)), round((-210 - siner2)), 1, 1, image_blend, image_alpha);
			if (siner >= 100)
				siner -= 100;
			if (siner2 >= 100)
				siner2 -= 100;
			if (destroy == 1)
			{
				image_alpha -= 0.1;
				if (image_alpha <= 0)
					instance_destroy();
			}
		}
	}
}
