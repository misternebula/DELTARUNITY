using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_darkeyepuzzle : GamemakerObject
	{
		public override void Create()
		{
			siner = 0;
			con = 0;
			total = 0;
			shine = new dynamic[3];
			if (global.flag[201] == 0)
			{
				eye[0] = 0;
				eye[1] = 0;
				eye[2] = 0;
				for (i = 0; i < 3; i += 1)
				{
					shine[i] = scr_dark_marker(((x + 30) + (i * 110)), (y + 110), "spr_shine");
					shine[i].image_speed = 0.1;
					shine[i].depth = 800000;
				}
				block = instance_create(960, 320, "obj_soliddark");
				block.image_yscale = 2;
			}
			else
			{
				con = 44;
				eye[0] = 1;
				eye[1] = 1;
				eye[2] = 1;
				for (i = 0; i < 3; i += 1)
				{
					glass = scr_dark_marker((960 + (i * 40)), 320, "spr_magicalglass");
					glass.depth = 950000;
					glass = scr_dark_marker((960 + (i * 40)), 360, "spr_magicalglass");
					glass.depth = 950000;
				}
				foreach (var item in with<obj_darkeyepuzzle_switch>())
				{
					item.instance_destroy();
				}
			}
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Draw_0()
		{
			total = 0;
			for (i = 0; i < 3; i += 1)
				draw_sprite_ext("spr_eyepuzzle_marking", i, ((x + 16) + (i * 110)), (y + 60), 2, 2, 0, c_white, 1);
			for (i = 0; i < 3; i += 1)
			{
				draw_sprite("spr_darkeye", eye[i], (x + (i * 110)), y);
				total += eye[i];
			}
		}

		public override void Step_0()
		{
			if (eye[0] == 1 && eye[1] == 1 && eye[2] == 1)
			{
				if (con == 0 && global.interact == 0)
				{
					global.interact = 1;
					con = 2;
					alarm[4] = 30;
				}
			}
			if (con == 3)
			{
				con = 4;
				for (i = 0; i < 3; i += 1)
				{
					glass = scr_dark_marker((960 + (i * 40)), 320, "spr_magicalglass");
					glass.depth = 950000;
					glass = scr_dark_marker((960 + (i * 40)), 360, "spr_magicalglass");
					glass.depth = 950000;
				}
				block.instance_destroy();
				snd_play("snd_impact");
				instance_create(0, 0, "obj_shake");
				global.facing = 1;
				alarm[4] = 30;
				for (int i = 0; i < 3; i++)
				{
					shine[i].instance_destroy();
				}
				foreach (var item in with<obj_darkeyepuzzle_switch>())
				{
					item.instance_destroy();
				}
			}
			if (con == 5)
			{
				global.flag[201] = 1;
				global.interact = 0;
				con = 6;
			}
		}
	}
}
