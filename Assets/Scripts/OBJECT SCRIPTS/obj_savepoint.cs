using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_savepoint : obj_interactablesolid
	{
		public override void Create()
		{
			_speed = 0.2;
			myinteract = 0;
			talked = 0;
			mydialoguer = null;
			scr_depth();
			if (global.darkzone == true)
			{
				image_speed = 0.2;
				image_xscale = 2;
				image_yscale = 2;
			}
			if (room == "room_cc_throneroom")
			{
				if (global.plot >= 240)
					instance_destroy();
			}
		}

		public override void Other_10()
		{
			global.msc = 0;
			global.typer = 5;
			if (global.darkzone == true)
				global.typer = 6;
			global.fc = 0;
			global.fe = 0;
			global.interact = 1;
			nodialogue = 1;
			global.currentroom = room;
			if (room == "room_dark1a")
			{
				nodialogue = 0;
				global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_17_0");
				global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_18_0");
			}
			if (room == "room_dark_eyepuzzle")
			{
				nodialogue = 0;
				if (global.hp[1] < global.maxhp[1])
				{
					global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_26_0");
					global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_27_0");
					global.msg[2] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_28_0");
				}
				if (global.hp[1] < 30)
				{
					global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_33_0");
					global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_34_0");
				}
				if (global.hp[1] == global.maxhp[1])
				{
					global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_39_0");
					global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_40_0");
					global.msg[2] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_41_0");
				}
				if (talked >= 1)
					nodialogue = 1;
			}
			if (room == "room_castle_town")
			{
				nodialogue = 0;
				global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_51_0");
				global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_52_0");
				global.msg[2] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_53_0");
				if (scr_havechar(3))
				{
					global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_57_0");
					global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_58_0");
				}
			}
			if (room == "room_field_start")
			{
				nodialogue = 0;
				global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_66_0");
				global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_67_0");
				if (global.plot >= 37)
				{
					global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_71_0");
					global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_72_0");
				}
			}
			if (room == "room_field_shop1")
			{
				nodialogue = 0;
				global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_80_0");
				global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_81_0");
				if (scr_havechar(2) == false)
				{
					global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_84_0");
					global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_85_0");
				}
			}
			if (room == "room_field_checkers3")
			{
				nodialogue = 0;
				tname = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_92_0");
				if (global.flag[214] == 1)
					tname = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_93_0");
				if (global.flag[214] == 2)
					tname = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_94_0");
				if (global.flag[214] == 3)
					tname = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_95_0");
				global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_96_0"), tname);
			}
			if (room == "room_forest_savepoint1")
			{
				nodialogue = 0;
				global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_102_0");
				global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_103_0");
			}
			if (room == "room_forest_savepoint2")
			{
				nodialogue = 0;
				global.msg[0] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_110_0");
				global.msg[1] = scr_84_get_lang_string("obj_savepoint_slash_Other_10_gml_111_0");
			}
			myinteract = 3;
			if (nodialogue == 0)
				mydialoguer = instance_create(0, 0, "obj_dialoguer");
			talked += 1;
			snd_play("snd_power");
			for (i = 0; i < 4; i += 1)
			{
				if (global.hp[i] < global.maxhp[i])
					global.hp[i] = global.maxhp[i];
			}
		}

		public override void Step_0()
		{
			if (myinteract == 3)
			{
				if (instance_exists(mydialoguer) == false)
				{
					instance_create(0, 0, "obj_savemenu");
					myinteract = 0;
				}
			}
		}
	}
}
