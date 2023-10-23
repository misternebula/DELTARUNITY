﻿using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_ralsei_runevent : GamemakerObject
	{
		public override void Create()
		{
			con = 0;
			runamt = 0;
			if (global.chara[1] != 3)
				con = 999;
			if (global.flag[206] == 1)
				con = 999;
			image_speed = 0.2;
		}

		public override void Step_2()
		{
			if (instance_exists(obj_mainchara))
			{
				if (obj_mainchara.runmove == true)
					runamt += 1;
				if (runamt >= 30 && con == 0)
				{
					con = 99;
					global.flag[206] = 1;
				}
				if (obj_mainchara.y > 760 && con == 0 && global.interact == 0)
				{
					global.interact = 1;
					con = 1;
					global.typer = 31;
					global.fe = 0;
					global.fc = 2;
					global.msc = 130;
					scr_text(global.msc);
					instance_create(0, 0, "obj_dialoguer");
					con = 2;
				}
				if (con == 2 && d_ex() == false)
				{
					global.interact = 0;
					con = 99;
					global.flag[206] = 1;
				}
			}
		}
	}
}
