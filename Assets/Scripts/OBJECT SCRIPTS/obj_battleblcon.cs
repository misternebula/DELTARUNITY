using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_battleblcon : GamemakerObject
	{
		public override void Create()
		{
			mywriter = instance_create((x + 5), (y + 5), "obj_writer");
			mywriter.depth = (depth - 5);
		}

		public override void Step_0()
		{
			if (instance_exists(mywriter) == false)
				instance_destroy();
		}
	}
}
