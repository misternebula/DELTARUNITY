using Assets;
using UnityEngine;

namespace OBJECT_SCRIPTS
{
	public class obj_initializer2 : GamemakerObject
	{
		public override void Precreate()
		{
			_global_object_depths();
		}

		public override void Create()
		{
			ini_open("true_config.ini");
			global.lang = ini_read_string("LANG", "LANG", "en");
			ini_close();
			global.damagefont = font_add_sprite_ext("spr_numbersfontbig", "0123456789", true, 0);
			global.hpfont = font_add_sprite_ext("spr_numbersfontsmall", scr_84_get_lang_string("obj_initializer2_slash_Create_0_gml_2_0"), false, 2);
			scr_gamestart();
			for (i = 0; i < 100; i += 1)
				global.tempflag[i] = false;
			global.heartx = 300;
			global.hearty = 220;
			// audio group stuff
			if (!instance_exists("obj_time"))
				instance_create(0, 0, "obj_time");

			Cursor.lockState = CursorLockMode.Locked;
		}

		public override void Step_0()
		{
			// check if audio is loaded
			roomchoice = "PLACE_CONTACT";
			menu_go = 0;
			if (file_exists("filech1_0"))
				menu_go = 1;
			if (file_exists("filech1_1"))
				menu_go = 1;
			if (file_exists("filech1_2"))
				menu_go = 1;
			if (file_exists("filech1_3"))
				menu_go = 1;
			if (file_exists("dr.ini"))
				menu_go = 1;
			if (file_exists("filech1_3"))
				menu_go = 2;
			if (file_exists("filech1_4"))
				menu_go = 2;
			if (file_exists("filech1_5"))
				menu_go = 2;
			if (menu_go == 1)
				roomchoice = "PLACE_MENU";
			if (menu_go == 2)
			{
				scr_windowcaption(scr_84_get_lang_string("obj_initializer2_slash_Step_0_gml_22_0"));
				global.tempflag[10] = true;
				roomchoice = "room_legend";
				global.plot = 0;
			}

			/*global.plot = 10;
		scr_become_dark();
		scr_getchar(2);
		scr_getchar(3);
		global.charauto[2] = false;
		roomchoice = "room_cc_joker";*/

			/*global.plot = 50;
			scr_become_dark();
			scr_getchar(2);
			scr_getchar(3);
			roomchoice = "room_field_checkers4";*/

			room_goto(roomchoice);
		}
	}
}
