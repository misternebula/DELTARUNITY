using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_treasure_room : obj_interactablesolid
	{
		public override void Create()
		{
			myinteract = 0;
			talked = 0;
			image_speed = 0;
			itemflag = 104;
			itemtype = "armor";
			t_itemid = 4;
			close = 0;
			extratext = 0;
			if (room == "room_field_maze")
				extratext = 1;
			if (room == "room_field_secret1")
			{
				itemflag = 117;
				itemtype = "key";
				t_itemid = 7;
				extratext = 0;
			}

			if (room == "room_forest_dancers1")
			{
				itemflag = 107;
				itemtype = "item";
				t_itemid = 2;
				extratext = 1;
				if (x >= (room_width / 2))
				{
					itemflag = 116;
					itemtype = "key";
					t_itemid = 6;
					extratext = 0;
				}
			}

			if (room == "room_forest_area2A")
			{
				itemflag = 108;
				itemtype = "weapon";
				t_itemid = 9;
				extratext = 1;
			}

			if (room == "room_forest_area3A")
			{
				itemflag = 109;
				itemtype = "armor";
				t_itemid = 2;
				extratext = 1;
			}

			if (room == "room_forest_area4")
			{
				if (y <= (room_height / 2))
				{
					itemflag = 110;
					itemtype = "gold";
					t_itemid = 40;
					extratext = 1;
				}
				else
				{
					itemflag = 111;
					itemtype = "item";
					t_itemid = 2;
					extratext = 1;
				}
			}

			if (room == "room_cc_prison_prejoker")
			{
				if (global.flag[112] == 1)
					instance_destroy();
				if (global.flag[242] == 0)
					instance_destroy();
				else
				{
					if (global.flag[242] == 1)
					{
						itemflag = 112;
						itemtype = "weapon";
						t_itemid = 7;
					}

					if (global.flag[242] == 2)
					{
						itemflag = 112;
						itemtype = "armor";
						t_itemid = 7;
					}
				}
			}

			if (room == "room_cc_2f")
			{
				itemflag = 113;
				itemtype = "item";
				t_itemid = 11;
			}

			if (room == "room_cc_4f")
			{
				itemflag = 114;
				itemtype = "item";
				t_itemid = 2;
				extratext = 1;
			}

			if (room == "room_forest_secret1")
			{
				itemflag = 116;
				itemtype = "key";
				t_itemid = 6;
				extratext = 0;
			}

			if (global.darkzone == true)
			{
				image_xscale = 2;
				image_yscale = 2;
			}

			if (global.flag[itemflag] == 1)
				image_index = 1;
			scr_depth();
		}

		public override void Alarm_11()
		{
			alarm[11] = 6;
			cs = instance_create(((x + 40) + random(10)), ((y + 16) + random(4)), "obj_cakesmoke");
			cs.depth = depth;
		}

		public override void Other_10()
		{
			FindObjectOfType<obj_darkcontroller>().charcon = 0;
			global.msc = 0;
			global.typer = 5;
			if (global.darkzone == true)
				global.typer = 6;
			global.fc = 0;
			global.fe = 0;
			global.interact = 1;
			image_index = 1;
			global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_14_0");
			if (global.flag[itemflag] == 1)
			{
				global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_18_0");
				if (room == "room_field_maze")
					global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_19_0");
				if (room == "room_forest_dancers1" || room == "room_cc_4f")
				{
					if (scr_havechar(3) && extratext == 1)
					{
						global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_24_0");
						scr_ralface(1, 8);
						global.msg[2] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_26_0");
					}

					if (scr_havechar(2) && scr_havechar(3) && extratext == 1)
					{
						global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_31_0");
						scr_ralface(1, 8);
						global.msg[2] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_33_0");
						scr_susface(3, 7);
						global.msg[4] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_35_0");
					}
				}

				if (room == "room_forest_area3A")
					global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_40_0");
			}
			else
			{
				snd_play("snd_locker");
				itemname = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_48_0");
				itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_49_0");
				if (itemtype == "armor")
				{
					scr_armorinfo(t_itemid);
					itemname = armornametemp;
					itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_54_0");
					scr_armorget(t_itemid);
				}

				if (itemtype == "weapon")
				{
					scr_weaponinfo(t_itemid);
					itemname = weaponnametemp;
					itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_61_0");
					scr_weaponget(t_itemid);
				}

				if (itemtype == "item")
				{
					scr_iteminfo(t_itemid);
					itemname = itemnameb;
					itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_68_0");
					scr_itemget(t_itemid);
				}

				if (itemtype == "key")
				{
					scr_keyiteminfo(t_itemid);
					itemname = tempkeyitemname;
					itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_75_0");
					scr_keyitemget(t_itemid);
				}

				if (itemtype == "gold")
				{
					noroom = false;
					global.gold += t_itemid;
					itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_82_0");
					itemname = (gm_string(t_itemid) + scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_83_0"));
				}

				global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_87_0"), itemname);
				if (itemtype == "gold")
					global.msg[0] += "%";
				if (noroom == false)
				{
					global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_99_0"), itemname, itemtypename);
					if (instance_exists("obj_hathyfightevent") && global.plot <= 40)
					{
						global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_103_0"), itemname, itemtypename);
						scr_ralface(2, 0);
						global.msg[3] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_105_0");
						global.msg[4] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_106_0");
						global.msg[5] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_107_0");
						FindObjectOfType<obj_hathyfightevent>().equipcon = 1;
					}

					global.flag[itemflag] = 1;
				}
				else
				{
					global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_115_0"), itemtypename);
					close = 1;
				}
			}

			myinteract = 3;
			mydialoguer = instance_create(0, 0, "obj_dialoguer");
			talked += 1;
		}

		public override void Step_1()
		{
			if (myinteract == 0)
			{
				if (close == 1)
					image_index = 0;
				close = 0;
			}
		}
	}
}
