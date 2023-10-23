using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_shortcut_door : obj_interactablesolid
	{
		public override void Create()
		{
			myinteract = 0;
			talked = 0;
			_checked = false;
			global.flag[32] = 0;
			image_xscale = 2;
			image_yscale = 2;
			con = 0;
			image_speed = 0;
			teleportmode = 0;
			door_destination = room;
			door_location = room;
			on = 1;
			weirdlight = scr_dark_marker((x + 6), (y + 96), "spr_weirdlight");
			weirdlight.depth = 895000;
			weirdlight.image_speed = 0.125;
			if (global.plot < 60)
				on = 0;
			if (room == "room_forest_fightsusie")
			{
				if (global.plot < 154)
					on = 0;
			}

			if (on == 0)
			{
				sprite_index = "spr_shortcut_door_off";
				weirdlight.instance_destroy();
			}
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Other_10()
		{
			global.msc = 0;
			global.typer = 6;
			global.fc = 0;
			global.fe = 0;
			global.interact = 1;
			global.msc = 460;
			scr_text(global.msc);
			if (on == 0)
				global.msg[0] = scr_84_get_lang_string("obj_shortcut_door_slash_Other_10_gml_13_0");
			myinteract = 3;
			mydialoguer = instance_create(0, 0, "obj_dialoguer");
			talked += 1;
		}

		public override void Step_0()
		{
			if (myinteract == 3)
			{
			}

			if (myinteract == 3 && con == 0)
			{
				if (instance_exists(mydialoguer) == 0)
				{
					global.interact = 0;
					myinteract = 0;
					obj_mainchara.onebuffer = 5;
				}
			}

			if (con >= 5)
			{
				if (con == 50)
				{
					weirdlight.instance_destroy();
					con = 51;
					snd_play("snd_dooropen");
					image_index = 1;
				}

				if (con == 51)
					global.interact = 1;
				if (con == 51 && (!d_ex()))
				{
					global.interact = 1;
					con = 52;
					doortimer = 0;
				}

				if (con == 52)
				{
					doortimer += 1;
					if (doortimer >= 6)
					{
						snd_free_all();
						snd_play("snd_doorclose");
						dark_marker = scr_dark_marker((__view_get(0, 0) - 10), (__view_get(1, 0) - 10), "spr_pixel_white");
						dark_marker.image_xscale = 700;
						dark_marker.image_yscale = 700;
						dark_marker.depth = -100;
						dark_marker.image_blend = c_black;
						con = 53;
						doortimer = 0;
					}
				}

				if (con == 53)
				{
					doortimer += 1;
					if (doortimer >= 30)
					{
						global.facing = 0;
						con = 54;
						snd_play("snd_dooropen");
						global.interact = 3;
						instance_create(0, 0, "obj_persistentfadein");
						global.entrance = 23;
						room_goto(door_destination);
					}
				}
			}
		}

		public override void Step_1()
		{

		}
	}
}
