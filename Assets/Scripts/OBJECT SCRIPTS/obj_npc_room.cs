using System;
using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_npc_room : obj_interactablesolid
	{
		public override void Create()
		{
			myinteract = 0;
			talked = 0;
			tempvar = 0;
			image_speed = 0;
			depthcancel = false;
			normalanim = 1;
			remanimspeed = 0;
			if (global.darkzone == false)
			{
				if (room == "room_krisroom")
					sprite_index = "spr_redwagon";

				if (room == "room_torhouse")
				{
					sprite_index = "spr_chairiel_empty";
					if (global.plot >= 250)
						sprite_index = "spr_chairiel";
				}

				if (room == "room_graveyard")
				{
					throw new NotImplementedException();
				}

				if (room == "room_hospital_lobby")
				{
					throw new NotImplementedException();
				}
			}

			if (global.darkzone == true)
			{
				image_xscale = 2;
				image_yscale = 2;
				if (room == "room_castle_tutorial")
					sprite_index = "spr_dummynpc";

				if (room == "room_field2A" || room == "room_field_puzzle1" || room == "room_field4")
					sprite_index = "spr_candytree";

				if (room == "room_field_topchef")
				{
					sprite_index = "spr_topchef";
					if (y <= 120)
					{
						sprite_index = "spr_smoldercake";
						alarm[11] = 1;
					}
				}

				if (room == "room_field_puzzletutorial")
				{
					sprite_index = "spr_npc_puzzlepiece";
					if (global.flag[251] == 1)
						instance_destroy();
				}

				if (room == "room_field_maze")
				{
					if (x < 1600)
						sprite_index = "spr_jigsawry_idle";
					if (x > 1600)
						sprite_index = "spr_lancer_dt";
				}

				if (room == "room_field_boxpuzzle")
					sprite_index = "spr_npc_block_broken";
			}


			if (depthcancel == false) 
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
			global.msc = 0;
			global.typer = 5;
			if (global.darkzone == true)
				global.typer = 6;
			global.fc = 0;
			global.fe = 0;
			global.interact = 1;
			image_speed = 0.2;
			if (global.darkzone == true)
				image_speed = 0.2;
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_11_0");
			if (room == "room_krisroom")
			{
				global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_15_0");
				global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_16_0");
			}

			if (room == "room_torhouse")
			{
				global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_21_0");
				if (global.plot >= 250)
				{
					global.msc = 455;
					scr_text(global.msc);
					global.typer = 7;
					global.fc = 4;
					global.fe = 0;
				}
			}

			if (room == "room_castle_tutorial")
				global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_41_0");

			if (room == "room_field2")
			{
				if (global.flag[501] == 1)
				{
					global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_48_0");
					global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_49_0");
				}

				if (global.flag[501] == 2)
					global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_53_0");
				if (global.flag[501] == 3)
				{
					global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_57_0");
					global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_58_0");
				}
			}

			if (room == "room_field2A")
			{
				global.msc = 145;
				scr_text(global.msc);
			}

			if (room == "room_field_puzzle1")
			{
				global.msc = 147;
				scr_text(global.msc);
			}

			if (room == "room_field_topchef")
			{
				if (y >= 160)
				{
					image_speed = 0.334;
					normalanim = 2;
					global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_81_0");
					global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_82_0");
					global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_83_0");
					global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_84_0");
					scr_ralface(4, 8);
					global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_86_0");
					global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_87_0");
					if (talked >= 1)
						global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_90_0");
					if (scr_havechar(2))
					{
						global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_95_0");
						scr_susface(1, 2);
						global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_97_0");
						scr_noface(3);
						global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_99_0");
						scr_susface(5, 2);
						global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_101_0");
						if (talked >= 1)
						{
							global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_104_0");
							scr_susface(1, 0);
							global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_106_0");
							scr_ralface(3, 9);
							global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_108_0");
							scr_susface(5, 2);
							global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_110_0");
						}
					}

					if (scr_itemcheck(6))
					{
						global.msc = 465;
						scr_text(global.msc);
					}

					if (global.flag[253] == 1)
					{
						global.msc = 470;
						scr_text(global.msc);
					}
				}
				else
				{
					global.msc = 149;
					scr_text(global.msc);
				}
			}

			if (room == "room_field_maze")
			{
				global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_137_0");
				global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_138_0");
				global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_139_0");
				if (global.plot < 37)
				{
					scr_ralface(3, 3);
					global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_143_0");
				}
				else
					global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_147_0");

				if (talked >= 1)
					global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_152_0");
				if (scr_havechar(2))
				{
					global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_157_0");
					scr_susface(1, 2);
					global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_159_0");
					if (talked >= 1)
						global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_165_0");
				}

				if (x > 1600)
				{
					global.fc = 5;
					global.fe = 0;
					global.typer = 32;
					global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_175_0");
					scr_ralface(1, 1);
					global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_177_0");
					scr_lanface(3, 2);
					global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_179_0");
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
					image_index = 0;
					image_speed = 0;
				}
			}
		}
	}
}
