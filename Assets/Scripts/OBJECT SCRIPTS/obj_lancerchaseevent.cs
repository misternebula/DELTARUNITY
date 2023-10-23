using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_lancerchaseevent : GamemakerObject
	{
		public override void Create()
		{
			con = 0;
			if (global.plot >= 15)
				instance_destroy();
			else
			{
				con = 1;
				susie = scr_dark_marker(1200, 760, "spr_susieu_dark");
				susie.depth = 500000;
			}
			aftercon = false;
			tilearray = tile_get_ids_at_depth(99999);
			for (var i = 0; i < array_length_1d(tilearray); i++)
				tile_set_alpha(tilearray[i], 0);
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Step_0()
		{
			if (con == 1 && obj_mainchara.x >= 1060 && global.interact == 0)
			{
				global.flag[7] = 1;
				obj_mainchara.cutscene = true;
				global.interact = 1;
				scr_pan(4, 0, 20);
				con = 2;
				alarm[4] = 30;
			}
			if (con == 3)
			{
				global.facing = 1;
				susie.sprite_index = "spr_susiel_dark";
				global.msg[0] = scr_84_get_lang_string("obj_lancerchaseevent_slash_Step_0_gml_16_0");
				global.msg[1] = scr_84_get_lang_string("obj_lancerchaseevent_slash_Step_0_gml_17_0");
				global.typer = 30;
				global.fe = 0;
				global.fc = 1;
				con = 4;
				d = instance_create(0, 0, "obj_dialoguer");
				d.side = 0;
			}
			if (con == 4 && instance_exists("obj_dialoguer") == false)
			{
				lancer = scr_dark_marker(1150, 370, "spr_darklancer");
				global.facing = 2;
				susie.sprite_index = "spr_susieu_dark";
				scr_pan(0, -8, 40);
				con = 5;
				alarm[4] = 40;
			}
			if (con == 6)
			{
				con = 7;
				alarm[4] = 30;
			}
			if (con == 8)
			{
				lancer.image_index = 1;
				snd_play("snd_break1");
				b[0] = scr_marker((lancer.x + 120), (lancer.y - 20), "spr_spadebullet");
				b[1] = scr_marker((lancer.x - 160), (lancer.y - 20), "spr_spadebullet");
				for (i = 0; i < 2; i += 1)
				{
					b[i].image_alpha = 0;
					bdir[i] = point_direction(b[i].x, b[0].y, (susie.x + 20), (susie.y + 30));
					b[i].direction = bdir[i];
					b[i].image_angle = bdir[i];
					b[i].speed = -4;
					b[i].friction = 0.12;
				}
				con = 9;
				alarm[4] = 40;
			}
			if (con == 9)
			{
				b[0].image_alpha += 0.04;
				b[1].image_alpha += 0.04;
			}
			if (con == 10)
			{
				lancer.image_index = 0;
				snd_play("snd_bigcut");
				aftercon = true;
				b[0].speed = 22;
				b[1].speed = 22;
				b[0].friction = -1;
				b[1].friction = -1;
				scr_pan(0, 31, 10);
				con = 11;
				alarm[4] = 10;
			}
			if (aftercon == true)
			{
				b[0].a = b[0].scr_afterimage();
				b[0].a.image_alpha = 0.6;
				b[1].a = b[1].scr_afterimage();
				b[1].a.image_alpha = 0.6;
			}
			if (con == 11)
			{
				if (__view_get(1, 0) >= (room_height - 480))
					__view_set(1, 0, (room_height - 480));
			}
			if (con == 12)
			{
				susie.hspeed = 16;
				susie.sprite_index = "spr_susie_shock";
				con = 13;
				alarm[4] = 5;
			}
			if (con == 14)
			{
				susie.hspeed = 0;
				con = 14.1;
				alarm[4] = 30;
			}
			if (con == 15.1)
			{
				susie.sprite_index = "spr_susiel_dark_unhappy";
				scr_pan_to_obj(obj_mainchara, 5);
				con = 14.2;
				alarm[4] = 4;
			}
			if (con == 15.2)
			{
				foreach (var item in with<obj_panner>())
				{
					item.instance_destroy();
				}
				obj_mainchara.cutscene = false;
				con = 15;
				alarm[4] = 10;
			}
			if (con == 16)
			{
				aftercon = false;
				global.fe = 9;
				global.msg[0] = scr_84_get_lang_string("obj_lancerchaseevent_slash_Step_0_gml_137_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 17;
			}
			if (con == 17 && instance_exists("obj_dialoguer") == false)
			{
				susie.sprite_index = "spr_susier_dark_unhappy";
				susie.image_speed = 0.334;
				susie.hspeed = 14;
				global.interact = 0;
				con = 18;
				obj_mainchara.cutscene = false;
				obj_mainchara.autorun = 1;
				global.currentsong0 = snd_init("creepychase.ogg");
				global.currentsong1 = mus_loop(global.currentsong0);
				instance_create(0, 0, "obj_overworld_spademaker");
			}
			if (con == 19)
				con = 20;
		}
	}
}
