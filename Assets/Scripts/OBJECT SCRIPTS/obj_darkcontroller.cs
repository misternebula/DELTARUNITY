using System;
using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_darkcontroller : GamemakerObject
	{
        public override void Create()
        {
            cur_jewel = 0;
            alarm[0] = 1;
            charcon = 0;
            chartimer = 0;
            tp = 0;
            xx = __view_get(0, 0);
            yy = __view_get(1, 0);
            global.fighting = false;
            movenoise = false;
            selectnoise = false;
            onebuffer = 0;
            twobuffer = 0;
            threebuffer = 0;
            upbuffer = 0;
            downbuffer = 0;
            hold_up = 0;
            hold_down = 0;
            dograndom = 0;
            atalk = 0;
            bcolor = merge_color(c_purple, c_black, 0.7);
            bcolor = merge_color(bcolor, c_dkgray, 0.5);
            chartotal = 0;
            havechar[0] = false;
            havechar[1] = false;
            havechar[2] = false;
            global.charturn = 3;
            tp = 0;
            tpy = 50;
            bp = 0;
            bpy = 152;
            mmy[0] = 0;
            mmy[1] = 0;
            mmy[2] = 0;
            global.submenu = 0;
            global.charselect = -1;
            for (i = 0; i < 36; i += 1)
                global.submenucoord[i] = 0;
            global.cinstance[0] = null;
            global.cinstance[1] = null;
            for (i = 0; i < 3; i += 1)
            {
                global.faceaction[i] = 0;
                if (global.chara[i] != 0)
                    chartotal += 1;
                if (global.chara[i] == 1)
                {
                    havechar[0] = true;
                    charpos[0] = i;
                }
                if (global.chara[i] == 2)
                {
                    havechar[1] = true;
                    charpos[1] = i;
                    if (i > 0)
                    {
                        global.cinstance[(i - 1)] = instance_create((obj_mainchara.x - 6), (obj_mainchara.y - 16), "obj_caterpillarchara");
                        global.cinstance[(i - 1)].target = (i * 12);
                    }
                }
                if (global.chara[i] == 3)
                {
                    havechar[2] = true;
                    charpos[2] = i;
                    if (i > 0)
                    {
                        global.cinstance[(i - 1)] = instance_create((obj_mainchara.x - 4), (obj_mainchara.y - 12), "obj_caterpillarchara");
                        global.cinstance[(i - 1)].target = (i * 12);
                        global.cinstance[(i - 1)].usprite = "spr_ralseiu";
                        global.cinstance[(i - 1)].dsprite = "spr_ralseid";
                        global.cinstance[(i - 1)].rsprite = "spr_ralseir";
                        global.cinstance[(i - 1)].lsprite = "spr_ralseil";

					}
                }
            }
            slmxx = 0;
            slmyy = 0;
            s_siner = 0;
            menusiner = 0;
            pagemax[0] = 0;
            pagemax[1] = 0;
            getmusvol = 1;
            curvol = 1;
            hpcolor[0] = c_aqua;
            hpcolor[1] = c_fuchsia;
            hpcolor[2] = c_lime;
        }

		public override void Alarm_0()
        {

        }

		public override void Draw_0()
        {
			//var ch_y;
            xx = __view_get(0, 0);
            yy = __view_get(1, 0);
            tpoff = ((tp - tpy) + yy);
            bpoff = (((-bp) + bpy) + yy);
			if (drawchar == 1)
            {
                draw_set_color(c_black);
                draw_rectangle((xx - 10), ((yy + 480) - bp), (xx + 650), (yy + 500), false);
                draw_set_color(c_black);
                draw_rectangle((xx - 10), (yy + tp), (xx + 650), (yy - 10), false);
                scr_charbox();
                if (global.menuno == 0)
                    deschaver = 0;
				if (deschaver == 0)
                {
                    draw_sprite_ext(scr_84_get_sprite("spr_darkmenudesc"), global.menucoord[0], (xx + 20), ((yy + tp) - 56), 2, 2, 0, c_white, 1);
                    msprite[0] = "spr_darkitembt";
                    msprite[1] = "spr_darkequipbt";
                    msprite[2] = "spr_darktalkbt";
                    msprite[3] = "spr_darktechbt";
                    msprite[4] = "spr_darkconfigbt";
					for (i = 0; i < 5; i += 1)
                    {
                        off = 1;
                        if (global.menucoord[0] == i)
                            off = 0;
                        if ((global.menuno - 1) == i)
                            off = 2;
                        spritemx = 0;
                        if (i >= 2)
                            spritemx = -100;
                        if (i != 2)
                            draw_sprite_ext(msprite[i], off, (((xx + 120) + (i * 100)) + spritemx), ((yy + tp) - 60), 2, 2, 0, c_white, 1);
                    }
                    draw_set_color(c_white);
                    scr_84_set_draw_font("mainbig");
                    draw_text((xx + 520), ((yy + tp) - 60), string_hash_to_newline((scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_47_0") + gm_string(global.gold))));
				}
			}
			if (global.menuno == 5)
            {
                draw_set_color(c_black);
                draw_rectangle((xx + 60), (yy + 90), (xx + 580), (yy + 410), false);
                scr_darkbox((xx + 50), (yy + 80), (xx + 590), (yy + 420));
				if (global.submenu >= 30 && global.submenu <= 33)
                {
                    draw_set_color(c_white);
                    draw_text((xx + 270), (yy + 100), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_74_0")));
                    audvol = (gm_string(abs((global.flag[17] * 100))) + "%");
                    musvol = (gm_string(abs((global.flag[16] * 100))) + "%");
                    runoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_79_0");
                    if (global.flag[11] == 1)
                        runoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_79_1");
                    flashoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_80_0");
                    if (global.flag[8] == 1)
                        flashoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_80_1");
                    shakeoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_81_0");
                    if (global.flag[12] == 1)
                        shakeoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_81_1");
                    fullscreenoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_82_0");
                    if (window_get_fullscreen())
                        fullscreenoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_82_1");
                    draw_sprite("spr_heart", 0, (xx + 145), ((yy + 160) + (global.submenucoord[30] * 35)));
                    if (global.submenu == 33)
                        draw_set_color(c_yellow);
                    draw_text((xx + 170), (yy + 150), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_86_0")));
                    draw_text((xx + 430), (yy + 150), string_hash_to_newline(audvol));
                    draw_set_color(c_white);
                    draw_text((xx + 170), (yy + 185), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_91_0")));
                    draw_text((xx + 170), (yy + 220), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_92_0")));
                    draw_text((xx + 430), (yy + 220), string_hash_to_newline(flashoff));
                    draw_text((xx + 170), (yy + 255), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_93_0")));
                    draw_text((xx + 430), (yy + 255), string_hash_to_newline(fullscreenoff));
                    draw_text((xx + 170), (yy + 290), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_94_0")));
                    draw_text((xx + 430), (yy + 290), string_hash_to_newline(runoff));
                    draw_text((xx + 170), (yy + 325), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_95_0")));
                    draw_text((xx + 170), (yy + 360), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_96_0")));
                }
				if (global.submenu == 34)
                {
                    draw_set_color(c_white);
                    draw_text((xx + 200), (yy + 150), string_hash_to_newline(scr_84_get_subst_string(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_101_0"), global.asc_def[global.input_k[5]])));
                }
				if (global.submenu == 35)
                {
                    draw_set_color(c_white);
                    draw_text((xx + 105), (yy + 100), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_113_0")));
                    draw_text((xx + 325), (yy + 100), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_114_0")));
                    if (FindObjectOfType<obj_time>().gamepad_active)
                        draw_text((xx + 435), (yy + 100), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_115_0")));
                    function[0] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_117_0");
                    function[1] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_118_0");
                    function[2] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_119_0");
                    function[3] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_120_0");
                    function[4] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_121_0");
                    function[5] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_122_0");
                    function[6] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_123_0");
                    function[7] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_124_0");
                    function[8] = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_125_0");
                    draw_sprite("spr_heart", 0, (xx + 80), ((yy + 150) + (global.submenucoord[35] * 28)));
					for (i = 0; i <= 8; i += 1)
                    {
                        draw_set_color(c_white);
                        if (global.submenucoord[35] == i)
                            draw_set_color(c_aqua);
                        if (global.submenucoord[35] == i && control_select_con == 1)
                            draw_set_color(c_red);
                        if (i == 7 && control_flash_timer > 0)
                            draw_set_color(merge_color(c_aqua, c_yellow, ((control_flash_timer / 10) - 0.1)));
                        draw_text((xx + 105), ((yy + 140) + (i * 28)), string_hash_to_newline(function[i]));
						if (i < 7)
                        {
                            draw_text((xx + 325), ((yy + 140) + (i * 28)), string_hash_to_newline(global.asc_def[global.input_k[i]]));
                            //if (FindObjectOfType<obj_time>().gamepad_active)
                            //    draw_text((xx + 495), ((yy + 140) + (i * 28)), string_hash_to_newline(gm_string(global.input_g[i])));
						}
					}
				}
			}
			if (global.menuno == 4)
            {
                throw new NotImplementedException("global.menuno == 4");
            }
			if (global.menuno == 2)
            {
				throw new NotImplementedException("global.menuno == 2");
			}
            if (global.menuno == 1)
            {
                draw_set_color(c_black);
                if (global.lang == "ja")
                {
                    draw_rectangle((xx + 46), (yy + 90), (xx + 594), (yy + 360), false);
                    scr_darkbox((xx + 36), (yy + 80), (xx + 604), (yy + 370));
                }
                else
                {
                    draw_rectangle((xx + 70), (yy + 90), (xx + 570), (yy + 360), false);
                    scr_darkbox((xx + 60), (yy + 80), (xx + 580), (yy + 370));
                }
                scr_84_set_draw_font("mainbig");
                scr_itemname();
                if (global.lang == "ja")
                {
                    throw new NotImplementedException();
                }
                else
                {
                    if (global.submenu == 1)
                        draw_sprite("spr_heart", 0, ((xx + 155) + (120 * global.submenucoord[1])), (yy + 120));
                    draw_set_color(c_white);
                    if (global.submenu > 1)
                    {
                        if (global.submenucoord[1] == 0)
                            draw_set_color(c_orange);
                        else
                            draw_set_color(c_gray);
                    }
                    draw_text((xx + 180), (yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_807_0")));
                    if (global.submenu > 1)
                    {
                        if (global.submenucoord[1] == 1)
                            draw_set_color(c_orange);
                        else
                            draw_set_color(c_gray);
                    }
                    draw_text((xx + 300), (yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_809_0")));
                    if (global.submenu > 1)
                    {
                        if (global.submenucoord[1] == 2)
                            draw_set_color(c_orange);
                        else
                            draw_set_color(c_gray);
                    }
                    draw_text((xx + 420), (yy + 110), string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_811_0")));
                }
                if (global.submenu >= 2 && global.submenu <= 6 && global.submenu != 4)
                {
                    sm = global.submenucoord[2];
                    yheart = (((floor((sm / 2d)) * 30) + 162) + yy);
                    if (global.lang == "ja")
                    {
                        xheart = (72 + xx);
                        if (sm == 1 || sm == 3 || sm == 5 || sm == 7 || sm == 9 || sm == 11)
                            xheart = (334 + xx);
                    }
                    else
                    {
                        xheart = (120 + xx);
                        if (sm == 1 || sm == 3 || sm == 5 || sm == 7 || sm == 9 || sm == 11)
                            xheart = (330 + xx);
                    }
                    if (global.submenu == 2 || global.submenu == 3)
                        draw_sprite("spr_heart", 0, xheart, yheart);
                    draw_set_color(c_white);
                    draw_text((xx + 20), (yy + 10), string_hash_to_newline(itemdesc[global.submenucoord[2]]));
                }
				if (global.submenu == 7)
                {
                    draw_set_color(c_white);
                    if (global.lang == "ja")
                        draw_text((xx + 20), (yy + 10), (global.itemname[global.submenucoord[2]] + string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_829_0"))));
                    else
                        draw_text((xx + 20), (yy + 10), string_hash_to_newline(((scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_829_0") + global.itemname[global.submenucoord[2]]) + "?")));
                }
                if (global.submenucoord[1] != 2)
                {
                    if (global.lang == "ja")
                    {

                    }
                    else
                    {
                        draw_set_color(bcolor);
                        for (i = 0; i < 6; i += 1)
                        {
                            draw_text((xx + 148), ((yy + 154) + (30 * i)), string_hash_to_newline(global.itemname[(i * 2)]));
                            draw_text((xx + 358), ((yy + 154) + (30 * i)), string_hash_to_newline(global.itemname[((i * 2) + 1)]));
                        }
                        draw_set_color(c_white);
                        if (global.submenu == 1)
                            draw_set_color(c_gray);
                        for (i = 0; i < 6; i += 1)
                        {
                            draw_text((xx + 146), ((yy + 152) + (30 * i)), string_hash_to_newline(global.itemname[(i * 2)]));
                            draw_text((xx + 356), ((yy + 152) + (30 * i)), string_hash_to_newline(global.itemname[((i * 2) + 1)]));
                        }
                    }
                }
				if (global.submenucoord[1] == 2)
                {
                    scr_keyiteminfo_all();
                    if (global.lang == "ja")
                    {
                        throw new NotImplementedException();
                    }
                    else
                    {
                        draw_set_color(bcolor);
                        for (i = 0; i < 6; i += 1)
                        {
                            draw_text((xx + 148), ((yy + 154) + (30 * i)), string_hash_to_newline(keyitemname[(i * 2)]));
                            draw_text((xx + 358), ((yy + 154) + (30 * i)), string_hash_to_newline(keyitemname[((i * 2) + 1)]));
                        }
                        draw_set_color(c_white);
                        if (global.submenu == 1)
                            draw_set_color(c_gray);
                        for (i = 0; i < 6; i += 1)
                        {
                            if (global.submenu == 4)
                            {
                                if (keyitemusable[(i * 2)] == true)
                                    draw_set_color(c_white);
                                else
                                    draw_set_color(c_silver);
                            }
                            draw_text((xx + 146), ((yy + 152) + (30 * i)), string_hash_to_newline(keyitemname[(i * 2)]));
                            if (global.submenu == 4)
                            {
                                if (keyitemusable[((i * 2) + 1)] == true)
                                    draw_set_color(c_white);
                                else
                                    draw_set_color(c_silver);
                            }
                            draw_text((xx + 356), ((yy + 152) + (30 * i)), string_hash_to_newline(keyitemname[((i * 2) + 1)]));
                        }
                    }
                    if (global.submenu == 4)
                    {
                        sm = global.submenucoord[4];
                        yheart = (((floor((sm / 2)) * 30) + 162) + yy);
                        if (global.lang == "ja")
                        {
                            xheart = (72 + xx);
                            if (sm == 1 || sm == 3 || sm == 5 || sm == 7 || sm == 9 || sm == 11)
                                xheart = (334 + xx);
                        }
                        else
                        {
                            xheart = (120 + xx);
                            if (sm == 1 || sm == 3 || sm == 5 || sm == 7 || sm == 9 || sm == 11)
                                xheart = (330 + xx);
                        }
                        draw_sprite("spr_heart", 0, xheart, yheart);
                        draw_set_color(c_white);
                        draw_text((xx + 20), (yy + 10), string_hash_to_newline(keyitemdesc[global.submenucoord[4]]));
                    }
				}
			}
		}

		public override void Step_0()
        {
            xx = __view_get(0, 0);
            yy = __view_get(1, 0);
			if (global.interact == 5)
            {
                charcon = 1;
				if (global.submenu == 5 || global.submenu == 22)
                {
                    global.charselect = global.submenucoord[global.submenu];
                    global.faceaction[0] = 0;
                    global.faceaction[1] = 0;
                    global.faceaction[2] = 0;
                    global.faceaction[global.charselect] = 7;
                    if (left_p())
                    {
                        if (global.submenucoord[global.submenu] > 0)
                            global.submenucoord[global.submenu] -= 1;
                        else
                            global.submenucoord[global.submenu] = (chartotal - 1);

					}
                    if(right_p())
                    {
                        if (global.submenucoord[global.submenu] < (chartotal - 1))
                            global.submenucoord[global.submenu] += 1;
                        else
                            global.submenucoord[global.submenu] = 0;
                    }
                    if (button1_p() && onebuffer < 0)
                    {
                        onebuffer = 2;
                        if (global.submenu == 5)
                        {
                            scr_itemuse(global.item[global.submenucoord[2]]);
                            if (usable == true)
                                scr_itemshift(global.submenucoord[2], 0);
                            scr_itemdesc();
                            global.submenu = 2;
                            global.faceaction[global.charselect] = 0;
                            global.charselect = -1;
                        }
                        if (global.submenu == 22)
                        {
                            scr_spell_overworld(global.spell[global.chara[global.submenucoord[20]], global.submenucoord[21]]);
                            global.tension -= global.spellcost[global.chara[global.submenucoord[20]], global.submenucoord[21]];
                        }
                    }
                    close = 0;
                    if (button2_p() && twobuffer < 0)
                        close = 1;
					if (global.submenu == 22)
                    {
                        if (global.spellcost[global.chara[global.submenucoord[20]], global.submenucoord[21]] > global.tension)
                            close = 1;
					}
					if (close == 1)
                    {
                        global.faceaction[global.charselect] = 0;
                        global.charselect = -1;
                        twobuffer = 2;
                        if (global.submenu == 5)
                            global.submenu = 2;
                        if (global.submenu == 22)
                            global.submenu = 21;
                    }
				}
				if (global.submenu == 6 || global.submenu == 7 || global.menuno == 3)
                {
					throw new NotImplementedException("global.submenu == 6 || global.submenu == 7 || global.menuno == 3");
				}
				if (global.menuno == 5)
                {
					if (global.submenu == 30)
                    {
                        sndbuffer = 0;
                        m_quit = false;
                        if (up_p())
                        {
                            global.submenucoord[30] -= 1;
                            if (global.submenucoord[30] < 0)
                                global.submenucoord[30] = 0;
                        }
                        if (down_p())
                        {
                            global.submenucoord[30] += 1;
                            if (global.submenucoord[30] > 6)
                                global.submenucoord[30] = 6;
                        }
                        if (button1_p() && onebuffer < 0)
                        {
                            upbuffer = 2;
                            downbuffer = 2;
                            onebuffer = 2;
                            twobuffer = 2;
                            selectnoise = true;
                            if (global.submenucoord[30] == 0)
                                global.submenu = 33;
                            if (global.submenucoord[30] == 1)
                            {
                                global.submenu = 35;
                                global.submenucoord[35] = 0;
                                control_select_con = 0;
                                control_flash_timer = 0;
                            }
                            if (global.submenucoord[30] == 2)
                            {
                                if (global.flag[8] == 0)
                                    global.flag[8] = 1;
                                else
                                    global.flag[8] = 0;
                            }
                            if (global.submenucoord[30] == 3)
                            {
                                FindObjectOfType<obj_time>().fullscreen_toggle = true;
                            }
                            if (global.submenucoord[30] == 4)
                            {
                                if (global.flag[11] == 0)
                                    global.flag[11] = 1;
                                else
                                    global.flag[11] = 0;
                            }
                            if (global.submenucoord[30] == 5)
                                global.submenu = 34;
                            if (global.submenucoord[30] == 6)
                                m_quit = true;
                        }
                        if (button2_p() && twobuffer < 0)
                            m_quit = true;
                        if (m_quit == true)
                        {
                            onebuffer = 2;
                            twobuffer = 2;
                            global.menuno = 0;
                            global.submenu = 0;
                        }
					}
                    if (global.submenu == 31 || global.submenu == 32 || global.submenu == 33)
                    {
                        se_select = 0;
                        sndbuffer -= 1;
                        muschange = false;
                        sndchange = false;
                        audchange = false;
                        if (right_h())
                        {
                            if (global.submenu == 31)
                            {
                                sndchange = true;
                                if (global.flag[15] < 1)
                                    global.flag[15] += 0.05;
                            }
                            if (global.submenu == 32)
                            {
                                muschange = true;
                                if (global.flag[16] < 1)
                                    global.flag[16] += 0.05;
                            }
                            if (global.submenu == 33)
                            {
                                if (global.flag[17] < 1)
                                    global.flag[17] += 0.02;
                                audchange = true;
                            }
                        }
                        if (left_h())
                        {
                            if (global.submenu == 31)
                            {
                                sndchange = true;
                                if (global.flag[15] > 0)
                                    global.flag[15] -= 0.05;
                            }
                            if (global.submenu == 32)
                            {
                                muschange = true;
                                if (global.flag[16] > 0)
                                    global.flag[16] -= 0.05;
                            }
                            if (global.submenu == 33)
                            {
                                audchange = true;
                                if (global.flag[17] >= 0.02)
                                    global.flag[17] -= 0.02;
                            }
                        }
                        if (sndchange == true && sndbuffer < 0)
                        {
                            //audio_group_set_gain(1, global.flag[15], 0)
                            snd_play("snd_noise");
                            sndbuffer = 2;
                        }
                        if (muschange == true)
                        {
                            if (snd_is_playing(global.currentsong1))
                                mus_volume(global.currentsong1, (getmusvol * global.flag[16]), 0);
                        }
                        if (audchange == true && sndbuffer < 0)
                        {
                            snd_play("snd_noise");
                            sndbuffer = 2;
                            //audio_set_master_gain(0, global.flag[17]);
                        }
                        if (button1_p() && onebuffer < 0)
                            se_select = 1;
                        if (button2_p() && twobuffer < 0)
                            se_select = 1;
                        if (se_select == 1)
                        {
                            selectnoise = true;
                            onebuffer = 2;
                            twobuffer = 2;
                            global.submenu = 30;
                        }
                    }
					if (global.submenu == 34)
                    {
                        if (keyboard_check_pressed(vk_escape))
                            game_end();
                        if (button2_p() && twobuffer < 0)
                        {
                            onebuffer = 2;
                            twobuffer = 2;
                            global.submenu = 30;
                        }
					}
					if (global.submenu == 35)
                    {
						throw new NotImplementedException("global.submenu == 35");
					}
				}
				if (global.menuno == 4)
                {
					throw new NotImplementedException("global.menuno == 4");
				}
				if (global.menuno == 1)
                {
                    if (global.submenu == 2 || global.submenu == 3)
                    {
                        if (left_p() || right_p())
                        {
                            sm = global.submenucoord[2];
                            if (sm == 0 || sm == 2 || sm == 4 || sm == 6 || sm == 8 || sm == 10)
                            {
                                if (global.item[(global.submenucoord[2] + 1)] != 0)
                                    global.submenucoord[2] += 1;
                            }
                            if (sm == 1 || sm == 3 || sm == 5 || sm == 7 || sm == 9 || sm == 11)
                                global.submenucoord[2] -= 1;
                        }
                        if (down_p())
                        {
                            sm = global.submenucoord[2];
                            if (sm == 0 || sm == 2 || sm == 4 || sm == 6 || sm == 8)
                            {
                                if (global.item[(global.submenucoord[2] + 2)] != 0)
                                    global.submenucoord[2] += 2;
                            }
                            if (sm == 1 || sm == 3 || sm == 5 || sm == 7 || sm == 9)
                            {
                                if (global.item[(global.submenucoord[2] + 2)] != 0)
                                    global.submenucoord[2] += 2;
                                else if (global.item[(global.submenucoord[2] + 1)] != 0)
                                    global.submenucoord[2] += 1;
                            }
                        }
                        if (up_p())
                        {
                            sm = global.submenucoord[2];
                            if (sm == 2 || sm == 4 || sm == 6 || sm == 8 || sm == 10)
                                global.submenucoord[2] -= 2;
                            if (sm == 3 || sm == 5 || sm == 7 || sm == 9 || sm == 11)
                                global.submenucoord[2] -= 2;
                        }
                        if (button2_p() && twobuffer < 0)
                        {
                            twobuffer = 2;
                            deschaver = 0;
                            global.submenu = 1;
                        }
                    }
                    if (global.submenu == 4)
                    {
                        if (left_p() || right_p())
                        {
                            sm = global.submenucoord[4];
                            if (sm == 0 || sm == 2 || sm == 4 || sm == 6 || sm == 8 || sm == 10)
                            {
                                if (global.keyitem[(global.submenucoord[4] + 1)] != 0)
                                    global.submenucoord[4] += 1;
                            }
                            if (sm == 1 || sm == 3 || sm == 5 || sm == 7 || sm == 9 || sm == 11)
                                global.submenucoord[4] -= 1;
                        }
                        if (down_p())
                        {
                            sm = global.submenucoord[4];
                            if (sm == 0 || sm == 2 || sm == 4 || sm == 6 || sm == 8)
                            {
                                if (global.keyitem[(global.submenucoord[4] + 2)] != 0)
                                    global.submenucoord[4] += 2;
                            }
                            if (sm == 1 || sm == 3 || sm == 5 || sm == 7 || sm == 9)
                            {
                                if (global.keyitem[(global.submenucoord[4] + 2)] != 0)
                                    global.submenucoord[4] += 2;
                                else if (global.keyitem[(global.submenucoord[4] + 1)] != 0)
                                    global.submenucoord[4] += 1;
                            }
                        }
                        if (up_p())
                        {
                            sm = global.submenucoord[4];
                            if (sm == 2 || sm == 4 || sm == 6 || sm == 8 || sm == 10)
                                global.submenucoord[4] -= 2;
                            if (sm == 3 || sm == 5 || sm == 7 || sm == 9 || sm == 11)
                                global.submenucoord[4] -= 2;
                        }
						if (button1_p() && onebuffer < 0)
                        {
                            onebuffer = 2;
                            twobuffer = 1;
                            if (keyitemusable[sm] == true)
                            {
                                global.charselect = 3;
                                scr_itemuse((global.keyitem[sm] + 300));
                            }
                            else
                                snd_play("snd_cantselect");
                        }
						if (button2_p() && twobuffer < 0)
                        {
                            twobuffer = 2;
                            deschaver = 0;
                            global.submenu = 1;
                        }
					}
                    if (global.submenu == 3)
                    {
                        if (button1_p() && onebuffer < 0)
                        {
                            onebuffer = 3;
                            global.submenu = 7;
                        }
                        if (global.item[global.submenucoord[2]] == 0)
                        {
                            if (global.submenucoord[2] == 0)
                            {
                                global.submenu = 1;
                                deschaver = 0;
                                twobuffer = 2;
                                onebuffer = 2;
                            }
                            if (global.submenucoord[2] > 0)
                                global.submenucoord[2] -= 1;
                        }
					}
                    if (global.submenu == 2)
                    {
                        if (button1_p() && onebuffer < 0)
                        {
                            onebuffer = 3;
                            scr_iteminfo(global.item[global.submenucoord[2]]);
                            if (itemtarget == 1)
                                global.submenu = 5;
                            if (itemtarget == 2)
                                global.submenu = 6;
                        }
                        if (global.item[global.submenucoord[2]] == 0)
                        {
                            if (global.submenucoord[2] == 0)
                            {
                                global.submenu = 1;
                                deschaver = 0;
                                twobuffer = 2;
                                onebuffer = 2;
                            }
                            if (global.submenucoord[2] > 0)
                                global.submenucoord[2] -= 1;
                        }
                    }
                    if (global.submenu == 1)
                    {
                        if (left_p())
                        {
                            if (global.submenucoord[1] == 0)
                            {
                                global.submenucoord[1] = 2;
                                movenoise = true;
                            }
                            else
                            {
                                global.submenucoord[1] -= 1;
                                movenoise = true;
                            }
                        }
                        if (right_p())
                        {
                            if (global.submenucoord[1] == 2)
                            {
                                global.submenucoord[1] = 0;
                                movenoise = true;
                            }
                            else
                            {
                                global.submenucoord[1] += 1;
                                movenoise = true;
                            }
                        }
                        if (button1_p())
                        {
                            global.submenu = (global.submenucoord[1] + 2);
                            if (global.submenu == 4)
                                deschaver = 1;
                            if (global.submenu == 2 || global.submenu == 3)
                            {
                                deschaver = 1;
                                scr_itemdesc();
                                if (global.item[0] == 0)
                                {
                                    global.submenu = 1;
                                    deschaver = 0;
                                }
                            }
                        }
						if (button2_p() && twobuffer < 0)
                        {
                            twobuffer = 2;
                            global.menuno = 0;
                            global.submenu = 0;
                        }
					}
				}
				if (global.menuno == 2)
                {
					if (global.submenu == 12 || global.submenu == 13 || global.submenu == 14)
                    {
						throw new NotImplementedException();
					}
					if (global.submenu == 11)
                    {
                        if (up_p())
                        {
                            global.submenucoord[11] -= 1;
                            if (global.submenucoord[11] == -1)
                                global.submenucoord[11] = 2;
                        }
                        if (down_p())
                        {
                            global.submenucoord[11] += 1;
                            if (global.submenucoord[11] == 3)
                                global.submenucoord[11] = 0;
                        }
						if (button1_p() && onebuffer < 0)
                        {
                            onebuffer = 2;
                            global.submenu = (12 + global.submenucoord[11]);
                            scr_dmenu_armor_selection_match();
                        }
						if (button2_p() && twobuffer < 0)
                        {
                            deschaver = 0;
                            twobuffer = 2;
                            global.submenu = 10;
                        }
					}
                    if (global.submenu == 10)
                    {
                        if (left_p())
                        {
                            global.submenucoord[10] -= 1;
                            if (global.submenucoord[10] < 0)
                                global.submenucoord[10] = (chartotal - 1);
                        }
                        if (right_p())
                        {
                            global.submenucoord[10] += 1;
                            if (global.submenucoord[10] > (chartotal - 1))
                                global.submenucoord[10] = 0;
                        }
                        global.charselect = global.submenucoord[10];
                        if (button1_p() && onebuffer < 0)
                        {
                            deschaver = 1;
                            global.submenucoord[11] = 0;
                            global.submenu = 11;
                            onebuffer = 2;
                        }
                        if (button2_p() && twobuffer < 0)
                        {
                            twobuffer = 2;
                            global.menuno = 0;
                            global.submenu = 0;
                            global.charselect = -1;
                        }
                    }
				}
				if (global.menuno == 0)
                {
                    global.submenu = 0;
                    if (left_p())
                    {
                        if (global.menucoord[0] == 0)
                        {
                            global.menucoord[0] = 4;
                            movenoise = true;
                        }
                        else
                        {
                            global.menucoord[0] -= 1;
                            if (global.menucoord[0] == 2)
                                global.menucoord[0] -= 1;
                            movenoise = true;
                        }
                    }
                    if (right_p())
                    {
                        if (global.menucoord[0] == 4)
                        {
                            global.menucoord[0] = 0;
                            movenoise = true;
                        }
                        else
                        {
                            global.menucoord[0] += 1;
                            if (global.menucoord[0] == 2)
                                global.menucoord[0] += 1;
                            movenoise = true;
                        }
                    }
                    if (button1_p() && onebuffer < 0)
                    {
                        onebuffer = 2;
                        global.menuno = (global.menucoord[0] + 1);
                        if (global.menuno == 1)
                        {
                            global.submenu = 1;
                            global.submenucoord[1] = 0;
                            global.submenucoord[2] = 0;
                            global.submenucoord[3] = 0;
                            global.submenucoord[4] = 0;
                        }
                        if (global.menuno == 2)
                        {
                            scr_weaponinfo_all();
                            scr_armorinfo_all();
                            scr_weaponinfo_mine();
                            scr_armorinfo_mine();
                            global.submenucoord[10] = 0;
                            global.submenucoord[11] = 0;
                            global.submenucoord[12] = 0;
                            global.submenucoord[13] = 0;
                            global.submenucoord[14] = 0;
                            pagemax[0] = 0;
                            pagemax[1] = 0;
                            global.submenu = 10;
                            global.charselect = global.submenucoord[10];
                        }
                        if (global.menuno == 3)
                            global.menuno = 0;
                        if (global.menuno == 4)
                        {
                            global.submenu = 20;
                            scr_spellinfo_all();
                        }
                        if (global.menuno == 5)
                        {
                            global.submenu = 30;
                            global.submenucoord[30] = 0;
                        }
                    }
                    close = 0;
                    if (button2_p() && twobuffer < 0)
                        close = 1;
                    if (button3_p() && threebuffer < 0)
                        close = 1;
					if (close == 1)
                    {
						if (global.menuno == 0)
                        {
                            global.menuno = -1;
                            global.interact = 0;
                            charcon = 0;
                            obj_mainchara.threebuffer = 2;
                            obj_mainchara.twobuffer = 2;
						}
					}
				}
			}
			if (global.interact == 6)
            {
                if (!instance_exists("obj_dialoguer"))
                    global.interact = 0;
			}
			if (charcon == 1)
            {
                drawchar = 1;
                bpy = 60;
                tpy = 80;
				if (global.interact == 5)
                {
                    if (tp < (tpy - 1))
                    {
                        if ((tpy - tp) <= 40)
                            tp += round(((tpy - tp) / 2.5));
                        else
                            tp += 30;
                    }
                    else
                        tp = tpy;
                }
                if (bp < (bpy - 1) && charcon == 1)
                {
                    if ((bpy - bp) <= 40)
                        bp += round(((bpy - bp) / 2.5));
                    else
                        bp += 30;
                }
                else
                    bp = bpy;
			}
			if (charcon == 0)
            {
                if (tp > 0)
                {
                    if (tp >= 80)
                        tp -= round((tp / 2.5));
                    else
                        tp -= 30;
                }
                else
                    tp = 0;
                if (bp > 0)
                {
                    if (bp >= 40)
                        bp -= round((bp / 2.5));
                    else
                        bp -= 30;
                }
                else
                    bp = 0;
                if (bp == 0)
                    drawchar = 0;
            }
			if (movenoise == true)
            {
                snd_play("snd_menumove");
                movenoise = false;
            }
			if (selectnoise == true)
            {
                snd_play("snd_select");
                selectnoise = false;
            }
            onebuffer -= 1;
            twobuffer -= 1;
            threebuffer -= 1;
            upbuffer -= 1;
            downbuffer -= 1;
		}
	}
}
