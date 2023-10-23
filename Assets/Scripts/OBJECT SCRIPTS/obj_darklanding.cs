using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_darklanding : GamemakerObject
	{
		public override void Create()
		{
			if (global.plot < 16)
			{
				con = 1;
				global.interact = 1;
				obj_mainchara.fun = true;
				obj_mainchara.sprite_index = "spr_kris_fallen_dark";
				alarm[4] = 45;
			}
			else
			{
				con = 99;
				if (scr_havechar(3))
				{
					rd = instance_create(240, 240, "obj_readable_room1");
					rd.image_xscale = 8;
					rd.image_yscale = 2;
				}
			}
		}

		public override void Alarm_4() => con += 1;

		public override void Draw_0()
		{
			draw_background_ext("bg_darkwest", 160, 0, 2, 2, 0, c_white, 1);
		}

		public override void Step_0()
		{
			if (con == 2)
			{
				obj_mainchara.sprite_index = "spr_krisd_dark";
				obj_mainchara.fun = false;
				global.facing = 0;
				global.interact = 0;
				con = 3;
				global.flag[7] = 0;
				if (global.plot < 16)
					global.plot = 16;
				scr_tempsave();
			}
		}
	}
}
