using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_dustball : GamemakerObject
	{
		public override void Create()
		{
			timer = 0;
			image_xscale = 2;
			image_yscale = 2;
		}

		public override void Step_0()
		{
			timer += 1;
			image_index = (int)(1 + ((timer * 1.5d) / 55));
			if (timer >= 55)
				instance_destroy();
			x += (sin((timer / 5d)) * 0.4);
			y += cos((timer / 3.5));
			x += 1.6;
			y -= 0.8;
		}
	}
}
