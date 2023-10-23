using Assets;

namespace OBJECT_SCRIPTS
{
	public class DEVICE_OBACK_4 : GamemakerObject
	{
		public override void Create()
		{
			siner = 0;
			alpha = 0.2;
			xstretch = 1;
			ystretch = 1;
			o_insurance = 0;
			depth = (4 + instance_number(object_index));
			OBSPEED = 0.02;
			b_insurance = 0;
			b_insurance = -0.2;
		}

		public override void Draw_0()
		{
			if (siner > 2)
			{
				draw_background_ext("IMAGE_DEPTH", 160, 120, (1 + xstretch), (1 + ystretch), 0, image_blend, (((0.2 + alpha) - o_insurance) + b_insurance));
				draw_background_ext("IMAGE_DEPTH", 160, 120, (-1 - xstretch), (1 + ystretch), 0, image_blend, (((0.2 + alpha) - o_insurance) + b_insurance));
				draw_background_ext("IMAGE_DEPTH", 160, 120, (-1 - xstretch), (-1 - ystretch), 0, image_blend, (((0.2 + alpha) - o_insurance) + b_insurance));
				draw_background_ext("IMAGE_DEPTH", 160, 120, (1 + xstretch), (-1 - ystretch), 0, image_blend, (((0.2 + alpha) - o_insurance) + b_insurance));
			}
		}

		public override void Step_0()
		{
			siner += 1;
			if (OBSPEED > 0)
				alpha = (sin((siner / 34f)) * 0.2);
			ystretch += OBSPEED;
			xstretch += OBSPEED;
			if (b_insurance < 0)
				b_insurance += 0.01;
			if (ystretch > 2)
			{
				o_insurance += 0.01;
				if (o_insurance >= 0.5)
					instance_destroy();
			}
		}
	}
}
