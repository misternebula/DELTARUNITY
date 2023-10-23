using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_dustball_pilebreak : GamemakerObject
	{
		public override void Create()
		{
			hspeed = (random(6) * choose(2, -2));
			friction = (0.28 + random(0.08));
			gravity = -0.44;
			timer = 0;
			image_xscale = 2;
			image_yscale = 2;
		}

		public override void Step_0()
		{
			timer += 1;
			image_index = ((timer / 30) * 4);
			if (timer >= 30)
			{
				image_index = 3;
				image_alpha -= 0.1;
			}
			if (timer >= 40)
				instance_destroy();
		}
	}
}
