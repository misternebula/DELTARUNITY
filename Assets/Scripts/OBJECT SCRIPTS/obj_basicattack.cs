using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_basicattack : GamemakerObject
	{
		public override void Create()
		{
			image_xscale = 2;
			image_yscale = 2;
			damage = 100;
			image_speed = 0.334;
			FindObjectOfType<obj_battlecontroller>().damagenoise = true;
			maxindex = 3;
			critical = false;
		}

		public override void Step_0()
		{
			if (critical == true)
			{
				image_xscale += 0.1;
				image_yscale += 0.1;
			}

			if (image_index >= maxindex)
				instance_destroy();
		}
	}
}
