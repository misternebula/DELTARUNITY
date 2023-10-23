using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_pacifyspell : GamemakerObject
	{
		public override void Create()
		{
			target = null;
			con = 1;
			siner = 0.0;
			xx = __view_get(0, 0);
			yy = __view_get(1, 0);
			alarm[4] = 50;
			fail = 0;
			flashcolor = c_blue;
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Step_0()
		{
			if (instance_exists((GamemakerObject)target) == 0)
			{
				con = 99;
				instance_destroy();
			}

			if (con == 1)
			{
				if (fail == 0)
				{
					siner += 1;
					target.image_blend = merge_color(target.image_blend, flashcolor, 0.1);
					if ((siner % 2) == 0)
					{
						ai = instance_create((target.x + random(target.sprite_width)), ((target.y + target.sprite_height) - 20), "obj_afterimage");
						ai.gravity = 0.5;
						ai.sprite_index = "spr_savepoint";
						ai.image_speed = 0.2;
					}

					target.x += ((siner / 4.0) + (sin((siner / 8.0)) * 10));
					target.y -= (siner / 5.0);
				}
				else
				{
					siner = 0;
					con = 5;
				}
			}

			if (con == 2)
			{
				target.instance_destroy();
				instance_destroy();
			}

			if (instance_exists((GamemakerObject)target) == 0)
			{
				con = 99;
				instance_destroy();
			}

			if (con == 5)
			{
				con = 6;
				alarm[4] = 8;
			}

			if (con == 6)
				target.image_blend = merge_color(target.image_blend, flashcolor, 0.12);

			if (con == 7)
			{
				con = 8;
				alarm[4] = 8;
			}

			if (con == 8)
				target.image_blend = merge_color(target.image_blend, c_white, 0.16);
			if (con == 9)
			{
				target.image_blend = c_white;
				instance_destroy();
			}
		}
	}
}
