using Assets;

namespace OBJECT_SCRIPTS
{
	public class DEVICE_CHOICE : GamemakerObject
	{
		public override void Create()
		{
			CURX = 0;
			CURY = 0;
			XMAX = 0;
			YMAX = 0;
			NAME[0, 0] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_7_0");
			NAMEX[0, 0] = 20;
			NAMEY[0, 0] = 20;
			PLAYERNAMEY = 40;
			TYPE = 0;
			NAMESTRING = "";
			STRINGMAX = 12;
			xoff = 0;
			yoff = 0;
			LANGSUBTYPE = 0;
			if (global.lang == "ja")
				LANGSUBTYPE = 1;
			global.choice = -1;
			if (TYPE == 0)
			{
				NAME[0, 0] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_22_0");
				NAME[1, 0] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_23_0");
				NAMEX[0, 0] = 110;
				NAMEX[1, 0] = 190;
				NAMEY[0, 0] = 180;
				NAMEY[1, 0] = 180;
				XMAX = 1;
				CURX = -1;
				IDEALX = 150;
				IDEALY = 180;
			}
			if (TYPE == 1)
			{
				for (i = 0; i <= 7; i += 1)
				{
					NAME[i, 0] = gm_string((1 + i));
					NAMEX[i, 0] = (80 + (i * 20));
					NAMEY[i, 0] = 180;
					XMAX += 1;
				}
				NAMEY[0, 0] = 180;
				NAMEY[1, 0] = 180;
				XMAX = 7;
				xoff = -7;
			}
			if (TYPE == 2)
			{
				for (i = 0; i <= 6; i += 1)
				{
					NAME[0, i] = gm_string((1 + i));
					NAMEX[0, i] = 80;
					NAMEY[0, i] = (100 + (i * 20));
					YMAX += 1;
				}
				NAME[0, 0] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_57_0");
				NAME[0, 1] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_58_0");
				NAME[0, 2] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_59_0");
				NAME[0, 3] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_60_0");
				NAME[0, 4] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_61_0");
				NAME[0, 5] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_62_0");
				NAME[0, 6] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_63_0");
				HEARTX = (NAMEX[0, 0] - 20);
				HEARTY = NAMEY[0, 0];
				XMAX = 0;
				YMAX = 6;
				xoff = -20;
			}
			if (TYPE == 3)
			{
				show_debug_message("create type 3");
				scr_84_name_input_setup();
			}
			HEARTX = NAMEX[0, 0];
			HEARTY = NAMEY[0, 0];
			if (TYPE == 0)
				HEARTX = 150;
			DRAWHEART = 1;
			ONEBUFFER = 0;
			TWOBUFFER = 0;
			FINISH = false;
			fadebuffer = 10;
		}

		public override void Draw_0()
		{
			scr_84_set_draw_font("main");
			xfade = ((10 - fadebuffer) / 10f);
			if (xfade > 1)
				xfade = 1;
			if (TYPE <= 2)
			{
				if (DRAWHEART == 1)
					draw_sprite_ext("IMAGE_SOUL_BLUR", 0, (HEARTX + xoff), (HEARTY + yoff), 1, 1, 0, c_white, (0.6 * xfade));
				draw_set_alpha(xfade);
				if (TYPE < 2)
				{
					for (i = 0; i <= XMAX; i += 1)
					{
						draw_set_color(c_white);
						if (CURX == i)
							draw_set_color(c_yellow);
						draw_text(NAMEX[i, 0], NAMEY[i, 0], string_hash_to_newline(NAME[i, 0]));
					}
				}
				if (TYPE == 2)
				{
					for (i = 0; i <= YMAX; i += 1)
					{
						draw_set_color(c_white);
						if (CURY == i)
							draw_set_color(c_yellow);
						draw_text(NAMEX[0, i], NAMEY[0, i], string_hash_to_newline(NAME[0, i]));
					}
				}
				draw_set_alpha(1);
			}
			if (TYPE == 3)
			{
				if (DRAWHEART == 1)
					draw_sprite_ext("IMAGE_SOUL_BLUR", 0, HEARTX, HEARTY, 1, 1, 0, c_white, (0.5 * xfade));
				draw_set_alpha(xfade);
				for (j = 0; j <= YMAX; j += 1)
				{
					for (i = 0; i <= XMAX; i += 1)
					{
						draw_set_color(c_white);
						if (CURX == i && CURY == j)
							draw_set_color(c_yellow);
						var str = string_hash_to_newline(NAME[i, j]);
						if (string_char_at(str, 1) == "(" && string_length(str) > 3)
							str = string_copy(str, 4, (string_length(str) - 3));
						if (str != "<" && str != ">")
							draw_text(NAMEX[i, j], NAMEY[i, j], str);
					}
				}
				draw_set_color(c_white);
				if (string_length(NAMESTRING) == STRINGMAX)
					draw_set_color(c_yellow);
				var width = string_width(NAMESTRING);
				draw_text(((320 - width) / 2d), PLAYERNAMEY, string_hash_to_newline(NAMESTRING));
				draw_set_alpha(1);
			}
		}

		public override void Other_10()
		{
			TYPE = 3;
			show_debug_message("other 10 type 3");
			scr_84_name_input_setup();
		}

