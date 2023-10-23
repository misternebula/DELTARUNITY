﻿using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_castle_house: GamemakerObject
	{
		public override void Create()
		{
			scr_depth();
			if (y >= 560)
				image_index += 2;
			if (x >= (room_width / 2))
				image_index += 1;
			image_xscale = 2;
			image_yscale = 2;
			image_speed = 0;
		}
	}
}
