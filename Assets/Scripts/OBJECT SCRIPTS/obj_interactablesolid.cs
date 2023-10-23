using Assets;
using OBJECT_SCRIPTS.COLLISION;

namespace OBJECT_SCRIPTS
{
	public class obj_interactablesolid : obj_solidblock
	{
		public override void Create()
		{
			myinteract = 0;
			image_speed = 0;
			scr_depth();
		}

		public override void Other_10()
		{
			global.msg[0] = scr_84_get_lang_string("obj_interactablesolid_slash_Other_10_gml_2_0");
			myinteract = 3;
			global.msc = 0;
			global.typer = 5;
			global.fc = 0;
			global.fc = 0;
			global.interact = 1;
			mydialoguer = instance_create<obj_dialoguer>(0, 0, "obj_dialoguer");
		}

		public override void Step_0()
		{
			if (myinteract == 3)
			{
				if (instance_exists(mydialoguer) == false)
				{
					global.interact = 0;
					myinteract = 0;
					obj_mainchara.onebuffer = 5;
				}
			}
		}
	}
}
