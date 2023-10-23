using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_ob_gen : GamemakerObject
	{
		public override void Create()
		{
			timer = 999;
			con = 0;
			global.charinstance[0] = obj_mainchara;
			global.charinstance[1] = global.cinstance[0];
			global.charinstance[2] = global.cinstance[1];
			battlealpha = 0;
			whitecon = 0;
			whitetimer = 0;
		}

		public override void Draw_0()
		{
			if (obj_mainchara.battlemode == 1)
			{
				if (battlealpha < 0.8)
					battlealpha += 0.04;
			}
			else if (battlealpha > 0)
				battlealpha -= 0.04;
			draw_set_alpha(battlealpha);
			draw_set_color(c_black);
			draw_rectangle((__view_get(0, 0) - 100), (__view_get(1, 0) - 100), (__view_get(0, 0) + 740), (__view_get(1, 0) + 540), false);
			draw_set_alpha(1);
			if (instance_exists("obj_caterpillarchara"))
			{
				var obj_caterpillarchara = FindObjectOfType<obj_caterpillarchara>();
				obj_caterpillarchara.image_blend = merge_color(c_white, c_black, (battlealpha / 2));
				if (battlealpha <= 0)
					obj_caterpillarchara.image_blend = c_white;
			}
			if (whitecon == 1)
			{
				obj_mainchara.battlemode = 0;
				whitetimer += 1;
				draw_set_alpha((whitetimer / 15));
				draw_set_color(c_white);
				draw_rectangle(-100, -100, (__view_get(0, 0) + 740), (__view_get(1, 0) + 540), false);
				draw_set_alpha(1);
			}
			if (whitecon == 2)
			{
				whitetimer -= 1;
				draw_set_alpha((whitetimer / 15));
				draw_set_color(c_white);
				draw_rectangle(-100, -100, (__view_get(0, 0) + 740), (__view_get(1, 0) + 540), false);
				draw_set_alpha(1);
				if (whitetimer <= 0)
				{
					global.interact = 0;
					whitecon = 0;
					whitetimer = 0;
				}
			}
		}

		public override void Step_0()
		{
			if (room == "room_field_checkers1")
			{
				if (timer >= 900)
				{

				}

				if (obj_mainchara.x >= 4000 && obj_mainchara.x <= 1620)
					obj_mainchara.battlemode = 1;
				else
					obj_mainchara.battlemode = 0;

				if (global.interact == 0)
					timer += 1;
				if (timer >= 40)
				{
					timer = 0;
					ch = (con * 40);
					instance_create((1442 - ch), (240 + ch), "obj_ob_checkertile");

					con += 1;
					if (con > 2)
						con = 0;
				}
			}

			if (whitetimer >= 20 && whitecon == 1)
			{
				xdiff = (obj_mainchara.x - 340);
				obj_mainchara.x = 340;

				if (instance_exists(global.cinstance[0]))
				{
					global.cinstance[0].x -= xdiff;
					for (i = 25; i >= 0; i -= 1)
						global.cinstance[0].remx[i] -= xdiff;
				}
				if (instance_exists(global.cinstance[1]))
				{
					global.cinstance[1].x -= xdiff;
					for (i = 25; i >= 0; i -= 1)
						global.cinstance[1].remx[i] -= xdiff;
				}
				whitecon = 2;
			}

			if (room == "room_field_checkers4" || room == "room_field_checkers6")
			{
				if (obj_mainchara.x >= 4000 && obj_mainchara.x <= 1620)
					obj_mainchara.battlemode = 1;
				else
					obj_mainchara.battlemode = 0;
			}
		}
	}
}