		public override void Step_0()
		{
			if (fadebuffer > 0)
				ONEBUFFER = 1;
			if (TYPE > 0)
			{
				if (fadebuffer < 0 && FINISH == false)
				{
					var dx = 0;
					var dy = 0;
					if (right_p())
						dx = 1;
						
					if (left_p())
						dx = -1;
						
					if (down_p())
						dy = 1;
						
					if (up_p())
						dy = -1;

					if (dx != 0 && XMAX > 0)
					{
						var found = 0;
					    while (found != 1)
						{
							CURX = (((CURX + (XMAX + 1)) + dx) % (XMAX + 1));
							var ccc = NAME[CURX, CURY];
							if (ccc != " " && ccc != "　" && ccc != ">" && ccc != "<")
								found = 1;
						}
					}
					else if (dy != 0 && YMAX > 0)
					{
						var found = 0;
						while (found != 1)
						{
							CURY = (((CURY + (YMAX + 1)) + dy) % (YMAX + 1));
							var move = 1;
							var ccc = "";
							if (move == 1)
							{
								ccc = NAME[CURX, CURY];
								if (ccc == ">")
									CURX += 1;
								else if (ccc == "<")
									CURX -= 1;
								else
									move = 0;
								while (move == 1)
								{
									ccc = NAME[CURX, CURY];
									if (ccc == ">")
										CURX += 1;
									else if (ccc == "<")
										CURX -= 1;
									else
										move = 0;
								}
							}
							if (ccc != " " && ccc != "　")
								found = 1;
						}
					}
				}
			}
			else if (fadebuffer < 0 && FINISH == false)
			{
				if (right_p())
					CURX = 1;
				if (left_p())
					CURX = 0;
			}
			if (TYPE >= 0 && TYPE <= 2)
			{
				DRAWHEART = 1;
				if (CURX >= 0)
				{
					IDEALX = NAMEX[CURX, CURY];
					IDEALY = NAMEY[CURX, CURY];
					if (TYPE == 0)
					{
						scr_84_set_draw_font("main");
						IDEALX += ((string_width(NAME[CURX, CURY]) / 2d) - 10);
					}
				}
				else
				{
					IDEALX = 150;
					IDEALY = 180;
				}
				if (abs((HEARTX - IDEALX)) <= 2)
					HEARTX = IDEALX;
				if (abs((HEARTY - IDEALY)) <= 2)
					HEARTY = IDEALY;
				HEARTDIFF = ((IDEALX - HEARTX) * 0.3);
				HEARTX += HEARTDIFF;
				if (DRAWHEART == 0)
				{
					HEARTX = IDEALX;
					DRAWHEART = 1;
				}
				HEARTDIFF = ((IDEALY - HEARTY) * 0.3);
				HEARTY += HEARTDIFF;
				if (DRAWHEART == 0)
				{
					HEARTY = IDEALY;
					DRAWHEART = 1;
				}
				if (FINISH == false)
				{
					if (button1_p() && CURX >= 0 && ONEBUFFER < 0)
					{
						global.choice = CURX;
						if (TYPE == 2)
							global.choice = CURY;
						FINISH = true;
						ONEBUFFER = 99;
					}
				}
			}
			if (TYPE == 3)
			{
				DRAWHEART = 1;
				var str = NAME[CURX, CURY];
				var cmd = "";
				if (string_length(str) > 1)
				{
					cmd = string_char_at(str, 2);
					str = string_copy(str, 4, (string_length(str) - 3));
				}
				scr_84_set_draw_font("main");
				IDEALX = ((NAMEX[CURX, CURY] + (string_width(str) / 2d)) - 10);
				IDEALY = (NAMEY[CURX, CURY] - 2);
				if (abs((HEARTX - IDEALX)) <= 2)
					HEARTX = IDEALX;
				if (abs((HEARTY - IDEALY)) <= 2)
					HEARTY = IDEALY;
				HEARTDIFF = ((IDEALX - HEARTX) * 0.5);
				if (abs(HEARTDIFF) > 60)
					DRAWHEART = 0;
				HEARTX += HEARTDIFF;
				if (DRAWHEART == 0)
				{
					HEARTX = IDEALX;
					DRAWHEART = 1;
				}
				HEARTDIFF = ((IDEALY - HEARTY) * 0.5);
				if (abs(HEARTDIFF) > 60)
					DRAWHEART = 0;
				HEARTY += HEARTDIFF;
				if (DRAWHEART == 0)
				{
					HEARTY = IDEALY;
					DRAWHEART = 1;
				}
				ERASE = false;
				if (FINISH == false)
				{
					if (button2_p())
						ERASE = true;
					if (button1_p() && ONEBUFFER < 0)
					{
						if (cmd == "")
						{
							if (string_length(NAMESTRING) < STRINGMAX)
								NAMESTRING += NAME[CURX, CURY];
						}
						if (cmd == "B")
							ERASE = true;
						if (cmd == "1" || cmd == "2" || cmd == "3")
						{
							var new_type = (int)real(cmd);
							if (LANGSUBTYPE != new_type)
							{
								LANGSUBTYPE = new_type;
								scr_84_name_input_setup();
							}
						}
						if (cmd == "E" && ONEBUFFER < 0 && string_length(NAMESTRING) >= 1)
						{
							ONEBUFFER = 99;
							FINISH = true;
							global.choice = 1;
						}
					}
				}
				if (ERASE == true && FINISH == false)
				{
					if (string_length(NAMESTRING) > 0)
						NAMESTRING = string_delete(NAMESTRING, string_length(NAMESTRING), 1);
				}
			}
			ONEBUFFER -= 1;
			if (FINISH == false)
				fadebuffer -= 1;
			if (FINISH == true)
			{
				global.flag[20] = 1;
				if (fadebuffer < 0)
					fadebuffer = 0;
				fadebuffer += 1;
				if (fadebuffer >= 10)
					instance_destroy();
			}
		}
	}
}
