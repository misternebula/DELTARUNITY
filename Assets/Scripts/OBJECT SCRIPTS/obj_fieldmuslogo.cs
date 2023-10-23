using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_fieldmuslogo : obj_backgrounderparent
	{
		public override void Create()
		{
			siner = 0;
			image_xscale = 2;
			image_yscale = 2;
			image_alpha = 0;
			offx = 0;
			if (global.lang == "ja")
				sprite_index = "spr_ja_fieldmuslogo";
			x = ((__view_get(0, 0) + 180) - offx);
			y = (__view_get(1, 0) + 100);
			obj_mainchara.bg = 1;
		}

		public override void Other_10()
		{
			x = ((__view_get(0, 0) + 180) - offx);
			y = (__view_get(1, 0) + 100);
		}

		public override void Step_0()
		{
			siner += 1;
			if (siner <= 30)
			{
				offx += (2 - (siner / 15.0));
				if (image_alpha < 1.0)
					image_alpha += 0.05;
			}

			if (siner >= 120)
			{
				offx += (-8 + (siner / 15.0));
				image_alpha -= (1.0 / 30.0);
				if (image_alpha <= 0)
					instance_destroy();
			}
		}
	}
}
