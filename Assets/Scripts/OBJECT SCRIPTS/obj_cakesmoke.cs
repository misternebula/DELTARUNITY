using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_cakesmoke : GamemakerObject
	{
		public override void Create()
		{
			gravity = -0.2;
			hspeed = (1 + random(2));
			friction = 0.08;
			timer = 0;
			image_xscale = 1;
			image_yscale = 1;
		}

		public override void Step_0()
		{
			timer += 1;
			if (timer >= 16)
				image_alpha -= 0.1;
			if (image_alpha <= 0)
				instance_destroy();
			image_xscale += 0.05;
			image_yscale += 0.05;
		}
	}
}
