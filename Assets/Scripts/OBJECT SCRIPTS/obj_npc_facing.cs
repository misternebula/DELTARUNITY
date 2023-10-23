using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_npc_facing : obj_interactablesolid
	{
		public override void Create()
		{
			dtsprite = "spr_toriel_dt";
			rtsprite = "spr_toriel_rt";
			ltsprite = "spr_toriel_lt";
			utsprite = "spr_toriel_ut";
			myinteract = 0;
			facing = 0;
			dfacing = 0;
			image_speed = 0;
			talked = 0;
			ourcase = 0;
			if (global.darkzone == true)
			{
				image_xscale = 2;
				image_yscale = 2;
			}
			normalanim = 1;
			remanimspeed = 0;
			depthbonus = 0;
			depthcancel = false;
            if (room == "room_alphysclass")
            {
                facing = 2;
                dfacing = 2;
                ourcase = 1;
                if (y < 172)
                {
                    dtsprite = "spr_noelle_dt";
                    rtsprite = "spr_noelle_ut_r";
                    utsprite = "spr_noelle_ut";
                    ltsprite = "spr_noelle_ut_l";
                    if (x > 120)
                    {
                        utsprite = "spr_berdly_ut";
                        rtsprite = "spr_berdly_ut_r";
                        ltsprite = "spr_berdly_ut_l";
                        dtsprite = "spr_berdly_ut";
                    }
                }
                if (y > 172)
                {
                    dtsprite = "spr_catti_ut";
                    utsprite = "spr_catti_ut";
                    rtsprite = "spr_catti_ut";
                    ltsprite = "spr_catti_ut";
                    if (x > 120)
                    {
                        dtsprite = "spr_mkid_ut";
                        rtsprite = "spr_mkid_ut_r";
                        ltsprite = "spr_mkid_ut_l";
                        utsprite = "spr_mkid_ut";
                    }
                }
                if (y > 212)
                {
                    dtsprite = "spr_jockington_ut";
                    utsprite = "spr_jockington_ut";
                    rtsprite = "spr_jockington_rt";
                    ltsprite = "spr_jockington_lt";
                    if (x > 120)
                    {
                        utsprite = "spr_snowy_ut";
                        ltsprite = "spr_snowy_ut_l";
                        rtsprite = "spr_snowy_ut_r";
                        dtsprite = "spr_snowy_ut";
                    }
                }
                if (y < 100)
                {
                    facing = 0;
                    dfacing = 0;
                    dtsprite = "spr_alphysd";
                    ltsprite = "spr_alphysl";
                    rtsprite = "spr_alphysr";
                    utsprite = "spr_alphysu";
                }
            }

            if (room == "room_field2")
            {
	            facing = 0;
	            dfacing = 0;
	            dtsprite = "spr_lancer_dt";
	            utsprite = "spr_lancer_dt";
	            rtsprite = "spr_lancer_rt";
	            ltsprite = "spr_lancer_lt";
	            if (room == "room_field2")
	            {
		            if (global.plot >= 35)
			            instance_destroy();
	            }
            }

            if (room == "room_field_boxpuzzle")
            {
	            type = 0;
	            if (x < (room_width / 2.0))
	            {
		            sprite_index = "spr_ralseid";
		            dtsprite = "spr_ralseid";
		            utsprite = "spr_ralseiu";
		            rtsprite = "spr_ralseir";
		            ltsprite = "spr_ralseil";
		            y += sprite_height;
	            }
	            else
	            {
		            type = 1;
		            sprite_index = "spr_susied";
		            dtsprite = "spr_susied_dark";
		            utsprite = "spr_susieu_dark";
		            rtsprite = "spr_susier_dark";
		            ltsprite = "spr_susiel_dark";
		            y += sprite_height;
	            }
            }

            scr_npcdir();
            y -= sprite_height;
            if (depthcancel == false)
                scr_depth();
            depth += depthbonus;
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
			image_speed = 0.2;
			if (global.darkzone == true)
				image_speed = 0.1;
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_10_0");

			if (room == "room_alphysclass")
			{
				if (utsprite == "spr_noelle_ut")
				{
					global.msc = 100;
					if (talked > 0)
						global.msc = 102;
					scr_text(global.msc);
					global.fe = 0;
					global.fc = 3;
					global.typer = 12;
					if (global.plot >= 3)
					{
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_29_0");
						global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_30_0");
						global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_31_0");
						if (talked >= 1)
						{
							global.typer = 23;
							global.fe = 3;
							global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_37_0");
						}
					}
				}

				if (utsprite == "spr_berdly_ut")
				{
					global.fc = 12;
					global.fe = 1;
					global.typer = 13;
					global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_48_0");
					global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_49_0");
					global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_50_0");
					global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_51_0");
					global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_52_0");
					global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_53_0");
					if (talked > 0)
					{
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_57_0");
						global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_58_0");
					}

					if (global.plot >= 3)
					{
						global.fe = 3;
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_65_0");
						global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_66_0");
						global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_67_0");
						if (talked > 0)
							global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_71_0");
					}
				}

				if (utsprite == "spr_snowy_ut")
				{
					global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_81_0");
					global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_82_0");
					global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_83_0");
					global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_84_0");
					if (talked > 0)
					{
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_88_0");
						global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_89_0");
						global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_90_0");
					}

					if (global.plot >= 3)
					{
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_96_0");
						global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_97_0");
						global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_98_0");
						global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_99_0");
						global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_100_0");
						if (talked > 0)
							global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_104_0");
					}
				}

				if (utsprite == "spr_mkid_ut")
				{
					global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_114_0");
					global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_115_0");
					global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_116_0");
					if (talked > 0)
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_120_0");
					if (global.plot >= 3)
					{
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_126_0");
						global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_127_0");
						global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_128_0");
						if (talked > 0)
							global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_132_0");
					}
				}

				if (utsprite == "spr_catti_ut")
				{
					global.fc = 13;
					global.fe = 0;
					global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_145_0");
					global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_146_0");
					if (global.plot >= 3)
					{
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_150_0");
						global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_151_0");
					}
				}

				if (utsprite == "spr_jockington_ut")
				{
					global.fc = 14;
					global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_159_0");
					global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_160_0");
					global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_161_0");
					global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_162_0");
					if (talked > 0)
					{
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_166_0");
						global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_167_0");
					}

					if (global.plot >= 3)
					{
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_174_0");
						global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_175_0");
					}
				}

				if (utsprite == "spr_alphysu")
				{
					global.fc = 11;
					global.typer = 20;
					global.fe = 3;
					global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_185_0");
					global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_186_0");
					global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_187_0");
					global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_188_0");
					if (talked > 0)
					{
						global.fe = 7;
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_192_0");
					}

					if (global.plot >= 3)
					{
						global.fe = 5;
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_198_0");
					}
				}
			}

			if (room == "room_field2")
			{
				global.fc = 5;
				global.fe = 0;
				global.typer = 32;
				global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_210_0");
				global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_211_0");
				scr_ralface(2, "A");
				global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_213_0");
				scr_lanface(4, 3);
				global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_215_0");
				global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_216_0");
				scr_ralface(7, 3);
				global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_218_0");
				scr_lanface(9, 1);
				global.msg[10] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_220_0");
				global.msg[11] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_221_0");
				scr_ralface(12, 9);
				global.msg[13] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_223_0");
				if (global.flag[210] == 1)
				{
					global.fc = 2;
					global.fe = 11;
					global.typer = 31;
					global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_230_0");
					global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_231_0");
					scr_lanface(2, 7);
					global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_233_0");
				}

				if (global.flag[210] == 2)
				{
					global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_239_0");
					scr_ralface(1, 8);
					global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_241_0");
					scr_lanface(3, 3);
					global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_243_0");
					global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_244_0");
					scr_ralface(6, "A");
					global.msg[7] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_246_0");
				}

				if (global.flag[210] == 0)
					global.flag[210] = 1;
			}

			if (room == "room_field_boxpuzzle")
			{
				global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_257_0");
				if (type == 0)
				{
					global.typer = 31;
					global.fc = 2;
					global.fe = 0;
					if (global.flag[212] == 1)
					{
						input_name = scr_get_input_name(4);
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_269_0");
						global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_270_0"), input_name);
						scr_susface(2, 9);
						global.msg[3] = scr_84_get_subst_string(scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_272_0"), input_name);
						if (talked >= true)
						{
							global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_276_0"), input_name);
							scr_susface(1, 2);
							global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_278_0");
						}
					}
				}
				else
				{
					global.typer = 30;
					global.fc = 1;
					global.fe = 0;
					if (global.flag[212] == 1)
					{
						global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_295_0");
						global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_296_0");
					}
				}
			}

			remanimspeed = image_speed;
			myinteract = 3;
			mydialoguer = instance_create<obj_dialoguer>(0, 0, "obj_dialoguer");
			talked += 1;
		}

		public override void Step_1()
        {
            if (normalanim == 1)
            {
                if (myinteract > 0 && instance_exists("obj_writer"))
                {
                    var obj_writer = FindObjectOfType<obj_writer>();
                    if (obj_writer.halt > 0)
                    {
                        image_speed = 0;
						image_index = 0;
                    }
                    if (obj_writer.halt == 0)
                        image_speed = remanimspeed;
                }
            }
            if (normalanim == 1 || normalanim == 2)
            {
                if (myinteract == 0)
                {
                    facing = dfacing;
                    image_index = 0;
					image_speed = 0;
                }
            }
            scr_npcdir();
        }
	}
}
