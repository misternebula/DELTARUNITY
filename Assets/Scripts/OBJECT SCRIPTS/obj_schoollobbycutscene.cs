using System;
using Assets;
using OBJECT_SCRIPTS.COLLISION;
using OBJECT_SCRIPTS.DOOR;
using OBJECT_SCRIPTS.MARKER;

namespace OBJECT_SCRIPTS
{
	public class obj_schoollobbycutscene : GamemakerObject
	{
		public override void Create()
		{
			ran = 0;
			dex = 0;
			tsouth = 0;
			teast = 0;
			con = 0;
			type = 0;
			if (global.entrance == 2)
				global.facing = 0;
			if (global.plot < 2)
			{
				global.interact = 1;
				alarm[5] = 2;
				obj_mainchara.visible = false;
				t = scr_marker(460, 360, "spr_toriel_handhold_u");
				t.vspeed = -2;
				t.image_speed = 0.2;
				t.depth = 10000;
				alarm[4] = 85;
				con = 1;
				type = 1;
			}
			if (global.plot == 3)
			{
                type = 2;
                obj_mainchara.visible = false;
                obj_mainchara.x = FindObjectOfType<obj_markerB>().x;
				obj_mainchara.y = FindObjectOfType<obj_markerB>().y;
                k = scr_marker(obj_mainchara.x, obj_mainchara.y, "spr_krisd");
                k.scr_depth();
                s = scr_marker(240, 192, "spr_susier_plain");
                s.scr_depth();
                s.depth -= 5;
                global.interact = 1;
                FindObjectOfType<obj_doorA>().instance_destroy();
                doorsolid = instance_create<obj_solidblock>(110, 200, "obj_solidblock");
                con = 0.1;
                alarm[4] = 50;
			}
			if (global.plot >= 250)
			{
				throw new NotImplementedException();
			}
			if (global.plot >= 251)
				type = 4;
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Alarm_5()
		{
			__view_set(9, 0, null);
			__view_set(1, 0, (__view_get(1, 0) - 40));
			scr_pan(0, -1, 20);
		}

		public override void Step_0()
		{
            if (con > 0 && type == 1)
            {
                if (con == 2)
                {
                    obj_mainchara.vspeed = 0;
                    t.vspeed = 0;
                    t.image_index = 0;
                    t.image_speed = 0;
                    con = 3;
                    alarm[4] = 40;
                }
                if (con == 4)
                {
                    t.sprite_index = "spr_toriel_hug";
                    con = 5;
                    alarm[4] = 20;
                }
                if (con == 6)
                {
					foreach (var item in with<obj_writer>())
					{
						item.instance_destroy();
					}
					t.image_speed = 0.2;
                    con = 7;
                    alarm[4] = 10;
                }
                if (con == 8)
                {
                    t.image_speed = 0;
                    t.image_index = 2;
                    con = 11;
                    alarm[4] = 50;
                }
                if (con == 12)
                {
                    foreach (var item in with<obj_writer>())
                    {
                        item.instance_destroy();
                    }
                    t.image_speed = -0.2;
                    con = 13;
                    alarm[4] = 10;
                }
                if (con == 14)
                {
                    t.image_index = 0;
                    t.image_speed = 0;
                    t.sprite_index = "spr_toriel_d";
                    k = scr_marker((t.x + 4), (t.y + 21), "spr_krisu");
                    con = 15;
                    alarm[4] = 20;
                }
                if (con == 16)
                {
                    t.sprite_index = "spr_toriel_l";
                    scr_pan(-3, 0, 118);
                    k.sprite_index = "spr_krisl";
                    k.hspeed = -3;
                    k.image_speed = 0.25;
                    con = 17;
                    alarm[4] = 30;
                }
                if (con == 18)
                {
                    t.sprite_index = "spr_toriel_r";
                    t.hspeed = 2;
                    t.image_speed = 0.2;
                    con = 18.1;
                    alarm[4] = 78;
                }
                if (con == 19.1)
                {
                    fade = instance_create<obj_fadeout>(0, 0, "obj_fadeout");
                    fade.fadespeed = 0.02;
                    con = 19;
                    alarm[4] = 10;
                }
                if (con == 20)
                {
                    k.hspeed = 0;
                    k.sprite_index = "spr_krisu";
					k.vspeed = -0.5;
                    con = 21;
                    alarm[4] = 40;
                }
                if (con == 23)
                {
                    instance_create(0, 0, "obj_persistentfadein");
                    room_goto("room_alphysclass");
                }
                if (con == 22)
                {
                    snd_free_all();
                    con = 23;
                }
            }

            if (con > 0 && type == 2)
            {
                if (con == 0.1)
                    global.interact = 1;
                if (con == 1.1)
                {
                    k.sprite_index = "spr_krisr";
                    s.sprite_index = "spr_susie_eatchalk";
                    s.image_speed = 0.2;
                    con = 1.2;
                    chalksound = false;
                }

                if (con == 1.2)
                {
                    if (s.image_index >= 16 && chalksound == false)
                    {
                        chalksound = true;
                        snd_play("snd_noise");
                    }

                    if (s.image_index >= 21)
                    {
                        s.sprite_index = "spr_susier";
                        s.image_speed = 0;
                        s.image_index = 0;
                        con = 0.3;
                        alarm[4] = 40;
                    }
                }

                if (con == 1.3)
                {
                    s.sprite_index = "spr_susied";
                    con = 0.4;
                    alarm[4] = 30;
                }

                if (con == 1.4)
                {
                    s.sprite_index = "spr_susiel";
                    s.hspeed = -0.5;
                    s.image_speed = 0.1;
                    con = 0.5;
                    alarm[4] = 40;
                }

                if (con == 1.5)
                {
                    s.x = 220;
                    s.hspeed = 0;
                    s.image_index = 0;
                    s.image_speed = 0;
                    con = 1;
                    instance_create((s.x + 10), (s.y - 10), "obj_excblcon");
                    //with (obj_excblcon)
                    //alarm[0] = 40
                    snd_play("snd_b");
                    alarm[4] = 70;
                }

                if (con == 2)
                {
                    global.fc = 1;
                    global.fe = 0;
                    k.sprite_index = "spr_krisr";
                    global.facing = 1;
                    global.typer = 10;
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_193_0");
                    global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_194_0");
                    instance_create(0, 0, "obj_dialoguer");
                    con = 2.1;
                }

                if (con == 2.1 && d_ex() == false)
                {
                    s.sprite_index = "spr_susieu";
                    con = 1.6;
                    alarm[4] = 60;
                }

                if (con == 2.6)
                {
                    s.sprite_index = "spr_susier";
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_209_0");
                    global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_210_0");
                    con = 3;
                    instance_create(0, 0, "obj_dialoguer");
                }

                if (con == 3 && instance_exists("obj_dialoguer") == false)
                {
                    con = 4;
                    alarm[4] = 90;
                }

                if (con == 5)
                {
                    s.sprite_index = "spr_susier_lookup";
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_225_0");
                    global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_226_0");
                    con = 6;
                    instance_create(0, 0, "obj_dialoguer");
                }

                if (con == 6 && instance_exists("obj_dialoguer") == false)
                {
                    con = 7;
                    alarm[4] = 60;
                }

                if (con == 8)
                {
                    s.sprite_index = "spr_susied_plain";
                    con = 9;
                    alarm[4] = 30;
                }

                if (con == 10)
                {
                    s.sprite_index = "spr_susiel";
                    con = 11;
                    alarm[4] = 60;
                }

                if (con == 12)
                {
                    global.fe = 1;
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_254_0");
                    con = 13;
                    instance_create(0, 0, "obj_dialoguer");
                }

                if (con == 13 && instance_exists("obj_dialoguer") == false)
                {
                    s.hspeed = -1;
                    s.image_speed = 0.1;
                    alarm[4] = 56;
                    con = 14;
                }

                if (con == 15)
                {
                    k.image_speed = 0.1;
                    k.hspeed = -0.5;
                    con = 16;
                    alarm[4] = 80;
                }

                if (con == 17)
                {
                    k.scr_halt();
                    s.scr_halt();
                    con = 18;
                    alarm[4] = 50;
                }

                if (con == 19)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_303_0");
                    instance_create(0, 0, "obj_dialoguer");
                    con = 20;
                }

                if (con == 20 && instance_exists("obj_dialoguer") == false)
                {
                    con = 21;
                    k.visible = false;
                    s.sprite_index = "spr_susie_krisshoulder";
                    s.image_index = 0;
                    s.image_speed = 0.2;
                    alarm[4] = 25;
                }

                if (con == 22)
                {
                    s.image_speed = 0;
                    con = 23;
                    alarm[4] = 30;
                }

                if (con == 24)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_330_0");
                    instance_create(0, 0, "obj_dialoguer");
                    con = 25;
                }

                if (con == 25 && instance_exists("obj_dialoguer") == false)
                {
                    con = 27;
                    alarm[4] = 50;
                }

                if (con == 28)
                {
                    s.sprite_index = "spr_susie_krisgrab";
                    s.image_index = 0;
                    s.image_speed = 0.334;
                    con = 29;
                    alarm[4] = 9;
                }

                if (con == 30)
                {
                    snd_play("snd_locker");
                    con = 31;
                    alarm[4] = 6;
                }

                if (con == 32)
                {
                    s.image_speed = 0;
                    con = 33;
                    alarm[4] = 60;
                }

                if (con == 34)
                {
                    global.fe = 2;
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_374_0");
                    instance_create(0, 0, "obj_dialoguer");
                    con = 35;
                }

				if (con == 35 && instance_exists("obj_dialoguer") == false)
                {
                    global.currentsong0 = snd_init("s_neo.ogg");
                    global.currentsong1 = mus_loop(global.currentsong0);
                    con = 36;
                    alarm[4] = 60;
                }

				if (con == 37)
                {
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_389_0");
                    global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_390_0");
                    global.msg[2] = (scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_391_0") + "/");
                    global.msg[3] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_392_0");
                    global.msg[4] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_393_0");
                    global.msg[5] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_394_0");
                    global.msg[6] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_395_0");
                    global.msg[7] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_396_0");
                    global.msg[8] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_397_0");
                    global.msg[9] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_398_0");
                    global.msg[10] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_399_0");
                    global.msg[11] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_400_0");
                    global.msg[12] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_401_0");
                    global.msg[13] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_402_0");
                    instance_create(0, 0, "obj_dialoguer");
                    con = 38;
                }

				if (instance_exists("obj_dialoguer") == false && con == 38)
                {
                    snd_free(global.currentsong0);
                    s.sprite_index = "spr_susie_grabsmile";
                    s.image_index = 0;
                    s.image_speed = 0.2;
                    con = 39;
                    alarm[4] = 20;
				}

				if (con == 40)
                {
                    s.image_speed = 0;
                    con = 41;
                    alarm[4] = 30;
				}

				if (con == 42)
                {
                    global.fe = 3;
                    global.typer = 2;
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_432_0");
                    d = instance_create<obj_dialoguer>(0, 0, "obj_dialoguer");
                    d.skippable = false;
                    con = 43;
				}

				if (con == 43 && instance_exists("obj_dialoguer") == false)
                {
                    global.currentsong0 = snd_init("s_neo_clip.ogg");
					global.currentsong1 = mus_play(global.currentsong0);
					audio_sound_pitch(global.currentsong0, 0.667);
                    s.image_index = 0;
                    s.image_speed = (1 / 15d);
                    s.sprite_index = "spr_susie_krisgrab_eat";
                    con = 43.5;
                    alarm[4] = 89;
                }

				if (con == 44.5)
                {
                    snd_free(global.currentsong0);
                    s.image_speed = 0;
                    con = 44;
                    alarm[4] = 60;
				}

				if (con == 45)
                {
                    s.sprite_index = "spr_susie_krisdrop";
                    s.image_speed = 0.334;
                    s.image_index = 0;
                    snd_play("snd_noise");
                    con = 46;
                    alarm[4] = 12;
                }

				if (con == 47)
                {
                    s.image_speed = 0;
                    con = 48;
                    alarm[4] = 30;
                }

				if (con == 49)
                {
                    global.typer = 10;
                    global.fe = 0;
                    k.visible = true;
                    k.sprite_index = "spr_krisr_sit";
                    k.x = (s.x - 19);
                    s.image_index = 0;
                    s.sprite_index = "spr_susier";
                    con = 50;
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_499_0");
                    instance_create(0, 0, "obj_dialoguer");
				}

				if (con == 50 && instance_exists("obj_dialoguer") == false)
                {
                    s.hspeed = 2;
                    s.image_speed = 0.2;
                    con = 51;
                    alarm[4] = 30;
                }

				if (con == 52)
                {
                    s.image_index = 0;
                    s.image_speed = 0;
                    s.hspeed = 0;
                    con = 53;
                    alarm[4] = 30;
                }

				if (con == 54)
                {
                    s.sprite_index = "spr_susier_lookup";
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_532_0");
                    global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_533_0");
                    instance_create(0, 0, "obj_dialoguer");
					con = 55;
				}

				if (con == 55 && instance_exists("obj_dialoguer") == false)
                {
                    s.sprite_index = "spr_susiel";
                    con = 56;
                    alarm[4] = 30;
				}

				if (con == 57)
                {
                    global.msc = 104;
                    scr_text(global.msc);
                    instance_create(0, 0, "obj_dialoguer");
                    con = 57.1;
                    choosetimer = 0;
                }

				if (con == 57.1)
                {
					if (instance_exists("obj_choicer_old"))
                    {
                        choosetimer += 1;
                        if (choosetimer >= 30)
                        {
                            var obj_choicer_old = FindObjectOfType<obj_choicer_old>();
							if (obj_choicer_old.choiced == false)
                            {
								obj_choicer_old.canchoose = true;
								obj_choicer_old.mychoice = 1;
								obj_choicer_old.event_user(0);
                            }
                            con = 58;
						}
                    }
                    if (!d_ex())
                        con = 58;
				}

				if (con == 58 && instance_exists("obj_dialoguer") == false)
                {
                    s.sprite_index = "spr_susier";
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_582_0");
                    global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_583_0");
                    global.msg[2] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_584_0");
                    instance_create(0, 0, "obj_dialoguer");
                    con = 59;
				}

				if (con == 59 && instance_exists("obj_dialoguer") == false)
                {
                    s.image_speed = 0.2;
                    s.hspeed = 2;
                    con = 60;
                    alarm[4] = 20;
                }

				if (con == 61)
                {
                    s.scr_halt();
                    con = 62;
                    alarm[4] = 30;
                }

                if (con == 63)
    {
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_616_0");
                    instance_create(0, 0, "obj_dialoguer");
                    con = 64;
    }

				if (con == 64 && instance_exists("obj_dialoguer") == false)
                {
                    interact = instance_create<obj_readable_room1>(110, 200, "obj_readable_room1");
                    obj_mainchara.x = (k.x + 6);
                    obj_mainchara.y = (k.y + 2);
                    k.instance_destroy();
                    global.facing = 1;
                    global.interact = 0;
                    obj_mainchara.visible = true;
                    con = 1;
                    type = 3;
                    scon = 1;
                }
			}
			if (type == 3)
            {
                s.scr_depth();
				if (scon == 1)
                {
					if (s.x < 448)
                    {
						s.hspeed = 3;
						s.image_speed = 0.2;
                        if (obj_mainchara.px > 3)
                        {
                            ran += 1;
							s.hspeed = (obj_mainchara.px + 1);
							s.image_speed = 0.4;
                        }
                    }
                    else
                    {
                        s.x = 450;
						s.sprite_index = "spr_susiel";
						s.hspeed = 0;
						s.image_index = 0;
						s.image_speed = 0;
                        scon = 2;
					}
				}
                if (scon == 2)
                {
                    if (obj_mainchara.x >= 404)
                        scon = 3;
                }
                if (scon == 3)
                {
					s.sprite_index = "spr_susieu";
					s.image_speed = 0.2;
					s.vspeed = -3;
                    if (obj_mainchara.py < -3)
                    {
                        ran += 1;
						s.vspeed = (obj_mainchara.py - 1);
						s.image_speed = 0.4;
                    }

					if (s.y <= 42)
                    {
						s.sprite_index = "spr_susied";
						s.speed = 0;
						s.image_index = 0;
						s.image_speed = 0;
                        scon = 4;
					}
				}
				if (scon == 4)
                {
                    if (obj_mainchara.y <= 80 && global.interact == 0)
                    {
                        global.interact = 1;
                        scon = 5;
                        global.fc = 1;
                        global.typer = 10;
                        global.fe = 1;
                        if (ran < 15)
                        {
                            global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_719_0");
                            global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_720_0");
                            global.msg[2] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_721_0");
                            global.msg[3] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_722_0");
                        }
                        if (ran >= 15)
                        {
                            global.flag[200] = 1;
                            global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_727_0");
                            global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_728_0");
                            global.msg[2] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_729_0");
                            global.msg[3] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_730_0");
                        }
                        instance_create(0, 0, "obj_dialoguer");
                    }
				}
				if (scon == 5 && instance_exists("obj_dialoguer") == false)
                {
                    FindObjectOfType<obj_doorC>().instance_destroy();
                    s.vspeed = -1;
                    s.sprite_index = "spr_susieu";
                    s.image_speed = 0.2;
                    obj_mainchara.fun = true;
					obj_mainchara.sprite_index = "spr_krisu";
					obj_mainchara.image_speed = 0.2;
					obj_mainchara.move_towards_point(450, 20, 1);
                    f = instance_create<obj_fadeout>(0, 0, "obj_fadeout");
                    f.fadespeed = 0.03;
                    scon = 6;
                    con = 5;
                    alarm[4] = 34;
				}
				if (con == 6)
                {
                    global.plot = 4;
                    instance_create(0, 0, "obj_persistentfadein");
                    room_goto("room_schooldoor");
                    con = 7;
                }
				if (obj_mainchara.x >= 560 && global.interact == 0)
                {
                    obj_mainchara.x = 558;
                    global.interact = 1;
                    global.facing = 3;
                    global.fc = 1;
                    global.typer = 10;
                    global.fe = 0;
                    dex = 1;
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_776_0");
                    global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_777_0");
                    global.msg[2] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_778_0");
                    global.msg[3] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_779_0");
                    global.msg[4] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_780_0");
                    if (teast > 0)
                        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_784_0");
                    teast += 1;
                    instance_create(0, 0, "obj_dialoguer");
                }
				if (obj_mainchara.y >= 300 && global.interact == 0)
                {
                    obj_mainchara.y = 298;
                    global.interact = 1;
                    global.facing = 2;
                    global.fc = 1;
                    global.typer = 10;
                    global.fe = 0;
                    dex = 1;
                    global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_799_0");
                    global.msg[1] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_800_0");
                    global.msg[2] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_801_0");
                    if (tsouth > 0)
                        global.msg[0] = scr_84_get_lang_string("obj_schoollobbycutscene_slash_Step_0_gml_805_0");
                    tsouth += 1;
                    instance_create(0, 0, "obj_dialoguer");
                }
				if (dex == 1 && instance_exists("obj_dialoguer") == false && global.interact == 1)
                {
                    dex = 0;
                    global.interact = 0;
                }
			}
            if (type == 4)
            {
                if (global.flag[272] == 0 && global.interact == 0 && con == 0)
                {
                    if (obj_mainchara.y >= 320)
                    {
                        global.fc = 0;
                        global.typer = 5;
                        global.interact = 1;
                        global.msc = 365;
                        scr_text(global.msc);
                        snd_play("snd_phone");
                        if (global.flag[272] == 0)
                            global.flag[272] = 1;
                        con = 2;
                        instance_create(0, 0, "obj_dialoguer");
                    }
                }
				if (con == 2 && (!d_ex()))
                {
                    global.interact = 0;
                    con = 3;
                }
			}
		}
	}
}
