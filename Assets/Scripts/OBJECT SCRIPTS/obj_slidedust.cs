using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_slidedust : GamemakerObject
	{
		public override void Create()
		{
			image_speed = 0.5;
			alarm[5] = 10;
			image_xscale = 2;
			image_yscale = 2;
		}

		public override void Alarm_5()
		{
			instance_destroy();
		}
	}
}
