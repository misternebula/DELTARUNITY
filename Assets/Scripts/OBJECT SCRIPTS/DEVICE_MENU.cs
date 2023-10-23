using System;
using Assets;
using UnityEngine;

namespace OBJECT_SCRIPTS
{
	internal class DEVICE_MENU : GamemakerObject
	{
		public override void Create()
		{
			NAME = new string[3];

			TYPE = 0;
			if (file_exists("filech1_3"))
				TYPE = 1;
			if (file_exists("filech1_4"))
				TYPE = 1;
			if (file_exists("filech1_5"))
				TYPE = 1;

			if (TYPE == 0)
			{
				scr_windowcaption(scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_8_0"));
				global.currentsong0 = snd_init("AUDIO_DRONE.ogg");
				global.currentsong1 = mus_loop(global.currentsong0);
			}

			if (TYPE == 1)
			{
				instance_create(0, 0, "obj_fadein");
				global.tempflag[10] = true;
				scr_windowcaption(scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_17_0"));
				global.currentsong0 = snd_init("AUDIO_STORY.ogg");
				global.currentsong1 = mus_loop_ext(global.currentsong0, 1, 0.95);
			}
			BGMADE = false;
			BG_ALPHA = 0;
			BG_SINER = 0;
			OBMADE = 0;
			OB_DEPTH = 0;
			obacktimer = 0;
			OBM = 0.5;
			COL_A = c_green;
			COL_B = c_lime;
			COL_PLUS = merge_color(c_lime, c_white, 0.5);
			if (TYPE == 1)
			{
				BGSINER = 0;
				BGMAGNITUDE = 6;
				COL_A = merge_color(c_silver, c_navy, 0.2);
				COL_B = c_white;
				COL_PLUS = merge_color(c_yellow, c_white, 0.5);
				BGMADE = true;
				BG_ALPHA = 0;
				ANIM_SINER = 0;
				ANIM_SINER_B = 0;
				TRUE_ANIM_SINER = 0;
			}
			MENU_NO = 0;
			for (i = 0; i < 8; i += 1)
				MENUCOORD[i] = 0;
			XL = 210;
			YL = 40;
			YS = 5;
			HEARTX = 75;
			HEARTY = 110;
			HEARTXCUR = 75;
			HEARTYCUR = 75;
			MOVENOISE = 0;
			SELNOISE = false;
			BACKNOISE = false;
			DEATHNOISE = false;
			ONEBUFFER = 2;
			TWOBUFFER = 0;
			THREAT = 0;
			TEMPMESSAGE = " ";
			MESSAGETIMER = 0;
			scr_84_load_ini();
		}

		public override void Other_15()
		{
			Debug.Log($"OTHER_15 MENUCOORD[2]:{MENUCOORD[2]} MENUCOORD[3]:{MENUCOORD[3]}");

			ini_open("dr.ini");
			_NEWNAME = ini_read_string(("G" + gm_string(MENUCOORD[2])), "Name", "------");
			_NEWTIME = ini_read_real(("G" + gm_string(MENUCOORD[2])), "Time", 0);
			_NEWROOM = ini_read_string(("G" + gm_string(MENUCOORD[2])), "Room", "ROOM_INITIALIZE");
			_NEWLEVEL = ini_read_real(("G" + gm_string(MENUCOORD[2])), "Level", 0);
			ini_write_string(("G" + gm_string(MENUCOORD[3])), "Name", _NEWNAME);
			ini_write_real(("G" + gm_string(MENUCOORD[3])), "Time", _NEWTIME);
			ini_write_string(("G" + gm_string(MENUCOORD[3])), "Room", _NEWROOM);
			ini_write_real(("G" + gm_string(MENUCOORD[3])), "Level", _NEWLEVEL);
			ini_close();

			FILE[MENUCOORD[3]] = 1;
			PLACE[MENUCOORD[3]] = PLACE[MENUCOORD[2]];
			TIME[MENUCOORD[3]] = TIME[MENUCOORD[2]];
			NAME[MENUCOORD[3]] = NAME[MENUCOORD[2]];
			LEVEL[MENUCOORD[3]] = LEVEL[MENUCOORD[2]];
			TIME_STRING[MENUCOORD[3]] = TIME_STRING[MENUCOORD[2]];

			file_copy(("filech1_" + gm_string(MENUCOORD[2])), ("filech1_" + gm_string(MENUCOORD[3])));
			if (file_exists((("config_" + gm_string(MENUCOORD[2])) + ".ini")))
				file_copy((("config_" + gm_string(MENUCOORD[2])) + ".ini"), (("config_" + gm_string(MENUCOORD[3])) + ".ini"));
		}

		public override void Draw_0()
		{
			scr_84_set_draw_font("main");
			if (BGMADE == true)
			{
				throw new NotImplementedException();
			}

			for (i = 0; i < 3; i += 1)
			{
				CONT_THIS = 0;
				PREV_MENU = MENU_NO;
				if (MENU_NO == 1)
					PREV_MENU = 0;
				if (MENU_NO == 4)
					PREV_MENU = 3;
				if (MENU_NO == 6)
					PREV_MENU = 5;
				if (MENU_NO == 7)
					PREV_MENU = 5;
				if (MENUCOORD[0] == i && MENU_NO == 1)
					CONT_THIS = 1;
				if (MENUCOORD[3] == i && MENU_NO == 4)
					CONT_THIS = 4;
				if (MENUCOORD[5] == i && MENU_NO == 6)
					CONT_THIS = 6;
				if (MENUCOORD[5] == i && MENU_NO == 7)
					CONT_THIS = 7;
				BOX_X1 = 55;
				BOX_Y1 = (55 + ((YL + YS) * i));
				BOX_X2 = (55 + XL);
				BOX_Y2 = ((55 + ((YL + YS) * i)) + YL);
				draw_set_alpha(0.5);
				draw_set_color(c_black);
				draw_rectangle(BOX_X1, BOX_Y1, BOX_X2, BOX_Y2, false);
				draw_set_alpha(1);
				draw_set_color(COL_A);
				if (MENUCOORD[PREV_MENU] == i)
					draw_set_color(COL_B);
				if (MENU_NO == 3 || MENU_NO == 4)
				{
					if (MENUCOORD[2] == i)
						draw_set_color(COL_PLUS);
				}
				if (MENU_NO == 7 && MENUCOORD[5] == i)
					draw_set_color(c_red);
				draw_rectangle(BOX_X1, BOX_Y1, BOX_X2, BOX_Y2, true);
				if (TYPE == 1)
				{
					for (j = 0; j < 4; j += 1)
						draw_rectangle((BOX_X1 - (0.5 * j)), (BOX_Y1 - (0.5 * j)), (BOX_X2 + (0.5 * j)), (BOX_Y2 + (0.5 * j)), true);
				}
				if (CONT_THIS < 4)
				{
					if (FILE[i] == 0)
						scr_84_set_draw_font("main");
					else if (INITLANG[i] == 0)
						draw_set_font("fnt_main");

					else if (INITLANG[i] == 1)
						draw_set_font("fnt_ja_main");
					draw_text_shadow((BOX_X1 + 25), (BOX_Y1 + 5), NAME[i]);
					scr_84_set_draw_font("main");
					draw_set_halign(fa_right);
					draw_text_shadow((BOX_X1 + 180), (BOX_Y1 + 5), TIME_STRING[i]);
					draw_set_halign(fa_left);
				}

				if (CONT_THIS >= 1)
				{
					if (TYPE == 0)
					{
						if (MENU_NO == 1)
						{
							SELTEXT_C = " ";
							SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_116_0");
							SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_116_1");
							if (FILE[MENUCOORD[0]] == 0)
							{
								SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_117_0");
								SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_117_1");
							}
						}

						if (MENU_NO == 4)
						{
							SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_119_0");
							SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_119_1");
							SELTEXT_C = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_119_2");
						}

						if (MENU_NO == 6)
						{
							SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_120_0");
							SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_120_1");
							SELTEXT_C = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_120_2");
						}

						if (MENU_NO == 7)
						{
							SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_121_0");
							SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_121_1");
							SELTEXT_C = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_121_2");
						}
					}
					else
					{
						if (MENU_NO == 1)
						{
							SELTEXT_C = " ";
							SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_128_0");
							SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_128_1");
							if (FILE[MENUCOORD[0]] == 0)
							{
								SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_129_0");
								SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_129_1");
							}
						}

						if (MENU_NO == 4)
						{
							SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_131_0");
							SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_131_1");
							SELTEXT_C = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_131_2");
						}

						if (MENU_NO == 6)
						{
							SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_132_0");
							SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_132_1");
							SELTEXT_C = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_132_2");
						}

						if (MENU_NO == 7)
						{
							SELTEXT_A = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_133_0");
							SELTEXT_B = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_133_1");
							SELTEXT_C = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_133_2");
						}
					}

					draw_set_color(COL_B);
					if (MENU_NO == 7)
						draw_set_color(c_red);
					draw_text_shadow((BOX_X1 + 25), (BOX_Y1 + 5), SELTEXT_C);
					draw_set_color(COL_A);
					if (MENUCOORD[MENU_NO] == 0)
					{
						draw_set_color(COL_B);
						HEARTX = 75;
						HEARTY = (81 + ((YL + YS) * MENUCOORD[PREV_MENU]));
					}
					draw_text_shadow((BOX_X1 + 35), (BOX_Y1 + 22), SELTEXT_A);
					draw_set_color(COL_A);
					if (MENUCOORD[MENU_NO] == 1)
					{
						draw_set_color(COL_B);
						HEARTX = 165;
						HEARTY = (81 + ((YL + YS) * MENUCOORD[PREV_MENU]));
					}
					draw_text_shadow((BOX_X1 + 125), (BOX_Y1 + 22), SELTEXT_B);
				}
				else
					draw_text_shadow((BOX_X1 + 25), (BOX_Y1 + 22), PLACE[i]);
			}
			if (MENU_NO >= 0)
			{
				if (MENU_NO == 0 || MENU_NO == 2 || MENU_NO == 3 || MENU_NO == 5)
				{
					if (MENUCOORD[MENU_NO] >= 0 && MENUCOORD[MENU_NO] <= 2)
					{
						HEARTX = 65;
						HEARTY = (72 + ((YL + YS) * MENUCOORD[MENU_NO]));
					}
					if (MENUCOORD[MENU_NO] == 3)
					{
						HEARTX = 65;
						HEARTY = 195;
					}
					if (MENUCOORD[MENU_NO] == 4)
					{
						HEARTX = 115;
						HEARTY = 195;
					}
					if (MENUCOORD[MENU_NO] == 5)
					{
						HEARTX = 175;
						HEARTY = 195;
					}
				}
				if (MENU_NO >= 2)
				{
					CANCELTEXT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_189_0");
					if (TYPE == 1)
						CANCELTEXT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_190_0");
					draw_set_color(COL_A);
					if (MENUCOORD[PREV_MENU] == 3)
						draw_set_color(COL_B);
					draw_text_shadow(80, 190, CANCELTEXT);
				}
				if (MENU_NO == 0 || MENU_NO == 1)
				{
					COPYTEXT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_199_0");
					ERASETEXT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_200_0");
					if (global.lang == "ja")
					{
						LANGUAGETEXT = "ENGLISH";
						if (TYPE == 1)
							LANGUAGETEXT = "English";
					}
					else
					{
						LANGUAGETEXT = "JAPANESE";
						if (TYPE == 1)
							LANGUAGETEXT = "Japanese";
					}
					if (TYPE == 1)
					{
						COPYTEXT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_201_0");
						ERASETEXT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_201_1");
					}
					draw_set_color(COL_A);
					if (MENUCOORD[0] == 3)
						draw_set_color(COL_B);
					draw_text_shadow(80, 190, COPYTEXT);
					draw_set_color(COL_A);
					if (MENUCOORD[0] == 4)
						draw_set_color(COL_B);
					draw_text_shadow(130, 190, ERASETEXT);
					draw_set_color(COL_A);
					if (MENUCOORD[0] == 5)
						draw_set_color(COL_B);
					draw_text_shadow(190, 190, LANGUAGETEXT);
				}
				if (MESSAGETIMER <= 0)
				{
					if (TYPE == 0)
					{
						if (MENU_NO == 0 || MENU_NO == 1)
							TEMPCOMMENT = " ";
						if (MENU_NO == 2)
							TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_216_0");
						if (MENU_NO == 3)
							TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_217_0");
						if (MENU_NO == 4)
							TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_218_0");
						if (MENU_NO == 5 || MENU_NO == 6 || MENU_NO == 7)
							TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_219_0");
					}
					if (TYPE == 1)
					{
						if (MENU_NO == 0 || MENU_NO == 1)
							TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_223_0");
						if (MENU_NO == 2)
							TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_224_0");
						if (MENU_NO == 3)
							TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_225_0");
						if (MENU_NO == 4)
							TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_226_0");
						if (MENU_NO == 5 || MENU_NO == 6 || MENU_NO == 7)
							TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Draw_0_gml_227_0");
					}
				}
				draw_set_color(COL_B);
				draw_text_shadow(40, 30, TEMPCOMMENT);
				MESSAGETIMER -= 1;
			}
			if (abs((HEARTX - HEARTXCUR)) <= 2)
				HEARTXCUR = HEARTX;
			if (abs((HEARTY - HEARTYCUR)) <= 2)
				HEARTYCUR = HEARTY;
			HEARTXCUR += ((HEARTX - HEARTXCUR) / 2);
			HEARTYCUR += ((HEARTY - HEARTYCUR) / 2);
			draw_sprite("spr_heartsmall", 0, HEARTXCUR, HEARTYCUR);
		}

		public override void Step_0()
		{
			if (MENU_NO == 1 || MENU_NO == 4 || MENU_NO == 6 || MENU_NO == 7)
			{
				if (left_p())
				{
					if (MENUCOORD[MENU_NO] == 1)
					{
						MENUCOORD[MENU_NO] = 0;
						MOVENOISE = 1;
					}
				}
				if (right_p())
				{
					if (MENUCOORD[MENU_NO] == 0)
					{
						MENUCOORD[MENU_NO] = 1;
						MOVENOISE = 1;
					}
				}
				if (button1_p() && ONEBUFFER < 0)
				{
					ONEBUFFER = 2;
					TWOBUFFER = 2;
					SELNOISE = true;
					if (MENUCOORD[MENU_NO] == 0)
					{
						if (MENU_NO == 1)
						{
							if (FILE[MENUCOORD[0]] == 1)
							{
								global.filechoice = MENUCOORD[0];
								scr_windowcaption(scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_35_0"));
								snd_free_all();
								f = instance_create(0, 0, "obj_persistentfadein");
								f.image_xscale = 1000;
								f.image_yscale = 1000;
								if (file_exists((("config_" + gm_string(global.filechoice)) + ".ini")))
								{
									ini_open((("config_" + gm_string(global.filechoice)) + ".ini"));
									for (i = 0; i < 10; i += 1)
									{
										readval = ini_read_real("KEYBOARD_CONTROLS", gm_string(i), -1);
										if (readval != -1)
											global.input_k[i] = readval;
									}
									/*for (i = 0; i < 10; i += 1)
									{
										readval = ini_read_real("GAMEPAD_CONTROLS", gm_string(i), -1);
										if (readval != -1)
											global.input_g[i] = readval;
									}*/
									ini_close();
								}
								scr_load();
							}

							if (FILE[MENUCOORD[0]] == 0)
							{
								global.filechoice = MENUCOORD[0];
								snd_free_all();
								room_goto("PLACE_CONTACT");
							}
						}
						if (MENU_NO == 4)
						{
							if (TYPE == 0)
							{
								TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_74_0");
								if (NAME[0] == NAME[1] && NAME[1] == NAME[2])
								{
									if (TIME[0] == TIME[1] && TIME[1] == TIME[2])
									{
										if (PLACE[0] == PLACE[1] && PLACE[1] == PLACE[2])
											TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_77_0");
									}
								}
							}
							event_user(5);
							if (TYPE == 0)
							{
								if (NAME[0] == NAME[1] && NAME[1] == NAME[2])
								{
									if (TIME[0] == TIME[1] && TIME[1] == TIME[2])
									{
										if (PLACE[0] == PLACE[1] && PLACE[1] == PLACE[2] && TEMPCOMMENT != scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_86_0"))
											TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_86_1");
									}
								}
							}
							if (TYPE == 1)
								TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_91_0");
							MESSAGETIMER = 90;
							SELNOISE = false;
							DEATHNOISE = true;
							MENU_NO = 0;
						}
						if (MENU_NO == 7)
						{
							FILE[MENUCOORD[5]] = 0;
							NAME[MENUCOORD[5]] = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_105_0");
							TIME[MENUCOORD[5]] = 0;
							PLACE[MENUCOORD[5]] = "------------";
							LEVEL[MENUCOORD[5]] = 0;
							TIME_STRING[MENUCOORD[5]] = "--:--";
							file_delete(("filech1_" + gm_string(MENUCOORD[5])));
							ini_open("dr.ini");
							ini_write_string(("G" + gm_string(MENUCOORD[5])), "Name", "[EMPTY]");
							ini_write_real(("G" + gm_string(MENUCOORD[5])), "Level", 0);
							ini_write_real(("G" + gm_string(MENUCOORD[5])), "Love", 0);
							ini_write_real(("G" + gm_string(MENUCOORD[5])), "Time", 0);
							ini_write_real(("G" + gm_string(MENUCOORD[5])), "Room", 0);
							ini_close();
							if (file_exists((("config_" + gm_string(MENUCOORD[5])) + ".ini")))
								file_delete((("config_" + gm_string(MENUCOORD[5])) + ".ini"));
							TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_126_0");
							if (TYPE == 1)
								TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_127_0");
							MESSAGETIMER = 90;
							SELNOISE = false;
							DEATHNOISE = true;
							MENU_NO = 0;
						}
						if (MENU_NO == 6)
						{
							THREAT += 1;
							MENU_NO = 7;
							MENUCOORD[7] = 0;
						}
					}
					if (MENUCOORD[MENU_NO] == 1)
					{
						if (MENU_NO == 4 && TYPE == 0)
						{
							TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_149_0");
							MESSAGETIMER = 90;
						}
						if (MENU_NO == 6 || MENU_NO == 7)
						{
							if (TYPE == 0)
							{
								TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_156_0");
								if (THREAT >= 10)
								{
									TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_159_0");
									THREAT = 0;
								}
								MESSAGETIMER = 90;
							}
						}
						MENU_NO = 0;
					}
				}
				if (button2_p() && TWOBUFFER < 0)
				{
					ONEBUFFER = 1;
					TWOBUFFER = 1;
					BACKNOISE = true;
					if (MENU_NO == 1)
						MENU_NO = 0;
					if (MENU_NO == 4)
						MENU_NO = 2;
					if (MENU_NO == 6)
						MENU_NO = 5;
					if (MENU_NO == 7)
						MENU_NO = 5;
				}
			}
			if (MENU_NO == 2 || MENU_NO == 3 || MENU_NO == 5)
			{
				if (down_p())
				{
					if (MENUCOORD[MENU_NO] < 3)
					{
						MENUCOORD[MENU_NO] += 1;
						MOVENOISE = 1;
					}
				}
				if (up_p())
				{
					if (MENUCOORD[MENU_NO] > 0)
					{
						MENUCOORD[MENU_NO] -= 1;
						MOVENOISE = 1;
					}
				}
				if (button1_p() && ONEBUFFER < 0)
				{
					if (MENUCOORD[MENU_NO] < 3)
					{
						if (MENU_NO == 3)
						{
							if (MENUCOORD[2] != MENUCOORD[3])
							{
								if (FILE[MENUCOORD[MENU_NO]] == 1)
								{
									TWOBUFFER = 2;
									ONEBUFFER = 2;
									SELNOISE = true;
									MENUCOORD[4] = 0;
									MENU_NO = 4;
								}
								else
								{
									TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_225_0");
									MESSAGETIMER = 90;
									if (TYPE == 1)
										TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_227_0");
									DEATHNOISE = true;
									MENU_NO = 0;
									ONEBUFFER = 2;
									TWOBUFFER = 2;
									event_user(5);
								}
							}
							else
							{
								TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_238_0");
								if (TYPE == 1)
									TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_239_0");
								MESSAGETIMER = 90;
								TWOBUFFER = 2;
								ONEBUFFER = 2;
								BACKNOISE = true;
							}
						}
						if (MENU_NO == 2)
						{
							if (FILE[MENUCOORD[MENU_NO]] == 1)
							{
								TWOBUFFER = 2;
								ONEBUFFER = 2;
								SELNOISE = true;
								MENUCOORD[3] = 0;
								MENU_NO = 3;
							}
							else
							{
								TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_261_0");
								if (FILE[0] == 0 && FILE[1] == 0 && FILE[2] == 0)
									TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_264_0");
								if (TYPE == 1)
									TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_266_0");
								MESSAGETIMER = 90;
								BACKNOISE = true;
								TWOBUFFER = 2;
								ONEBUFFER = 2;
							}
						}
						if (MENU_NO == 5)
						{
							if (FILE[MENUCOORD[MENU_NO]] == 1)
							{
								TWOBUFFER = 2;
								ONEBUFFER = 2;
								SELNOISE = true;
								MENUCOORD[6] = 0;
								MENU_NO = 6;
							}
							else
							{
								TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_289_0");
								if (FILE[0] == 0 && FILE[1] == 0 && FILE[2] == 0)
									TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_292_0");
								if (TYPE == 1)
									TEMPCOMMENT = scr_84_get_lang_string("DEVICE_MENU_slash_Step_0_gml_294_0");
								MESSAGETIMER = 90;
								TWOBUFFER = 2;
								ONEBUFFER = 2;
								BACKNOISE = true;
							}
						}
					}
					if (MENUCOORD[MENU_NO] == 3)
					{
						TWOBUFFER = 2;
						ONEBUFFER = 2;
						SELNOISE = true;
						MENU_NO = 0;
					}
				}
				if (button2_p() && TWOBUFFER < 0)
				{
					TWOBUFFER = 2;
					ONEBUFFER = 2;
					BACKNOISE = true;
					if (MENU_NO == 2 || MENU_NO == 5)
						MENU_NO = 0;
					if (MENU_NO == 3)
						MENU_NO = 2;
				}
			}
			if (MENU_NO == 0)
			{
				if (down_p())
				{
					if (MENUCOORD[0] < 3)
					{
						MENUCOORD[0] += 1;
						MOVENOISE = 1;
					}
				}
				if (up_p())
				{
					if (MENUCOORD[0] > 0)
					{
						MENUCOORD[0] -= 1;
						if (MENUCOORD[0] == 3)
							MENUCOORD[0] = 2;
						MOVENOISE = 1;
					}
				}
				if (right_p())
				{
					if (MENUCOORD[0] >= 3 && MENUCOORD[0] <= 5)
					{
						MOVENOISE = 1;
						MENUCOORD[0] += 1;
						if (MENUCOORD[0] > 5)
							MENUCOORD[0] = 3;
					}
				}
				if (left_p())
				{
					if (MENUCOORD[0] >= 3 && MENUCOORD[0] <= 5)
					{
						MOVENOISE = 1;
						MENUCOORD[0] -= 1;
						if (MENUCOORD[0] < 3)
							MENUCOORD[0] = 5;
					}
				}
				if (button1_p() && ONEBUFFER < 0)
				{
					MESSAGETIMER = -1;
					if (MENUCOORD[0] <= 2)
					{
						MENUCOORD[1] = 0;
						ONEBUFFER = 1;
						TWOBUFFER = 1;
						MENU_NO = 1;
						SELNOISE = true;
					}
					if (MENUCOORD[0] == 3)
					{
						MENUCOORD[2] = 0;
						ONEBUFFER = 1;
						TWOBUFFER = 1;
						MENU_NO = 2;
						SELNOISE = true;
					}
					if (MENUCOORD[0] == 4)
					{
						MENUCOORD[5] = 0;
						ONEBUFFER = 1;
						TWOBUFFER = 1;
						MENU_NO = 5;
						SELNOISE = true;
					}
					if (MENUCOORD[0] == 5)
					{
						scr_change_language();
						scr_84_load_ini();
						ONEBUFFER = 2;
						TWOBUFFER = 2;
						SELNOISE = true;
					}
				}
			}
			if (OBMADE == 1)
			{
				OB_DEPTH += 1;
				obacktimer += OBM;
				if (obacktimer >= 20)
				{
					DV = instance_create<DEVICE_OBACK_4>(0, 0, "DEVICE_OBACK_4");
					DV.depth = (5 + OB_DEPTH);
					DV.OBSPEED = (0.01 * OBM);
					if (OB_DEPTH >= 60000)
						OB_DEPTH = 0;
					obacktimer = 0;
				}
			}
			if (MOVENOISE == 1)
			{
				snd_play("snd_menumove");
				MOVENOISE = 0;
			}
			if (SELNOISE == true)
			{
				snd_play("snd_select");
				SELNOISE = false;
			}
			if (BACKNOISE == true)
			{
				snd_play("snd_swing");
				BACKNOISE = false;
			}
			if (DEATHNOISE == true)
			{
				snd_play("AUDIO_APPEARANCE");
				DEATHNOISE = false;
			}
			ONEBUFFER -= 1;
			TWOBUFFER -= 1;
		}
	}
}
