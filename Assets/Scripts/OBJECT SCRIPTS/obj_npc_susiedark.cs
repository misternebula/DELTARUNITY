using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_npc_susiedark : obj_interactablesolid
	{
		public override void Create()
		{
			dtsprite = "spr_susied_dark";
			rtsprite = "spr_susier_dark";
			ltsprite = "spr_susiel_dark";
			utsprite = "spr_susieu_dark";
			myinteract = 0;
			facing = 2;
			dfacing = 2;
			image_speed = 0;
			talked = 0;
			image_xscale = 2;
			image_yscale = 2;
			scr_depth();
			if (global.plot >= 30)
				instance_destroy();
			else
			{
				s = instance_create(450, 950, "obj_soliddark");
				s.image_yscale = 8;
			}
		}

		public override void Other_10()
		{
			myinteract = 3;
			global.msc = 0;
			global.typer = 30;
			global.fc = 1;
			global.fe = 0;
			global.interact = 1;
			if (room == "room_castle_town")
			{
				global.fe = 1;
				global.msg[0] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_13_0");
				global.msg[1] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_14_0");
				global.msg[2] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_15_0");
				global.msg[3] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_16_0");
				if (talked >= 1)
				{
					global.msg[0] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_20_0");
					global.msg[1] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_21_0");
					global.msg[2] = scr_84_get_lang_string("obj_npc_susiedark_slash_Other_10_gml_22_0");
				}
			}
			talked += 1;
			mydialoguer = instance_create(0, 0, "obj_dialoguer");
		}

		public override void Step_1()
		{
			if (myinteract == 0)
				facing = dfacing;
			scr_npcdir();
			image_index = 0;

		}
	}
}
