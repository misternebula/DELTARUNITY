using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_glowtilepuzz : obj_interactable
	{
		public override void Create()
		{
			record = 0;
			tiletotal = 0;
			image_xscale = 2;
			image_yscale = 2;
			image_speed = 0.1;
			funtotal = 99;
			order = 0;
			funbuffer = 0;
			stepnoise = false;
			wonamt = 0;
			active = 0;
			failtimer = 0;
			failamt = 0;
			talked = 0;
			wonmax = 3;
			plotamt = 1;
			failmax = 200;
			if (room == "room_field_puzzle1")
			{
				failmax = 240;
				wonmax = 3;
				plotamt = 35;
				for (i = 0; i < wonmax; i += 1)
				{
					block[i] = instance_create((1280 + (i * 40)), 280, "obj_soliddark");
					block[i].image_yscale = 2;
					spike1[i] = scr_dark_marker((1280 + (i * 40)), 280, "spr_spiketile");
					spike1[i].depth = 900000;
					spike2[i] = scr_dark_marker((1280 + (i * 40)), 320, "spr_spiketile");
					spike2[i].depth = 900000;
					if (global.plot >= 35)
					{
						active = 2;
						spike1[i].image_index = 1;
						spike2[i].image_index = 1;
						block[i].instance_destroy();
					}
				}
			}

			if (room == "room_field_puzzle2")
			{
				failmax = 240;
				wonmax = 3;
				plotamt = 38;
				for (i = 0; i < wonmax; i += 1)
				{
					if (global.plot >= 38)
						active = 2;
				}
			}

			shakecon = 0;
		}

		public override void Other_10()
		{
			if (active == 0)
			{
				active = 1;
				failtimer = 0;
				image_index = 0;
				sprite_index = "spr_hourglass_switch_on";
				event_user(1);
				event_user(2);
			}
		}

		public override void Other_11()
		{
			if (room == "room_field_puzzle1")
			{
				for (i = 0; i < wonmax; i += 1)
				{
					block[i].instance_destroy();
					block[i] = instance_create((1280 + (i * 40)), 280, "obj_soliddark");
					block[i].image_yscale = 2;
					spike1[i].image_index = 0;
					spike2[i].image_index = 0;
				}
			}

			wonamt = 0;
		}

		public override void Other_12()
		{
			funbuffer = 0;
			snd_play("snd_noise");

			foreach (var item in with<obj_glowtile>())
			{
				item.active = false;
				item.stepped = false;
				item.stepbuffer = -1;
				item.sprite_index = "spr_glowtile_off";
			}

			if (wonamt < wonmax)
			{
				if (wonamt == 0)
				{
					choice1 = 2;
					choice2 = 2;
					funtotal = 1;
				}

				if (wonamt == 1)
				{
					choice1 = 0;
					choice2 = 1;
					funtotal = 2;
				}

				if (wonamt >= 2)
				{
					choice1 = 1;
					choice2 = 2;
					funtotal = 2;
				}

				choice3 = choice1;

				if (room == "room_field_puzzle2")
				{
					if (wonamt == 0)
					{
						choice1 = 3;
						choice2 = 3;
						choice3 = 3;
						funtotal = 1;
					}

					if (wonamt == 1)
					{
						choice1 = 2;
						choice2 = 2;
						choice3 = 1;
						funtotal = 2;
					}

					if (wonamt == 2)
					{
						choice1 = 2;
						choice2 = 3;
						choice3 = 4;
						funtotal = 3;
					}

					if (wonamt >= 3)
					{
						choice1 = 1;
						choice2 = 0;
						choice3 = 4;
						funtotal = 3;
					}
				}

				if (tileid[choice1] != null)
				{
					tileid[choice1].active = true;
					tileid[choice1].sprite_index = "spr_glowtile_step";
				}

				if (tileid[choice2] != null)
				{
					tileid[choice2].active = true;
					tileid[choice2].sprite_index = "spr_glowtile_step";
				}

				if (tileid[choice3] != null)
				{
					tileid[choice3].active = true;
					tileid[choice3].sprite_index = "spr_glowtile_step";
				}
			}
		}

		public override void Step_0()
		{
			curtotal = 0;
			funbuffer -= 1;
			for (i = 0; i < tiletotal; i += 1)
			{
				if (tileid[i] != null)
				{
					if (tileid[i].stepped == true)
						curtotal += 1;
				}
			}

			if (curtotal == funtotal && funbuffer < -1)
			{
				if (room == "room_field_puzzle1")
				{
					block[wonamt].instance_destroy();
					spike1[wonamt].image_index = 1;
					spike2[wonamt].image_index = 1;
				}

				wonamt += 1;
				snd_play("snd_break1");
				funbuffer = 7;

				if (wonamt == wonmax)
				{
					if (room == "room_field_puzzle2")
						shakecon = 1;
					if (global.plot < plotamt)
						global.plot = plotamt;
					active = 2;
					sprite_index = "spr_hourglass_switch_off";
					funbuffer = -1;

					foreach (var item in with<obj_glowtile>())
					{
						item.active = false;
						item.stepped = false;
						item.stepbuffer = -1;
						item.sprite_index = "spr_glowtile_off";
					}
				}
			}

			if (funbuffer == 4)
			{
				foreach (var item in with<obj_glowtile>())
				{
					item.active = false;
					item.stepped = false;
					item.stepbuffer = -1;
					item.sprite_index = "spr_glowtile_off";
				}
			}

			if (funbuffer == 1)
				event_user(2);

			if (stepnoise == true)
			{
				snd_play("snd_step1");
				stepnoise = false;
			}

			if (active == 1)
			{
				failtimer += 1;
				image_index = (int)(failtimer / (failmax / 8.0));
				if (failtimer >= failmax)
				{
					active = 0;
					sprite_index = "spr_hourglass_switch_off";
					snd_play("snd_noise");
					failamt += 1;
					var obj_darkcontroller = FindObjectOfType<obj_darkcontroller>();
					if (failamt >= 3 && talked == 0 && global.interact == 0 && obj_darkcontroller.atalk == 0 && room == "room_field_puzzle1")
					{
						talked = 1;
						global.interact = 1;
						global.fc = 2;
						global.typer = 31;
						global.fe = 1;
						global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_77_0");
						global.msg[1] = ((scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_78_0") + scr_get_input_name(5)) + scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_78_1"));
						instance_create(0, 0, "obj_dialoguer");
					}

					if (failamt >= 3 && talked == 0 && global.interact == 0 && room == "room_field_puzzle2")
					{
						talked = 1;
						global.interact = 1;
						global.fc = 2;
						global.typer = 31;
						global.fe = 1;
						if (!scr_havechar(2))
						{
							global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_91_0");
							global.msg[1] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_92_0");
						}

						if (scr_havechar(2) && obj_darkcontroller.atalk == 0)
						{
							global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_98_0");
							global.msg[1] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_99_0");
							scr_susface(2, 2);
							global.msg[3] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_101_0");
						}

						if (scr_havechar(2) && obj_darkcontroller.atalk == 1)
						{
							global.fc = 1;
							global.fe = 0;
							global.typer = 30;
							global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_110_0");
							global.msg[1] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_111_0");
							scr_ralface(2, 8);
							global.msg[3] = ((scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_113_0") + scr_get_input_name(5)) + scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_113_1"));
						}

						instance_create(0, 0, "obj_dialoguer");
					}

					foreach (var item in with<obj_glowtile>())
					{
						item.active = false;
						item.stepped = false;
						item.stepbuffer = -1;
						item.sprite_index = "spr_glowtile_off";
					}
				}
			}

			if (talked == 1 && d_ex() == 0)
			{
				talked = 2;
				global.interact = 0;
			}

			if (shakecon == 1 && global.interact == 0)
			{
				global.interact = 1;
				snd_play("snd_locker");
				instance_create(0, 0, "obj_shake");
				shakecon = 2;
			}

			if (shakecon == 2 && (!instance_exists("obj_shake")))
			{
				global.fc = 0;
				global.typer = 6;
				global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_148_0");
				instance_create(0, 0, "obj_dialoguer");
				shakecon = 3;
			}

			if (shakecon == 3 && d_ex() == 0)
			{
				global.interact = 0;
				shakecon = 4;
			}
		}
	}
}
