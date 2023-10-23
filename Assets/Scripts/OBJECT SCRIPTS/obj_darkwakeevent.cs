using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_darkwakeevent : GamemakerObject
	{
		public override void Create()
		{
			con = 0;
			if (global.plot < 11)
			{
				scr_losechar();
				foreach (var item in with<obj_caterpillarchara>())
				{
					item.instance_destroy();
				}
				con = 1;
				global.interact = 1;
				obj_mainchara.visible = false;
				k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, "spr_kris_fell");
				waketimer = -50;
			}
			else
			{
				instance_destroy();
			}
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Step_0()
		{
			if (con == 1)
			{
				waketimer += 1;
				canclick = false;
				if (waketimer < 50)
					canclick = true;
				if (waketimer < 110 && waketimer > 65)
					canclick = true;
				if (waketimer > 125 && waketimer < 170)
					canclick = true;
				if (canclick == true)
				{
					if (left_p())
						waketimer += 2;
					if (right_p())
						waketimer += 2;
					if (down_p())
						waketimer += 2;
					if (up_p())
						waketimer += 2;
				}
				if (waketimer == 60 || waketimer == 62)
				{
					k.sprite_index = "spr_kris_fallen_dark";
					k.x = (k.xstart + choose(-2, 2));
					k.y = (k.ystart + choose(-2, 2));
				}
				if (waketimer == 63)
				{
					k.x = k.xstart;
					k.y = k.ystart;
				}
				if (waketimer == 120 || waketimer == 121 || waketimer == 122 || waketimer == 123)
				{
					k.x = (k.xstart + choose(-2, 2, 0));
					k.y = (k.ystart + choose(-2, 2, 0));
				}
				if (waketimer >= 180 && waketimer <= 184)
				{
					k.x = (k.xstart + choose(-2, 2, 0));
					k.y = (k.ystart + choose(-2, 2, 0));
				}
				if (waketimer == 185)
				{
					k.instance_destroy();
					obj_mainchara.visible = true;
					global.interact = 0;
					con = 2;
					if (global.plot < 11)
						global.plot = 11;
					scr_tempsave();
					instance_destroy();
				}
			}
		}
	}
}
