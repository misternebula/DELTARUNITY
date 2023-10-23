using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_darklancer : GamemakerObject
	{
		public override void Create()
		{
			image_speed = 0;
			con = 0;
			image_xscale = 2;
			image_yscale = 2;
			if (room == "room_dark2" && global.plot >= 12)
				instance_destroy();
			if (room == "room_dark3" && global.plot >= 13)
				instance_destroy();
		}

        public override void Step_0()
        {
            if (con == 0)
            {
                if (room == "room_dark2")
                {
                    if (x < (__view_get(0, 0) + 630))
                    {
                        vspeed = -8;
                        image_speed = 0.2;
                        con = 1;
                        if (global.plot < 12)
                            global.plot = 12;
                    }
                }
                if (room == "room_dark3")
                {
                    if (x < (__view_get(0, 0) + 610))
                    {
                        hspeed = 8;
                        image_speed = 0.2;
                        con = 1;
                        if (global.plot < 13)
                            global.plot = 13;
                    }
                }
            }
        }
	}
}
