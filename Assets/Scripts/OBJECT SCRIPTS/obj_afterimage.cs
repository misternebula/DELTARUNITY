using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_afterimage : GamemakerObject
	{
		public override void Step_0()
		{
			image_alpha -= 0.04;
			if (image_alpha < 0)
				instance_destroy();
		}
	}
}
