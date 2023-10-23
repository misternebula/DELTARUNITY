using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_afterimage_grow : GamemakerObject
	{
		public override void Create()
		{
			xrate = 0.2;
			yrate = 0.2;
			fade = 0.1;
		}

		public override void Step_0()
		{
			image_alpha -= fade;
			image_xscale += xrate;
			image_yscale += yrate;
			if (image_alpha < 0)
				instance_destroy();
		}
	}
}
