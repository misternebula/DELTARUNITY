using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_dustpile : obj_interactablesolid
	{
		public override void Create()
		{
			image_xscale = 2;
			image_yscale = 2;
			siner = 0;
			alarm[0] = 2;
			bust = 0;
		}

		public override void Alarm_0()
		{
			if (bust == 0)
			{
				instance_create((x + 60), (y + 20), "obj_dustball");
				alarm[0] = 10;
			}
		}

		public override void Alarm_3()
		{
			global.interact = 0;
		}

		public override void Draw_0()
		{
			draw_sprite_ext("spr_dustpile_parts", 3, x, y, 2, 2, 0, c_white, image_alpha);
			if (bust == 0)
			{
				draw_sprite_ext("spr_dustpile_parts", 2, (x - sin((siner / 5d))), (y + sin((siner / 5d))), 2, 2, 0, c_white, image_alpha);
				draw_sprite_ext("spr_dustpile_parts", 1, (x + cos((siner / 5d))), ((y + sin((siner / 5d))) + 1), 2, 2, 0, c_white, image_alpha);
				draw_sprite_ext("spr_dustpile_parts", 0, (x + sin((siner / 5d))), (y + sin((siner / 5d))), 2, 2, 0, c_white, image_alpha);
			}
		}

		public override void Other_10()
		{
			if (bust == 0)
{
				global.interact = 1;
				instance_create(0, 0, "obj_shake");
				snd_play("snd_cough");
				alarm[3] = 6;
				bust = 1;
				for (i = 0; i < 12; i += 1)
					instance_create(((x + 20) + (i * 6)), ((y + 20) + random(25)), "obj_dustball_pilebreak");
}
		}

		public override void Step_0()
		{
			scr_depth();
			siner += 1;
		}
	}
}
