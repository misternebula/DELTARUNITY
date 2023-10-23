using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_excblcon : GamemakerObject
	{
		public override void Create()
		{
			alarm[0] = 20;
			if (global.darkzone == true)
			{
				image_xscale = 2;
				image_yscale = 2;
			}
		}

		public override void Alarm_0()
		{
			instance_destroy();
		}
	}
}
