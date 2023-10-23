using System;
using Assets;
using OBJECT_SCRIPTS.COLLISION;
using OBJECT_SCRIPTS.DOOR;

namespace OBJECT_SCRIPTS
{
	public class obj_event_room : GamemakerObject
	{
		public override void Create()
		{
			con = 0;
			timer = 0;
			entrance = global.entrance;
			rem_facing = -1;
			facing_timer = 0;
			if (room == "room_field2" && global.plot >= 34)
				instance_destroy();
			if (room == "room_field2A" || room == "room_field_puzzle1")
			{
				if (room == "room_field2A")
					candyflag = 101;
				if (room == "room_field_puzzle1")
					candyflag = 102;
				siner = 0;
				if (global.flag[candyflag] >= 2)
					instance_destroy();
				else
				{
					var obj_npc_room = FindObjectOfType<obj_npc_room>();
					candytree = scr_dark_marker(obj_npc_room.x, obj_npc_room.y, "spr_candytree_candies");
					candytree.siner = 0;
					candytree.scr_depth();
					candytree.depth -= 5;
				}
			}
			if (room == "room_torhouse")
			{
				if (global.entrance == 0 && obj_mainchara.x <= (room_width / 2))
					instance_destroy();
				if (global.entrance == 1)
					instance_destroy();
				if (global.entrance == 2)
					instance_destroy();
				if (global.entrance == 24)
    {
					global.facing = 3;
					rem_facing = 3;
    }
				if (global.entrance == 4)
				{
					global.facing = 0;
					rem_facing = 0;
				}
				if (global.plot < 250)
					instance_destroy();
				else
				{
					if (global.flag[262] == 3)
						global.flag[262] = 4;
					pie = scr_marker(274, 96, "spr_pie");
					pie.depth = 100000;
					if (!snd_is_playing(global.currentsong1))
					{
						global.currentsong0 = snd_init("home.ogg");
						global.currentsong1 = mus_loop_ext(global.currentsong0, 0.8, 0.97);
					}
				}
			}
			if (room == "room_town_krisyard")
			{
				if (global.plot < 250)
					instance_destroy();
				else if (global.entrance == 24)
				{
					global.facing = 0;
					rem_facing = 0;
				}
			}
			if (room == "room_krishallway")
			{
				global.facing = 0;
				rem_facing = 0;
			}
			if (room == "room_cc_prison_prejoker")
			{
				global.flag[31] = 0;
				songplayed = 0;
				m = 0;
				maxm = 0;
				if ((!snd_is_playing(global.currentsong1)) && global.flag[241] < 6)
				{
					songplayed = 1;
					global.currentsong0 = snd_init("prejoker.ogg");
					global.currentsong1 = mus_loop_ext(global.currentsong0, 1, 0.85);
					mus_volume(global.currentsong1, 0, 0);
				}
				doorimg = scr_dark_marker((x - 48), (y - 170), "spr_jokerdoor");
				doorimg.depth = 500000;
				doorsolid = instance_create<obj_soliddark>(x, y, "obj_soliddark");
				doorevent = instance_create<obj_readable_room1>(x, y, "obj_readable_room1");
				if (global.flag[241] == 5)
				{
					doorimg.image_index = 2;
					doorsolid.instance_destroy();
					doorevent.instance_destroy();
					door_door = instance_create<obj_doorA>((x + 15), y, "obj_doorA");
				}
				if (global.flag[241] >= 6)
				{
					doorsolid.instance_destroy();
					doorevent.instance_destroy();
					doorimg.instance_destroy();
					finalsolid = instance_create<obj_soliddark>(1600, 1040, "obj_soliddark");
				}
			}
			if (room == "room_cc_throneroom")
			{
				if (global.plot >= 240)
				{
					block = instance_create<obj_soliddark>(260, 740, "obj_soliddark");
					block.image_xscale = 8;
					foreach (var item in with<obj_readable_room1>())
					{
						item.instance_destroy();
					}
					var obj_npc_sign = FindObjectOfType<obj_npc_sign>();
					th = scr_dark_marker(obj_npc_sign.x, obj_npc_sign.y, "spr_darkthrone");
					th.scr_depth();
					foreach (var item in with<obj_npc_sign>())
					{
						item.chairsolid = instance_create<obj_solidblock>(item.x, item.y, "obj_solidblock");
						item.chairsolid.sprite_index = item.sprite_index;
						item.chairsolid.image_xscale = 2;
						item.chairsolid.image_yscale = 2;
						item.visible = true;
						item.chairsolid.scr_depth();
						item.instance_destroy();
					}
				}
			}
			if (room == "room_forest_savepoint3")
			{
				if (global.tempflag[9] == true)
				{
					if (global.hp[1] < 1)
						global.hp[1] = 10;
					if (global.hp[3] < 1)
						global.hp[3] = 10;
					global.fighting = false;
					global.interact = 1;
					blackmarker = scr_dark_marker(-100, -100, "spr_pixel_white");
					blackmarker.image_blend = c_black;
					blackmarker.image_xscale = 600;
					blackmarker.image_yscale = 600;
					blackmarker.depth = 1000;
					con = 10;
					alarm[4] = 30;
				}
				else
					instance_destroy();
			}
			if (room == "room_field_secret1")
			{
				throw new NotImplementedException();
			}
			if (room == "room_forest_beforeclover")
			{
				throw new NotImplementedException();
			}
			if (room == "room_forest_savepoint_relax")
			{
				if (global.plot >= 85)
					instance_destroy();
				else
					con = 1;
			}
			if (room == "room_forest_maze_susie")
			{
				global.flag[291] = 5;
				if (global.plot >= 100)
					instance_destroy();
				else
				{
					image_speed = 0;
					visible = true;
					scr_depth();
					con = 1;
					sprite_index = "spr_susied_dark_unhappy";
				}
			}
			talked = false;
			timer = 0;
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Other_13()
		{
			facing_timer += 1;
			if (facing_timer <= 6)
			{
				if (rem_facing >= 0)
					global.facing = rem_facing;
			}
		}

		public override void Step_0()
		{
			if (room == "room_field2")
			{
				if (obj_mainchara.x >= x && global.interact == 0 && con == 0)
				{
					global.fc = 5;
					global.typer = 32;
					global.interact = 1;
					if (global.flag[210] == 1)
					{
						global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_11_0");
						scr_ralface(1, "B");
						global.msg[2] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_13_0");
						scr_lanface(3, 3);
						global.msg[4] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_15_0");
					}
					else
					{
						global.fe = 6;
						global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_20_0");
						scr_ralface(1, "B");
						global.msg[2] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_22_0");
						scr_lanface(3, 2);
						global.msg[4] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_24_0");
						global.flag[210] = 2;
					}

					if (global.plot < 34)
						global.plot = 34;
					con = 1;
					instance_create(0, 0, "obj_dialoguer");
				}
				if (con == 1 && d_ex() == 0)
				{
					global.interact = 0;
					instance_destroy();
				}
			}

			if (room == "room_field2A" || room == "room_field_puzzle1")
			{
				if (instance_exists(candytree))
				{
					siner += 1;
					candytree.image_alpha = (0.7 + (sin((siner / 8)) * 0.3));
					candytree.image_index = global.flag[candyflag];
					if (global.flag[candyflag] >= 2)
					{
						candytree.instance_destroy();
						instance_destroy();
					}
				}
			}

			if (room == "room_krishallway")
				event_user(3);
			if (room == "room_town_krisyard")
				event_user(3);
			if (room == "room_torhouse")
			{
				timer += 1;
				event_user(3);
				if (timer >= 5 && global.interact == 0 && con == 0 && rem_facing == 3)
				{
					if (global.flag[277] == 7)
					{
						global.typer = 7;
						global.fc = 4;
						global.fe = 0;
						global.flag[277] += 1;
						global.interact = 1;
						con = 1;
						global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_71_0");
						global.msg[1] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_72_0");
						instance_create(0, 0, "obj_dialoguer");
					}
					if (global.flag[277] >= 2 && global.flag[277] <= 6)
					{
						global.flag[277] += 1;
						con = 2;
					}
					if (global.flag[277] == 1)
					{
						global.typer = 7;
						global.fc = 4;
						global.fe = 0;
						global.flag[277] += 1;
						global.interact = 1;
						con = 1;
						global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_91_0");
						global.msg[1] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_92_0");
						global.msg[2] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_93_0");
						instance_create(0, 0, "obj_dialoguer");
					}
					if (global.flag[277] == 0)
					{
						global.typer = 7;
						global.fc = 4;
						global.fe = 0;
						global.flag[277] += 1;
						global.interact = 1;
						con = 1;
						global.msg[0] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_106_0");
						global.msg[1] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_107_0");
						global.msg[2] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_108_0");
						global.msg[3] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_109_0");
						global.msg[4] = scr_84_get_lang_string("obj_event_room_slash_Step_0_gml_110_0");
						instance_create(0, 0, "obj_dialoguer");
					}
				}
				if (con == 1 && (!d_ex()))
				{
					con = 2;
					global.interact = 0;
				}
			}
			if (room == "room_cc_prison_prejoker")
			{
				throw new NotImplementedException();
			}
			if (room == "room_cc_prefountain")
			{
				throw new NotImplementedException();
			}
			if (room == "room_forest_savepoint3")
			{
				throw new NotImplementedException();
			}
			if (room == "room_field_secret1")
			{
				throw new NotImplementedException();
			}
			if (room == "room_forest_beforeclover")
			{
				throw new NotImplementedException();
			}
			if (room == "room_forest_savepoint_relax")
			{
				throw new NotImplementedException();
			}
			if (room == "room_forest_maze_susie")
			{
				throw new NotImplementedException();
			}
		}
	}
}
