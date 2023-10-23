using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_npc_sign : obj_interactablesolid
	{
        public override void Create()
        {
            myinteract = 0;
            image_speed = 0;
            setdepth = 1;
            read = 0;
            if (global.darkzone == true)
            {
                image_xscale = 2;
                image_yscale = 2;
            }
            if (room == "room_cc_prison_cells")
            {
                sprite_index = "spr_ironshackle";
                image_index = 0;
                if (global.flag[105] == 1)
                    image_index = 1;
            }
            if (room == "room_cc_prison2")
            {
                sprite_index = "spr_npc_originalstarwalker";
                if (global.flag[254] == 0)
                    instance_destroy();
            }
            if (room == "room_cc_throneroom")
            {
                if (x >= 220 && x <= 400)
                    sprite_index = "spr_darkthrone";
                else
                    sprite_index = "spr_darkmoney";
            }
            if (room == "room_flowershop_2f")
            {
                sprite_index = "spr_flowercontainer";
                num = 0;
                colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_45_0");
                if (x > 170)
                {
                    num = 1;
                    colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_50_0");
                    if (y > 110)
                    {
                        num = 5;
                        colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_51_0");
                    }
                    if (y > 130)
                    {
                        num = 6;
                        colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_52_0");
                    }
                }
                if (x < 140)
                {
                    num = 2;
                    colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_57_0");
                    if (y > 110)
                    {
                        num = 3;
                        colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_58_0");
                    }
                    if (y > 130)
                    {
                        num = 4;
                        colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_59_0");
                    }
                }
                image_index = num;
            }
            if (room == "room_town_north")
            {
                sprite_index = "spr_npc_asgoretruck";
                setdepth = 0;
                depth = 700000;
            }
            if (room == "room_beach")
                sprite_index = "spr_npc_beachtable";
            if (room == "room_town_krisyard")
                sprite_index = "spr_torcar_u";
            if (setdepth == 1)
                scr_depth();
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
	        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_8_0");
	        if (room == "room_field1")
	        {
		        if (x < (room_width / 2))
			        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_12_0");
		        if (x > (room_width / 2))
			        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_13_0");
	        }

	        if (room == "room_field2")
		        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_30_0");
	        if (room == "room_field2A")
	        {
		        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_41_0");
		        global.msg[1] = ((scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_42_0") + scr_get_input_name(6)) + scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_42_1"));
		        global.msg[2] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_43_0");
	        }

	        if (room == "room_field_maze")
	        {
		        if (y > 80)
			        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_49_0");
		        if (y > 200)
		        {
			        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_52_0");
			        global.msg[1] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_53_0");
		        }

		        if (y > 640)
			        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_55_0");
		        if (y > 1000 && x > 1000)
			        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_56_0");
		        if (y > 1000 && x < 600)
			        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_57_0");
	        }

	        if (room == "room_field_getsusie")
		        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_63_0");
	        if (room == "room_field3")
	        {
		        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_68_0");
		        global.msg[1] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_69_0");
	        }

	        if (room == "room_field_puzzletutorial")
	        {
		        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_74_0");
		        global.msg[1] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_75_0");
	        }

	        if (room == "room_field_secret1")
	        {
		        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_80_0");
		        global.msg[1] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_81_0");
		        if (read >= 1)
			        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_84_0");
	        }

	        if (room == "room_forest_puzzle1")
	        {
		        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_90_0");
		        global.msg[1] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_91_0");
	        }

	        if (room == "room_forest_thrashmaker")
	        {
	        }

	        if (room == "room_cc_prison_cells")
	        {
		        global.flag[231] += 1;
		        global.msc = 300;
		        scr_text(global.msc);
	        }

	        if (room == "room_cc_prison2")
	        {
		        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_161_0");
		        global.msg[1] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_162_0");
	        }

	        if (room == "room_cc_throneroom")
	        {
		        if (sprite_index == "spr_darkthrone")
			        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_169_0");
		        if (sprite_index == "spr_darkmoney")
			        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_173_0");
	        }

	        if (room == "room_flowershop_2f")
		        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_179_0"), colortxt);
	        if (room == "room_town_north")
	        {
		        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_184_0");
		        global.msg[1] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_185_0");
	        }

	        if (room == "room_beach")
	        {
		        global.msc = 192;
		        scr_text(global.msc);
	        }

	        if (room == "room_town_krisyard")
		        global.msg[0] = scr_84_get_lang_string("obj_npc_sign_slash_Other_10_gml_196_0");
	        read += 1;
	        myinteract = 3;
	        mydialoguer = instance_create<obj_dialoguer>(0, 0, "obj_dialoguer");
        }
	}
}
