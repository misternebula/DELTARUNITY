using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_readable_room1 : obj_interactable
	{
		public override void Create()
		{
			myinteract = 0;
			image_speed = 0;
			read = 0;
			tempvar = 0;
			if (room == "room_dark3a")
			{
				if (global.flag[100] == 0)
				{
					shine = scr_dark_marker((x + 10), (y + 6), "spr_shine");
					shine.image_speed = 0.1;
				}
			}
		}

		public override void Step_0()
        {
			if (myinteract == 3)
            {
				if (instance_exists(mydialoguer) == false)
                {
					global.interact = 0;
                    myinteract = 0;
                    obj_mainchara.onebuffer = 3;
				}
			}
		}

		public override void Other_10()
		{
			myinteract = 3;
			global.msc = 0;
			global.typer = 5;
			if (global.darkzone == true)
				global.typer = 6;
			global.fe = 0;
			global.fc = 0;
			global.interact = 1;
			if (FindObjectOfType<obj_darkcontroller>() != null)
			{
				FindObjectOfType<obj_darkcontroller>().charcon = 0;
			}

			global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_11_0");
			if (room == "room_krisroom")
			{
				if (y < 150)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_17_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_18_0");
				}
				else
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_22_0");

				if (x > 100)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_28_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_29_0");
					if (global.filechoice == 1)
						global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_30_0");
					if (global.filechoice == 2)
					{
						global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_33_0");
						global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_34_0");
					}

					if (read > 0)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_38_0");
				}

				if (x > 136)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_45_0");
				if (x > 192)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_50_0");
				if (x > 220)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_55_0");
					if (global.tempflag[10] == true && global.plot < 10)
					{
						global.msc = 402;
						scr_text(global.msc);
					}

					if (global.plot >= 250)
					{
						global.msc = 400;
						scr_text(global.msc);
					}
				}

				if (x > 250)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_71_0");
			}

			if (room == "room_krishallway")
			{
				global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_79_0");
				if (x > 120)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_83_0");
				if (x > 160)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_87_0");
				if (x > 220)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_91_0");
				if (x > 320)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_96_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_97_0");
					global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_98_0");
					global.msg[3] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_99_0");
					global.msg[4] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_100_0");
					if (read > 0)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_103_0");
				}
			}

			if (room == "room_torhouse")
			{
				if (x > 190)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_113_0");
				if (x > 220)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_118_0");
				if (x > 260)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_123_0");
					if (global.plot >= 250)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_126_0");
				}

				if (x > 300)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_132_0");
				if (x > 340)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_137_0");
					if (global.flag[262] >= 4)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_140_0");
				}

				if (x > 369)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_146_0");
				if (x > 440)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_151_0");
				if (x > 560)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_157_0");
			}

			if (room == "room_torbathroom")
			{
				if (x >= 100)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_167_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_168_0");
				}

				if (x >= 160 && x <= 190)
				{
					global.msc = 355;
					scr_text(global.msc);
				}

				if (x >= 190)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_177_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_178_0");
					global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_179_0");
				}
			}

			if (room == "room_schoollobby")
			{
				if (x >= 140 && x < 240)
				{
					if (tempvar == 0)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_190_0");
					if (tempvar == 1)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_191_0");
					if (tempvar == 2)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_192_0");
					if (tempvar == 3)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_193_0");
					if (tempvar >= 4)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_194_0");
					foreach (var item in with<obj_readable_room1>())
					{
						item.tempvar += 1;
					}
				}

				if (x == 240)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_199_0");
				if (x >= 280)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_204_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_205_0");
					global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_206_0");
				}

				if (x < 140)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_211_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_212_0");
				}

				if (x >= 520)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_217_0");
					if (read == 1)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_218_0");
					if (read >= 2)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_219_0");
					if (global.plot < 10)
					{
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_223_0");
						scr_susface(1, 1);
						global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_225_0");
						if (read >= 1)
						{
							scr_susface(0, 9);
							global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_230_0");
						}
					}
				}

				if (x >= 560)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_237_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_238_0");
					global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_239_0");
				}

				if (x >= 690)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_245_0");
				if (x == 760)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_251_0");
				if (x == 780)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_255_0");
			}

			if (room == "room_alphysclass")
			{
				global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_264_0");
				global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_265_0");
				if (global.plot >= 250)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_269_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_270_0");
				}

				if (x > 240)
				{
					global.fe = 1;
					global.fc = 11;
					global.typer = 20;
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_278_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_279_0");
				}

				if (x < 200)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_284_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_285_0");
					if (global.plot >= 250)
					{
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_289_0");
						global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_290_0");
					}
				}

				if (x < 150)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_298_0");
				if (x < 80)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_304_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_305_0");
					global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_306_0");
				}
			}

			if (room == "room_torielclass")
			{
				if (y <= (room_height / 2))
				{
					if (x >= 100)
					{
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_318_0");
						global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_319_0");
					}

					if (x >= 130)
					{
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_323_0");
						global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_324_0");
					}

					if (x >= 170)
					{
						global.msc = 350;
						scr_text(global.msc);
					}

					if (x >= 198)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_333_0");
					if (x >= 204)
					{
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_338_0");
						global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_339_0");
					}

					if (x >= 230)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_343_0");
					if (x >= 256)
						global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_347_0");
				}
				else if (x <= (room_width / 2))
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_354_0");
				else
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_358_0");
			}

			if (room == "room_schooldoor")
				global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_366_0");

			if (room == "room_school_unusedroom")
			{
				if (x < 80)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_371_0");
				if (x > 100)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_372_0");
				if (x > 160 && y < 100)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_373_0");
				if (x > 160 && y > 100)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_374_0");
				if (x > 220)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_375_0");
				if (x > 250)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_378_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_379_0");
				}
			}

			if (room == "room_hospital_lobby")
			{
				if (x <= 160)
				{
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_388_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_389_0");
				}

				if (x >= 160)
				{
					global.msc = 360;
					scr_text(global.msc);
				}
			}

			if (room == "room_dark2" || room == "room_dark3" || room == "room_dark7")
				global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_400_0");

			if (room == "room_dark3a")
			{
				global.msc = 110;
				scr_text(110);
			}

			if (room == "room_dark_eyepuzzle")
				global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_411_0");

			if (room == "room_castle_town")
			{
				global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_416_0");
				if (read >= 1)
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_419_0");
				foreach (var item in with<obj_readable_room1>())
				{
					item.read += 1;
				}
			}

			if (room == "room_castle_front")
			{
				global.typer = 31;
				global.fc = 2;
				global.fe = 0;
				global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_429_0");
				global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_430_0");
				global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_431_0");
				if (read > 0)
				{
					global.fe = 1;
					global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_435_0");
					global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_436_0");
				}
			}

			if (room == "room_castle_outskirts")
			{
				global.typer = 31;
				global.fc = 2;
				global.fe = 1;
				global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_446_0");
				global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_447_0");
			}

			if (room == "room_field_puzzle1")
				global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_452_0");
			if (room == "room_field_shop1")
			{
				global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_457_0");
				global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_458_0");
			}

			if (room == "room_field_checkers1" || room == "room_field_checkers4" || room == "room_field_checkers6")
				global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_465_0");
			if (room == "room_field_puzzletutorial")
			{
				global.msc = 250;
				scr_text(global.msc);
			}

			if (room == "room_field_checkers5")
				global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_476_0");

			mydialoguer = instance_create<obj_dialoguer>(0, 0, "obj_dialoguer");
			read += 1;
		}
	}
}
