using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_smallface : GamemakerObject
	{
		public override void Create()
		{
			stringpos = 0;
			mystring = " ";
			part = 1;
			partstring = " ";
			type = 0;
			rate = 1;
			active = false;
			finished = 0;
			mycolor = c_purple;
			alarm[0] = 1;
			getrid = 0;
			writergod = FindObjectOfType<obj_writer>();
			nowdir = 90;
			facealpha = 0;
		}

		public override void Alarm_0()
		{
			nowdir = direction;
			speed = 0;
			active = true;
			if (type != 2 && type != 4)
				finished = 1;
		}

		public override void Draw_0()
		{
			if (facealpha < 1)
				facealpha += 0.2;
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, facealpha);
			draw_set_alpha(facealpha);
			if (type == 0 || type == 3)
			{
				scr_84_set_draw_font("main");
				draw_set_color(mycolor);
				draw_text((x + 70), (y + 10), string_hash_to_newline(mystring));
			}
			if (type == 1 && active == true && getrid == 0)
			{
				scr_84_set_draw_font("main");
				draw_set_color(mycolor);
				draw_text((x + 70), (y + 15), string_hash_to_newline(mystring));
				finished = 1;
			}
			if (type == 2 || type == 4)
			{
				if (active == true)
				{
					scr_84_set_draw_font("main");
					draw_set_color(mycolor);
					if (finished == 0)
					{
						partstring += string_char_at(mystring, part);
						part += 1;
						if (part >= (string_length(mystring) + 1))
							finished = 1;
					}
					draw_text(((x + 70) + random(1)), ((y + 15) + random(1)), string_hash_to_newline(partstring));
				}
			}
			if (instance_exists(writergod))
			{
				if (finished == 1 && getrid == 0)
				{
					if (writergod.halt == 0)
					{
						writergod.halt = 1;
					}

					finished = 2;

				}
			}
			else
				instance_destroy();
			if (getrid == 1)
			{
				direction = (-nowdir);
				speed += 2;
				if (type == 3 || type == 4)
					instance_destroy();
			}
			draw_set_alpha(1);
		}
	}
}
