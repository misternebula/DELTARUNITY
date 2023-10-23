using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_panner : GamemakerObject
	{
		public override void Create()
		{
			panx = 0;
			pany = 0;
			panmax = 1;
			pantimer = 0;
			if (global.plot < 11)
				pantimer = -1;
		}

		public override void Step_0()
		{
			__view_set(0, 0, (__view_get(0, 0) + panx));
			__view_set(1, 0, (__view_get(1, 0) + pany));
			pantimer += 1;
			if (pantimer >= panmax)
				instance_destroy();
		}
	}
}
