using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_writer : GamemakerObject
	{
		public override void Create()
		{
			skipme = false;
			textsound = "snd_text";
			charline = 33;
			originalcharline = charline;
			hspace = 8;
			vspace = 18;
			rate = 1;
			mycolor = c_white;
			myfont = scr_84_get_font("main");
			shake = 0;
			special = 0;
			skippable = true;
			automash_timer = 0;
			if (global.flag[6] == 1)
				skippable = false;
			f = 1;
			if (global.darkzone == true)
				f = 2;
			scr_texttype();
			autoaster = true;
			pos = 2;
			lineno = 0;
			aster = 0;
			halt = 0;
			xcolor = c_black;
			wxskip = 0;
			msgno = 0;
			first_alarm = 0;
			firstnoise = false;
			noiseskip = false;
			formatted = false;
			colorchange = false;
			fontchange = 0;
			sound_played = false;
			writingx = x;
			writingy = y;
			dialoguer = 0;
			smallface = null;
			faced = 0;
			facedever = 0;
			facer = 0;
			siner = 0;
			specfade = 1;
			for (i = 0; i < 7; i += 1)
			{
				specx[i] = (i * 6);
				specy[i] = (i * 6);
			}
			mystring = global.msg[0];
			for (j = 0; j < 100; j += 1)
				nstring[j] = global.msg[j];
			length = string_length(mystring);
			alarm[0] = rate;
			if (rate < 3)
				alarm[2] = 1;
			else
				scr_textsound();
		}

		public override void Alarm_0()
		{
			if (rate > 2)
				alarm[1] = 1;
			else if (first_alarm == 1 && pos >= 2)
				scr_textsound();
			if (pos <= length)
				alarm[0] = rate;
			if (first_alarm == 0)
			{
				getchar = string_char_at(mystring, 1);
				if (getchar == "\\")
					pos += 3;
				else
					pos += 1;
				first_alarm = 1;
			}
			else
			{
				getchar = string_char_at(mystring, pos);
				nextchar = string_char_at(mystring, (pos + 1));
				if (getchar == "&")
					pos += 1;
				if (getchar == "\\")
					pos += 3;
				if (getchar == "/")
				{
					halt = 1;
					if (nextchar == "%")
						halt = 2;
					alarm[0] = -1;
				}
				getchar = string_char_at(mystring, pos);
				nextchar = string_char_at(mystring, (pos + 1));
				if (getchar == "|")
					pos += 2;
				if (getchar == "^")
				{
					pos += 2;
					if (alarm[0] > 0)
					{
						if (nextchar == "1")
							alarm[0] += 5;
						if (nextchar == "2")
							alarm[0] += 10;
						if (nextchar == "3")
							alarm[0] += 15;
						if (nextchar == "4")
							alarm[0] += 20;
						if (nextchar == "5")
							alarm[0] += 30;
						if (nextchar == "6")
							alarm[0] += 40;
						if (nextchar == "7")
							alarm[0] += 60;
						if (nextchar == "8")
							alarm[0] += 90;
						if (nextchar == "9")
							alarm[0] += 150;
					}
				}
				pos += 1;
			}
		}

		public override void Alarm_1()
		{
			if (pos < (length + 2))
				scr_textsound();
		}

		public override void Alarm_2()
		{
			if (firstnoise == false)
			{
				firstnoise = true;
				scr_textsound();
			}
		}

		public override void Draw_0()
		{
			button1 = 0;
			button2 = 0;
			button3 = 0;
			if (button1_p())
				button1 = 1;
			if (button2_h())
				button2 = 1;
			if (global.flag[10] == 1)
			{
				if (button3_h())
				{
					if (automash_timer == 0)
						automash_timer = 1;
					else
						automash_timer = 0;
					if (automash_timer == 0)
						button1 = 1;
					if (automash_timer == 1)
						button2 = 1;
				}
			}
			if (dialoguer == 1 && formatted == false)
			{
				if (global.fc == 0)
				{
					charline = originalcharline;
					writingx = x;
				}
				else
				{
					charline = 26;
					writingx = (x + (58 * f));
					if (global.lang == "ja")
						writingx -= 8;
				}
			}
			if (formatted == false)
			{
				length = string_length(mystring);
				charpos = -1;
				remspace = -1;
				remchar = -1;
				linecount = 0;
				stringmax = 0;
				aster = 0;
				textalignment = "";
				for (i = 0; i < (length + 1); i += 1)
				{
					skip = false;
					thischar = string_char_at(mystring, i);
					if (thischar == "/" || thischar == "%")
					{
						if (charpos > -1)
							charpos -= 1;
					}
					if (thischar == "^")
					{
						if (charpos > -1)
							charpos -= 2;
					}
					if (thischar == "\\")
					{
						if (charpos > -1)
							charpos -= 3;
						nextchar = string_char_at(mystring, (i + 1));
						nextchar2 = string_char_at(mystring, (i + 2));
						if (dialoguer == 1)
						{
							if (nextchar == "E")
							{
								if (nextchar2 == "0")
									global.fe = 0;
								if (nextchar2 == "1")
									global.fe = 1;
								if (nextchar2 == "2")
									global.fe = 2;
								if (nextchar2 == "3")
									global.fe = 3;
								if (nextchar2 == "4")
									global.fe = 4;
								if (nextchar2 == "5")
									global.fe = 5;
								if (nextchar2 == "6")
									global.fe = 6;
								if (nextchar2 == "7")
									global.fe = 7;
								if (nextchar2 == "8")
									global.fe = 8;
								if (nextchar2 == "9")
									global.fe = 9;
								if (nextchar2 == "A")
									global.fe = 10;
								if (nextchar2 == "B")
									global.fe = 11;
								if (nextchar2 == "C")
									global.fe = 12;
								if (nextchar2 == "D")
									global.fe = 13;
								if (nextchar2 == "E")
									global.fe = 14;
							}
							if (nextchar == "F")
							{
								if (nextchar2 == "0")
									global.fc = 0;
								if (nextchar2 == "S")
									global.fc = 1;
								if (nextchar2 == "R")
									global.fc = 2;
								if (nextchar2 == "N")
									global.fc = 3;
								if (nextchar2 == "T")
									global.fc = 4;
								if (nextchar2 == "L")
									global.fc = 5;
								if (nextchar2 == "A")
									global.fc = 10;
								if (nextchar2 == "a")
									global.fc = 11;
								if (nextchar2 == "B")
									global.fc = 12;
								if (nextchar2 == "r")
									global.fc = 15;
								if (nextchar2 == "u")
									global.fc = 18;
								if (nextchar2 == "K")
									global.fc = 20;
								if (global.fc == 0)
								{
									charline = originalcharline;
									writingx = x;
								}
								else
								{
									charline = 26;
									writingx = (x + (58 * f));
									if (global.lang == "ja")
										writingx -= 8;
								}
							}
						}
						if (nextchar == "a")
							textalignment = nextchar2;
					}
					if (thischar == "&")
					{
						if (charpos > stringmax)
							stringmax = charpos;
						remspace = -1;
						charpos = 0;
						linecount += 1;
						skip = true;
						nextchar = string_char_at(mystring, (i + 1));
						if (aster == 1 && autoaster == true && nextchar != "*")
						{
							charpos = 2;
							length += 2;
							mystring = string_insert(scr_84_get_lang_string("obj_writer_slash_Draw_0_gml_147_0"), mystring, (i + 1));
							i += 2;
						}
					}
					if (skip == false)
					{
						if (thischar == " ")
						{
							remspace = i;
							remchar = charpos;
						}
						if (thischar == "*")
							aster = 1;
						if (charpos >= charline)
						{
							if (remspace > 2)
							{
								mystring = string_delete(mystring, remspace, 1);
								mystring = string_insert("&", mystring, remspace);
								i = (remspace + 1);
								if (remchar > stringmax)
									stringmax = remchar;
								remspace = -1;
								charpos = 1;
								linecount += 1;
								scr_asterskip();
							}
							else
							{
								if (charpos > stringmax)
									stringmax = charpos;
								mystring = string_insert("&", mystring, i);
								length += 1;
								charpos = 1;
								remspace = -1;
								linecount += 1;
								i += 1;
								scr_asterskip();
							}
						}
						else
							charpos += 1;
					}
				}
				if (charpos > stringmax)
					stringmax = charpos;
				formatted = true;
				if (textalignment == "c")
				{
					var xxx = __view_get(0, 0);
					writingx = ((xxx + 320) - ((stringmax * hspace) / 2));
				}
			}
			accept = false;
			wx = writingx;
			wy = writingy;
			colorchange = false;
			draw_set_font(myfont);
			draw_set_color(mycolor);
			if (halt == 0 && button2 == 1 && pos < length && skippable == true)
				skipme = true;
			if (skipme == true)
			{
				pos = (string_length(mystring) + 1);
				alarm[0] = -1;
				alarm[1] = -1;
			}
			for (n = 1; n < pos; n += 1)
			{
				accept = true;
				mychar = string_char_at(mystring, n);
				if (mychar == "&")
				{
					accept = false;
					wx = writingx;
					if (wxskip == 1)
						wx = (writingx + 58);
					wy += vspace;
				}
				if (mychar == "|")
				{
					accept = false;
					wx += hspace;
				}
				if (mychar == "^")
				{
					accept = false;
					n += 1;
				}
				if (mychar == "/")
				{
					halt = 1;
					if (string_char_at(mystring, (n + 1)) == "%")
						halt = 2;
					accept = false;
				}
				if (mychar == "%")
				{
					accept = false;
					if (string_char_at(mystring, (n - 1)) == "/")
						halt = 2;
					if (string_char_at(mystring, (n + 1)) == "%")
						instance_destroy();
					else if (halt != 2)
						scr_nextmsg();
				}
				if (mychar == "\\")
				{
					nextchar = string_char_at(mystring, (n + 1));
					nextchar2 = string_char_at(mystring, (n + 2));
					if (nextchar == "E")
					{
						if (nextchar2 == "0")
							global.fe = 0;
						if (nextchar2 == "1")
							global.fe = 1;
						if (nextchar2 == "2")
							global.fe = 2;
						if (nextchar2 == "3")
							global.fe = 3;
						if (nextchar2 == "4")
							global.fe = 4;
						if (nextchar2 == "5")
							global.fe = 5;
						if (nextchar2 == "6")
							global.fe = 6;
						if (nextchar2 == "7")
							global.fe = 7;
						if (nextchar2 == "8")
							global.fe = 8;
						if (nextchar2 == "9")
							global.fe = 9;
						if (nextchar2 == "A")
							global.fe = 10;
						if (nextchar2 == "B")
							global.fe = 11;
						if (nextchar2 == "C")
							global.fe = 12;
						if (nextchar2 == "D")
							global.fe = 13;
						if (nextchar2 == "E")
							global.fe = 14;
					}
					if (nextchar == "F")
					{
						if (nextchar2 == "0")
							global.fc = 0;
						if (nextchar2 == "S")
							global.fc = 1;
						if (nextchar2 == "R")
							global.fc = 2;
						if (nextchar2 == "N")
							global.fc = 3;
						if (nextchar2 == "T")
							global.fc = 4;
						if (nextchar2 == "L")
							global.fc = 5;
						if (nextchar2 == "A")
							global.fc = 10;
						if (nextchar2 == "a")
							global.fc = 11;
						if (nextchar2 == "B")
							global.fc = 12;
						if (nextchar2 == "r")
							global.fc = 15;
						if (nextchar2 == "u")
							global.fc = 18;
						if (nextchar2 == "K")
							global.fc = 20;
						if (dialoguer == 1)
						{
							if (global.fc == 0)
							{
								charline = originalcharline;
								wx = x;
							}
							else
							{
								charline = 26;
								wx = (x + (58 * f));
							}
						}
					}
					if (nextchar == "f" && faced == 0)
					{
						fam = 0;
						fam = (int)real(nextchar2);
						faced = 1;
						smallface = instance_create<obj_smallface>(global.smxx[fam], global.smyy[fam], "obj_smallface");
						if (instance_exists(smallface))
						{
							smallface.x += x;
							smallface.y += y;
							smallface.speed = global.smspeed[fam];
							smallface.direction = global.smdir[fam];
							smallface.type = global.smtype[fam];
							smallface.sprite_index = global.smsprite[fam];
							smallface.alarm[0] = global.smalarm[fam];
							smallface.mystring = global.smstring[fam];
							smallface.mycolor = global.smcolor[fam];
							smallface.writergod = (obj_writer)id;
						}
					}
					if (nextchar == "T")
					{
						if (nextchar2 == "0")
						{
							global.typer = 5;
							if (global.darkzone == true)
							{
								global.typer = 6;
								if (global.fighting == true)
									global.typer = 4;
							}
							scr_texttype();
						}
						if (nextchar2 == "1")
						{
							global.typer = 2;
							scr_texttype();
						}
						if (nextchar2 == "A")
						{
							global.typer = 18;
							scr_texttype();
						}
						if (nextchar2 == "a")
						{
							global.typer = 20;
							scr_texttype();
						}
						if (nextchar2 == "N")
						{
							global.typer = 12;
							scr_texttype();
						}
						if (nextchar2 == "n")
						{
							global.typer = 23;
							scr_texttype();
						}
						if (nextchar2 == "B")
						{
							global.typer = 13;
							scr_texttype();
						}
						if (nextchar2 == "S")
						{
							global.typer = 10;
							if (global.darkzone == true)
							{
								global.typer = 30;
								if (global.fighting == true)
									global.typer = 47;
							}
							scr_texttype();
						}
						if (nextchar2 == "R")
						{
							global.typer = 31;
							if (global.fighting == true)
								global.typer = 45;
							if (global.flag[30] == 1)
								global.typer = 6;
							scr_texttype();
						}
						if (nextchar2 == "L")
						{
							global.typer = 32;
							if (global.fighting == true)
								global.typer = 46;
							scr_texttype();
						}
						if (nextchar2 == "X")
						{
							global.typer = 40;
							scr_texttype();
						}
						if (nextchar2 == "r")
						{
							global.typer = 55;
							scr_texttype();
						}
						if (nextchar2 == "T")
						{
							global.typer = 7;
							scr_texttype();
						}
						if (nextchar2 == "J")
						{
							global.typer = 35;
							scr_texttype();
						}
						if (nextchar2 == "K")
						{
							global.typer = 33;
							if (global.plot < 235)
								global.typer = 36;
							if (global.fighting == true)
								global.typer = 48;
							scr_texttype();
						}
						if (dialoguer == 1)
						{
							if (global.fc == 0)
							{
								charline = originalcharline;
								wx = x;
							}
							else
								wxskip = 1;
						}
					}
					if (nextchar == "s")
					{
						if (nextchar2 == "0")
							skippable = false;
						if (nextchar2 == "1")
							skippable = true;
					}
					if (nextchar == "c")
					{
						colorchange = true;
						if (nextchar2 == "R")
							xcolor = c_red;
						if (nextchar2 == "B")
							xcolor = c_blue;
						if (nextchar2 == "Y")
							xcolor = c_yellow;
						if (nextchar2 == "G")
							xcolor = c_lime;
						if (nextchar2 == "W")
							xcolor = c_white;
						if (nextchar2 == "X")
							xcolor = c_black;
						if (nextchar2 == "0")
							xcolor = mycolor;
					}
					if (nextchar == "C")
					{
						if (nextchar2 == "1")
						{
							if (instance_exists("obj_choicer_old") == false)
								choicer = instance_create(0, 0, "obj_choicer_old");
							halt = 5;
						}
						if (nextchar2 == "2" || nextchar2 == "3" || nextchar2 == "4")
						{
							if (instance_exists("obj_choicer_neo") == false)
							{
								choicer = instance_create(0, 0, "obj_choicer_neo");
								choicer.choicetotal = (int)(real(nextchar2) - 1);
							}
							halt = 5;
						}
					}
					if (nextchar == "M")
					{
						if (nextchar2 == "0")
							global.flag[20] = 0;
						if (nextchar2 == "1")
							global.flag[20] = 1;
						if (nextchar2 == "2")
							global.flag[20] = 2;
						if (nextchar2 == "3")
							global.flag[20] = 3;
						if (nextchar2 == "4")
							global.flag[20] = 4;
						if (nextchar2 == "5")
							global.flag[20] = 5;
						if (nextchar2 == "6")
							global.flag[20] = 6;
						if (nextchar2 == "7")
							global.flag[20] = 7;
						if (nextchar2 == "8")
							global.flag[20] = 8;
						if (nextchar2 == "9")
							global.flag[20] = 9;
					}
					if (nextchar == "S")
					{
						if (sound_played == false)
						{
							for (i = 0; i < 10; i += 1)
							{
								if (nextchar2 == gm_string(i) && sound_played == false)
								{
									snd_play(global.writersnd[i]);
									sound_played = true;
								}
							}
						}
					}
					if (nextchar == "I")
					{
						for (i = 0; i < 10; i += 1)
						{
							if (nextchar2 == gm_string(i))
								draw_sprite(global.writerimg[i], 0, wx, (wy + 4));
						}
					}
					accept = false;
					n += 2;
				}
				if (accept == true)
				{
					if (colorchange == true)
						draw_set_color(xcolor);
					if (special == 0)
						draw_text_transformed((wx + random(shake)), (wy + random(shake)), string_hash_to_newline(mychar), textscale, textscale, 0);
					if (special >= 1)
					{
						if (special == 1)
						{
							if (draw_get_color() != 16777215 && draw_get_color() != 0)
							{
								draw_text_color(((wx + random(shake)) + 1), ((wy + random(shake)) + 1), string_hash_to_newline(mychar), xcolor, xcolor, xcolor, xcolor, 0.3);
								draw_text_color((wx + random(shake)), (wy + random(shake)), string_hash_to_newline(mychar), c_white, c_white, xcolor, xcolor, 1);
							}
							else
							{
								draw_text_color(((wx + random(shake)) + 1), ((wy + random(shake)) + 1), string_hash_to_newline(mychar), c_dkgray, c_dkgray, c_navy, c_navy, 1);
								draw_text((wx + random(shake)), (wy + random(shake)), string_hash_to_newline(mychar));
							}
						}
						if (special == 2)
						{
							draw_set_alpha((1 * specfade));
							draw_text(wx, wy, string_hash_to_newline(mychar));
							draw_set_alpha(((0.3 + (sin((siner / 14)) * 0.1)) * specfade));
							draw_text((wx + 1), wy, string_hash_to_newline(mychar));
							draw_text((wx - 1), wy, string_hash_to_newline(mychar));
							draw_text(wx, (wy + 1), string_hash_to_newline(mychar));
							draw_text(wx, (wy - 1), string_hash_to_newline(mychar));
							draw_set_alpha(((0.08 + (sin((siner / 14)) * 0.04)) * specfade));
							draw_text((wx + 1), (wy + 1), string_hash_to_newline(mychar));
							draw_text((wx - 1), (wy - 1), string_hash_to_newline(mychar));
							draw_text((wx - 1), (wy + 1), string_hash_to_newline(mychar));
							draw_text((wx + 1), (wy - 1), string_hash_to_newline(mychar));
							draw_set_alpha(1);
						}
						if (special == 3)
						{
							draw_set_color(c_white);
							draw_set_alpha(1);
							draw_text((wx + sin((siner / 4))), (wy + cos((siner / 4))), string_hash_to_newline(mychar));
							draw_set_alpha(0.5);
							draw_text((wx + sin((siner / 5))), (wy + cos((siner / 5))), string_hash_to_newline(mychar));
							draw_text((wx + sin((siner / 7))), (wy + cos((siner / 7))), string_hash_to_newline(mychar));
							draw_text((wx + sin((siner / 9))), (wy + cos((siner / 9))), string_hash_to_newline(mychar));
							for (i = 0; i < 7; i += 1)
							{
								ddir = (315 + random(15));
								if (n == 1)
								{
									specx[i] += lengthdir_x(2, ddir);
									specy[i] += lengthdir_y(2, ddir);
									if (specx[i] >= 40)
									{
										specx[i] = 0;
										specy[i] = 0;
									}
								}
								draw_set_alpha((((40 - specx[i]) / 40) * 0.7));
								draw_text((wx + specx[i]), (wy + specy[i]), string_hash_to_newline(mychar));
							}
							draw_set_alpha(1);
						}
					}
					wx += hspace;
					if (global.lang == "ja")
					{
						if (ord(mychar) < 256 || (ord(mychar) >= 65377 && ord(mychar) <= 65439))
							wx -= (hspace / 2);
					}
				}
			}
			if (halt != 0 && button1 == 1 && siner > 0)
			{
				if (halt == 1)
				{
					scr_nextmsg();
					if (faced == 1)
					{
						if (smallface.getrid == 0)
						{
							smallface.getrid = 1;
						}
						faced = 0;
					}
				}
				if (halt == 2)
				{
					if (faced == 1)
					{
						smallface.instance_destroy();

						faced = 0;
					}
					if (facer == 1)
					{
						foreach (obj_face item in with<obj_face>())
						{
							item.instance_destroy();
						}
					}
					instance_destroy();
				}
			}
			skipme = false;
			siner += 1;
		}
	}
}
