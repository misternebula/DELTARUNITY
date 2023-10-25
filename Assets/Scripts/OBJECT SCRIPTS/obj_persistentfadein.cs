﻿using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_persistentfadein : GamemakerObject
	{
		public override void Create()
		{
			image_blend = c_black;
			fadespeed = -0.08;
			image_alpha = 1;
			length = (10 + (room_width / 4));
			height = (10 + (room_height / 4));
			x = -20;
			y = -20;
		}

		public override void Draw_0()
		{
			image_alpha += fadespeed;
			draw_sprite_ext(sprite_index, image_index, x, y, length, height, 0, image_blend, image_alpha);
			if (image_alpha <= 0)
				instance_destroy();
		}

		public override void Other_4()
		{
			length = (10 + (room_width / 4));
			height = (10 + (room_height / 4));
		}
	}
}