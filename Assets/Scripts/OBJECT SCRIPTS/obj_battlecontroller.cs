using System;
using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_battlecontroller : GamemakerObject
	{
		public override void Create()
		{
			if (global.flag[9] == 1)
				global.batmusic1 = mus_loop_ext(global.batmusic0, 0.7, 1);
			victory = false;
			victoried = 0;
			skipvictory = false;
			global.battleend = false;
			battlewriter = null;
			myface = null;
			lbuffer = 0;
			rbuffer = 0;
			onebuffer = 0;
			twobuffer = 0;
			global.darkzone = true;
			global.fighting = true;
			global.fe = 0;
			global.fc = 0;
			global.typer = 4;
			global.battletyper = 4;
			global.myfight = 0;
			global.mnfight = 0;
			global.bmenuno = 0;
			global.attacking = false;
			//global.acting = false; everything else seems to use it as an array
			global.tension = 0;
			global.spelldelay = 10;
			scr_spellinfo_all();
			global.tensionselect = 0;
			for (j = 0; j < 3; j += 1)
			{
				global.temptension[j] = global.tension;
				for (i = 0; i < 13; i += 1)
					tempitem[i, j] = global.item[i];
			}
			for (i = 0; i < 3; i += 1)
			{
				global.charcond[i] = 0;
				global.automiss[i] = false;
				if (global.chara[i] != 0)
				{
					global.charmove[i] = true;
					global.charcantarget[i] = true;
					global.chardead[i] = false;
				}
				else
				{
					global.charmove[i] = false;
					global.charcantarget[i] = false;
				}
			}
			itempage = 0;
			global.flag[50] = 0;
			global.flag[51] = 0;
			global.flag[52] = 0;
			global.flag[53] = 0;
			for (i = 0; i < 3; i += 1)
			{
				global.monster[i] = 0;
				global.monsterx[i] = 0;
				global.monstery[i] = 0;
				global.monstername[i] = " ";
				global.monsterat[i] = 0;
				global.monsterdf[i] = 0;
				global.monsterhp[i] = 0;
				global.monstermaxhp[i] = 0;
				global.monsterinstance[i] = null;
				global.monstergold[i] = 0;
				global.monsterexp[i] = 0;
				global.sparepoint[i] = 0;
				global.hittarget[i] = 0;
				global.mercymod[i] = 0;
				global.mercymax[i] = 0;
				global.monstercomment[i] = " ";
				global.monsterstatus[i] = false;
				for (j = 0; j < 6; j += 1)
				{
					global.act[i, j] = 0;
					global.canact[i, j] = false;
					global.actname[i, j] = " ";
					global.acttype[i, j] = 0;
					global.actspell[i, j] = 0;
					global.actactor[i, j] = 1;
					global.actdesc[i, j] = " ";
					global.actcost[i, j] = 0;
				}
			}
			global.monstergold[3] = 0;
			global.monsterexp[3] = 0;
			for (i = 0; i < 3; i += 1)
			{
				if (global.monstertype[i] > 0)
				{
					global.monster[i] = 1;
					global.monsterinstance[i] = instance_create(global.monstermakex[i], global.monstermakey[i], global.monsterinstancetype[i]);
					global.monsterinstance[i].myself = i;
					global.monsterinstance[i].event_user(12);
				}
			}
			global.charturn = 0;
			for (i = 0; i < 3; i += 1)
			{
				global.acting[i] = false;
				global.charaction[i] = 0;
				global.charspecial[i] = 0;
				global.chartarget[i] = 0;
				global.faceaction[i] = 0;
				global.rembmenuno[i] = 0;
				global.targeted[i] = false;
				global.battleat[i] = (((global.at[global.chara[i]] + global.itemat[global.chara[i], 0]) + global.itemat[global.chara[i], 1]) + global.itemat[global.chara[i], 2]);
				global.battledf[i] = (((global.df[global.chara[i]] + global.itemdf[global.chara[i], 0]) + global.itemdf[global.chara[i], 1]) + global.itemdf[global.chara[i], 2]);
				global.battlemag[i] = (((global.mag[global.chara[i]] + global.itemmag[global.chara[i], 0]) + global.itemmag[global.chara[i], 1]) + global.itemmag[global.chara[i], 2]);
			}
			for (i = 0; i < 20; i += 1)
			{
				for (j = 0; j < 20; j += 1)
					global.bmenucoord[i, j] = 0;
			}
			movenoise = false;
			selnoise = false;
			laznoise = false;
			damagenoise = false;
			grazenoise = false;
			bcolor = merge_color(c_purple, c_black, 0.7);
			bcolor = merge_color(bcolor, c_dkgray, 0.5);
			tp = 0;
			tpy = 50;
			bp = 0;
			bpy = 152;
			intro = 1;
			chartotal = 0;
			charpos[0] = -1;
			charpos[1] = -1;
			charpos[2] = -1;
			havechar[0] = false;
			havechar[1] = false;
			havechar[2] = false;
			global.charinstance[0] = null;
			global.charinstance[1] = null;
			global.charinstance[2] = null;
			/*with (global.charinstance[0])
				myself = 0
			with (global.charinstance[1])
				myself = 1
			with (global.charinstance[2])
				myself = 2*/
			mmy[0] = 0;
			mmy[1] = 0;
			mmy[2] = 0;
			for (i = 0; i < 3; i += 1)
			{
				if (global.chara[i] != 0)
					chartotal += 1;
				if (global.chara[i] == 1)
				{
					havechar[0] = true;
					charpos[0] = i;
					global.charinstance[i] = instance_create(global.heromakex[i], global.heromakey[i], "obj_herokris");
					global.charinstance[i].myself = i;
					global.charinstance[i].chara = 1;
					global.charinstance[i].depth = (200 - (i * 20));
				}
				if (global.chara[i] == 2)
				{
					havechar[1] = true;
					charpos[1] = i;
					global.charinstance[i] = instance_create(global.heromakex[i], global.heromakey[i], "obj_herosusie");
					global.charinstance[i].myself = i;
					global.charinstance[i].chara = 2;
					global.charinstance[i].depth = (200 - (i * 20));
				}
				if (global.chara[i] == 3)
				{
					havechar[2] = true;
					charpos[2] = i;
					global.charinstance[i] = instance_create(global.heromakex[i], global.heromakey[i], "obj_heroralsei");
					global.charinstance[i].myself = i;
					global.charinstance[i].chara = 3;
					global.charinstance[i].depth = (200 - (i * 20));
				}
			}
			slmxx = 0;
			slmyy = 0;
			s_siner = 0;
			instance_create(0, 0, "obj_tensionbar");
			reset = false;
			timeron = true;
			noreturn = false;
			hpcolor[0] = c_aqua;
			hpcolor[1] = c_fuchsia;
			hpcolor[2] = c_lime;
		}

		public override void Alarm_2()
		{
			reset = false;
			scr_mnendturn();
		}

		public override void Draw_0()
		{
			xx = __view_get(0, 0);
			yy = __view_get(1, 0);
			tpoff = ((tp - tpy) + yy);
			bpoff = (((-bp) + bpy) + yy);
			var spell_offset = 500;
			if (global.lang == "ja")
				spell_offset = 496;
			if (intro == 1)
			{
				if (bp < (bpy - 1))
				{
					if ((bpy - bp) < 40)
						bp += round(((bpy - bp) / 2.5));
					else
						bp += 30;
				}
				else
					bp = bpy;
				if (bp == bpy)
					intro = 0;
			}
			if (intro == 2)
			{
				if (bp > 0)
				{
					if (round(((bpy - bp) / 5)) > 15)
						bp -= round(((bpy - bp) / 2.5));
					else
						bp -= 30;
				}
				else
					bp = 0;
			}
			draw_set_color(c_black);
			draw_rectangle((xx - 10), (481 + yy), (xx + 700), ((480 - bp) + yy), false);
			draw_set_color(bcolor);
			draw_rectangle((xx - 10), (((480 - bp) - 2) + yy), (xx + 700), ((480 - bp) + yy), false);
			draw_set_color(bcolor);
			draw_rectangle((xx - 10), (((480 - bp) + 34) + yy), (xx + 700), (((480 - bp) + 36) + yy), false);
			scr_charbox();
			if (global.bmenuno == 1 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12)
			{
				if (global.myfight == 0)
				{
					draw_sprite("spr_heart", 0, (xx + 55), ((yy + 385) + (global.bmenucoord[global.bmenuno, global.charturn] * 30)));
					scr_84_set_draw_font("mainbig");
					for (i = 0; i < 3; i += 1)
					{
						if (global.monsterinstance[global.bmenucoord[global.bmenuno, global.charturn]].flash == false)
							global.monsterinstance[global.bmenucoord[global.bmenuno, global.charturn]].fsiner = 0;
						global.monsterinstance[global.bmenucoord[global.bmenuno, global.charturn]].flash = true;
						global.monsterinstance[global.bmenucoord[global.bmenuno, global.charturn]].becomeflash = true;

						if (global.monster[i] == 1)
						{
							draw_set_color(c_white);
							mercydraw = false;
							tireddraw = false;
							mnamecolor1 = c_white;
							mnamecolor2 = c_white;
							aqcolor = merge_color(c_aqua, c_blue, 0.3);
							if (global.monsterstatus[i] == true)
								tireddraw = true;
							if (global.mercymod[i] >= global.mercymax[i])
								mercydraw = true;
							namewidth = string_width(string_hash_to_newline(global.monstername[i]));
							if (tireddraw == true)
							{
								if (global.encounterno != 31)
								{
									draw_set_color(aqcolor);
									mnamecolor1 = aqcolor;
									mnamecolor2 = aqcolor;
								}

								draw_sprite("spr_tiredmark", 0, (((xx + 80) + namewidth) + 40), ((yy + 385) + (i * 30)));
							}

							if (mercydraw == true)
							{
								draw_set_color(c_yellow);
								mnamecolor1 = c_yellow;
								if (tireddraw == false)
									mnamecolor2 = c_yellow;
								draw_sprite("spr_sparestar", 0, (((xx + 80) + namewidth) + 20), ((yy + 385) + (i * 30)));
							}

							draw_text_colour((xx + 80), ((yy + 375) + (i * 30)), string_hash_to_newline(global.monstername[i]), mnamecolor1, mnamecolor2, mnamecolor2, mnamecolor1, 1);
							draw_set_color(c_gray);
							draw_text((((xx + 80) + namewidth) + 60), ((yy + 375) + (i * 30)), string_hash_to_newline(global.monstercomment[i]));
							draw_set_color(c_maroon);
							draw_rectangle((xx + 510), ((yy + 380) + (i * 30)), (xx + 590), (((yy + 380) + (i * 30)) + 15), false);
							draw_set_color(c_lime);
							draw_rectangle((xx + 510), ((yy + 380) + (i * 30)), ((xx + 510) + ((global.monsterhp[i] / global.monstermaxhp[i]) * 80)), (((yy + 380) + (i * 30)) + 15), false);
							mercyamt = global.mercymod[i];
							if (mercyamt >= 100)
								mercyamt = 100;
						}
					}
				}
			}

			if (global.bmenuno == 2 && global.myfight == 0)
			{
				thischar = global.chara[global.charturn];
				spellcoord = global.bmenucoord[2, global.charturn];
				page = 0;
				if (spellcoord > 5)
				{
					page = 1;
					spellcoord -= 6;
				}

				icx = 10;
				icy = 385;
				if (spellcoord == 1 || spellcoord == 3 || spellcoord == 5)
					icx = 230;
				if (spellcoord > 1 && spellcoord < 4)
					icy = 415;
				if (spellcoord > 3)
					icy = 445;
				draw_sprite("spr_heart", 0, (xx + icx), (yy + icy));
				scr_84_set_draw_font("mainbig");
				for (i = 0; i < 3; i += 1)
				{
					draw_set_color(c_white);
					if (global.tension < global.spellcost[thischar, ((page * 6) + (i * 2))])
						draw_set_color(c_gray);
					else if (global.spell[thischar, ((page * 6) + (i * 2))] == 3)
					{
						pacify_glow = false;
						for (sglowi = 0; sglowi < 3; sglowi += 1)
						{
							if (global.monster[sglowi] == 1 && global.monsterstatus[sglowi] == true)
							{
								if (global.encounterno != 31)
									pacify_glow = true;
							}
						}

						if (pacify_glow == true)
							draw_set_color(merge_color(c_aqua, c_blue, 0.3));
					}

					draw_text((xx + 30), ((yy + 375) + (i * 30)), string_hash_to_newline(global.spellnameb[thischar, ((page * 6) + (i * 2))]));
					draw_set_color(c_white);
					if (global.tension < global.spellcost[thischar, (((page * 6) + (i * 2)) + 1)])
						draw_set_color(c_gray);
					draw_text((xx + 260), ((yy + 375) + (i * 30)), string_hash_to_newline(global.spellnameb[thischar, (((page * 6) + (i * 2)) + 1)]));
				}

				draw_set_color(c_gray);
				draw_text((xx + spell_offset), (yy + 375), string_hash_to_newline(global.spelldescb[thischar, ((page * 6) + spellcoord)]));
				thiscost = round(((global.spellcost[thischar, ((page * 6) + spellcoord)] / global.maxtension) * 100));
				draw_set_color(c_orange);
				draw_text((xx + spell_offset), (yy + 440), string_hash_to_newline((gm_string(thiscost) + scr_84_get_lang_string("obj_battlecontroller_slash_Draw_0_gml_171_0"))));
			}

			if (global.bmenuno == 4 && global.myfight == 0)
			{
				throw new NotImplementedException("global.bmenuno == 4 && global.myfight == 0");
			}

			if (global.bmenuno == 9 && global.myfight == 0)
			{
				actcoord = global.bmenucoord[9, global.charturn];
				page = 0;
				icx = 10;
				icy = 385;
				if (actcoord == 1 || actcoord == 3 || actcoord == 5)
					icx = 240;
				if (actcoord > 1 && actcoord < 4)
					icy = 415;
				if (actcoord > 3)
					icy = 445;
				draw_sprite("spr_heart", 0, (xx + icx), (yy + icy));
				scr_84_set_draw_font("mainbig");
				for (i = 0; i < 6; i += 1)
				{
					cant = false;
					chartime = global.actactor[global.bmenucoord[11, global.charturn], i];
					charoffset = 0;
					xoffset = 0;
					if (i == 1 || i == 3 || i == 5)
						xoffset = 230;
					yoffset = 0;
					if (i == 2 || i == 3)
						yoffset = 30;
					if (i == 4 || i == 5)
						yoffset = 60;
					drawsus = false;
					drawral = false;
					susblend = c_white;
					ralblend = c_white;
					if (chartime == 2 || chartime == 4)
					{
						drawsus = true;
						if (havechar[1] == false || global.hp[2] <= 0)
						{
							susblend = c_gray;
							cant = true;
						}

						charoffset = 36;
					}

					if (chartime == 3 || chartime == 4)
					{
						drawral = true;
						if (havechar[2] == false || global.hp[3] <= 0)
						{
							ralblend = c_gray;
							cant = true;
						}

						charoffset = 36;
					}

					if (global.tension < global.actcost[global.bmenucoord[11, global.charturn], i])
						cant = true;
					if (chartime == 4)
						charoffset = round((charoffset * 1.8));
					draw_set_color(c_white);
					if (cant == true)
						draw_set_color(c_gray);
					if (chartime == 2)
						draw_sprite_ext("spr_headsusie", 0, ((xx + 30) + xoffset), ((yy + 375) + yoffset), 1, 1, 0, susblend, 1);
					if (chartime == 3)
						draw_sprite_ext("spr_headralsei", 0, ((xx + 30) + xoffset), ((yy + 375) + yoffset), 1, 1, 0, susblend, 1);
					if (chartime == 4)
					{
						draw_sprite_ext("spr_headsusie", 0, ((xx + 30) + xoffset), ((yy + 375) + yoffset), 1, 1, 0, susblend, 1);
						draw_sprite_ext("spr_headralsei", 0, ((xx + 60) + xoffset), ((yy + 375) + yoffset), 1, 1, 0, susblend, 1);
					}

					if (global.lang == "ja")
					{
						jp_string_lengthtest_act = string_width(string_hash_to_newline(global.actname[global.bmenucoord[11, global.charturn], i]));
						if (((jp_string_lengthtest_act + 30) + charoffset) >= 235 && xoffset == 0)
						{
							jp_string_xscale = ((206d - charoffset) / jp_string_lengthtest_act);
							draw_text_transformed((((xx + 30) + charoffset) + xoffset), ((yy + 375) + yoffset), string_hash_to_newline(global.actname[global.bmenucoord[11, global.charturn], i]), jp_string_xscale, 1, 0);
						}
						else
							draw_text((((xx + 30) + charoffset) + xoffset), ((yy + 375) + yoffset), string_hash_to_newline(global.actname[global.bmenucoord[11, global.charturn], i]));
					}
					else
						draw_text((((xx + 30) + charoffset) + xoffset), ((yy + 375) + yoffset), string_hash_to_newline(global.actname[global.bmenucoord[11, global.charturn], i]));
				}
			}

			if (global.bmenuno == 7 || global.bmenuno == 8)
			{
				if (global.myfight == 0)
				{
					draw_sprite("spr_heart", 0, (xx + 55), ((yy + 385) + (global.bmenucoord[global.bmenuno, global.charturn] * 30)));
					scr_84_set_draw_font("mainbig");
					for (i = 0; i < 3; i += 1)
					{
						if (global.chara[i] != 0)
						{
							if (global.charinstance[global.bmenucoord[global.bmenuno, global.charturn]] != null)
							{
								if (global.charinstance[global.bmenucoord[global.bmenuno, global.charturn]].flash == false)
									global.charinstance[global.bmenucoord[global.bmenuno, global.charturn]].fsiner = 0;
								global.charinstance[global.bmenucoord[global.bmenuno, global.charturn]].flash = true;
								global.charinstance[global.bmenucoord[global.bmenuno, global.charturn]].becomeflash = true;
								draw_set_color(c_white);
								draw_text((xx + 80), ((yy + 375) + (i * 30)), string_hash_to_newline(global.charname[global.chara[i]]));
								draw_set_color(c_maroon);
								draw_rectangle((xx + 400), ((yy + 380) + (i * 30)), (xx + 500), (((yy + 380) + (i * 30)) + 15), false);
								draw_set_color(c_lime);
								draw_rectangle((xx + 400), ((yy + 380) + (i * 30)), ((xx + 400) + ((global.hp[global.chara[i]] / global.maxhp[global.chara[i]]) * 100)), (((yy + 380) + (i * 30)) + 15), false);
							}
						}
					}
				}
			}
		}

		public override void Step_0()
		{
			if (victory == true && victoried == 0)
			{
				global.faceaction[0] = 0;
				global.faceaction[1] = 0;
				global.faceaction[2] = 0;
				global.battleend = true;
				global.mnfight = -1;
				global.myfight = 7;
				battlewriter.instance_destroy();
				foreach (var item in with<obj_face>())
				{
					item.instance_destroy();
				}
				foreach (var item in with<obj_smallface>())
				{
					item.instance_destroy();
				}
				for (i = 0; i < 4; i += 1)
				{
					if (global.hp[i] < 1)
						global.hp[i] = round((global.maxhp[i] / 8d));
				}

				lastbattlewriter = null;
				if (skipvictory == false)
				{
					global.monstergold[3] += floor((global.tension / 10d));
					if (global.charweapon[1] == 8)
						global.monstergold[3] += floor((global.monstergold[3] / 20d));
					global.gold += global.monstergold[3];
					global.xp += global.monsterexp[3];
					global.fc = 0;
					global.fe = 0;
					global.battlemsg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_battlecontroller_slash_Step_0_gml_40_0"), gm_string(global.monsterexp[3]), gm_string(global.monstergold[3]));
					global.msg[0] = global.battlemsg[0];
					global.typer = global.battletyper;
					lastbattlewriter = scr_battletext();
					for (i = 0; i < 3; i += 1)
					{
						if (global.charinstance[i] != null)
						{
							global.charinstance[i].state = 7;
							global.charinstance[i].hurt = false;
							global.charinstance[i].hurttimer = 0;
						}
					}
				}

				victoried = 1;
				victortimer = 0;
				if (skipvictory == true)
					victortimer = -20;
				var obj_tensionbar = FindObjectOfType<obj_tensionbar>();
				obj_tensionbar.alarm[5] = 15;
				obj_tensionbar.hspeed = -10;
				obj_tensionbar.friction = -0.4;
				if (instance_exists("obj_hathyfightevent"))
				{
					FindObjectOfType<obj_hathyfightevent>().con = 30;
					victoried = 2;
					lastbattlewriter.instance_destroy();
				}
			}

			if (victoried == 1)
			{
				victortimer += 1;
				if (instance_exists(lastbattlewriter) == false && victortimer >= 10)
				{
					intro = 2;

					if (bp <= 0)
						scr_endcombat();
				}
			}

			if (global.myfight == 0)
			{
				if (global.bmenuno == 0)
				{
					if (!instance_exists(battlewriter))
					{
						global.msg[0] = global.battlemsg[0];
						global.typer = global.battletyper;
						scr_battletext();
					}

					if (left_p() == true && lbuffer < 0)
					{
						if (global.bmenucoord[0, global.charturn] == 0)
							global.bmenucoord[0, global.charturn] = 4;
						else
							global.bmenucoord[0, global.charturn] -= 1;
						movenoise = true;
						rbuffer = 1;
					}

					if (right_p() == true && rbuffer < 0)
					{
						if (global.bmenucoord[0, global.charturn] == 4)
							global.bmenucoord[0, global.charturn] = 0;
						else
							global.bmenucoord[0, global.charturn] += 1;
						movenoise = true;
						lbuffer = 1;
					}

					if (button1_p() == true && twobuffer < 0)
					{
						onebuffer = 1;
						selnoise = true;
						if (global.bmenucoord[0, global.charturn] == 0)
							global.bmenuno = 1;
						if (global.bmenucoord[0, global.charturn] == 1 && global.chara[global.charturn] != 1)
						{
							onebuffer = 1;
							global.bmenuno = 2;
						}

						if (global.bmenucoord[0, global.charturn] == 1 && global.chara[global.charturn] == 1)
						{
							onebuffer = 1;
							global.bmenuno = 11;
						}

						if (global.bmenucoord[0, global.charturn] == 2 && tempitem[0, 0] != 0)
						{
							onebuffer = 1;
							global.bmenuno = 4;
							scr_iteminfo_temp(global.charturn);
							for (i = 0; i < 12; i += 1)
							{
								if (tempitem[global.bmenucoord[4, global.charturn], global.charturn] == 0 && global.bmenucoord[4, global.charturn] > 0)
									global.bmenucoord[4, global.charturn] -= 1;
							}
						}

						if (global.bmenucoord[0, global.charturn] == 3)
						{
							onebuffer = 1;
							global.bmenuno = 12;
						}

						if (global.bmenucoord[0, global.charturn] == 4)
						{
							scr_tensionheal(40);
							global.faceaction[global.charturn] = 4;
							global.charaction[global.charturn] = 10;
							scr_nexthero();
						}
					}

					if (button2_p() == true && onebuffer < 0 && global.charturn > 0)
					{
						twobuffer = 1;
						movenoise = true;
						scr_prevhero();
					}

					battlewriter.depth = 3;
					foreach (var item in with<obj_face_parent>())
					{
						item.depth = 3;
					}

					foreach (var item in with<obj_smallface>())
					{
						item.depth = 3;
					}
				}

				if (global.bmenuno == 2)
				{
					battlewriter.skipme = true;
					battlewriter.depth = 10;
					foreach (var item in with<obj_face_parent>())
					{
						item.depth = 10;
					}
					foreach (var item in with<obj_smallface>())
					{
						item.depth = 10;
					}

					thischar = global.chara[global.charturn];
					if (right_p())
					{
						cango = true;
						spellcoord = global.bmenucoord[2, global.charturn];
						if (spellcoord < 11)
						{
							if (global.spell[thischar, (global.bmenucoord[2, global.charturn] + 1)] == 0)
							{
								cango = false;
								if ((spellcoord % 2) == 1 && spellcoord > 0)
									global.bmenucoord[2, global.charturn] -= 1;
							}
						}
						else
						{
							global.bmenucoord[2, global.charturn] -= 1;
							cango = false;
						}

						if (cango == true)
						{
							if ((spellcoord % 2) == 0)
								global.bmenucoord[2, global.charturn] += 1;
							else
								global.bmenucoord[2, global.charturn] -= 1;
						}
					}

					if (left_p())
					{
						cango = true;
						spellcoord = global.bmenucoord[2, global.charturn];
						if (global.spell[thischar, 1] != 0)
						{
							if ((spellcoord % 2) == 0)
								global.bmenucoord[2, global.charturn] += 1;
							else
								global.bmenucoord[2, global.charturn] -= 1;
						}
					}

					if (down_p())
					{
						spellcoord = global.bmenucoord[2, global.charturn];
						cango = true;
						if (spellcoord >= 10)
							cango = false;
						else
						{
							if (global.spell[thischar, (spellcoord + 2)] == 0)
								cango = false;
							if (spellcoord == 5 && global.spell[thischar, 6] != 0 && global.spell[thischar, 7] == 0)
								cango = 2;
						}

						if (cango != false)
						{
							if (cango == true)
								global.bmenucoord[2, global.charturn] += 2;
							if (cango == 2)
								global.bmenucoord[2, global.charturn] = 6;
						}
					}

					if (up_p())
					{
						spellcoord = global.bmenucoord[2, global.charturn];
						cango = true;
						if (spellcoord <= 1)
							cango = false;
						if (cango == true)
							global.bmenucoord[2, global.charturn] -= 2;
					}

					global.tensionselect = global.spellcost[thischar, global.bmenucoord[2, global.charturn]];

					if (button1_p() && global.spell[thischar, global.bmenucoord[2, global.charturn]] != 0 && onebuffer < 0)
					{
						if (global.spellcost[thischar, global.bmenucoord[2, global.charturn]] <= global.tension)
						{
							onebuffer = 2;
							global.bmenuno = 0;
							selnoise = true;
							scr_spellinfo(global.spell[thischar, global.bmenucoord[2, global.charturn]]);
							if (spelltarget == 0)
								scr_spellconsumeb();
							if (spelltarget == 1)
								global.bmenuno = 8;
							if (spelltarget == 2)
								global.bmenuno = 3;
						}
					}

					if (button2_p() && onebuffer < 0)
					{
						global.tensionselect = 0;
						twobuffer = 1;
						global.bmenuno = 0;
						movenoise = true;
					}
				}

				if (global.bmenuno == 4)
				{
					battlewriter.skipme = true;
					battlewriter.depth = 10;
					foreach (var item in with<obj_face_parent>())
					{
						item.depth = 10;
					}
					foreach (var item in with<obj_smallface>())
					{
						item.depth = 10;
					}

					if (tempitem[global.bmenucoord[4, global.charturn], global.charturn] == 0)
						global.bmenucoord[4, global.charturn] -= 1;

					if (right_p())
					{
						cango = true;
						itemcoord = global.bmenucoord[4, global.charturn];
						if (itemcoord < 11)
						{
							if (tempitem[(global.bmenucoord[4, global.charturn] + 1), global.charturn] == 0)
							{
								cango = false;
								if ((itemcoord % 2) == 1 && itemcoord > 0)
									global.bmenucoord[4, global.charturn] -= 1;
							}
						}
						else
						{
							global.bmenucoord[4, global.charturn] -= 1;
							cango = false;
						}

						if (cango == true)
						{
							if ((itemcoord % 2) == 0)
								global.bmenucoord[4, global.charturn] += 1;
							else
								global.bmenucoord[4, global.charturn] -= 1;
						}
					}

					if (left_p())
					{
						cango = true;
						itemcoord = global.bmenucoord[4, global.charturn];
						if (tempitem[1, global.charturn] != 0)
						{
							if ((itemcoord % 2) == 0)
								global.bmenucoord[4, global.charturn] += 1;
							else
								global.bmenucoord[4, global.charturn] -= 1;
						}
					}

					if (down_p())
					{
						itemcoord = global.bmenucoord[4, global.charturn];
						cango = true;
						if (itemcoord >= 10)
							cango = false;
						else
						{
							if (tempitem[(itemcoord + 2), global.charturn] == 0)
								cango = false;
							if (itemcoord == 5 && tempitem[6, global.charturn] != 0 && tempitem[7, global.charturn] == 0)
								cango = 2;
						}

						if (cango != false)
						{
							if (cango == true)
								global.bmenucoord[4, global.charturn] += 2;
							if (cango == 2)
								global.bmenucoord[4, global.charturn] = 6;
						}
					}

					if (up_p())
					{
						itemcoord = global.bmenucoord[4, global.charturn];
						cango = true;
						if (itemcoord <= 1)
							cango = false;
						if (cango == true)
							global.bmenucoord[4, global.charturn] -= 2;
					}

					if (tempitem[global.bmenucoord[4, global.charturn], global.charturn] == 0)
						global.bmenucoord[4, global.charturn] -= 1;

					if (button1_p() && tempitem[global.bmenucoord[4, global.charturn], global.charturn] != 0 && onebuffer < 0)
					{
						onebuffer = 2;
						global.bmenuno = 0;
						selnoise = true;
						scr_iteminfo(tempitem[global.bmenucoord[4, global.charturn], global.charturn]);
						if (itemtarget == 0 || itemtarget == 2)
							scr_itemconsumeb();
						if (itemtarget == 1)
							global.bmenuno = 7;
					}

					if (button2_p() && onebuffer < 0)
					{
						twobuffer = 1;
						global.bmenuno = 0;
						movenoise = true;
					}
				}

				if (global.bmenuno == 9)
				{
					thisenemy = global.bmenucoord[11, global.charturn];

					if (right_p())
					{
						cango = true;
						actcoord = global.bmenucoord[9, global.charturn];
						if (actcoord < 5)
						{
							if (global.canact[thisenemy, (global.bmenucoord[9, global.charturn] + 1)] == false)
							{
								cango = false;
								if ((actcoord % 2) == 1 && actcoord > 0)
									global.bmenucoord[9, global.charturn] -= 1;
							}
						}
						else
						{
							global.bmenucoord[9, global.charturn] -= 1;
							cango = false;
						}

						if (cango == true)
						{
							if ((actcoord % 2) == 0)
								global.bmenucoord[9, global.charturn] += 1;
							else
								global.bmenucoord[9, global.charturn] -= 1;
						}
					}

					if (left_p())
					{
						cango = true;
						actcoord = global.bmenucoord[9, global.charturn];
						if ((actcoord % 2) == 0)
						{
							if (global.canact[thisenemy, (actcoord + 1)] != false)
								global.bmenucoord[9, global.charturn] += 1;
						}
						else
							global.bmenucoord[9, global.charturn] -= 1;
					}

					if (down_p())
					{
						actcoord = global.bmenucoord[9, global.charturn];
						cango = true;
						if (actcoord >= 4)
							cango = false;
						else if (global.canact[thisenemy, (actcoord + 2)] == false)
							cango = false;
						if (cango != false)
						{
							if (cango == true)
								global.bmenucoord[9, global.charturn] += 2;
						}
					}

					if (up_p())
					{
						actcoord = global.bmenucoord[9, global.charturn];
						cango = true;
						if (actcoord <= 1)
							cango = false;
						if (cango == true)
							global.bmenucoord[9, global.charturn] -= 2;
					}

					global.tensionselect = global.actcost[thisenemy, global.bmenucoord[9, global.charturn]];
					canpress = true;
					if (global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 2 || global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 4)
					{
						if (havechar[1] == false || global.hp[2] <= 0)
							canpress = false;
					}

					if (global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 3 || global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 4)
					{
						if (havechar[2] == false || global.hp[3] <= 0)
							canpress = false;
					}

					if (canpress == true)
					{
						if (button1_p() && global.canact[thisenemy, global.bmenucoord[9, global.charturn]] == true && global.tension >= global.tensionselect && onebuffer < 0)
						{
							onebuffer = 2;
							global.bmenuno = 0;
							selnoise = true;
							global.tension -= global.actcost[thisenemy, global.bmenucoord[9, global.charturn]];
							global.tensionselect = 0;
							if (instance_exists(global.monsterinstance[thisenemy]))
								global.monsterinstance[thisenemy].acting = (global.bmenucoord[9, global.charturn] + 1);
							global.acting[0] = true;
							if (global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 2)
								global.acting[charpos[1]] = true;
							if (global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 3)
								global.acting[charpos[2]] = true;
							if (global.actactor[global.bmenucoord[11, global.charturn], global.bmenucoord[9, global.charturn]] == 4)
							{
								global.acting[2] = true;
								global.acting[1] = true;
							}

							for (i = 0; i < 3; i += 1)
							{
								if (global.acting[i] == true)
								{
									global.faceaction[i] = 6;
									global.charaction[i] = 9;
								}
							}

							scr_nexthero();
						}
					}

					if (button2_p() && onebuffer < 0)
					{
						global.tensionselect = 0;
						twobuffer = 1;
						global.bmenuno = 11;
						movenoise = true;
					}
				}

				if (global.bmenuno == 7 || global.bmenuno == 1 || global.bmenuno == 8 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12)
				{
					battlewriter.skipme = true;
					battlewriter.depth = 10;
					foreach (var item in with<obj_face_parent>())
					{
						item.depth = 10;
					}
					foreach (var item in with<obj_smallface>())
					{
						item.depth = 10;
					}

					if (button2_p() && onebuffer < 0)
					{
						twobuffer = 1;
						if (global.bmenuno == 1 || global.bmenuno == 11 || global.bmenuno == 12)
							global.bmenuno = 0;
						if (global.bmenuno == 7)
							global.bmenuno = 4;
						if (global.bmenuno == 8 || global.bmenuno == 3)
							global.bmenuno = 2;
						movenoise = true;
					}

					if (global.bmenuno == 7 || global.bmenuno == 1 || global.bmenuno == 8 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12)
					{
						if (global.bmenuno == 7 || global.bmenuno == 8)
						{
							for (i = 0; i < 3; i += 1)
							{
								ht[i] = 0;
								if (global.chara[i] > 0)
									ht[i] = 1;
							}
						}

						if (global.bmenuno == 1 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12)
						{
							for (i = 0; i < 3; i += 1)
								ht[i] = global.monster[i];
						}

						if (global.bmenucoord[global.bmenuno, global.charturn] == 2 && ht[2] == 0)
							global.bmenucoord[global.bmenuno, global.charturn] = 0;
						if (global.bmenucoord[global.bmenuno, global.charturn] == 0 && ht[0] == 0)
							global.bmenucoord[global.bmenuno, global.charturn] = 1;
						if (global.bmenucoord[global.bmenuno, global.charturn] == 1 && ht[1] == 0)
							global.bmenucoord[global.bmenuno, global.charturn] = 0;
						if (global.bmenucoord[global.bmenuno, global.charturn] == 0 && ht[0] == 0)
							global.bmenucoord[global.bmenuno, global.charturn] = 2;

						if (down_p())
						{
							if (global.bmenucoord[global.bmenuno, global.charturn] == 0)
							{
								if (ht[1] == 1)
								{
									movenoise = true;
									global.bmenucoord[global.bmenuno, global.charturn] = 1;
								}
								else if (ht[2] == 1)
								{
									movenoise = true;
									global.bmenucoord[global.bmenuno, global.charturn] = 2;
								}
							}
							else if (global.bmenucoord[global.bmenuno, global.charturn] == 1)
							{
								if (ht[2] == 1)
								{
									movenoise = true;
									global.bmenucoord[global.bmenuno, global.charturn] = 2;
								}
								else if (ht[0] == 1)
								{
									movenoise = true;
									global.bmenucoord[global.bmenuno, global.charturn] = 0;
								}
							}
							else if (global.bmenucoord[global.bmenuno, global.charturn] == 2)
							{
								if (ht[0] == 1)
								{
									movenoise = true;
									global.bmenucoord[global.bmenuno, global.charturn] = 0;
								}
								else if (ht[1] == 1)
								{
									movenoise = true;
									global.bmenucoord[global.bmenuno, global.charturn] = 1;
								}
							}
						}

						if (up_p())
						{
							if (global.bmenucoord[global.bmenuno, global.charturn] == 0)
							{
								if (ht[2] == 1)
								{
									movenoise = true;
									global.bmenucoord[global.bmenuno, global.charturn] = 2;
								}
								else if (ht[1] == 1)
								{
									movenoise = true;
									global.bmenucoord[global.bmenuno, global.charturn] = 1;
								}
							}
							else if (global.bmenucoord[global.bmenuno, global.charturn] == 1)
							{
								if (ht[0] == 1)
								{
									movenoise = true;
									global.bmenucoord[global.bmenuno, global.charturn] = 0;
								}
								else if (ht[2] == 1)
								{
									movenoise = true;
									global.bmenucoord[global.bmenuno, global.charturn] = 2;
								}
							}
							else if (global.bmenucoord[global.bmenuno, global.charturn] == 2)
							{
								if (ht[1] == 1)
								{
									movenoise = true;
									global.bmenucoord[global.bmenuno, global.charturn] = 1;
								}
								else if (ht[0] == 1)
								{
									movenoise = true;
									global.bmenucoord[global.bmenuno, global.charturn] = 0;
								}
							}
						}

						if (button1_p() && onebuffer < 0)
						{
							onebuffer = 1;
							selnoise = true;
							if (global.bmenuno == 1)
							{
								global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno, global.charturn];
								global.faceaction[global.charturn] = 1;
								global.charaction[global.charturn] = 1;
								scr_nexthero();
							}

							if (global.bmenuno == 7)
							{
								global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno, global.charturn];
								scr_itemconsumeb();
							}

							if (global.bmenuno == 8 || global.bmenuno == 3)
							{
								global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno, global.charturn];
								scr_spellconsumeb();
							}

							if (global.bmenuno == 11)
							{
								global.bmenuno = 9;
								actcoord = global.bmenucoord[9, global.charturn];
								thisenemy = global.bmenucoord[11, global.charturn];
								for (i = 0; i < 6; i += 1)
								{
									if (global.canact[thisenemy, actcoord] == false)
									{
										if (actcoord > 0)
											global.bmenucoord[9, global.charturn] -= 1;
									}
								}

								onebuffer = 1;
							}

							if (global.bmenuno == 12)
							{
								global.faceaction[global.charturn] = 10;
								global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno, global.charturn];
								global.charaction[global.charturn] = 2;
								global.charspecial[global.charturn] = 100;
								scr_nexthero();
							}
						}
					}
				}
			}

			if (movenoise == true)
			{
				snd_play("snd_menumove");
				movenoise = false;
			}

			if (grazenoise == true)
			{
				snd_play("snd_graze");
				grazenoise = false;
			}

			if (selnoise == true)
			{
				snd_play("snd_select");
				selnoise = false;
			}

			if (damagenoise == true)
			{
				snd_play("snd_damage");
				damagenoise = false;
			}

			if (laznoise == true)
			{
				snd_play("snd_laz_c");
				laznoise = false;
			}

			onebuffer -= 1;
			twobuffer -= 1;
			lbuffer -= 1;
			rbuffer -= 1;

			if (global.mnfight == 2 && timeron == true)
			{
				global.turntimer -= 1;
				if (global.turntimer <= 0 && reset == false)
				{
					foreach (var item in with<obj_bulletparent>())
					{
						item.instance_destroy();
					}

					foreach (var item in with<obj_bulletgenparent>())
					{
						item.instance_destroy();
					}

					foreach (var item in with<obj_darkener>())
					{
						item.darken = false;
					}

					foreach (var item in with<obj_heart>())
					{
						instance_create(item.x, item.y, "obj_returnheart");
						item.instance_destroy();
					}

					reset = true;
					if (noreturn == false)
						alarm[2] = 15;
				}
			}
		}
	}
}
