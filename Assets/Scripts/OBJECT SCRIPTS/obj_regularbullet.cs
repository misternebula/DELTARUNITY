namespace OBJECT_SCRIPTS
{
	public class obj_regularbullet : obj_collidebullet
	{
		public override void Create()
		{
			grazed = false;
			grazepoints = 5;
			timepoints = 5;
			target = 0;
			dont = 1;
			inv = 60;
			damage = 124;
			active = true;
			spec = 0;
			image_alpha = 1;
			if (!instance_exists("obj_heart"))
				instance_destroy();
			wall_destroy = 1;
		}

		public override void Step_0()
		{
			if (wall_destroy == 1)
			{
				if (x < (__view_get(0, 0) - 40))
					instance_destroy();

				if (x > (__view_get(0, 0) + 680))
					instance_destroy();

				if (y < (__view_get(1, 0) - 40))
					instance_destroy();

				if (y > (__view_get(1, 0) + 520))
					instance_destroy();
			}
		}
	}
}
