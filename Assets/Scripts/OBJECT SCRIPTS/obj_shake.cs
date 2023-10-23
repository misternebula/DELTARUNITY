using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_shake : GamemakerObject
	{
		public override void Create()
		{
			camera = 0;
			shakespeed = 1;
			shakesign = 1;
			shakex = 4;
			shakey = 4;
			siner = 0;
			active = false;
			permashake = false;
		}

		public override void Alarm_0()
		{
			if (global.flag[12] == 0)
{
				__view_set(0, camera, (camerax + (shakex * shakesign)));
				__view_set(1, camera, (cameray + (shakey * shakesign)));
}
			if (permashake == false)
{
				if (shakex > 0)
					shakex -= 1;
				if (shakey > 0)
					shakey -= 1;
}
			shakesign = (-shakesign);
			alarm[0] = shakespeed;
if (shakex == 0 && shakey == 0)
				instance_destroy();
		}

		public override void Destroy()
		{
			__view_set(0, camera, camerax);
			__view_set(1, camera, cameray);
		}

		public override void Step_0()
		{
			if (active == false)
			{
				camerax = __view_get(0, camera);
				cameray = __view_get(1, camera);
				if (global.flag[12] == 0)
				{
					__view_set(0, camera, (camerax + shakex));
					__view_set(1, camera, (cameray + shakey));
				}
				shakesign = (-shakesign);
				active = true;
				alarm[0] = shakespeed;
			}
		}
	}
}
