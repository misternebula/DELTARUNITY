using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_tem_school : obj_interactablesolid
	{
		public override void Create()
		{
			dtsprite = "spr_tem_sit";
			rtsprite = "spr_tem_sit_r";
			ltsprite = "spr_tem_sit_l";
			utsprite = "spr_tem_sit";
			myinteract = 0;
			facing = 0;
			dfacing = 0;
			image_speed = 0;
			talked = 0;
			ourcase = 0;
			eggmake = 0;
			egcon = 0;
			egtimer = 0;
			scr_npcdir();
			scr_depth();
		}

		public override void Step_0()
		{
			if (myinteract == 3)
			{
				if (instance_exists(mydialoguer) == false)
				{
					if (egcon == 1)
					{
						// bug fix? decomp error? idk
						image_speed = 0;

						egcon = 2;
					}
						
					if (egcon == 2)
					{
						egtimer += 1;
						sprite_index = "spr_tem_eggput";
						image_index = (egtimer / 10);
						if (egtimer >= 60)
						{
							sprite_index = "spr_tem_sit";
							egg = scr_marker((x + 29), (y + 3), "spr_egg");
							egg.depth = depth;
							egcon = 3;
						}
					}
					if (egcon == 3 || egcon == 0)
					{
						global.interact = 0;
						myinteract = 0;
						obj_mainchara.onebuffer = 5;
					}
				}
			}
			if (egcon != 2)
			{
				if (myinteract == 0)
				{
					facing = dfacing;
					image_speed = 0;
				}
				scr_npcdir();
			}
		}

		public override void Other_10()
		{
			global.msc = 0;
			global.typer = 5;
			global.fc = 0;
			global.fe = 0;
			global.interact = 1;
			image_speed = 0.2;
			global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_8_0");
			if (egcon == 0 && global.plot < 3)
				egcon = 1;
			if (talked >= 1)
			{
				global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_13_0");
				if (global.facing == 3)
				{
					image_speed = 0;
					facing = 0;
					dfacing = 0;
					global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_20_0");
					global.msg[1] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_21_0");
				}
			}
			if (global.plot == 3)
			{
				if (egcon == 0)
				{
					global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_29_0");
					global.msg[1] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_30_0");
				}
				if (egcon == 3)
				{
					global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_34_0");
					if (global.facing == 3)
					{
						image_speed = 0;
						facing = 0;
						dfacing = 0;
						global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_41_0");
					}
				}
			}
			myinteract = 3;
			mydialoguer = instance_create<obj_dialoguer>(0, 0, "obj_dialoguer");
			if (global.darkzone == true)
				image_speed = 0.1;
			talked += 1;
		}
	}
}
