using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_lancerslideevent : GamemakerObject
	{
		public override void Create()
		{
			global.interact = 1;
			con = 1;
			cameracon = 0;
			ever = 0;
			seiz = global.flag[8];
			slidetimer = 0;
		}

		public override void Alarm_1()
		{
			dust = instance_create((obj_mainchara.x + 20), (obj_mainchara.y + 30), "obj_slidedust");
			dust.vspeed = -6;
			dust.hspeed = (-1 + random(2));
			alarm[1] = 4;
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Step_0()
		{
			if (con == 1)
			{
				obj_mainchara.visible = false;
				k = scr_dark_marker(0, obj_mainchara.y, "spr_krisr_dark");
				k.hspeed = 12;
				k.image_speed = 0.334;
				s = scr_dark_marker(340, (obj_mainchara.y - 10), "spr_susied_dark_unhappy");
				con = 2;
				alarm[4] = 22;
			}
			if (con == 3)
			{
				global.interact = 1;
				k.scr_halt();
				s.sprite_index = "spr_susiel_dark_unhappy";
				global.typer = 30;
				global.fc = 1;
				global.fe = 9;
				global.msg[0] = scr_84_get_lang_string("obj_lancerslideevent_slash_Step_0_gml_34_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 4;
			}
			if (con == 4 && d_ex() == false)
			{
				snd_play("snd_noise");
				s.sprite_index = "spr_susied_dark_unhappy";
				s.image_speed = 0.334;
				s.vspeed = 20;
				k.sprite_index = "spr_krisd_dark";
				con = 5;
				alarm[4] = 30;
			}
			if (con == 6)
			{
				k.vspeed = 4;
				k.image_speed = 0.2;
				con = 7;
				alarm[4] = 10;
			}
			if (con == 8)
			{
				snd_play("snd_noise");
				obj_mainchara.x = k.x;
				obj_mainchara.y = k.y;
				alarm[1] = 1;
				slidesfx = snd_loop("snd_paper_surf");
				obj_mainchara.cutscene = true;
				obj_mainchara.visible = true;
				obj_mainchara.vspeed = 20;
				obj_mainchara.fun = true;
				obj_mainchara.sprite_index = "spr_krisd_slide";
				obj_mainchara.autorun = 2;
				if (seiz == 1)
				{
					obj_mainchara.vspeed = 10;
				}
				k.instance_destroy();
				cameracon = 1;
				con = 9;
			}
			if (cameracon == 1)
			{
				if (__view_get(1, 0) < 880)
				{
					if (seiz == 0)
						__view_set(1, 0, (__view_get(1, 0) + 20));
					else
						__view_set(1, 0, (__view_get(1, 0) + 10));
				}
				else
				{
					obj_mainchara.vspeed = 0;
					global.interact = 0;
					instance_create(0, 0, "obj_overworld_spademaker");
					block1 = instance_create(0, (__view_get(1, 0) + 40), "obj_soliddark");
					block1.image_xscale = 40;
					block2 = instance_create(0, (__view_get(1, 0) + 440), "obj_soliddark");
					block2.image_xscale = 40;

					// create wobbly things


					cameracon = 2;
					shifted = 0;
				}
			}
			if (cameracon == 2)
			{
				slidetimer += 1;
				if (seiz == 0)
				{
					tile_layer_shift(1000000, 0, -20);
					shifted -= 20;
				}
				else
				{
					tile_layer_shift(1000000, 0, -10);
					shifted -= 10;
				}
				if (shifted <= -480)
				{
					tile_layer_shift(1000000, 0, 480);
					shifted += 480;
				}
				if (global.inv == 1 && slidetimer <= 390)
					slidetimer -= 10;
				if (slidetimer == 390)
				{
					snd_volume(global.currentsong1, 0, 120);
					snd_volume(slidesfx, 0, 120);
					FindObjectOfType<obj_overworld_spademaker>().alarm[0] = -40;
					foreach (var item in with<obj_overworld_spade>())
					{
						item.gravity = -0.4;
						item.active = false;
					}
					fo = instance_create(0, 0, "obj_fadeout");
					fo.image_blend = c_white;
					fo.fadespeed = 0.01;
				}
				if (slidetimer == 540)
				{
					snd_stop(slidesfx);
					snd_free(global.currentsong0);
					global.interact = 1;
					room_goto_next();
				}
			}
		}
	}
}
