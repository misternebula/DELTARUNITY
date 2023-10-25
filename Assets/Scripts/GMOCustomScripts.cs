using System;
using System.IO;
using System.Linq;
using Assets.Scripts;
using OBJECT_SCRIPTS;
using UnityEditor;
using UnityEngine;
using static UnityEngine.GraphicsBuffer;

namespace Assets
{
	public partial class GamemakerObject
	{
		public void scr_gamestart()
		{
			global.darkzone = false;
			global.filechoice = 0;
			global.plot = 0;
			global.truename = "";
			global.othername[0] = "";
			global.othername[1] = "";
			global.othername[2] = "";
			global.othername[3] = "";
			global.othername[4] = "";
			global.othername[5] = "";
			global.othername[6] = "";
			global.time = 0;
			global.fighting = false;
			global.chara[0] = 1;
			global.chara[1] = 0;
			global.chara[2] = 0;
			global.gold = 0;
			global.xp = 0;
			global.lv = 1;
			global.inv = 0;
			global.invc = 1;
			global.charselect = -1;
			global.encounterno = 1;
			global.specialbattle = 0;
			for (i = 0; i < 3; i += 1)
			{
				global.heromakex[i] = 100;
				global.heromakey[i] = 200;
				global.charauto[i] = false;
				global.charmove[i] = false;
				global.charcantarget[i] = false;
				global.chardead[i] = false;
				global.invincible[i] = 1;
				global.charaction[i] = 0;
				global.faceaction[i] = 0;
				global.charcond[i] = 0;
			}
			global.charauto[0] = false;
			global.charauto[1] = false;
			global.charauto[2] = true;
			global.charauto[3] = false;
			for (i = 0; i < 4; i += 1)
			{
				global.hp[i] = 200;
				global.maxhp[i] = 250;
				global.at[i] = 10;
				global.df[i] = 2;
				global.mag[i] = 0;
				global.guts[i] = 0;
				global.charweapon[i] = 1;
				global.chararmor1[i] = 0;
				global.chararmor2[i] = 0;
				global.weaponstyle[i] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_69_0");
				for (q = 0; q < 4; q += 1)
				{
					global.itemat[i, q] = 0;
					global.itemdf[i, q] = 0;
					global.itemmag[i, q] = 0;
					global.itembolts[i, q] = 0;
					global.itemgrazeamt[i, q] = 0;
					global.itemgrazesize[i, q] = 0;
					global.itemboltspeed[i, q] = 0;
					global.itemspecial[i, q] = 0;
				}
				for (j = 0; j < 12; j += 1)
					global.spell[i, j] = 0;
			}
			global.boltspeed = 100;
			global.grazeamt = 100;
			global.grazesize = 100;
			global.charname[0] = " ";
			global.charname[1] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_98_0");
			global.charname[2] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_99_0");
			global.charname[3] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_100_0");
			global.charweapon[0] = 0;
			global.chararmor1[0] = 0;
			global.chararmor2[0] = 0;
			global.hp[0] = 0;
			global.maxhp[0] = 0;
			global.hp[1] = 90;
			global.maxhp[1] = 90;
			global.at[1] = 10;
			global.charweapon[2] = 2;
			global.hp[2] = 110;
			global.maxhp[2] = 110;
			global.at[2] = 14;
			global.mag[2] = 1;
			global.charweapon[3] = 3;
			global.hp[3] = 70;
			global.maxhp[3] = 70;
			global.at[3] = 8;
			global.mag[3] = 7;
			global.spell[1, 0] = 7;
			global.spell[2, 0] = 4;
			global.spell[3, 0] = 3;
			global.spell[3, 1] = 2;
			scr_spellinfo_all();
			global.item[0] = 0;
			global.item[1] = 0;
			global.item[2] = 0;
			global.item[3] = 0;
			global.item[4] = 0;
			global.item[5] = 0;
			global.item[6] = 0;
			global.item[7] = 0;
			global.item[8] = 0;
			global.item[9] = 0;
			global.item[10] = 0;
			global.item[11] = 0;
			global.item[12] = 0;
			global.keyitem[0] = 1;
			global.keyitem[1] = 0;
			global.keyitem[2] = 0;
			global.keyitem[3] = 0;
			global.keyitem[4] = 0;
			global.keyitem[5] = 0;
			global.keyitem[6] = 0;
			global.keyitem[7] = 0;
			global.keyitem[8] = 0;
			global.keyitem[9] = 0;
			global.keyitem[10] = 0;
			global.keyitem[11] = 0;
			global.keyitem[12] = 0;
			global.weapon[0] = 0;
			global.weapon[1] = 0;
			global.weapon[2] = 0;
			global.weapon[3] = 0;
			global.weapon[4] = 0;
			global.weapon[5] = 0;
			global.weapon[6] = 0;
			global.weapon[7] = 0;
			global.weapon[8] = 0;
			global.weapon[9] = 0;
			global.weapon[10] = 0;
			global.weapon[11] = 0;
			global.weapon[12] = 0;
			global.armor[0] = 0;
			global.armor[1] = 0;
			global.armor[2] = 0;
			global.armor[3] = 0;
			global.armor[4] = 0;
			global.armor[5] = 0;
			global.armor[6] = 0;
			global.armor[7] = 0;
			global.armor[8] = 0;
			global.armor[9] = 0;
			global.armor[10] = 0;
			global.armor[11] = 0;
			global.armor[12] = 0;
			scr_iteminfo_all();
			global.tension = 0;
			global.maxtension = 250;
			global.grazetotal = 0;
			global.grazeturn = 0;
			for (i = 0; i < 3; i += 1)
			{
				global.monstermakex[i] = 500;
				global.monstermakey[i] = 240;
				global.monsterinstancetype[i] = "";
				global.monster[i] = 1;
				global.monstername[i] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_206_0");
				global.monstertype[i] = 1;
				global.monsterat[i] = 3;
				global.monsterdf[i] = 2;
				global.monsterhp[i] = 20;
				global.monstermaxhp[i] = 20;
				global.sparepoint[i] = 0;
			}
			global.bmenuno = 0;
			for (i = 0; i < 20; i += 1)
			{
				for (j = 0; j < 20; j += 1)
					global.bmenucoord[i, j] = 0;
			}
			global.myfight = 0;
			global.mnfight = 0;
			draw_set_color(c_white);
			global.fc = 0;
			global.fe = 0;
			global.typer = 5;
			//global.msg = " ";
			global.msc = 0;
			for (i = 0; i < 10; i += 1)
			{
				global.writersnd[i] = "snd_noise";
				global.writerimg[i] = scr_84_get_sprite("spr_btact");
				global.smdir[i] = 90;
				global.smspeed[i] = 2;
				global.smface[i] = 505050;
				global.smsprite[i] = "spr_smallface_s0";
				global.smalarm[i] = 20;
				global.smtype[i] = 0;
				global.smxx[i] = 100;
				global.smyy[i] = 110;
				global.smcolor[i] = c_purple;
				global.smstring[i] = " ";
			}
			global.smalarm[1] = 15;
			global.smyy[1] = 70;
			global.smxx[1] = 700;
			global.smdir[1] = 180;
			global.smspeed[1] = 40;
			global.smtype[1] = 3;
			global.smsprite[1] = "spr_smallface_a2";
			global.smcolor[1] = c_white;
			global.smstring[1] = " ";
			for (i = 0; i < 100; i += 1)
				global.msg[i] = "%%";
			global.msg[0] = " ";
			global.msg[1] = " ";
			global.msg[2] = " ";
			global.msg[3] = " ";
			global.msg[4] = " ";
			global.currentsong0 = "snd_nosound";
			global.currentsong1 = null;
			global.batmusic0 = "snd_nosound";
			global.batmusic1 = null;
			global.debug = false;
			global.fc = 0;
			global.fe = 0;
			global.choice = -1;
			global.seriousbattle = false;
			global.interact = 0;
			global.entrance = 0;
			for (i = 0; i < 9; i += 1)
			{
				global.litem[i] = 0;
				global.litemname[i] = "";
				global.phone[i] = 0;
				global.phonename[i] = "";
			}
			for (i = 0; i < 20; i += 1)
				global.menucoord[i] = 0;
			for (i = 0; i < 100; i += 1)
				global.msg[i] = " ";
			global.choicemsg[0] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_325_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_326_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_327_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_328_0");
			for (i = 0; i < 9999; i += 1)
				global.flag[i] = 0;
			global.litem[0] = 0;
			global.litemname[0] = " ";
			global.phone[0] = 201;
			global.phonename[0] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_343_0");
			global.lcharname = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_345_0");
			global.lweapon = 2;
			global.larmor = 3;
			global.lxp = 0;
			global.llv = 1;
			global.lgold = 2;
			global.lhp = 20;
			global.lmaxhp = 20;
			global.lat = 10;
			global.ldf = 10;
			global.lwstrength = 1;
			global.ladef = 0;
			global.facing = 0;
			global.flag[15] = 1;
			global.flag[16] = 1;
			global.flag[17] = 1;
			for (i = 0; i < 10; i += 1)
			{
				global.input_pressed[i] = false;
				global.input_held[i] = false;
				global.input_released[i] = false;
			}
		}

		public string scr_84_get_lang_string(string s)
		{
			if (TextManager.TextManager.instance == null || TextManager.TextManager.instance.Ch1EnLang == null)
			{
				Resources.FindObjectsOfTypeAll<TextManager.TextManager>().First().Awake();
			}

			return TextManager.TextManager.instance.Ch1EnLang[s];
		}

		public string scr_84_get_sprite(string s) => s;

		public void scr_spellinfo_all()
		{
			for (j = 0; j < 4; j += 1)
			{
				for (i = 0; i < 12; i += 1)
				{
					spellid = global.spell[j, i];
					scr_spellinfo(spellid);
					global.spellname[j, i] = spellname;
					global.spellnameb[j, i] = spellnameb;
					global.spelldescb[j, i] = spelldescb;
					global.spelldesc[j, i] = spelldesc;
					global.spellcost[j, i] = cost;
					global.spellusable[j, i] = spellusable;
					global.spelltarget[j, i] = spelltarget;
				}
			}
		}

		public void scr_spellinfo(int argument0)
		{
			cost = -1;
			spelltarget = 1;
			spellname = " ";
			spellnameb = " ";
			spelldescb = " ";
			spelldesc = " ";
			spellanim = false;
			spellusable = false;
			spelltext = " ";
			switch (argument0)
			{
				case 0:
					spellname = " ";
					spellnameb = " ";
					spelltarget = 0;
					cost = -1;
					spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_18_0");
					break;
				case 1:
					spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_21_0");
					spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_22_0");
					spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_23_0");
					spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_24_0");
					spelltarget = 2;
					cost = 125;
					spellusable = false;
					break;
				case 2:
					spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_31_0");
					spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_32_0");
					spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_33_0");
					spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_34_0");
					spelltarget = 1;
					cost = 80;
					usable = false;
					spellusable = true;
					break;
				case 3:
					spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_42_0");
					spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_43_0");
					spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_44_0");
					spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_45_0");
					spelltarget = 2;
					cost = 40;
					usable = false;
					spellusable = false;
					break;
				case 4:
					spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_52_0");
					spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_53_0");
					spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_54_0");
					spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_55_0");
					spelltarget = 2;
					cost = 125;
					if (global.charweapon[2] == 7)
						cost = 100;
					spellusable = false;
					break;
				case 5:
					spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_64_0");
					spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_65_0");
					spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_66_0");
					spelldesc = " ";
					spelltarget = 2;
					cost = 0;
					spellusable = false;
					break;
				case 6:
					spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_75_0");
					spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_76_0");
					spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_77_0");
					spelldesc = " ";
					spelltarget = 0;
					cost = 0;
					spellusable = false;
					break;
				case 7:
					spellname = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_86_0");
					spellnameb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_87_0");
					spelldescb = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_88_0");
					spelldesc = scr_84_get_lang_string("scr_spellinfo_slash_scr_spellinfo_gml_89_0");
					spelltarget = 0;
					cost = 0;
					spellusable = false;
					break;
			}
		}

		public void scr_iteminfo_all()
		{
			for (i = 0; i < 12; i += 1)
			{
				itemid = global.item[i];
				scr_iteminfo(itemid);
				global.itemnameb[i] = itemnameb;
				global.itemdescb[i] = itemdescb;
				global.itemvalue[i] = value;
				global.itemusable[i] = usable;
			}
		}

		public void scr_iteminfo(int argument0)
		{
			usable = false;
			value = 0;
			itemtarget = 0;
			itemnameb = " ";
			itemdescb = " ";
			switch (argument0)
			{
				case 0:
					itemnameb = " ";
					itemdescb = "---";
					break;
				case 1:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_14_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_15_0");
					itemtarget = 1;
					value = 25;
					usable = true;
					break;
				case 2:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_21_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_22_0");
					itemtarget = 1;
					value = 400;
					usable = true;
					break;
				case 3:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_28_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_29_0");
					itemtarget = 0;
					value = 200;
					usable = false;
					break;
				case 4:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_35_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_36_0");
					itemtarget = 2;
					value = 1;
					usable = false;
					break;
				case 5:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_42_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_43_0");
					itemtarget = 1;
					value = 5;
					usable = true;
					break;
				case 6:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_49_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_50_0");
					itemtarget = 2;
					value = 150;
					usable = true;
					break;
				case 7:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_56_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_57_0");
					itemtarget = 2;
					value = 5;
					usable = true;
					break;
				case 8:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_63_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_64_0");
					itemtarget = 1;
					value = 70;
					usable = true;
					break;
				case 9:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_70_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_71_0");
					itemtarget = 1;
					value = 10;
					usable = true;
					break;
				case 10:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_77_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_78_0");
					itemtarget = 1;
					value = 10;
					usable = true;
					break;
				case 11:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_84_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_85_0");
					itemtarget = 2;
					value = 70;
					usable = true;
					break;
				case 12:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_91_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_92_0");
					itemtarget = 1;
					value = 40;
					usable = true;
					break;
				case 13:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_98_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_99_0");
					itemtarget = 1;
					value = 40;
					usable = true;
					break;
				case 14:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_105_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_106_0");
					itemtarget = 1;
					value = 10;
					usable = true;
					break;
				case 15:
					itemnameb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_112_0");
					itemdescb = scr_84_get_lang_string("scr_iteminfo_slash_scr_iteminfo_gml_113_0");
					itemtarget = 1;
					value = 50;
					usable = true;
					break;
			}
		}

		public void scr_windowcaption(string argument0)
		{
			if (global.tempflag[10] == true)
				window_set_caption(scr_84_get_lang_string("scr_windowcaption_slash_scr_windowcaption_gml_1_0"));
			else
				window_set_caption(argument0);
		}

		public void scr_controls_default()
		{
			global.input_k[0] = vk_down;
			global.input_k[1] = vk_right;
			global.input_k[2] = vk_up;
			global.input_k[3] = vk_left;
			global.input_k[4] = ord("Z");
			global.input_k[5] = ord("X");
			global.input_k[6] = ord("C");
			global.input_k[7] = vk_return;
			global.input_k[8] = vk_shift;
			global.input_k[9] = vk_control;
		}

		public void scr_ascii_input_names()
		{
			global.asc_def[8] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_5_0");
			global.asc_def[9] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_6_0");
			global.asc_def[12] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_7_0");
			global.asc_def[13] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_8_0");
			global.asc_def[19] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_9_0");
			global.asc_def[20] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_10_0");
			global.asc_def[27] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_11_0");
			global.asc_def[32] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_12_0");
			global.asc_def[33] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_13_0");
			global.asc_def[34] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_14_0");
			global.asc_def[35] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_15_0");
			global.asc_def[36] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_16_0");
			global.asc_def[37] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_17_0");
			global.asc_def[38] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_18_0");
			global.asc_def[39] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_19_0");
			global.asc_def[40] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_20_0");
			global.asc_def[45] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_21_0");
			global.asc_def[46] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_22_0");
			global.asc_def[48] = "0";
			global.asc_def[49] = "1";
			global.asc_def[50] = "2";
			global.asc_def[51] = "3";
			global.asc_def[52] = "4";
			global.asc_def[53] = "5";
			global.asc_def[54] = "6";
			global.asc_def[55] = "7";
			global.asc_def[56] = "8";
			global.asc_def[57] = "9";
			global.asc_def[65] = "A";
			global.asc_def[66] = "B";
			global.asc_def[67] = "C";
			global.asc_def[68] = "D";
			global.asc_def[69] = "E";
			global.asc_def[70] = "F";
			global.asc_def[71] = "G";
			global.asc_def[72] = "H";
			global.asc_def[73] = "I";
			global.asc_def[74] = "J";
			global.asc_def[75] = "K";
			global.asc_def[76] = "L";
			global.asc_def[77] = "M";
			global.asc_def[78] = "N";
			global.asc_def[79] = "O";
			global.asc_def[80] = "P";
			global.asc_def[81] = "Q";
			global.asc_def[82] = "R";
			global.asc_def[83] = "S";
			global.asc_def[84] = "T";
			global.asc_def[85] = "U";
			global.asc_def[86] = "V";
			global.asc_def[87] = "W";
			global.asc_def[88] = "X";
			global.asc_def[89] = "Y";
			global.asc_def[90] = "Z";
			global.asc_def[91] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_59_0");
			global.asc_def[96] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_60_0");
			global.asc_def[97] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_61_0");
			global.asc_def[98] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_62_0");
			global.asc_def[99] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_63_0");
			global.asc_def[100] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_64_0");
			global.asc_def[101] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_65_0");
			global.asc_def[102] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_66_0");
			global.asc_def[103] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_67_0");
			global.asc_def[104] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_68_0");
			global.asc_def[105] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_69_0");
			global.asc_def[106] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_70_0");
			global.asc_def[107] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_71_0");
			global.asc_def[109] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_72_0");
			global.asc_def[110] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_73_0");
			global.asc_def[111] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_74_0");
			global.asc_def[112] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_75_0");
			global.asc_def[113] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_76_0");
			global.asc_def[114] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_77_0");
			global.asc_def[115] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_78_0");
			global.asc_def[116] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_79_0");
			global.asc_def[117] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_80_0");
			global.asc_def[118] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_81_0");
			global.asc_def[119] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_82_0");
			global.asc_def[120] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_83_0");
			global.asc_def[121] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_84_0");
			global.asc_def[122] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_85_0");
			global.asc_def[123] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_86_0");
			global.asc_def[144] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_87_0");
			global.asc_def[145] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_88_0");
			global.asc_def[160] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_89_0");
			global.asc_def[161] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_90_0");
			global.asc_def[162] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_91_0");
			global.asc_def[163] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_92_0");
			global.asc_def[164] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_93_0");
			global.asc_def[165] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_94_0");
			global.asc_def[186] = ";";
			global.asc_def[187] = "=";
			global.asc_def[188] = ",";
			global.asc_def[189] = "-";
			global.asc_def[190] = ".";
			global.asc_def[191] = "?";
			global.asc_def[192] = "~";
			global.asc_def[219] = "[";
			global.asc_def[220] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_103_0");
			global.asc_def[221] = "]";
			global.asc_def[222] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_105_0");
			global.asc_def[16] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_107_0");
			global.asc_def[17] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_108_0");
			global.asc_def[18] = scr_84_get_lang_string("scr_ascii_input_names_slash_scr_ascii_input_names_gml_109_0");
		}

		public AudioSource mus_loop_ext(string argument0, double argument1, double argument2)
		{
			var loop = mus_loop(argument0);
			snd_volume(loop, (argument1 * global.flag[16]), 0);
			snd_pitch(loop, argument2);
			return loop;
		}

		public AudioSource mus_loop(string argument0)
		{
			_xsndinstance = audio_play_sound(argument0, 90, true);
			snd_volume(_xsndinstance, (1 * global.flag[16]), 0);
			return _xsndinstance;
		}

		public string snd_init(string argument0) => Path.GetFileNameWithoutExtension(argument0);

		public void _global_object_depths()
		{
			global.__objectDepths[0] = -600;
			global.__objectDepths[1] = -600;
			global.__objectDepths[2] = 0;
			global.__objectDepths[3] = 10;
			global.__objectDepths[4] = -5;
			global.__objectDepths[5] = 2;
			global.__objectDepths[6] = 0;
			global.__objectDepths[7] = 600000;
			global.__objectDepths[8] = 500000;
			global.__objectDepths[9] = 900000;
			global.__objectDepths[10] = 0;
			global.__objectDepths[11] = 0;
			global.__objectDepths[12] = 0;
			global.__objectDepths[13] = -10;
			global.__objectDepths[14] = 900000;
			global.__objectDepths[15] = 2000;
			global.__objectDepths[16] = 0;
			global.__objectDepths[17] = 100000;
			global.__objectDepths[18] = 990000;
			global.__objectDepths[19] = 800000;
			global.__objectDepths[20] = 0;
			global.__objectDepths[21] = 0;
			global.__objectDepths[22] = 800000;
			global.__objectDepths[23] = 950000;
			global.__objectDepths[24] = 0;
			global.__objectDepths[25] = 0;
			global.__objectDepths[26] = 1100000;
			global.__objectDepths[27] = 10000;
			global.__objectDepths[28] = 100000;
			global.__objectDepths[29] = 0;
			global.__objectDepths[30] = 10000;
			global.__objectDepths[31] = 900000;
			global.__objectDepths[32] = 800000;
			global.__objectDepths[33] = 960000;
			global.__objectDepths[34] = 0;
			global.__objectDepths[35] = 1000;
			global.__objectDepths[36] = 0;
			global.__objectDepths[37] = -1000;
			global.__objectDepths[38] = 0;
			global.__objectDepths[39] = -10;
			global.__objectDepths[40] = -20;
			global.__objectDepths[41] = 50000;
			global.__objectDepths[42] = 50000;
			global.__objectDepths[43] = 50000;
			global.__objectDepths[44] = 50000;
			global.__objectDepths[45] = 500000;
			global.__objectDepths[46] = 700000;
			global.__objectDepths[47] = 700000;
			global.__objectDepths[48] = 200000;
			global.__objectDepths[49] = 100;
			global.__objectDepths[50] = 600000;
			global.__objectDepths[51] = 900000;
			global.__objectDepths[52] = 0;
			global.__objectDepths[53] = 500000;
			global.__objectDepths[54] = 0;
			global.__objectDepths[55] = 800000;
			global.__objectDepths[56] = 950000;
			global.__objectDepths[57] = 50000;
			global.__objectDepths[58] = 50000;
			global.__objectDepths[59] = 0;
			global.__objectDepths[60] = 0;
			global.__objectDepths[61] = 0;
			global.__objectDepths[62] = 0;
			global.__objectDepths[63] = 900000;
			global.__objectDepths[64] = 0;
			global.__objectDepths[65] = 0;
			global.__objectDepths[66] = 0;
			global.__objectDepths[67] = 0;
			global.__objectDepths[68] = 100000;
			global.__objectDepths[69] = 900000;
			global.__objectDepths[70] = 0;
			global.__objectDepths[71] = 0;
			global.__objectDepths[72] = 0;
			global.__objectDepths[73] = 0;
			global.__objectDepths[74] = 0;
			global.__objectDepths[75] = -10;
			global.__objectDepths[76] = 0;
			global.__objectDepths[77] = 0;
			global.__objectDepths[78] = 0;
			global.__objectDepths[79] = 0;
			global.__objectDepths[80] = 0;
			global.__objectDepths[81] = 0;
			global.__objectDepths[82] = 0;
			global.__objectDepths[83] = -10;
			global.__objectDepths[84] = 0;
			global.__objectDepths[85] = 0;
			global.__objectDepths[86] = 0;
			global.__objectDepths[87] = 0;
			global.__objectDepths[88] = 0;
			global.__objectDepths[89] = 0;
			global.__objectDepths[90] = 0;
			global.__objectDepths[91] = 0;
			global.__objectDepths[92] = 0;
			global.__objectDepths[93] = 0;
			global.__objectDepths[94] = 0;
			global.__objectDepths[95] = 0;
			global.__objectDepths[96] = 0;
			global.__objectDepths[97] = 0;
			global.__objectDepths[98] = 0;
			global.__objectDepths[99] = 0;
			global.__objectDepths[100] = 0;
			global.__objectDepths[101] = 0;
			global.__objectDepths[102] = 0;
			global.__objectDepths[103] = 0;
			global.__objectDepths[104] = 0;
			global.__objectDepths[105] = 0;
			global.__objectDepths[106] = 0;
			global.__objectDepths[107] = 0;
			global.__objectDepths[108] = 0;
			global.__objectDepths[109] = 0;
			global.__objectDepths[110] = 0;
			global.__objectDepths[111] = 0;
			global.__objectDepths[112] = 0;
			global.__objectDepths[113] = 0;
			global.__objectDepths[114] = 0;
			global.__objectDepths[115] = 0;
			global.__objectDepths[116] = 0;
			global.__objectDepths[117] = 0;
			global.__objectDepths[118] = 0;
			global.__objectDepths[119] = 0;
			global.__objectDepths[120] = 0;
			global.__objectDepths[121] = 0;
			global.__objectDepths[122] = 0;
			global.__objectDepths[123] = 0;
			global.__objectDepths[124] = 0;
			global.__objectDepths[125] = 0;
			global.__objectDepths[126] = 950000;
			global.__objectDepths[127] = 1100000;
			global.__objectDepths[128] = -200;
			global.__objectDepths[129] = -40000;
			global.__objectDepths[130] = -40;
			global.__objectDepths[131] = 600000;
			global.__objectDepths[132] = -20;
			global.__objectDepths[133] = 0;
			global.__objectDepths[134] = 2000000;
			global.__objectDepths[135] = 0;
			global.__objectDepths[136] = 0;
			global.__objectDepths[137] = -99999;
			global.__objectDepths[138] = -99999;
			global.__objectDepths[139] = -99999;
			global.__objectDepths[140] = 0;
			global.__objectDepths[141] = 800000;
			global.__objectDepths[142] = 800000;
			global.__objectDepths[143] = 500000;
			global.__objectDepths[144] = 750000;
			global.__objectDepths[145] = 800000;
			global.__objectDepths[146] = 990000;
			global.__objectDepths[147] = 400000;
			global.__objectDepths[148] = 10000;
			global.__objectDepths[149] = 200;
			global.__objectDepths[150] = 0;
			global.__objectDepths[151] = 100;
			global.__objectDepths[152] = 100;
			global.__objectDepths[153] = 0;
			global.__objectDepths[154] = 100;
			global.__objectDepths[155] = 0;
			global.__objectDepths[156] = 950000;
			global.__objectDepths[157] = 0;
			global.__objectDepths[158] = 1100000;
			global.__objectDepths[159] = 0;
			global.__objectDepths[160] = 10;
			global.__objectDepths[161] = 0;
			global.__objectDepths[162] = 0;
			global.__objectDepths[163] = 0;
			global.__objectDepths[164] = 0;
			global.__objectDepths[165] = 0;
			global.__objectDepths[166] = 0;
			global.__objectDepths[167] = -5;
			global.__objectDepths[168] = -5;
			global.__objectDepths[169] = 950000;
			global.__objectDepths[170] = 1000;
			global.__objectDepths[171] = 1000;
			global.__objectDepths[172] = 100000;
			global.__objectDepths[173] = 1000;
			global.__objectDepths[174] = 0;
			global.__objectDepths[175] = 800000;
			global.__objectDepths[176] = 300000;
			global.__objectDepths[177] = 300000;
			global.__objectDepths[178] = 200000;
			global.__objectDepths[179] = 10;
			global.__objectDepths[180] = 10;
			global.__objectDepths[181] = 100000;
			global.__objectDepths[182] = 0;
			global.__objectDepths[183] = 0;
			global.__objectDepths[184] = 0;
			global.__objectDepths[185] = 1;
			global.__objectDepths[186] = -100;
			global.__objectDepths[187] = 5;
			global.__objectDepths[188] = 0;
			global.__objectDepths[189] = 0;
			global.__objectDepths[190] = 0;
			global.__objectDepths[191] = 0;
			global.__objectDepths[192] = 0;
			global.__objectDepths[193] = 0;
			global.__objectDepths[194] = 0;
			global.__objectDepths[195] = 200;
			global.__objectDepths[196] = 2;
			global.__objectDepths[197] = 0;
			global.__objectDepths[198] = -10;
			global.__objectDepths[199] = 0;
			global.__objectDepths[200] = 0;
			global.__objectDepths[201] = -20;
			global.__objectDepths[202] = 100;
			global.__objectDepths[203] = 100;
			global.__objectDepths[204] = 100;
			global.__objectDepths[205] = 100;
			global.__objectDepths[206] = 0;
			global.__objectDepths[207] = 10;
			global.__objectDepths[208] = 90;
			global.__objectDepths[209] = 0;
			global.__objectDepths[210] = -10;
			global.__objectDepths[211] = 0;
			global.__objectDepths[212] = 1;
			global.__objectDepths[213] = 3;
			global.__objectDepths[214] = 0;
			global.__objectDepths[215] = 800000;
			global.__objectDepths[216] = 0;
			global.__objectDepths[217] = 500000;
			global.__objectDepths[218] = 600000;
			global.__objectDepths[219] = 0;
			global.__objectDepths[220] = 900000;
			global.__objectDepths[221] = 900000;
			global.__objectDepths[222] = 600000;
			global.__objectDepths[223] = 600000;
			global.__objectDepths[224] = 800000;
			global.__objectDepths[225] = 0;
			global.__objectDepths[226] = 0;
			global.__objectDepths[227] = -20;
			global.__objectDepths[228] = -10;
			global.__objectDepths[229] = -20;
			global.__objectDepths[230] = -1;
			global.__objectDepths[231] = 0;
			global.__objectDepths[232] = 0;
			global.__objectDepths[233] = 0;
			global.__objectDepths[234] = 90;
			global.__objectDepths[235] = 0;
			global.__objectDepths[236] = 90;
			global.__objectDepths[237] = 90;
			global.__objectDepths[238] = 90;
			global.__objectDepths[239] = 10;
			global.__objectDepths[240] = 6;
			global.__objectDepths[241] = 15;
			global.__objectDepths[242] = 0;
			global.__objectDepths[243] = 10;
			global.__objectDepths[244] = 0;
			global.__objectDepths[245] = 4;
			global.__objectDepths[246] = 5;
			global.__objectDepths[247] = 0;
			global.__objectDepths[248] = 10;
			global.__objectDepths[249] = 0;
			global.__objectDepths[250] = 90;
			global.__objectDepths[251] = 0;
			global.__objectDepths[252] = 90;
			global.__objectDepths[253] = 90;
			global.__objectDepths[254] = 0;
			global.__objectDepths[255] = 1;
			global.__objectDepths[256] = 0;
			global.__objectDepths[257] = 4;
			global.__objectDepths[258] = 1;
			global.__objectDepths[259] = 100000;
			global.__objectDepths[260] = 90;
			global.__objectDepths[261] = 0;
			global.__objectDepths[262] = 0;
			global.__objectDepths[263] = 15;
			global.__objectDepths[264] = 0;
			global.__objectDepths[265] = -5;
			global.__objectDepths[266] = 0;
			global.__objectDepths[267] = 0;
			global.__objectDepths[268] = 5;
			global.__objectDepths[269] = 0;
			global.__objectDepths[270] = 800000;
			global.__objectDepths[271] = 50;
			global.__objectDepths[272] = -20;
			global.__objectDepths[273] = 90;
			global.__objectDepths[274] = 0;
			global.__objectDepths[275] = 90;
			global.__objectDepths[276] = -20;
			global.__objectDepths[277] = 2;
			global.__objectDepths[278] = 90;
			global.__objectDepths[279] = 90;
			global.__objectDepths[280] = 90;
			global.__objectDepths[281] = 95;
			global.__objectDepths[282] = 90;
			global.__objectDepths[283] = 90;
			global.__objectDepths[284] = 10;
			global.__objectDepths[285] = 90;
			global.__objectDepths[286] = 90;
			global.__objectDepths[287] = 90;
			global.__objectDepths[288] = 90;
			global.__objectDepths[289] = 90;
			global.__objectDepths[290] = 0;
			global.__objectDepths[291] = 0;
			global.__objectDepths[292] = 0;
			global.__objectDepths[293] = 0;
			global.__objectDepths[294] = 0;
			global.__objectDepths[295] = 0;
			global.__objectDepths[296] = -10;
			global.__objectDepths[297] = 0;
			global.__objectDepths[298] = 0;
			global.__objectDepths[299] = 10000;
			global.__objectDepths[300] = 0;
			global.__objectDepths[301] = 0;
			global.__objectDepths[302] = 0;
			global.__objectDepths[303] = 5;
			global.__objectDepths[304] = 0;
			global.__objectDepths[305] = 1;
			global.__objectDepths[306] = 50;
			global.__objectDepths[307] = 50;
			global.__objectDepths[308] = 0;
			global.__objectDepths[309] = 0;
			global.__objectDepths[310] = 10;
			global.__objectDepths[311] = 10;
			global.__objectDepths[312] = 1;
			global.__objectDepths[313] = 0;
			global.__objectDepths[314] = 4;
			global.__objectDepths[315] = 0;
			global.__objectDepths[316] = 0;
			global.__objectDepths[317] = 0;
			global.__objectDepths[318] = 1000;
			global.__objectDepths[319] = 0;
			global.__objectDepths[320] = -9999;
			global.__objectDepths[321] = 0;
			global.__objectDepths[322] = 50;
			global.__objectDepths[323] = -100;
			global.__objectDepths[324] = 0;
			global.__objectDepths[325] = 10;
			global.__objectDepths[326] = -20;
			global.__objectDepths[327] = 0;
			global.__objectDepths[328] = 0;
			global.__objectDepths[329] = 60000;
			global.__objectDepths[330] = 60000;
			global.__objectDepths[331] = 100;
			global.__objectDepths[332] = 60000;
			global.__objectDepths[333] = 0;
			global.__objectDepths[334] = 100;
			global.__objectDepths[335] = 100;
			global.__objectDepths[336] = 100;
			global.__objectDepths[337] = 100;
			global.__objectDepths[338] = 0;
			global.__objectDepths[339] = 0;
			global.__objectDepths[340] = 0;
			global.__objectNames[0] = "obj_choicer_old";
			global.__objectNames[1] = "obj_choicer_neo";
			global.__objectNames[2] = "obj_face";
			global.__objectNames[3] = "obj_face_parent";
			global.__objectNames[4] = "obj_smallface";
			global.__objectNames[5] = "obj_dialoguer";
			global.__objectNames[6] = "obj_writer";
			global.__objectNames[7] = "obj_fallpaper";
			global.__objectNames[8] = "obj_insideclosetcutscene";
			global.__objectNames[9] = "obj_darkdoor";
			global.__objectNames[10] = "obj_classscene";
			global.__objectNames[11] = "obj_schoollobbycutscene";
			global.__objectNames[12] = "obj_schooldesk";
			global.__objectNames[13] = "obj_tem_school";
			global.__objectNames[14] = "obj_torielclass_event";
			global.__objectNames[15] = "obj_unusedclassevent";
			global.__objectNames[16] = "obj_alphysdesk";
			global.__objectNames[17] = "obj_rudy";
			global.__objectNames[18] = "obj_church_event";
			global.__objectNames[19] = "obj_town_shelter_event";
			global.__objectNames[20] = "obj_town_event";
			global.__objectNames[21] = "obj_alphysalley_event";
			global.__objectNames[22] = "obj_flowershop_event";
			global.__objectNames[23] = "obj_onionbody";
			global.__objectNames[24] = "obj_onion_event";
			global.__objectNames[25] = "obj_carcutscene";
			global.__objectNames[26] = "obj_hallway_mirror";
			global.__objectNames[27] = "obj_krisroom";
			global.__objectNames[28] = "obj_rurus_checker_event";
			global.__objectNames[29] = "obj_cc_event";
			global.__objectNames[30] = "obj_jokerbattleevent";
			global.__objectNames[31] = "obj_elevatorcontroller";
			global.__objectNames[32] = "obj_lancerbakesale_event";
			global.__objectNames[33] = "obj_cloverpuzzle_event";
			global.__objectNames[34] = "obj_prisonevent";
			global.__objectNames[35] = "obj_lancerbattle2_event";
			global.__objectNames[36] = "obj_lancerchase2";
			global.__objectNames[37] = "obj_castlefront_event";
			global.__objectNames[38] = "obj_susieandlancer_event";
			global.__objectNames[39] = "obj_thrashcontroller";
			global.__objectNames[40] = "obj_thrashmachine";
			global.__objectNames[41] = "obj_thrashmaker_event";
			global.__objectNames[42] = "obj_suitspuzzle_event";
			global.__objectNames[43] = "obj_susiebadguy_event";
			global.__objectNames[44] = "obj_thrashafter_event";
			global.__objectNames[45] = "obj_thrashafter_follow";
			global.__objectNames[46] = "obj_rurus_appear";
			global.__objectNames[47] = "obj_rurus_event";
			global.__objectNames[48] = "obj_lancerscare2";
			global.__objectNames[49] = "obj_scarelancerevent";
			global.__objectNames[50] = "obj_getsusieevent";
			global.__objectNames[51] = "obj_boxpuzzle_event";
			global.__objectNames[52] = "obj_hathyfightevent";
			global.__objectNames[53] = "obj_darkdoorevent";
			global.__objectNames[54] = "obj_tutorialbattleevent";
			global.__objectNames[55] = "obj_ralsei_runevent";
			global.__objectNames[56] = "obj_lancerguide";
			global.__objectNames[57] = "obj_thrashzone_event";
			global.__objectNames[58] = "obj_insultzone_event";
			global.__objectNames[59] = "obj_preforest_event";
			global.__objectNames[60] = "obj_candytree_event";
			global.__objectNames[61] = "obj_cloverhole";
			global.__objectNames[62] = "obj_npc_hammerguy";
			global.__objectNames[63] = "obj_shortcut_door";
			global.__objectNames[64] = "obj_npc_puzzlemaster1";
			global.__objectNames[65] = "obj_npc_puzzlemaster2";
			global.__objectNames[66] = "obj_cakesmoke";
			global.__objectNames[67] = "obj_npc_susiedark";
			global.__objectNames[68] = "obj_darkcastle_event";
			global.__objectNames[69] = "obj_darklanding";
			global.__objectNames[70] = "obj_wobblything_slide";
			global.__objectNames[71] = "obj_lancerslideevent";
			global.__objectNames[72] = "obj_lancerchaseevent";
			global.__objectNames[73] = "obj_darkslide";
			global.__objectNames[74] = "obj_darkwakeevent";
			global.__objectNames[75] = "obj_savepoint";
			global.__objectNames[76] = "obj_readable";
			global.__objectNames[77] = "obj_animation";
			global.__objectNames[78] = "obj_marker";
			global.__objectNames[79] = "obj_marker2";
			global.__objectNames[80] = "obj_readable_room1";
			global.__objectNames[81] = "obj_interactablesolid";
			global.__objectNames[82] = "obj_npc_toriel";
			global.__objectNames[83] = "obj_npc_facing";
			global.__objectNames[84] = "obj_npc_room";
			global.__objectNames[85] = "obj_npc_room_animated";
			global.__objectNames[86] = "obj_treasure_room";
			global.__objectNames[87] = "obj_npc_sign";
			global.__objectNames[88] = "obj_event_room";
			global.__objectNames[89] = "obj_interactable";
			global.__objectNames[90] = "obj_doorA";
			global.__objectNames[91] = "obj_doorA_musfade";
			global.__objectNames[92] = "obj_doorB_musfade";
			global.__objectNames[93] = "obj_doorB";
			global.__objectNames[94] = "obj_doorC";
			global.__objectNames[95] = "obj_doorC_musfade";
			global.__objectNames[96] = "obj_doorD";
			global.__objectNames[97] = "obj_doorD_musfade";
			global.__objectNames[98] = "obj_doorE";
			global.__objectNames[99] = "obj_doorF";
			global.__objectNames[100] = "obj_doorX";
			global.__objectNames[101] = "obj_doorX_musfade";
			global.__objectNames[102] = "obj_doorw_musfade";
			global.__objectNames[103] = "obj_doorparent";
			global.__objectNames[104] = "obj_markerA";
			global.__objectNames[105] = "obj_markerB";
			global.__objectNames[106] = "obj_markerC";
			global.__objectNames[107] = "obj_markerD";
			global.__objectNames[108] = "obj_markerE";
			global.__objectNames[109] = "obj_markerF";
			global.__objectNames[110] = "obj_markerr";
			global.__objectNames[111] = "obj_markers";
			global.__objectNames[112] = "obj_markert";
			global.__objectNames[113] = "obj_markeru";
			global.__objectNames[114] = "obj_markerv";
			global.__objectNames[115] = "obj_markerw";
			global.__objectNames[116] = "obj_markerX";
			global.__objectNames[117] = "obj_doorW";
			global.__objectNames[118] = "obj_musicer";
			global.__objectNames[119] = "obj_musicer_darkcliff";
			global.__objectNames[120] = "obj_musicer_town";
			global.__objectNames[121] = "obj_musicer_field";
			global.__objectNames[122] = "obj_musicer_forest";
			global.__objectNames[123] = "obj_musicer_quietforest";
			global.__objectNames[124] = "obj_musicer_man";
			global.__objectNames[125] = "obj_musicer_darkcastle";
			global.__objectNames[126] = "obj_musicer_bird";
			global.__objectNames[127] = "obj_wave_fx";
			global.__objectNames[128] = "obj_astream";
			global.__objectNames[129] = "obj_gameover_init";
			global.__objectNames[130] = "obj_ralseibook";
			global.__objectNames[131] = "obj_jokerbg_triangle_real";
			global.__objectNames[132] = "obj_fieldmuslogo";
			global.__objectNames[133] = "obj_backgrounder_standard";
			global.__objectNames[134] = "obj_backgrounder_sprite";
			global.__objectNames[135] = "obj_backgrounderparent";
			global.__objectNames[136] = "obj_panner";
			global.__objectNames[137] = "obj_fadeout";
			global.__objectNames[138] = "obj_fadein";
			global.__objectNames[139] = "obj_persistentfadein";
			global.__objectNames[140] = "obj_shake";
			global.__objectNames[141] = "obj_castle_torch";
			global.__objectNames[142] = "obj_castle_house";
			global.__objectNames[143] = "obj_bluhpainting";
			global.__objectNames[144] = "obj_lightfairy";
			global.__objectNames[145] = "obj_blocktree_bg";
			global.__objectNames[146] = "obj_purplegrass";
			global.__objectNames[147] = "obj_slidedust";
			global.__objectNames[148] = "obj_darklancer";
			global.__objectNames[149] = "obj_dustball";
			global.__objectNames[150] = "obj_dustball_pilebreak";
			global.__objectNames[151] = "obj_dustpile";
			global.__objectNames[152] = "obj_dustpile_susie";
			global.__objectNames[153] = "obj_wobblything";
			global.__objectNames[154] = "obj_wobblything_evil";
			global.__objectNames[155] = "obj_anim";
			global.__objectNames[156] = "obj_kingcutscene";
			global.__objectNames[157] = "obj_shakeobj";
			global.__objectNames[158] = "obj_darkfountain";
			global.__objectNames[159] = "obj_darkfountain_event";
			global.__objectNames[160] = "obj_fountainkris";
			global.__objectNames[161] = "obj_chaseenemy";
			global.__objectNames[162] = "obj_excblcon";
			global.__objectNames[163] = "obj_testoverworldenemy";
			global.__objectNames[164] = "obj_encounterbasic";
			global.__objectNames[165] = "obj_caterpillarchara";
			global.__objectNames[166] = "obj_darkcontroller";
			global.__objectNames[167] = "obj_healwriter";
			global.__objectNames[168] = "obj_menuwriter";
			global.__objectNames[169] = "obj_battlealphaer";
			global.__objectNames[170] = "obj_starwalker_battle";
			global.__objectNames[171] = "obj_starwalker_overworld";
			global.__objectNames[172] = "obj_starwalker_offswitch";
			global.__objectNames[173] = "obj_overworldheart";
			global.__objectNames[174] = "obj_scissordancer";
			global.__objectNames[175] = "obj_dancer_gen";
			global.__objectNames[176] = "obj_darkponman_ow";
			global.__objectNames[177] = "obj_ob_gen";
			global.__objectNames[178] = "obj_ob_checkertile";
			global.__objectNames[179] = "obj_overworld_spade_homing";
			global.__objectNames[180] = "obj_overworld_spade";
			global.__objectNames[181] = "obj_overworld_spademaker";
			global.__objectNames[182] = "obj_overworldbulletparent";
			global.__objectNames[183] = "obj_afterimage";
			global.__objectNames[184] = "obj_afterimage_grow";
			global.__objectNames[185] = "obj_attackpress";
			global.__objectNames[186] = "obj_basicattack";
			global.__objectNames[187] = "obj_battlecontroller";
			global.__objectNames[188] = "obj_battlesolid";
			global.__objectNames[189] = "obj_bulletgenparent";
			global.__objectNames[190] = "obj_bulletparent";
			global.__objectNames[191] = "obj_burstbolt";
			global.__objectNames[192] = "obj_chasebullet";
			global.__objectNames[193] = "obj_collidebullet";
			global.__objectNames[194] = "obj_regularbullet_permanent";
			global.__objectNames[195] = "obj_darkener";
			global.__objectNames[196] = "obj_grazebox";
			global.__objectNames[197] = "obj_healeffect";
			global.__objectNames[198] = "obj_healsparkle";
			global.__objectNames[199] = "obj_heartburst";
			global.__objectNames[200] = "obj_heartmarker";
			global.__objectNames[201] = "obj_lancerbike";
			global.__objectNames[202] = "obj_herokris";
			global.__objectNames[203] = "obj_herosusie";
			global.__objectNames[204] = "obj_heroralsei";
			global.__objectNames[205] = "obj_heroparent";
			global.__objectNames[206] = "obj_initializer";
			global.__objectNames[207] = "obj_krisplace";
			global.__objectNames[208] = "obj_monster1";
			global.__objectNames[209] = "obj_moveheart";
			global.__objectNames[210] = "obj_regularbullet";
			global.__objectNames[211] = "obj_returnheart";
			global.__objectNames[212] = "obj_tensionbar";
			global.__objectNames[213] = "obj_whiteedge";
			global.__objectNames[214] = "obj_forest_area5_puzzle";
			global.__objectNames[215] = "obj_forestmaze_controller";
			global.__objectNames[216] = "obj_tempblock_room";
			global.__objectNames[217] = "obj_suitspuzz";
			global.__objectNames[218] = "obj_suitspuzz_button";
			global.__objectNames[219] = "obj_pushableblock";
			global.__objectNames[220] = "obj_glowtile";
			global.__objectNames[221] = "obj_blocktile";
			global.__objectNames[222] = "obj_glowtilepuzz";
			global.__objectNames[223] = "obj_darkeyepuzzle_switch";
			global.__objectNames[224] = "obj_darkeyepuzzle";
			global.__objectNames[225] = "obj_dicebul";
			global.__objectNames[226] = "obj_heartblcon";
			global.__objectNames[227] = "obj_clubsbullet";
			global.__objectNames[228] = "obj_clubsbullet_dark";
			global.__objectNames[229] = "obj_dbullet_maker";
			global.__objectNames[230] = "obj_dbullet_vert";
			global.__objectNames[231] = "obj_heartshaper";
			global.__objectNames[232] = "obj_spinheart";
			global.__objectNames[233] = "obj_dbulletcontroller";
			global.__objectNames[234] = "obj_monsterparent";
			global.__objectNames[235] = "obj_ralseibullet";
			global.__objectNames[236] = "obj_dummyenemy";
			global.__objectNames[237] = "obj_ralseienemy";
			global.__objectNames[238] = "obj_placeholderenemy";
			global.__objectNames[239] = "obj_chain_of_hell";
			global.__objectNames[240] = "obj_chainking";
			global.__objectNames[241] = "obj_chainpiece";
			global.__objectNames[242] = "obj_fadechain";
			global.__objectNames[243] = "obj_finalchain";
			global.__objectNames[244] = "obj_king_body";
			global.__objectNames[245] = "obj_growtangle_bouncer";
			global.__objectNames[246] = "obj_nonsolid_growtangle";
			global.__objectNames[247] = "obj_skychain";
			global.__objectNames[248] = "obj_wavechain";
			global.__objectNames[249] = "obj_dknight_slasher";
			global.__objectNames[250] = "obj_rudinnranger";
			global.__objectNames[251] = "obj_jigsawbullet";
			global.__objectNames[252] = "obj_jigsawryenemy";
			global.__objectNames[253] = "obj_checkers_enemy";
			global.__objectNames[254] = "obj_checker_animtest";
			global.__objectNames[255] = "obj_ralseithrown";
			global.__objectNames[256] = "obj_throwralsei";
			global.__objectNames[257] = "obj_throwtarget";
			global.__objectNames[258] = "obj_checkers_leap";
			global.__objectNames[259] = "obj_ponman_appear";
			global.__objectNames[260] = "obj_ponman_enemy";
			global.__objectNames[261] = "obj_heartbomb_blast";
			global.__objectNames[262] = "obj_suitbomb";
			global.__objectNames[263] = "obj_joker_body";
			global.__objectNames[264] = "obj_centerscythe";
			global.__objectNames[265] = "obj_laserscythe";
			global.__objectNames[266] = "obj_bigscythe";
			global.__objectNames[267] = "obj_carouselbullet";
			global.__objectNames[268] = "obj_joker_teleport";
			global.__objectNames[269] = "obj_spadering";
			global.__objectNames[270] = "obj_rabbick_bush";
			global.__objectNames[271] = "obj_carrotthrower";
			global.__objectNames[272] = "obj_rabbitbullet";
			global.__objectNames[273] = "obj_rabbick_enemy";
			global.__objectNames[274] = "obj_blockbullet_fall";
			global.__objectNames[275] = "obj_bloxer_enemy";
			global.__objectNames[276] = "obj_lancerbike_neo";
			global.__objectNames[277] = "obj_axebullet";
			global.__objectNames[278] = "obj_lancerboss";
			global.__objectNames[279] = "obj_lancerboss2";
			global.__objectNames[280] = "obj_diamondenemy";
			global.__objectNames[281] = "obj_susieenemy";
			global.__objectNames[282] = "obj_lancerboss3";
			global.__objectNames[283] = "obj_king_boss";
			global.__objectNames[284] = "obj_joker";
			global.__objectNames[285] = "obj_clubsenemy";
			global.__objectNames[286] = "obj_clubsenemy_old";
			global.__objectNames[287] = "obj_heartenemy";
			global.__objectNames[288] = "obj_headhathy";
			global.__objectNames[289] = "obj_smallcheckers_enemy";
			global.__objectNames[290] = "obj_pacifyspell";
			global.__objectNames[291] = "obj_deathanim";
			global.__objectNames[292] = "obj_defeatanim";
			global.__objectNames[293] = "obj_healanim";
			global.__objectNames[294] = "obj_oflash";
			global.__objectNames[295] = "obj_rudebuster_anim";
			global.__objectNames[296] = "obj_rudebuster_bolt";
			global.__objectNames[297] = "obj_hypnofx";
			global.__objectNames[298] = "obj_spareanim";
			global.__objectNames[299] = "obj_battleback";
			global.__objectNames[300] = "obj_spellphase";
			global.__objectNames[301] = "obj_battleblcon";
			global.__objectNames[302] = "obj_endbattle";
			global.__objectNames[303] = "obj_growtangle";
			global.__objectNames[304] = "obj_dmgwriter";
			global.__objectNames[305] = "obj_heart";
			global.__objectNames[306] = "obj_shop1";
			global.__objectNames[307] = "obj_shop2";
			global.__objectNames[308] = "DEVICE_APPEARANCE";
			global.__objectNames[309] = "DEVICE_CHOICE";
			global.__objectNames[310] = "DEVICE_CONTACT";
			global.__objectNames[311] = "DEVICE_FAILURE";
			global.__objectNames[312] = "DEVICE_GONERMAKER";
			global.__objectNames[313] = "DEVICE_MENU";
			global.__objectNames[314] = "DEVICE_OBACK_4";
			global.__objectNames[315] = "PROCESS_LOGO";
			global.__objectNames[316] = "PROCESS_DOG";
			global.__objectNames[317] = "obj_credits";
			global.__objectNames[318] = "obj_dkris_event";
			global.__objectNames[319] = "obj_darkphone_event";
			global.__objectNames[320] = "obj_time";
			global.__objectNames[321] = "obj_move_to_point";
			global.__objectNames[322] = "obj_legend";
			global.__objectNames[323] = "obj_savemenu";
			global.__objectNames[324] = "obj_initializer2";
			global.__objectNames[325] = "obj_overworldc";
			global.__objectNames[326] = "obj_mainchara";
			global.__objectNames[327] = "obj_sdl";
			global.__objectNames[328] = "obj_sdr";
			global.__objectNames[329] = "obj_sul";
			global.__objectNames[330] = "obj_sur";
			global.__objectNames[331] = "obj_soliddark";
			global.__objectNames[332] = "obj_sur_dark";
			global.__objectNames[333] = "obj_sdl_dark";
			global.__objectNames[334] = "obj_solidenemy";
			global.__objectNames[335] = "obj_solidenemy_2";
			global.__objectNames[336] = "obj_solidblock";
			global.__objectNames[337] = "obj_solidlong";
			global.__objectNames[338] = "obj_solidcircle";
			global.__objectNames[339] = "obj_diag";
			global.__objectNames[340] = "obj_diamond";
			var len = global.__objectDepths.Length;
			for (var i = 0; i < len; i++)
			{
				global.__objectID2Depth[i] = global.__objectDepths[i];
			}
		}

		public bool button1_p()
		{
			if (global.input_pressed[4])
				return true;
			if (global.input_pressed[7])
				return true;
			return false;
		}

		public bool button2_p()
		{
			if (global.input_pressed[5])
				return true;
			if (global.input_pressed[8])
				return true;
			return false;
		}

		public bool button2_h()
		{
			if (global.input_held[5])
				return true;
			if (global.input_held[8])
				return true;
			return false;
		}

		public bool button3_p()
		{
			if (global.input_pressed[6])
				return true;
			if (global.input_pressed[9])
				return true;
			return false;
		}

		public bool button3_h()
		{
			if (global.input_held[6])
				return true;
			if (global.input_held[9])
				return true;
			return false;
		}

		public void scr_textsound()
		{
			playtextsound = true;
			if (button2_h())
				playtextsound = false;
			if (skippable == false)
				playtextsound = true;
			if (playtextsound == true)
			{
				if (rate <= 2)
					getchar = string_char_at(mystring, pos);
				else
					getchar = string_char_at(mystring, (pos - 1));
				play = true;
				playcheck = false;
				if (getchar == "&")
				{
					if (rate < 3)
					{
						playcheck = true;
						getchar = string_char_at(mystring, (pos + 1));
					}
					else
						play = false;
				}
				if (getchar == " ")
					play = false;
				if (getchar == "^")
					play = false;
				if (getchar == "!")
					play = false;
				if (getchar == ".")
					play = false;
				if (getchar == "?")
					play = false;
				if (getchar == ",")
					play = false;
				if (getchar == ":")
					play = false;
				if (getchar == "/")
					play = false;
				if (getchar == "\\")
					play = false;
				if (getchar == "|")
					play = false;
				if (getchar == "*")
					play = false;
				if (play == true)
				{
					snd_play(textsound);
					foreach (obj_face_parent item in with<obj_face_parent>())
					{
						item.mouthmove = true;
					}
				}
			}
		}

		public string scr_84_get_font(string argument0)
		{
			return $"fnt_{argument0}";
		}

		public void scr_texttype()
		{
			textscale = 1;
			var extra_ja_vspace = 0;
			//if (!variable_global_exists("chemg_typer"))
			//				global.chemg_typer = -1
			if (global.chemg_typer != global.typer)
			{
				global.chemg_typer = global.typer;
				//show_debug_message(("scr_texttype: global.typer = " + gm_string(global.typer)));
			}
			var font_set = true;
			switch (global.typer)
			{
				case 2:
					scr_textsetup(scr_84_get_font("main"), c_white, x, y, 33, 0, 2, "snd_nosound", 8, 18, 0);
					break;
				case 4:
					scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 1, "snd_text", 16, 28, 1);
					extra_ja_vspace = 2;
					break;
				case 5:
					scr_textsetup(scr_84_get_font("main"), c_white, x, y, 33, 0, 1, "snd_text", 8, 18, 0);
					break;
				case 6:
					scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 1, "snd_text", 16, 36, 1);
					break;
				case 7:
					scr_textsetup(scr_84_get_font("main"), c_white, x, y, 33, 0, 1, "snd_txttor", 8, 18, 0);
					break;
				case 8:
					scr_textsetup(scr_84_get_font("main"), c_white, x, y, 33, 0, 2, "snd_txttor", 8, 18, 0);
					break;
				case 10:
					scr_textsetup(scr_84_get_font("main"), c_white, x, y, 33, 0, 1, "snd_txtsus", 8, 18, 0);
					break;
				case 11:
					scr_textsetup(scr_84_get_font("main"), c_white, x, y, 33, 0, 1, "snd_txtsus", 8, 18, 0);
					break;
				case 12:
					scr_textsetup(scr_84_get_font("main"), c_white, x, y, 33, 0, 1, "snd_txtnoe", 8, 18, 0);
					break;
				case 13:
					scr_textsetup(scr_84_get_font("main"), c_white, x, y, 33, 0, 1, "snd_txtber", 8, 18, 0);
					break;
				case 20:
					scr_textsetup(scr_84_get_font("main"), c_white, x, y, 33, 0, 1, "snd_txtal", 8, 18, 0);
					break;
				case 22:
					scr_textsetup(scr_84_get_font("tinynoelle"), c_white, x, (y + 7), 33, 0, 1, "snd_txtal", 6, 18, 0);
					break;
				case 23:
					scr_textsetup(scr_84_get_font("tinynoelle"), c_white, x, (y + 7), 33, 0, 1, "snd_txtnoe", 6, 18, 0);
					break;
				case 30:
					scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 1, "snd_txtsus", 16, 36, 1);
					break;
				case 31:
					scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 1, "snd_txtral", 16, 36, 1);
					break;
				case 32:
					scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 1, "snd_txtlan", 16, 36, 1);
					break;
				case 35:
					scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 1, "snd_txtjok", 16, 36, 1);
					break;
				case 40:
					scr_textsetup(scr_84_get_font("main"), c_white, x, y, 33, 0, 2, "snd_nosound", 8, 18, 0);
					break;
				case 41:
					scr_textsetup(scr_84_get_font("main"), c_white, x, y, 33, 0, 3, "snd_nosound", 8, 18, 0);
					break;
				case 42:
					scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 2, "snd_nosound", 16, 36, 1);
					break;
				case 45:
					scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 1, "snd_txtral", 16, 28, 1);
					extra_ja_vspace = 2;
					break;
			    case 46:
				    scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 1, "snd_txtlan", 16, 28, 1);
				    extra_ja_vspace = 2;
				    break;
			    case 47:
				    scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 1, "snd_txtsus", 16, 28, 1);
				    extra_ja_vspace = 2;
				    break;
				case 50:
					scr_textsetup(scr_84_get_font("dotumche"), c_black, x, y, 33, 0, 1, "snd_text", 9, 20, 0);
					break;
				case 51:
					if (global.lang == "ja")
						scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 14, "snd_text", 16, 36, 1);
					else
						scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 10, "snd_text", 16, 36, 1);
					break;
				case 52:
					if (global.lang == "ja")
						scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 6, "snd_text", 16, 36, 1);
					else
						scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 4, "snd_text", 16, 36, 1);
					break;
				case 666:
					scr_textsetup(scr_84_get_font("main"), c_white, x, y, 33, 0, 4, "snd_nosound", 12, 20, 2);
					break;
				case 667:
					scr_textsetup(scr_84_get_font("main"), c_white, x, y, 33, 0, 2, "snd_nosound", 12, 20, 2);
					break;
				default:
					Debug.LogError($"Texttype {global.typer} not implemented!");
					scr_textsetup(scr_84_get_font("mainbig"), c_white, x, y, 33, 0, 1, "snd_text", 16, 36, 1);
					//throw new NotImplementedException(global.typer.ToString());
					break;
			}
		}

		public void scr_textsetup(string argument0, int argument1, double argument2, double argument3, int argument4, int argument5, int argument6, string argument7, int argument8, int argument9, int argument10)
		{
			myfont = argument0;
			mycolor = argument1;
			writingx = argument2;
			writingy = argument3;
			charline = argument4;
			shake = argument5;
			rate = argument6;
			textsound = argument7;
			hspace = argument8;
			vspace = argument9;
			special = argument10;
			colorchange = true;
			xcolor = mycolor;
		}

		public void scr_asterskip()
		{
			if (aster == 1 && autoaster == true)
			{
				length += 2;
				mystring = string_insert(scr_84_get_lang_string("scr_asterskip_slash_scr_asterskip_gml_4_0"), mystring, i);
			}
			if (aster == 2)
				aster = 1;
		}

		public void scr_nextmsg()
		{
			msgno += 1;
			lineno = 0;
			aster = 0;
			halt = 0;
			pos = 1;
			alarm[0] = 1;
			autoaster = true;
			mystring = nstring[msgno];
			formatted = false;
			wxskip = 0;
			sound_played = false;
			if (rate < 3)
			{
				firstnoise = false;
				alarm[2] = 1;
			}
		}

		public void scr_84_set_draw_font(string argument0)
		{
			global.chemg_font = argument0;
			draw_set_font(scr_84_get_font(argument0));
		}

		public void mus_volume(string argument0, double argument1, double argument2)
		{
			audio_sound_gain(argument0, (argument1 * global.flag[16]), ((argument2 * 1000) / 30));
		}

		public void mus_volume(AudioSource argument0, double argument1, double argument2)
		{
			audio_sound_gain(argument0, (argument1 * global.flag[16]), ((argument2 * 1000) / 30));
		}

		public void snd_free_all()
		{
			AudioManager.AudioManager.Instance.StopAllAudio();
		}

		public void draw_background_ext(string argument0, double argument1, double argument2, double argument3, double argument4, double argument5, int argument6, double argument7)
			=> draw_sprite_ext(argument0, 0, argument1, argument2, argument3, argument4, argument5, argument6, argument7);

		public bool left_p() => global.input_pressed[3];
		public bool left_h() => global.input_held[3];

		public bool right_p() => global.input_pressed[1];
		public bool right_h() => global.input_held[1];

		public void scr_84_name_input_setup()
		{
			var menu = new string[0];
			var xoff = 0;
			var yoff = 0;
			var xstep = 0;
			var ystep = 0;
			if (LANGSUBTYPE == 0)
			{
				menu = new string[3];
				xoff = 68;
				yoff = 70;
				xstep = 20;
				ystep = 20;
				PLAYERNAMEY = 40;
				menu[0] = "ABCDEFGHIJ";
				menu[1] = "KLMNOPQRST";
				menu[2] = "UVWXYZ < <";
				CURX = 0;
				CURY = 0;
			}
			else if (LANGSUBTYPE == 1)
			{
				menu = new string[8];
				xoff = 28;
				yoff = 80;
				xstep = 16;
				ystep = 15;
				PLAYERNAMEY = 60;
				menu[0] = "あいうえお　まみむめも　ぁぃぅぇぉ";
				menu[1] = "かきくけこ　や　ゆ　よ　がぎぐげご";
				menu[2] = "さしすせそ　らりるれろ　ざじずぜぞ";
				menu[3] = "たちつてと　わをんー　　だぢづでど";
				menu[4] = "なにぬねの　ゃゅょっゎ　ばびぶべぼ";
				menu[5] = "はひふへほ　　　　　　　ぱぴぷぺぽ";
				menu[6] = ">> << >> << >> <<";
				menu[7] = ">>>> <<<>>>> <<<<";
			}
			else if (LANGSUBTYPE == 2)
			{
				menu = new string[8];
				xoff = 28;
				yoff = 80;
				xstep = 16;
				ystep = 15;
				PLAYERNAMEY = 60;
				menu[0] = "アイウエオ　マミムメモ　ァィゥェォ";
				menu[1] = "カキクケコ　ヤ　ユ　ヨ　ガギグゲゴ";
				menu[2] = "サシスセソ　ラリルレロ　ザジズセゾ";
				menu[3] = "タチツテト　ワヲンー　　ダヂヅデド";
				menu[4] = "ナニヌネノ　ャュョッヮ　バビブベボ";
				menu[5] = "ハヒフヘホ　　　　　　　パピプペポ";
				menu[6] = ">> << >> << >> <<";
				menu[7] = ">>>> <<<>>>> <<<<";
			}
			else if (LANGSUBTYPE == 3)
			{
				menu = new string[8];
				xoff = 28;
				yoff = 80;
				xstep = 32;
				ystep = 15;
				PLAYERNAMEY = 60;
				menu[0] = "ＡＢＣＤＥＦＧＨＩ";
				menu[1] = "ＪＫＬＭＮＯＰＱＲ";
				menu[2] = "ＳＴＵＶＷＸＹＺ ";
				menu[3] = "         ";
				menu[4] = "         ";
				menu[5] = "         ";
				menu[6] = "> <> <> <";
				menu[7] = ">> <>> <<";
			}
			YMAX = (array_length_1d(menu) - 1);
			for (j = 0; j <= YMAX; j += 1)
			{
				var str = menu[j];
				XMAX = (string_length(str) - 1);
				for (i = 0; i <= XMAX; i += 1)
				{
					NAME[i, j] = string_char_at(str, (i + 1));
					NAMEX[i, j] = (xoff + (i * xstep));
					NAMEY[i, j] = (yoff + (j * ystep));
				}
			}
			if (LANGSUBTYPE == 0)
			{
				NAME[6, 2] = "(B)BACK";
				NAME[8, 2] = "(E)END";
			}
			else if (LANGSUBTYPE == 1 || LANGSUBTYPE == 2)
			{
				NAME[2, 6] = "(1)ひらがな";
				NAMEX[2, 6] = ((xoff + 32) - 20);
				NAMEY[2, 6] = ((yoff + 90) + 8);
				NAME[8, 6] = "(2)カタカナ";
				NAMEX[8, 6] = ((xoff + 128) - 24);
				NAMEY[8, 6] = ((yoff + 90) + 8);
				NAME[14, 6] = "(3)アルファベット";
				NAMEX[14, 6] = ((xoff + 224) - 40);
				NAMEY[14, 6] = ((yoff + 90) + 8);
				NAME[4, 7] = "(B)さくじょ";
				NAMEX[4, 7] = ((xoff + 64) - 8);
				NAMEY[4, 7] = ((yoff + 105) + 16);
				NAME[12, 7] = "(E)けってい";
				NAMEX[12, 7] = ((xoff + 180) - 32);
				NAMEY[12, 7] = ((yoff + 105) + 16);
				if (LANGSUBTYPE == 1)
				{
					CURX = 2;
					CURY = 6;
				}
				else
				{
					CURX = 8;
					CURY = 6;
				}
			}
			else if (LANGSUBTYPE == 3)
			{
				NAME[1, 6] = "(1)ひらがな";
				NAMEX[1, 6] = ((xoff + 32) - 20);
				NAMEY[1, 6] = ((yoff + 90) + 8);
				NAME[4, 6] = "(2)カタカナ";
				NAMEX[4, 6] = ((xoff + 128) - 24);
				NAMEY[4, 6] = ((yoff + 90) + 8);
				NAME[7, 6] = "(3)アルファベット";
				NAMEX[7, 6] = ((xoff + 224) - 40);
				NAMEY[7, 6] = ((yoff + 90) + 8);
				NAME[2, 7] = "(B)さくじょ";
				NAMEX[2, 7] = ((xoff + 64) - 8);
				NAMEY[2, 7] = ((yoff + 105) + 16);
				NAME[6, 7] = "(E)けってい";
				NAMEX[6, 7] = ((xoff + 180) - 32);
				NAMEY[6, 7] = ((yoff + 105) + 16);
				CURX = 7;
				CURY = 6;
			}
			HEARTX = ((NAMEX[CURX, CURY] + (string_width(NAME[CURX, CURY]) / 2)) - 10);
			HEARTY = NAMEY[CURX, CURY];
		}

		public bool up_p() => global.input_pressed[2];
		public bool up_h() => global.input_held[2];

		public bool down_p() => global.input_pressed[0];
		public bool down_h() => global.input_held[0];

		public string string_to_hiragana(string argument0)
		{
			var str = argument0;
			var result = "";
			var lastch = "";
			for (var i = 1; i <= string_length(str); i++)
			{
				var ch = ord(string_char_at(str, i));
				if (ch >= 12449 && ch <= 12534)
					ch -= 96;
				else if (ch >= 65377 && ch <= 65439)
				{
					var halfkata = "。「」、・をぁぃぅぇぉャュョッーあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわん゛゜";
					ch = ord(string_char_at(halfkata, (ch - 65376)));
					if (lastch != "")
					{
						if (ch == 12443)
						{
							var daku_from = "かきくけこさしすせそたちつてとはひふへほ";
							var daku_to = "がぎぐげござじずぜぞだぢづでどばびぶべぼ";
							var pos = string_pos(lastch, daku_from);
							if (pos != 0)
								ch = ord(string_char_at(daku_to, pos));
						}
						else if (ch == 12444)
						{
							var handaku_from = "はひふへほ";
							var handaku_to = "ぱぴぷぺぽ";
							pos = string_pos(lastch, handaku_from);
							if (pos != 0)
								ch = ord(string_char_at(handaku_to, pos));
						}
					}
				}
				lastch = chr(ch);
				result += lastch;
			}
			return result;
		}

		public string scr_84_get_subst_string(params string[] argument)
		{
			var str = argument[0];
			var sub_id = 1;
			length = string_length(str);
			pos = 0;
			while (sub_id < argument.Length)
			{
				var sub = ("~" + gm_string(sub_id));
				str = string_replace_all(str, sub, argument[sub_id]);
				sub_id = (sub_id + 1);
			}
			return str;
		}

		public obj_marker scr_marker(double argument0, double argument1, string argument2)
		{
			thismarker = instance_create<obj_marker>(argument0, argument1, "obj_marker");
			thismarker.sprite_index = argument2;
			thismarker.image_speed = 0;
			return thismarker;
		}

		public void scr_depth()
		{
			depth = (100000 - ((y * 10) + (sprite_height * 10)));
		}

		public void scr_facechoice()
		{
			myface = instance_create<obj_face>((writer.x + (8 * f)), (writer.y + (5 * f)), "obj_face");
		}

		public void scr_dbox()
		{
			xxx = __view_get(0, 0);
			yyy = __view_get(1, 0);
			if (global.darkzone == false)
			{
				if (side == 0)
				{
					draw_set_color(c_white);
					draw_rectangle((xxx + 16), (yyy + 5), (xxx + 304), (yyy + 80), false);
					draw_set_color(c_black);
					draw_rectangle((xxx + 19), (yyy + 8), (xxx + 301), (yyy + 77), false);
				}
				else
				{
					draw_set_color(c_white);
					draw_rectangle((xxx + 16), (yyy + 160), (xxx + 304), (yyy + 235), false);
					draw_set_color(c_black);
					draw_rectangle((xxx + 19), (yyy + 163), (xxx + 301), (yyy + 232), false);
				}
			}
			if (global.darkzone == true)
			{
				if (side == 0)
				{
					draw_set_color(c_black);
					draw_rectangle((xxx + 38), (yyy + 16), (xxx + 602), (yyy + 154), false);
					scr_darkbox(((xxx + 32) - 8), ((yyy + 10) - 8), ((xxx + 608) + 8), ((yyy + 160) + 8));
				}
				else
				{
					draw_set_color(c_black);
					draw_rectangle((xxx + 38), (yyy + 326), (xxx + 602), (yyy + 464), false);
					scr_darkbox(((xxx + 32) - 8), ((yyy + 320) - 8), ((xxx + 608) + 8), ((yyy + 470) + 8));
				}
			}
		}

		public void scr_darkbox(double argument0, double argument1, double argument2, double argument3)
		{
			cur_jewel += 1;
			textbox_width = ((argument2 - argument0) - 63);
			if (textbox_width < 0)
				textbox_width = 0;
			textbox_height = ((argument3 - argument1) - 63);
			if (textbox_height < 0)
				textbox_height = 0;
			if (textbox_width > 0)
			{
				draw_sprite_stretched("spr_textbox_top", 0, (argument0 + 32), argument1, textbox_width, 32);
				draw_sprite_ext("spr_textbox_top", 0, (argument0 + 32), (argument3 + 1), textbox_width, -2, 0, c_white, 1);
			}
			if (textbox_height > 0)
			{
				draw_sprite_ext("spr_textbox_left", 0, (argument2 + 1), (argument1 + 32), -2, textbox_height, 0, c_white, 1);
				draw_sprite_ext("spr_textbox_left", 0, argument0, (argument1 + 32), 2, textbox_height, 0, c_white, 1);
			}
			if (global.flag[8] == 0)
			{
				draw_sprite_ext("spr_textbox_topleft", (cur_jewel / 10), argument0, argument1, 2, 2, 0, c_white, 1);
				draw_sprite_ext("spr_textbox_topleft", (cur_jewel / 10), (argument2 + 1), argument1, -2, 2, 0, c_white, 1);
				draw_sprite_ext("spr_textbox_topleft", (cur_jewel / 10), argument0, (argument3 + 1), 2, -2, 0, c_white, 1);
				draw_sprite_ext("spr_textbox_topleft", (cur_jewel / 10), (argument2 + 1), (argument3 + 1), -2, -2, 0, c_white, 1);
			}
			else
			{
				draw_sprite_ext("spr_textbox_topleft", 0, argument0, argument1, 2, 2, 0, c_white, 1);
				draw_sprite_ext("spr_textbox_topleft", 0, (argument2 + 1), argument1, -2, 2, 0, c_white, 1);
				draw_sprite_ext("spr_textbox_topleft", 0, argument0, (argument3 + 1), 2, -2, 0, c_white, 1);
				draw_sprite_ext("spr_textbox_topleft", 0, (argument2 + 1), (argument3 + 1), -2, -2, 0, c_white, 1);
			}
		}

		public void scr_interact()
		{
			myinteract = 1;
			event_user(0);
		}

		public void scr_writetext(int argument0, string argument1, int argument2, int argument3)
		{
			global.fc = 0;
			global.msc = argument0;
			if (argument1 != "x")
				global.msg[0] = argument1;
			if (argument2 != 0)
				global.fc = argument2;
			global.typer = 5;
			if (argument3 != 0)
				global.typer = argument3;
			instance_create<obj_dialoguer>(0, 0, "obj_dialoguer");
		}

		public void scr_phonename()
		{
			for (i = 0; i < 8; i += 1)
				global.phonename[i] = " ";
			for (i = 0; i < 8; i += 1)
			{
				itemid = global.phone[i];
				switch (itemid)
				{
					case 201:
						global.phonename[i] = scr_84_get_lang_string("scr_phonename_slash_scr_phonename_gml_17_0");
						break;
					case 202:
						global.phonename[i] = scr_84_get_lang_string("scr_phonename_slash_scr_phonename_gml_20_0");
						if (global.flag[274] >= 2)
							global.phonename[i] = scr_84_get_lang_string("scr_phonename_slash_scr_phonename_gml_21_0");
						break;
				}
			}
		}

		public void scr_litemuseb(int argument0, int argument1)
		{
			switch (argument1)
			{
				case 0:
					global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_6_0");
					break;
				case 1:
					global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_9_0");
					snd_play("snd_swallow");
					scr_writetext(0, "x", 0, 0);
					scr_litemshift(argument0, 0);
					break;
				case 2:
					global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_18_0");
					scr_lweaponeq(argument0, argument1);
					snd_play("snd_item");
					scr_writetext(0, "x", 0, 0);
					break;
				case 3:
					global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_26_0");
					scr_lrecoitem(1);
					scr_litemshift(argument0, 0);
					break;
				case 4:
					global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_34_0");
					scr_writetext(0, "x", 0, 0);
					break;
				case 5:
					global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_42_0");
					scr_writetext(0, "x", 0, 0);
					break;
				case 6:
					global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_48_0");
					scr_lweaponeq(argument0, argument1);
					snd_play("snd_item");
					scr_writetext(0, "x", 0, 0);
					break;
				case 7:
					global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_56_0");
					scr_lweaponeq(argument0, argument1);
					snd_play("snd_item");
					scr_writetext(0, "x", 0, 0);
					break;
				case 8:
					global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_63_0");
					snd_play("snd_egg");
					scr_writetext(0, "x", 0, 0);
					break;
				case 201:
					tempsaid = 0;
					snd_play("snd_phone");
					global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_72_0");
					global.msg[1] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_73_0");
					if (room == "room_krisroom" || room == "room_krishallway" || room == "room_torbathroom")
					{
						tempsaid = 1;
						global.flag[268] = 1;
						scr_torface(1, 0);
						global.msg[2] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_82_0");
						global.msg[3] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_83_0");
						global.msg[4] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_84_0");
						scr_noface(5);
						global.msg[6] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_86_0");
					}
					if (room == "room_torhouse")
					{
						tempsaid = 1;
						global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_92_0");
						global.msg[1] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_93_0");
						global.msg[2] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_94_0");
					}
					if (tempsaid == 0 && global.plot >= 250)
					{
						if (global.flag[272] == 0)
						{
							global.msc = 365;
							scr_text(global.msc);
						}
						if (global.flag[272] == 1)
						{
							global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_109_0");
							scr_torface(1, 1);
							global.msg[2] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_111_0");
							global.msg[3] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_112_0");
							global.msg[4] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_113_0");
							global.msg[5] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_114_0");
							scr_noface(6);
							global.msg[7] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_116_0");
						}
						if (global.flag[272] >= 2)
						{
							global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_121_0");
							scr_torface(1, 1);
							global.msg[2] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_123_0");
							global.msg[3] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_124_0");
							global.msg[4] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_125_0");
							scr_noface(5);
							global.msg[6] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_127_0");
						}
						global.flag[272] += 1;
					}
					scr_writetext(0, "x", 0, 0);
					break;
				case 202:
					global.msc = 375;
					scr_text(global.msc);
					global.typer = 5;
					global.fc = 0;
					instance_create(0, 0, "obj_dialoguer");
					break;
			}
		}

		public void scr_torface(int argument0, int argument1)
		{
			global.msg[argument0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_torface_slash_scr_torface_gml_1_0"), gm_string(argument1));
		}

		public void scr_noface(int argument0)
		{
			global.msg[argument0] = scr_84_get_lang_string("scr_noface_slash_scr_noface_gml_1_0");
		}

		public void scr_litemshift(int argument0, int argument1)
		{
			global.litem[8] = argument1;
			for (i = argument0; i < 8; i += 1)
				global.litem[i] = global.litem[(i + 1)];
			scr_litemname();
		}

		public void scr_litemname()
		{
			for (i = 0; i < 8; i += 1)
			{
				itemid = global.litem[i];
				if (itemid == 0)
					global.litemname[i] = " ";
				if (itemid == 1)
					global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_6_0");
				if (itemid == 2)
					global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_7_0");
				if (itemid == 3)
					global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_8_0");
				if (itemid == 4)
					global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_9_0");
				if (itemid == 5)
					global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_10_0");
				if (itemid == 6)
					global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_11_0");
				if (itemid == 7)
					global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_12_0");
				if (itemid == 8)
					global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_13_0");
			}
		}

		public void scr_litemdesc(int argument0)
		{
			global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_1_0");
			switch (argument0)
			{
				case 0:
					global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_5_0");
					break;
				case 1:
					global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_8_0");
					break;
				case 2:
					global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_11_0");
					break;
				case 3:
					global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_14_0");
					break;
				case 4:
					global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_17_0");
					global.msg[1] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_18_0");
					break;
				case 5:
					global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_21_0");
					if (scr_itemcheck(1))
					{
						global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_25_0");
						global.msg[1] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_26_0");
					}
					break;
				case 6:
					global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_30_0");
					break;
				case 7:
					global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_33_0");
					break;
				case 8:
					global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_36_0");
					break;
			}
		}

		public bool scr_itemcheck(int argument0)
		{
			haveit = false;
			itemcount = 0;
			for (i = 0; i < 12; i += 1)
			{
				if (global.item[i] == argument0)
					haveit = true;
				if (global.item[i] == argument0)
					itemcount += 1;
			}
			return haveit;
		}

		public void scr_lweaponeq(int argument0, int argument1)
		{
			if (argument0 >= 0)
				global.litem[argument0] = global.lweapon;
			global.lweapon = argument1;
			if (global.lweapon == 2)
				global.lwstrength = 1;
			if (global.lweapon == 6)
				global.lwstrength = 1;
			if (global.lweapon == 7)
				global.lwstrength = 1;
			scr_litemname();
		}

		public void scr_lrecoitem(int argument0)
		{
			scr_lrecover(argument0);
			global.item[8] = recovered;
			if (maxedout == 1)
				global.item[8] = 9999;
			global.msg[0] += scr_84_get_lang_string("scr_lrecoitem_slash_scr_lrecoitem_gml_11_0");
			if (global.item[8] < 999)
				global.msg[0] += scr_84_get_subst_string(scr_84_get_lang_string("scr_lrecoitem_slash_scr_lrecoitem_gml_14_0"), gm_string(global.item[8]));
			else
				global.msg[0] += scr_84_get_lang_string("scr_lrecoitem_slash_scr_lrecoitem_gml_16_0");
			scr_writetext(0, "x", 0, 0);
		}

		public void scr_lrecover(int argument0)
		{
			recovered = argument0;
			maxedout = 0;
			if (global.lhp < global.lmaxhp)
				global.lhp += argument0;
			else
				maxedout = 1;
			if (global.lhp >= global.lmaxhp && maxedout == 0)
			{
				global.lhp = global.lmaxhp;
				maxedout = 1;
			}
		}

		public void scr_text(int argument0)
		{
			switch (argument0)
			{
				case 100:
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_38_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_39_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_40_0");
					global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_41_0");
					global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_42_0");
					global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_43_0");
					global.msg[6] = " ";
					break;
				case 101:
					if (global.choice == 1)
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_50_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_51_0");
						FindObjectOfType<obj_classscene>().con = 20;
					}

					if (global.choice == 0)
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_56_0");
					break;
				case 102:
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_61_0");
					global.msg[1] = " ";
					break;
				case 103:
					if (global.choice == 1)
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_68_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_69_0");
						FindObjectOfType<obj_classscene>().con = 20;
					}

					if (global.choice == 0)
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_74_0");
					break;
				case 104:
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_79_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_80_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_81_0");
					global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_82_0");
					global.msg[4] = " ";
					break;
				case 105:
					global.msg[0] = " %%";
					break;
				case 120:
					global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_124_0");
					global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_125_0");
					global.choicemsg[2] = " ";
					global.choicemsg[3] = " ";
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_128_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_129_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_130_0");
					global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_131_0");
					global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_132_0");
					global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_133_0");
					global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_134_0");
					global.msg[7] = " ";
					break;
				case 121:
					global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_139_0");
					global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_140_0");
					global.choicemsg[2] = " ";
					global.choicemsg[3] = " ";
					if (global.choice == 0)
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_145_0");
					else
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_149_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_150_0");
						global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_151_0");
						global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_152_0");
						global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_153_0");
						global.msg[5] = " ";
					}

					break;
				case 122:
					if (global.choice == 0)
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_162_0");
					else
					{
						global.flag[203] = 1;
						FindObjectOfType<obj_darkcastle_event>().con = 30;
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_168_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_169_0");
						scr_susface(2, 0);
						global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_171_0");
						global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_172_0");
						scr_ralface(5, 0);
						global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_174_0");
						scr_susface(7, 0);
						global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_176_0");
						global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_177_0");
						scr_ralface(10, 0);
						global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_179_0");
						global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_180_0");
						scr_susface(13, 1);
						global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_182_0");
						global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_183_0");
						global.msg[16] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_184_0");
						global.msg[17] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_185_0");
						global.msg[18] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_186_0");
						scr_ralface(19, 1);
						global.msg[20] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_188_0");
					}

					break;
				case 125:
					global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_193_0");
					global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_194_0");
					global.choicemsg[2] = " ";
					global.choicemsg[3] = " ";
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_197_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_198_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_199_0");
					global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_200_0");
					global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_201_0");
					global.msg[5] = " ";
					break;
				case 130:
					global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_226_0");
					global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_227_0");
					global.choicemsg[2] = " ";
					global.choicemsg[3] = " ";
					input_name = scr_get_input_name(5);
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_text_slash_scr_text_gml_231_0"), input_name);
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_232_0");
					global.msg[2] = " ";
					break;
				case 131:
					if (global.choice == 0)
					{
						global.fe = 3;
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_241_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_242_0");
						global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_243_0");
					}
					else
					{
						global.fe = 0;
						input_name = scr_get_input_name(5);
						global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_text_slash_scr_text_gml_249_0"), input_name);
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_250_0");
						global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_251_0");
					}

					break;
				case 135:
					global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_288_0");
					global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_289_0");
					global.choicemsg[2] = " ";
					global.choicemsg[3] = " ";
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_292_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_293_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_294_0");
					global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_295_0");
					global.msg[4] = " ";
					break;
				case 136:
					if (global.choice == 0)
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_302_0");
						FindObjectOfType<obj_tutorialbattleevent>().con = 20;
					}
					else
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_307_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_308_0");
						global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_309_0");
						global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_310_0");
						global.msg[4] = ((scr_84_get_lang_string("scr_text_slash_scr_text_gml_311_0") + scr_get_input_name(6)) + scr_84_get_lang_string("scr_text_slash_scr_text_gml_311_1"));
						scr_noface(5);
						global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_313_0");
					}

					break;
				case 140:
					global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_318_0");
					global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_319_0");
					global.choicemsg[2] = " ";
					global.choicemsg[3] = " ";
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_322_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_323_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_324_0");
					global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_325_0");
					global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_326_0");
					global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_327_0");
					global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_328_0");
					global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_329_0");
					global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_330_0");
					global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_331_0");
					global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_332_0");
					global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_333_0");
					global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_334_0");
					global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_335_0");
					global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_336_0");
					global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_337_0");
					global.msg[16] = " ";
					break;
				case 141:
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_342_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_343_0");
					if (global.choice == 1)
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_347_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_348_0");
						global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_349_0");
						global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_350_0");
					}

					break;
				case 145:
					global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_357_0");
					global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_358_0");
					global.choicemsg[2] = " ";
					global.choicemsg[3] = " ";
					if (global.flag[101] == 0)
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_363_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_364_0");
						global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_365_0");
					}

					if (global.flag[101] == 1)
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_369_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_370_0");
						global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_371_0");
					}

					if (global.flag[101] >= 2)
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_376_0");
					break;
				case 146:
					if (global.choice == 0)
					{
						scr_itemget(1);
						if (noroom == false)
						{
							global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_387_0");
							global.flag[101] += 1;
						}
						else
							global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_392_0");
					}
					else
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_398_0");
					break;
				case 147:
					global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_403_0");
					global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_404_0");
					global.choicemsg[2] = " ";
					global.choicemsg[3] = " ";
					if (global.flag[102] == 0)
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_409_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_410_0");
						global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_411_0");
					}

					if (global.flag[102] == 1)
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_415_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_416_0");
						global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_417_0");
					}

					if (global.flag[102] >= 2)
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_422_0");
					break;
				case 148:
					if (global.choice == 0)
					{
						scr_itemget(1);
						if (noroom == false)
						{
							global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_433_0");
							global.flag[102] += 1;
						}
						else
							global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_438_0");
					}
					else
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_444_0");

					break;
				case 149:
					global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_449_0");
					global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_450_0");
					global.choicemsg[2] = " ";
					global.choicemsg[3] = " ";
					if (global.flag[103] == 0)
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_455_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_456_0");
						global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_457_0");
					}
					else
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_461_0");

					break;
				case 150:
					if (global.choice == 0)
					{
						scr_keyitemget(3);
						if (noroom == false)
						{
							global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_472_0");
							global.flag[103] = 1;
						}
						else
							global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_477_0");
					}
					else
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_483_0");

					break;
				case 460:
					global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3083_0");
					global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3084_0");
					global.choicemsg[2] = " ";
					global.choicemsg[3] = " ";
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3087_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3088_0");
					if (global.plot >= 75)
					{
						global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3091_0");
						global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3092_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3093_0");
					}

					if (global.plot >= 154)
					{
						global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3097_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3098_0");
					}

					break;
				case 461:
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3103_0");
					var obj_shortcut_door = FindObjectOfType<obj_shortcut_door>();
					if (global.choice == 0)
					{
						obj_shortcut_door.door_destination = "room_field3";
					}

					if (global.choice == 1)
					{
						obj_shortcut_door.door_destination = "room_forest_savepoint1";
					}

					if (global.choice == 2)
					{
						obj_shortcut_door.door_destination = "room_forest_savepoint2";
					}

					if (global.choice == 3)
					{
						obj_shortcut_door.door_destination = "room_forest_fightsusie";
					}

					if (obj_shortcut_door.door_destination == obj_shortcut_door.door_location)
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3124_0");
					else
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3128_0");
						obj_shortcut_door.con = 50;
					}

					break;
				default:
					throw new NotImplementedException(argument0.ToString());
					Debug.Break();
			}
		}

		public void scr_tempsave()
		{
			filechoicebk2 = global.filechoice;
			global.filechoice = 9;
			scr_saveprocess(global.filechoice);
			global.filechoice = filechoicebk2;
		}

		public void scr_saveprocess(int argument0)
		{
			global.lastsavedtime = global.time;
			global.lastsavedlv = global.lv;
			file = ("filech1_" + gm_string(argument0));
			myfileid = file_text_open_write(file);
			file_text_write_string(myfileid, global.truename);
			file_text_writeln(myfileid);
			for (i = 0; i < 6; i += 1)
			{
				file_text_write_string(myfileid, global.othername[i]);
				file_text_writeln(myfileid);
			}
			file_text_write_real(myfileid, global.chara[0]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.chara[1]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.chara[2]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.gold);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.xp);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.lv);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.inv);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.invc);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.darkzone);
			file_text_writeln(myfileid);
			for (i = 0; i < 4; i += 1)
			{
				file_text_write_real(myfileid, global.hp[i]);
				file_text_writeln(myfileid);
				file_text_write_real(myfileid, global.maxhp[i]);
				file_text_writeln(myfileid);
				file_text_write_real(myfileid, global.at[i]);
				file_text_writeln(myfileid);
				file_text_write_real(myfileid, global.df[i]);
				file_text_writeln(myfileid);
				file_text_write_real(myfileid, global.mag[i]);
				file_text_writeln(myfileid);
				file_text_write_real(myfileid, global.guts[i]);
				file_text_writeln(myfileid);
				file_text_write_real(myfileid, global.charweapon[i]);
				file_text_writeln(myfileid);
				file_text_write_real(myfileid, global.chararmor1[i]);
				file_text_writeln(myfileid);
				file_text_write_real(myfileid, global.chararmor2[i]);
				file_text_writeln(myfileid);
				file_text_write_string(myfileid, global.weaponstyle[i]);
				file_text_writeln(myfileid);
				for (q = 0; q < 4; q += 1)
				{
					file_text_write_real(myfileid, global.itemat[i, q]);
					file_text_writeln(myfileid);
					file_text_write_real(myfileid, global.itemdf[i, q]);
					file_text_writeln(myfileid);
					file_text_write_real(myfileid, global.itemmag[i, q]);
					file_text_writeln(myfileid);
					file_text_write_real(myfileid, global.itembolts[i, q]);
					file_text_writeln(myfileid);
					file_text_write_real(myfileid, global.itemgrazeamt[i, q]);
					file_text_writeln(myfileid);
					file_text_write_real(myfileid, global.itemgrazesize[i, q]);
					file_text_writeln(myfileid);
					file_text_write_real(myfileid, global.itemboltspeed[i, q]);
					file_text_writeln(myfileid);
					file_text_write_real(myfileid, global.itemspecial[i, q]);
					file_text_writeln(myfileid);
				}
				for (j = 0; j < 12; j += 1)
				{
					file_text_write_real(myfileid, global.spell[i, j]);
					file_text_writeln(myfileid);
				}
			}
			file_text_write_real(myfileid, global.boltspeed);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.grazeamt);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.grazesize);
			file_text_writeln(myfileid);
			for (j = 0; j < 13; j += 1)
			{
				file_text_write_real(myfileid, global.item[j]);
				file_text_writeln(myfileid);
				file_text_write_real(myfileid, global.keyitem[j]);
				file_text_writeln(myfileid);
				file_text_write_real(myfileid, global.weapon[j]);
				file_text_writeln(myfileid);
				file_text_write_real(myfileid, global.armor[j]);
				file_text_writeln(myfileid);
			}
			file_text_write_real(myfileid, global.tension);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.maxtension);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.lweapon);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.larmor);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.lxp);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.llv);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.lgold);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.lhp);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.lmaxhp);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.lat);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.ldf);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.lwstrength);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.ladef);
			file_text_writeln(myfileid);
			for (i = 0; i < 8; i += 1)
			{
				file_text_write_real(myfileid, global.litem[i]);
				file_text_writeln(myfileid);
				file_text_write_real(myfileid, global.phone[i]);
				file_text_writeln(myfileid);
			}
			for (i = 0; i < 9999; i += 1)
			{
				file_text_write_real(myfileid, global.flag[i]);
				file_text_writeln(myfileid);
			}
			file_text_write_real(myfileid, global.plot);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, RoomManager.RoomManager.Instance.GetRoomIndex(global.currentroom));
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.time);
			file_text_close(myfileid);
		}

		public obj_marker scr_dark_marker(double argument0, double argument1, string argument2)
		{
			thismarker = instance_create<obj_marker>(argument0, argument1, "obj_marker");
			thismarker.sprite_index = argument2;
			thismarker.image_speed = 0;
			thismarker.image_xscale = 2;
			thismarker.image_yscale = 2;
			return thismarker;
		}

		public bool snd_is_playing(string argument0)
		{
			return audio_is_playing(argument0);
		}

		public bool snd_is_playing(AudioSource audioSource)
		{
			if (audioSource == null)
			{
				return false;
			}

			return audioSource.isPlaying;
		}

		public GMBOOL d_ex() => instance_exists("obj_dialoguer");

		public string scr_get_input_name(int argument0) => global.asc_def[global.input_k[argument0]];

		public void snd_free(string argument0)
		{
			foreach (var item in AudioManager.AudioManager.Instance.GetAudioSources(argument0))
			{
				item.Stop();
			}
		}

		public AudioSource mus_play(string argument0)
		{
			var src = audio_play_sound(argument0, 90, false);
			snd_volume(_xsndinstance, global.flag[16], 0);
			return src;
		}

		public void scr_pan(double argument0, double argument1, double argument2)
		{
			panner = instance_create<obj_panner>(0, 0, "obj_panner");
			panner.panmax = argument2;
			panner.panx = argument0;
			panner.pany = argument1;
		}

		public void scr_halt()
		{
			image_index = 0;
			image_speed = 0;
			speed = 0;
		}

		public void scr_npcdir()
		{
			if (facing == 0)
				sprite_index = dtsprite;
			if (facing == 1)
				sprite_index = rtsprite;
			if (facing == 2)
				sprite_index = utsprite;
			if (facing == 3)
				sprite_index = ltsprite;
		}

		public void snd_stop_all()
		{
			audio_stop_all();
		}
		public void scr_susface(int argument0, int argument1)
		{
			global.msg[argument0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_susface_slash_scr_susface_gml_1_0"), gm_string(argument1));
		}
		public void scr_susface(int argument0, string argument1)
		{
			global.msg[argument0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_susface_slash_scr_susface_gml_1_0"), gm_string(argument1));
		}
		public void snd_stop(string argument0)
		{
			audio_stop_sound(argument0);
		}
		public void snd_stop(AudioSource argument0) => argument0.Stop();
		public AudioSource snd_loop(string argument0) => audio_play_sound(argument0, 50, true);
		public void scr_become_dark()
		{
			global.darkzone = true;
		}
		public void scr_losechar()
		{
			global.chara[2] = 0;
			global.chara[1] = 0;

			var obj_darkcontroller = FindObjectOfType<obj_darkcontroller>();
			obj_darkcontroller.chartotal = 0;
			obj_darkcontroller.havechar[0] = false;
			obj_darkcontroller.havechar[1] = false;
			obj_darkcontroller.havechar[2] = false;
			for (i = 0; i < 3; i += 1)
			{
				global.faceaction[i] = 0;
				if (global.chara[i] != 0)
					obj_darkcontroller.chartotal += 1;
				if (global.chara[i] == 1)
				{
					obj_darkcontroller.havechar[0] = true;
					obj_darkcontroller.charpos[0] = i;
				}
				if (global.chara[i] == 2)
				{
					obj_darkcontroller.havechar[1] = true;
					obj_darkcontroller.charpos[1] = i;
				}
				if (global.chara[i] == 3)
				{
					obj_darkcontroller.havechar[2] = true;
					obj_darkcontroller.charpos[2] = i;
				}
			}
		}
		public bool scr_havechar(int argument0)
		{
			_rreturn = 0;
			if (global.chara[0] == argument0)
				_rreturn = 1;
			if (global.chara[1] == argument0)
				_rreturn = 1;
			if (global.chara[2] == argument0)
				_rreturn = 1;
			return _rreturn == 1;
		}
		public string scr_roomname(string room)
		{
			var roomindex = RoomManager.RoomManager.Instance.GetRoomIndex(room);
			return scr_roomname(roomindex);
		}
		public string scr_roomname(int argument0)
		{
			roomname = " ";
			if (argument0 == 0)
				roomname = "---";
			if (argument0 == 2)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_3_0");
			if (argument0 == 35)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_4_0");
			if (argument0 == 40)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_5_0");
			if (argument0 == 45)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_6_0");
			if (argument0 == 49)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_7_0");
			if (argument0 == 59)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_8_0");
			if (argument0 == 68)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_9_0");
			if (argument0 == 71)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_10_0");
			if (argument0 == 73)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_11_0");
			if (argument0 == 82)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_12_0");
			if (argument0 == 90)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_13_0");
			if (argument0 == 96)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_14_0");
			if (argument0 == 97)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_15_0");
			if (argument0 == 107)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_16_0");
			if (argument0 == 114)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_17_0");
			if (argument0 == 123)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_18_0");
			if (argument0 == 126)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_19_0");
			if (argument0 == 111)
				roomname = scr_84_get_lang_string("scr_roomname_slash_scr_roomname_gml_20_0");
			if (argument0 == 56)
			{
				if (global.lang == "en")
					roomname = "Field - Maze of Death";
				if (global.lang == "ja")
					roomname = "平原 - 死の迷路";
			}
			return roomname;
		}
		public void scr_save()
		{
			scr_saveprocess(global.filechoice);
			filechoicebk2 = global.filechoice;
			global.filechoice = 9;
			scr_saveprocess(9);
			global.filechoice = filechoicebk2;
			ini_open("dr.ini");
			ini_write_string(("G" + gm_string(global.filechoice)), "Name", global.truename);
			ini_write_real(("G" + gm_string(global.filechoice)), "Level", global.lv);
			ini_write_real(("G" + gm_string(global.filechoice)), "Love", global.llv);
			ini_write_real(("G" + gm_string(global.filechoice)), "Time", global.time);
			ini_write_string(("G" + gm_string(global.filechoice)), "Room", room);
			ini_write_real(("G" + gm_string(global.filechoice)), "InitLang", global.flag[912]);
			ini_close();
		}
		public void scr_84_load_ini()
		{
			for (i = 0; i < 3; i += 1)
				FILE[i] = 0;
			for (i = 0; i < 3; i += 1)
			{
				FILE[i] = 0;
				NAME[i] = scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_97_0");
				TIME[i] = 0;
				PLACE[i] = "------------";
				LEVEL[i] = 0;
				TIME_STRING[i] = "--:--";
				INITLANG[i] = 0;
			}
			if (file_exists("filech1_0"))
			{
				FILE[0] = 1;
				NAME[0] = scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_107_0");
			}
			if (file_exists("filech1_1"))
			{
				FILE[1] = 1;
				NAME[1] = scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_112_0");
			}
			if (file_exists("filech1_2"))
			{
				FILE[2] = 1;
				NAME[2] = scr_84_get_lang_string("DEVICE_MENU_slash_Create_0_gml_117_0");
			}
			if (file_exists("dr.ini"))
			{
				ini_open("dr.ini");
				for (i = 0; i < 3; i += 1)
				{
					if (FILE[i] == 1)
					{
						PLACE[i] = scr_roomname(ini_read_string(("G" + gm_string(i)), "Room", "ROOM_INITIALIZE"));
						TIME[i] = (int)ini_read_real(("G" + gm_string(i)), "Time", 0);
						NAME[i] = ini_read_string(("G" + gm_string(i)), "Name", "------");
						LEVEL[i] = 1;
						INITLANG[i] = (int)ini_read_real(("G" + gm_string(i)), "InitLang", 0);
						TIME_SECONDS_TOTAL[i] = floor((TIME[i] / 30d));
						TIME_MINUTES[i] = floor((TIME_SECONDS_TOTAL[i] / 60d));
						TIME_SECONDS[i] = (TIME_SECONDS_TOTAL[i] - (TIME_MINUTES[i] * 60));
						TIME_SECONDS_STRING[i] = gm_string(TIME_SECONDS[i]);
						if (TIME_SECONDS[i] == 0)
							TIME_SECONDS_STRING[i] = "00";
						if (TIME_SECONDS[i] < 10 && TIME_SECONDS[i] >= 1)
							TIME_SECONDS_STRING[i] = ("0" + gm_string(TIME_SECONDS[i]));
						TIME_STRING[i] = ((gm_string(TIME_MINUTES[i]) + ":") + TIME_SECONDS_STRING[i]);
					}
				}
				ini_close();
			}
		}
		public void draw_text_shadow(double argument0, double argument1, string argument2)
		{
			__txtcolor__ = draw_get_color();
			draw_set_color(c_black);
			draw_text((argument0 + 1), (argument1 + 1), string_hash_to_newline(argument2));
			draw_set_color(__txtcolor__);
			draw_text(argument0, argument1, string_hash_to_newline(argument2));
		}
		public void scr_load()
		{
			snd_free_all();
			filechoicebk = global.filechoice;
			scr_gamestart();
			global.filechoice = filechoicebk;
			file = ("filech1_" + gm_string(global.filechoice));
			myfileid = file_text_open_read(file);
			global.truename = file_text_read_string(myfileid);
			file_text_readln(myfileid);
for (i = 0; i < 6; i += 1)
{
				global.othername[i] = file_text_read_string(myfileid);
				file_text_readln(myfileid);
}
			global.chara[0] = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.chara[1] = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.chara[2] = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.gold = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.xp = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.lv = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.inv = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.invc = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.darkzone = Convert.ToBoolean(file_text_read_real(myfileid));
			file_text_readln(myfileid);
for (i = 0; i < 4; i += 1)
{
				global.hp[i] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
				global.maxhp[i] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
				global.at[i] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
				global.df[i] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
				global.mag[i] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
				global.guts[i] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
				global.charweapon[i] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
				global.chararmor1[i] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
				global.chararmor2[i] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
				global.weaponstyle[i] = (string)file_text_read_string(myfileid);
				file_text_readln(myfileid);
    for (q = 0; q < 4; q += 1)
    {
					global.itemat[i, q] = (int)file_text_read_real(myfileid);
					file_text_readln(myfileid);
					global.itemdf[i, q] = (int)file_text_read_real(myfileid);
					file_text_readln(myfileid);
					global.itemmag[i, q] = (int)file_text_read_real(myfileid);
					file_text_readln(myfileid);
					global.itembolts[i, q] = (int)file_text_read_real(myfileid);
					file_text_readln(myfileid);
					global.itemgrazeamt[i, q] = (int)file_text_read_real(myfileid);
					file_text_readln(myfileid);
					global.itemgrazesize[i, q] = (int)file_text_read_real(myfileid);
					file_text_readln(myfileid);
					global.itemboltspeed[i, q] = (int)file_text_read_real(myfileid);
					file_text_readln(myfileid);
					global.itemspecial[i, q] = (int)file_text_read_real(myfileid);
					file_text_readln(myfileid);
    }
    for (j = 0; j < 12; j += 1)
    {
					global.spell[i, j] = (int)file_text_read_real(myfileid);
					file_text_readln(myfileid);
    }
}
			global.boltspeed = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.grazeamt = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.grazesize = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
for (j = 0; j < 13; j += 1)
{
				global.item[j] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
				global.keyitem[j] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
				global.weapon[j] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
				global.armor[j] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
}
			global.tension = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.maxtension = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.lweapon = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.larmor = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.lxp = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.llv = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.lgold = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.lhp = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.lmaxhp = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.lat = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.ldf = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.lwstrength = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.ladef = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
for (i = 0; i < 8; i += 1)
{
				global.litem[i] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
				global.phone[i] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
}
for (i = 0; i < 9999; i += 1)
{
				global.flag[i] = (int)file_text_read_real(myfileid);
				file_text_readln(myfileid);
}
			global.plot = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			global.currentroom = room_get_name((int)file_text_read_real(myfileid));
			file_text_readln(myfileid);
			global.time = (int)file_text_read_real(myfileid);
			file_text_readln(myfileid);
			file_text_close(myfileid);
			global.lastsavedtime = global.time;
			global.lastsavedlv = global.lv;
			file_text_close(myfileid);
			scr_tempsave();
			//audio_group_set_gain(1, global.flag[15], 0);
			//audio_set_master_gain(0, global.flag[17]);
			if (global.plot >= 156)
			{
				for (i = 0; i < 4; i += 1)
					global.charauto[i] = false;
			}
			__loadedroom = global.currentroom;
			if (scr_dogcheck())
				__loadedroom = "PLACE_DOG";
			room_goto(__loadedroom);
		}
		public bool scr_dogcheck()
		{
			var currentRoomIndex = RoomManager.RoomManager.Instance.GetRoomIndex(global.currentroom);
			var placeDogIndex = RoomManager.RoomManager.Instance.GetRoomIndex("PLACE_DOG");
			var roomInitializeIndex = RoomManager.RoomManager.Instance.GetRoomIndex("ROOM_INITIALIZE");

			if (currentRoomIndex >= placeDogIndex
				|| currentRoomIndex <= roomInitializeIndex)
				return true;
			else
				return false;
		}
		public void scr_change_language()
		{
			if (global.lang == "en")
				global.lang = "ja";
			else
				global.lang = "en";
			ini_open("true_config.ini");
			ini_write_string("LANG", "LANG", global.lang);
			ini_close();
			//scr_84_init_localization();
		}
		public void scr_damage()
		{
			if (global.inv < 0)
			{
				if (target < 3)
				{
					if (global.hp[global.chara[target]] <= 0)
					{
						scr_randomtarget();
						target = mytarget;
						global.charinstance[target].image_blend = c_white;
						global.charinstance[target].darkify = false;
					}
				}
				chartarget = 3;
				tdamage = damage;
				if (target < 3)
				{
					tdamage = ceil((tdamage - (global.battledf[target] * 3)));
					chartarget = global.chara[target];
					if (global.charaction[target] == 10)
						tdamage = ceil(((2 * tdamage) / 3));
					if (tdamage < 1)
						tdamage = 1;
				}
				if (!instance_exists("obj_shake"))
					instance_create(0, 0, "obj_shake");
				global.charinstance[target].hurt = true;
				global.charinstance[target].hurttimer = 0;
				hpdiff = tdamage;
				var obj_dmgwriter = FindObjectOfType<obj_dmgwriter>();
				if (obj_dmgwriter != null)
				{
					if (obj_dmgwriter.delaytimer >= 1)
						obj_dmgwriter.killactive = true;
				}
				
				doomtype = -1;

				var obj_heart = FindObjectOfType<obj_heart>();
				if (obj_heart != null)
				{
					obj_heart.dmgnoise = true;
				}

				if (target < 3)
				{
					if (global.hp[chartarget] <= 0)
					{
						doomtype = 4;
						global.hp[chartarget] -= round((tdamage / 4));
						hpdiff = round((tdamage / 4));
					}
					else
					{
						global.hp[chartarget] -= tdamage;
						if (global.hp[chartarget] <= 0)
						{
							hpdiff = abs((global.hp[chartarget] - (global.maxhp[chartarget] / 2)));
							doomtype = 4;
							global.hp[chartarget] = round(((-global.maxhp[chartarget]) / 2));
							scr_dead(target);
						}
					}
					dmgwriter = instance_create(global.charinstance[target].x, ((global.charinstance[target].y + global.charinstance[target].myheight) - 24), "obj_dmgwriter");
					dmgwriter.damage = hpdiff;
					dmgwriter.type = doomtype;
				}
				if (target == 3)
				{
					for (hpi = 0; hpi < 3; hpi += 1)
					{
						chartarget = global.chara[hpi];
						if (global.hp[chartarget] >= 0)
						{
							if (global.charaction[hpi] == 10)
								global.hp[chartarget] -= ceil((tdamage / 2));
							else
								global.hp[chartarget] -= tdamage;
							if (global.hp[chartarget] <= 0)
								global.hp[chartarget] = round(((-global.maxhp[0]) / 2));
						}
					}
				}
				global.inv = (global.invc * 40);
				gameover = true;
				if (global.chara[0] != 0 && global.hp[global.chara[0]] > 0)
					gameover = false;
				if (global.chara[1] != 0 && global.hp[global.chara[1]] > 0)
					gameover = false;
				if (global.chara[2] != 0 && global.hp[global.chara[2]] > 0)
					gameover = false;
				if (gameover == true)
					scr_gameover();
			}
		}
		public void scr_randomtarget()
		{
			abletotarget = true;
			if (global.charcantarget[0] == false && global.charcantarget[1] == false && global.charcantarget[2] == false)
				abletotarget = false;
			mytarget = choose(0, 1, 2);
			if (abletotarget == true)
			{
				while (global.charcantarget[mytarget] == false)
					mytarget = choose(0, 1, 2);
			}
			else
				mytarget = 3;
			global.targeted[mytarget] = true;
		}
		public void scr_dead(int argument0)
		{
			global.charmove[argument0] = false;
			global.charcantarget[argument0] = false;
			global.chardead[argument0] = true;
			global.charaction[argument0] = 0;
			global.charspecial[argument0] = 0;
		}
		public void scr_damage_all_overworld()
		{
			if (global.inv < 0)
			{
				remdamage = damage;
				remtarget = target;
				if (!instance_exists("obj_shake"))
					instance_create(0, 0, "obj_shake");
				foreach (var item in with<obj_dmgwriter>())
				{
					item.killactive = true;
				}
				snd_stop("snd_hurt1");
				snd_play("snd_hurt1");
				for (ti = 0; ti < 3; ti += 1)
				{
					global.inv = -1;
					damage = remdamage;
					target = ti;
					tdamage = damage;
					global.charinstance[target].hurt = true;
					global.charinstance[target].hurttimer = 0;
					hpdiff = tdamage;
					if (hpdiff >= global.hp[global.chara[target]])
						hpdiff = (global.hp[global.chara[target]] - 1);
					d_cancel = false;
					if (hpdiff <= 1)
					{
						d_cancel = true;
						hpdiff = 0;
					}
					if (d_cancel == false)
					{
						doomtype = -1;
						global.hp[global.chara[target]] -= hpdiff;
						dmgwriter = instance_create(global.charinstance[target].x, ((global.charinstance[target].y + global.charinstance[target].myheight) - 24), "obj_dmgwriter");
						dmgwriter.damage = hpdiff;
						dmgwriter.type = doomtype;
					}
					if (global.hp[global.chara[target]] < 1)
						global.hp[global.chara[target]] = 1;
				}
				gameover = true;
				if (global.chara[0] != 0 && global.hp[global.chara[0]] > 1)
					gameover = false;
				if (global.chara[1] != 0 && global.hp[global.chara[1]] > 1)
					gameover = false;
				if (global.chara[2] != 0 && global.hp[global.chara[2]] > 1)
					gameover = false;
				if (gameover == true)
					scr_gameover();
				target = remtarget;
				global.inv = (global.invc * 40);
			}
		}
		public void scr_gameover()
		{
			audio_stop_all();
			snd_play("snd_hurt1");
			if (room != "room_forest_fightsusie")
			{
				//global.screenshot = sprite_create_from_surface(application_surface, 0, 0, __view_get(2, 0), __view_get(3, 0), false, false, 0, 0);
				snd_free_all();
				room_goto("room_gameover");
			}
		}
		public void scr_charbox()
		{
			for (c = 0; c < 3; c += 1)
			{
				if (havechar[c] == true)
				{
					if (c == 0)
						charcolor = hpcolor[0];
					if (c == 1)
						charcolor = hpcolor[1];
					if (c == 2)
						charcolor = hpcolor[2];
					gc = global.charturn;
					xchunk = 0;
					if (charpos[c] == 0 && chartotal == 3)
						xchunk = 0;
					if (charpos[c] == 1 && chartotal == 3)
						xchunk = 212;
					if (charpos[c] == 2 && chartotal == 3)
						xchunk = 424;
					if (charpos[c] == 0 && chartotal == 2)
						xchunk = 106;
					if (charpos[c] == 1 && chartotal == 2)
						xchunk = 326;
					if (charpos[c] == 0 && chartotal == 1)
						xchunk = 212;
					if (gc == charpos[c])
					{
						if (global.myfight == 0)
							scr_selectionmatrix((xx + xchunk), ((480 - bp) + yy));
						if (mmy[c] > -32)
							mmy[c] -= 2;
						if (mmy[c] > -24)
							mmy[c] -= 4;
						if (mmy[c] > -16)
							mmy[c] -= 6;
						if (mmy[c] > -8)
							mmy[c] -= 8;
						if (mmy[c] < -32)
							mmy[c] = -64;
					}
					else if (mmy[c] < -14)
						mmy[c] += 15;
					else
						mmy[c] = 0;
					btc[0] = 0;
					btc[1] = 0;
					btc[2] = 0;
					btc[3] = 0;
					btc[4] = 0;
					if (gc == charpos[c])
						btc[global.bmenucoord[0, global.charturn]] = 1;
					if (global.fighting == true)
					{
						spare_glow = 0;
						for (sglowi = 0; sglowi < 3; sglowi += 1)
						{
							if (global.monster[sglowi] == 1 && global.mercymod[sglowi] >= 100)
								spare_glow = 1;
						}
						pacify_glow = false;
						if (c == 2)
						{
							for (sglowi = 0; sglowi < 3; sglowi += 1)
							{
								if (global.monster[sglowi] == 1 && global.monsterstatus[sglowi] == true && global.tension >= 40)
									pacify_glow = true;
								if (global.encounterno == 31)
									pacify_glow = false;
							}
						}
						draw_sprite(scr_84_get_sprite("spr_btfight"), btc[0], ((xx + xchunk) + 15), ((485 - bp) + yy));
						if (c == 0)
							draw_sprite(scr_84_get_sprite("spr_btact"), btc[1], ((xx + xchunk) + 50), ((485 - bp) + yy));
						else
							draw_sprite(scr_84_get_sprite("spr_bttech"), btc[1], ((xx + xchunk) + 50), ((485 - bp) + yy));
						draw_sprite(scr_84_get_sprite("spr_btitem"), btc[2], ((xx + xchunk) + 85), ((485 - bp) + yy));
						draw_sprite(scr_84_get_sprite("spr_btspare"), btc[3], ((xx + xchunk) + 120), ((485 - bp) + yy));
						draw_sprite(scr_84_get_sprite("spr_btdefend"), btc[4], ((xx + xchunk) + 155), ((485 - bp) + yy));
						if (spare_glow == 1 && gc == charpos[c])
							draw_sprite_ext(scr_84_get_sprite("spr_btspare"), 2, ((xx + xchunk) + 120), ((485 - bp) + yy), 1, 1, 0, c_white, (0.4 + (sin((global.time / 6)) * 0.4)));
						if (pacify_glow == true && gc == charpos[c])
							draw_sprite_ext(scr_84_get_sprite("spr_bttech"), 2, ((xx + xchunk) + 50), ((485 - bp) + yy), 1, 1, 0, c_white, (0.4 + (sin((global.time / 6)) * 0.4)));
					}
					if (gc == charpos[c])
						draw_set_color(charcolor);
					else
						draw_set_color(bcolor);
					if (global.charselect == charpos[c] || global.charselect == 3)
						draw_set_color(charcolor);
					draw_rectangle((xx + xchunk), ((((480 - bp) - 2) + yy) + mmy[c]), ((xx + xchunk) + 212), ((480 - bp) + yy), false);
					draw_set_color(c_black);
					draw_rectangle(((xx + xchunk) + 2), (((480 - bp) + yy) + mmy[c]), ((xx + xchunk) + 210), ((((480 - bp) + yy) + mmy[c]) + 33), false);
					b_offset = 480;
					if (global.fighting == false)
						b_offset = 430;
					if (global.fighting == true)
						b_offset = 336;
					if (c == 0)
					{
						draw_sprite("spr_headkris", global.faceaction[charpos[c]], ((xx + 13) + xchunk), ((bpoff + b_offset) + mmy[c]));
						draw_sprite(scr_84_get_sprite("spr_bnamekris"), 0, ((xx + 51) + xchunk), (((bpoff + b_offset) + 3) + mmy[c]));
					}
					if (c == 1)
					{
						draw_sprite("spr_headsusie", global.faceaction[charpos[c]], ((xx + 13) + xchunk), ((bpoff + b_offset) + mmy[c]));
						draw_sprite(scr_84_get_sprite("spr_bnamesusie"), 0, ((xx + 51) + xchunk), (((bpoff + b_offset) + 3) + mmy[c]));
					}
					if (c == 2)
					{
						draw_sprite("spr_headralsei", global.faceaction[charpos[c]], ((xx + 13) + xchunk), ((bpoff + b_offset) + mmy[c]));
						draw_sprite(scr_84_get_sprite("spr_bnameralsei"), 0, ((xx + 51) + xchunk), (((bpoff + b_offset) + 3) + mmy[c]));
					}
					draw_sprite("spr_hpname", 0, ((xx + 109) + xchunk), (((bpoff + b_offset) + 11) + mmy[c]));
					draw_set_color(c_white);
					draw_set_font(global.hpfont);
					if (((float)global.hp[(c + 1)] / global.maxhp[(c + 1)]) <= 0.25)
						draw_set_color(c_yellow);
					if (global.hp[(c + 1)] <= 0)
						draw_set_color(c_red);
					draw_set_halign(fa_right);
					draw_text(((xx + 160) + xchunk), (((bpoff + b_offset) - 2) + mmy[c]), string_hash_to_newline(global.hp[(c + 1)]));
					draw_sprite("spr_hpslash", 0, ((xx + 159) + xchunk), (((bpoff + b_offset) - 4) + mmy[c]));
					draw_text(((xx + 205) + xchunk), (((bpoff + b_offset) - 2) + mmy[c]), string_hash_to_newline(global.maxhp[(c + 1)]));
					draw_set_halign(fa_left);
					draw_set_color(c_maroon);
					draw_rectangle(((xx + 128) + xchunk), (((bpoff + b_offset) + 11) + mmy[c]), ((xx + 203) + xchunk), (((bpoff + b_offset) + 19) + mmy[c]), false);
					if (global.hp[(c + 1)] > 0 && global.maxhp[(c + 1)] > 0)
					{
						draw_set_color(charcolor);
						draw_rectangle(((xx + 128) + xchunk), (((bpoff + b_offset) + 11) + mmy[c]), (((xx + xchunk) + 128) + ceil((((float)global.hp[(c + 1)] / global.maxhp[(c + 1)]) * 75))), (((bpoff + b_offset) + 19) + mmy[c]), false);
					}
				}
			}
		}
		public void scr_selectionmatrix(double argument0, double argument1)
		{
			slmxx = argument0;
			slmyy = argument1;
			s_siner += 2;
			draw_set_color(charcolor);
			draw_rectangle(slmxx, slmyy, (slmxx + 210), (slmyy + 3), false);
			for (i = 0; i < 12; i += 1)
			{
				myxx = (s_siner + (i * (10 * pi)));
				draw_set_alpha(sin((myxx / 60)));
				draw_line_width(slmxx, slmyy, slmxx, (slmyy + 33), 2);
				draw_line_width((slmxx + 210), slmyy, (slmxx + 210), (slmyy + 33), 2);
				if (cos((myxx / 60)) < 0)
				{
					draw_line_width(((slmxx - (sin((myxx / 60)) * 30)) + 30), slmyy, ((slmxx - (sin((myxx / 60)) * 30)) + 30), (slmyy + 33), 2);
					draw_line_width((((slmxx + 210) + (sin((myxx / 60)) * 30)) - 30), slmyy, (((slmxx + 210) + (sin((myxx / 60)) * 30)) - 30), (slmyy + 33), 2);
				}
			}
			draw_set_alpha(1);
		}
		public void scr_weaponinfo_all()
		{
			for (i = 0; i < 12; i += 1)
{
				scr_weaponinfo(global.weapon[i]);
				weaponname[i] = weaponnametemp;
				weapondesc[i] = weapondesctemp;
				wmessage2[i] = wmessage2temp;
				wmessage3[i] = wmessage3temp;
				weaponat[i] = weaponattemp;
				weapondf[i] = weapondftemp;
				weaponmag[i] = weaponmagtemp;
				weaponbolts[i] = weaponboltstemp;
				weaponstyle[i] = weaponstyletemp;
				weapongrazeamt[i] = weapongrazeamttemp;
				weapongrazesize[i] = weapongrazesizetemp;
				weaponchar1[i] = weaponchar1temp;
				weaponchar2[i] = weaponchar2temp;
				weaponchar3[i] = weaponchar3temp;
				weaponvalue[i] = value;
				weaponability[i] = weaponabilitytemp;
				weaponabilityicon[i] = weaponabilityicontemp;
				weaponicon[i] = weaponicontemp;
}
		}
		public void scr_weaponinfo(int argument0)
		{
			switch (argument0)
			{
				case 0:
					weaponnametemp = " ";
					weapondesctemp = " ";
					wmessage2temp = " ";
					wmessage3temp = " ";
					weaponattemp = 0;
					weapondftemp = 0;
					weaponmagtemp = 0;
					weaponboltstemp = 0;
					weaponstyletemp = " ";
					weapongrazeamttemp = 0;
					weapongrazesizetemp = 0;
					weaponchar1temp = false;
					weaponchar2temp = false;
					weaponchar3temp = false;
					weaponabilitytemp = " ";
					weaponabilityicontemp = 0;
					weaponicontemp = 0;
					value = 0;
					break;
				case 1:
					weaponnametemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_29_0");
					weapondesctemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_30_0");
					wmessage2temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_31_0");
					if (global.plot < 30)
						wmessage2temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_34_0");
					wmessage3temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_36_0");
					weaponattemp = 0;
					weapondftemp = 0;
					weaponmagtemp = 0;
					weaponboltstemp = 1;
					weaponstyletemp = "?";
					weapongrazeamttemp = 0;
					weapongrazesizetemp = 0;
					weaponchar1temp = true;
					weaponchar2temp = false;
					weaponchar3temp = false;
					weaponicontemp = 1;
					weaponabilityicontemp = 0;
					weaponabilitytemp = " ";
					value = 60;
					break;
				case 2:
					weaponnametemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_54_0");
					weapondesctemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_55_0");
					wmessage2temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_56_0");
					wmessage3temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_57_0");
					weaponattemp = 0;
					weapondftemp = 0;
					weaponmagtemp = 0;
					weaponboltstemp = 1;
					weaponstyletemp = "?";
					weapongrazeamttemp = 0;
					weapongrazesizetemp = 0;
					weaponchar1temp = false;
					weaponchar2temp = false;
					weaponchar3temp = false;
					weaponicontemp = 2;
					weaponabilityicontemp = 0;
					weaponabilitytemp = " ";
					value = 80;
					break;
				case 3:
					weaponnametemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_75_0");
					weapondesctemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_76_0");
					wmessage2temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_77_0");
					wmessage3temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_78_0");
					weaponattemp = 0;
					weapondftemp = 0;
					weaponmagtemp = 0;
					weaponboltstemp = 1;
					weaponstyletemp = "?";
					weapongrazeamttemp = 0;
					weapongrazesizetemp = 0;
					weaponchar1temp = false;
					weaponchar2temp = false;
					weaponchar3temp = true;
					weaponicontemp = 3;
					weaponabilityicontemp = 0;
					weaponabilitytemp = " ";
					value = 100;
					break;
				case 4:
					weaponnametemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_97_0");
					weapondesctemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_98_0");
					wmessage2temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_99_0");
					wmessage3temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_100_0");
					weaponattemp = 12;
					weapondftemp = 6;
					weaponmagtemp = 8;
					weaponboltstemp = 1;
					weaponstyletemp = "?";
					weapongrazeamttemp = 0;
					weapongrazesizetemp = 0;
					weaponchar1temp = true;
					weaponchar2temp = true;
					weaponchar3temp = true;
					weaponicontemp = 0;
					weaponabilityicontemp = 0;
					weaponabilitytemp = " ";
					value = 150;
					break;
				case 5:
					weaponnametemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_118_0");
					weapondesctemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_119_0");
					wmessage2temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_120_0");
					wmessage3temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_121_0");
					weaponattemp = 2;
					weapondftemp = 0;
					weaponmagtemp = 0;
					weaponboltstemp = 1;
					weaponstyletemp = "?";
					weapongrazeamttemp = 0;
					weapongrazesizetemp = 0;
					weaponchar1temp = true;
					weaponchar2temp = false;
					weaponchar3temp = false;
					weaponicontemp = 1;
					weaponabilityicontemp = 7;
					weaponabilitytemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_134_0");
					value = 200;
					break;
				case 6:
					weaponnametemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_139_0");
					weapondesctemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_140_0");
					wmessage2temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_141_0");
					wmessage3temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_142_0");
					weaponattemp = 2;
					weapondftemp = 0;
					weaponmagtemp = 0;
					weaponboltstemp = 1;
					weaponstyletemp = "?";
					weapongrazeamttemp = 0;
					weapongrazesizetemp = 0;
					weaponchar1temp = false;
					weaponchar2temp = true;
					weaponchar3temp = false;
					weaponicontemp = 2;
					weaponabilityicontemp = 7;
					weaponabilitytemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_155_0");
					value = 150;
					break;
				case 7:
					weaponnametemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_160_0");
					weapondesctemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_161_0");
					wmessage2temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_162_0");
					wmessage3temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_163_0");
					weaponattemp = 5;
					weapondftemp = 0;
					weaponmagtemp = 4;
					weaponboltstemp = 1;
					weaponstyletemp = "?";
					weapongrazeamttemp = 0;
					weapongrazesizetemp = 0;
					weaponchar1temp = false;
					weaponchar2temp = true;
					weaponchar3temp = false;
					weaponicontemp = 2;
					weaponabilityicontemp = 6;
					weaponabilitytemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_176_0");
					value = 0;
					break;
				case 8:
					weaponnametemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_181_0");
					weapondesctemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_182_0");
					wmessage2temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_183_0");
					wmessage3temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_184_0");
					weaponattemp = 4;
					weapondftemp = 0;
					weaponmagtemp = 0;
					weaponboltstemp = 1;
					weaponstyletemp = "?";
					weapongrazeamttemp = 0;
					weapongrazesizetemp = 0;
					weaponchar1temp = true;
					weaponchar2temp = false;
					weaponchar3temp = false;
					weaponicontemp = 1;
					weaponabilityicontemp = 7;
					weaponabilitytemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_197_0");
					value = 250;
					break;
				case 9:
					weaponnametemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_202_0");
					weapondesctemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_203_0");
					wmessage2temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_204_0");
					wmessage3temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_205_0");
					weaponattemp = 2;
					weapondftemp = 0;
					weaponmagtemp = 0;
					weaponboltstemp = 1;
					weaponstyletemp = "?";
					weapongrazeamttemp = 0;
					weapongrazesizetemp = 0;
					weaponchar1temp = false;
					weaponchar2temp = false;
					weaponchar3temp = true;
					weaponicontemp = 3;
					weaponabilityicontemp = 0;
					weaponabilitytemp = " ";
					value = 200;
					break;
				case 10:
					weaponnametemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_223_0");
					weapondesctemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_224_0");
					wmessage2temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_225_0");
					wmessage3temp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_226_0");
					weaponattemp = 0;
					weapondftemp = 0;
					weaponmagtemp = 2;
					weaponboltstemp = 1;
					weaponstyletemp = "?";
					weapongrazeamttemp = 0;
					weapongrazesizetemp = 0;
					weaponchar1temp = false;
					weaponchar2temp = false;
					weaponchar3temp = true;
					weaponicontemp = 3;
					weaponabilityicontemp = 7;
					weaponabilitytemp = scr_84_get_lang_string("scr_weaponinfo_slash_scr_weaponinfo_gml_239_0");
					value = 200;
					break;
			}
		}
		public void scr_armorinfo_all()
		{
			for (i = 0; i < 12; i += 1)
			{
				scr_armorinfo(global.armor[i]);
				armorname[i] = armornametemp;
				armordesc[i] = armordesctemp;
				amessage2[i] = amessage2temp;
				amessage3[i] = amessage3temp;
				armorat[i] = armorattemp;
				armordf[i] = armordftemp;
				armormag[i] = armormagtemp;
				armorbolts[i] = armorboltstemp;
				armorgrazeamt[i] = armorgrazeamttemp;
				armorgrazesize[i] = armorgrazesizetemp;
				armorchar1[i] = armorchar1temp;
				armorchar2[i] = armorchar2temp;
				armorchar3[i] = armorchar3temp;
				armorvalue[i] = value;
				armorability[i] = armorabilitytemp;
				armorabilityicon[i] = armorabilityicontemp;
				armoricon[i] = armoricontemp;
			}
		}
		public void scr_armorinfo(int argument0)
		{
			switch (argument0)
			{
				case 0:
					armornametemp = " ";
					armordesctemp = " ";
					amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_8_0");
					amessage3temp = " ";
					armorattemp = 0;
					armordftemp = 0;
					armormagtemp = 0;
					armorboltstemp = 0;
					armorgrazeamttemp = 0;
					armorgrazesizetemp = 0;
					armorchar1temp = true;
					armorchar2temp = false;
					armorchar3temp = true;
					armorabilitytemp = " ";
					armorabilityicontemp = 0;
					armoricontemp = 0;
					value = 0;
					break;
				case 1:
					armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_26_0");
					armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_27_0");
					amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_28_0");
					amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_29_0");
					armorattemp = 0;
					armordftemp = 1;
					armormagtemp = 0;
					armorboltstemp = 0;
					armorgrazeamttemp = 0;
					armorgrazesizetemp = 0;
					armorchar1temp = true;
					armorchar2temp = true;
					armorchar3temp = true;
					armorabilitytemp = " ";
					armorabilityicontemp = 0;
					armoricontemp = 4;
					value = 100;
					break;
				case 2:
					armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_46_0");
					armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_47_0");
					amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_48_0");
					amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_49_0");
					armorattemp = 0;
					armordftemp = 2;
					armormagtemp = 0;
					armorboltstemp = 0;
					armorgrazeamttemp = 0;
					armorgrazesizetemp = 0;
					armorchar1temp = true;
					armorchar2temp = true;
					armorchar3temp = true;
					armorabilitytemp = " ";
					armorabilityicontemp = 0;
					armoricontemp = 4;
					value = 150;
					break;
				case 3:
					armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_66_0");
					armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_67_0");
					amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_68_0");
					amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_69_0");
					armorattemp = 0;
					armordftemp = 1;
					armormagtemp = 0;
					armorboltstemp = 0;
					armorgrazeamttemp = 0;
					armorgrazesizetemp = 20;
					armorchar1temp = true;
					armorchar2temp = false;
					armorchar3temp = true;
					armorabilitytemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_79_0");
					armorabilityicontemp = 7;
					armoricontemp = 4;
					value = 100;
					break;
				case 4:
					armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_87_0");
					armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_88_0");
					amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_89_0");
					amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_90_0");
					if (instance_exists("obj_hathyfightevent"))
						amessage3temp = " ";
					armorattemp = 0;
					armordftemp = 2;
					armormagtemp = 0;
					armorboltstemp = 0;
					armorgrazeamttemp = 0;
					armorgrazesizetemp = 0;
					armorchar1temp = true;
					armorchar2temp = false;
					armorchar3temp = true;
					armorabilitytemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_101_0");
					armorabilityicontemp = 7;
					armoricontemp = 4;
					value = 90;
					break;
				case 5:
					armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_108_0");
					armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_109_0");
					amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_110_0");
					amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_111_0");
					armorattemp = 1;
					armordftemp = 2;
					armormagtemp = 0;
					armorboltstemp = 0;
					armorgrazeamttemp = 0;
					armorgrazesizetemp = 0;
					armorchar1temp = true;
					armorchar2temp = true;
					armorchar3temp = true;
					armorabilitytemp = " ";
					armorabilityicontemp = 0;
					armoricontemp = 4;
					value = 150;
					break;
				case 6:
					armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_128_0");
					armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_129_0");
					amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_130_0");
					amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_131_0");
					armorattemp = 0;
					armordftemp = 0;
					armormagtemp = 2;
					armorboltstemp = 0;
					armorgrazeamttemp = 0;
					armorgrazesizetemp = 0;
					armorchar1temp = true;
					armorchar2temp = true;
					armorchar3temp = true;
					armorabilitytemp = " ";
					armorabilityicontemp = 0;
					armoricontemp = 4;
					value = 120;
					break;
				case 7:
					armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_148_0");
					armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_149_0");
					amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_150_0");
					amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_151_0");
					armorattemp = 2;
					armordftemp = 2;
					armormagtemp = 2;
					armorboltstemp = 0;
					armorgrazeamttemp = 0;
					armorgrazesizetemp = 0;
					armorchar1temp = true;
					armorchar2temp = true;
					armorchar3temp = true;
					armorabilitytemp = " ";
					armorabilityicontemp = 0;
					armoricontemp = 4;
					value = 0;
					break;
			}
		}
		public void scr_weaponinfo_mine()
		{
			for (i = 0; i < 4; i += 1)
			{
				scr_weaponinfo(global.charweapon[i]);
				charweaponname[i] = weaponnametemp;
				charweapondesc[i] = weapondesctemp;
				charweaponat[i] = weaponattemp;
				charweapondf[i] = weapondftemp;
				charweaponmag[i] = weaponmagtemp;
				charweaponbolts[i] = weaponboltstemp;
				charweaponstyle[i] = weaponstyletemp;
				charweapongrazeamt[i] = weapongrazeamttemp;
				charweapongrazesize[i] = weapongrazesizetemp;
				charweaponability[i] = weaponabilitytemp;
				charweaponabilityicon[i] = weaponabilityicontemp;
				charweaponicon[i] = weaponicontemp;
				global.itemat[i, 0] = weaponattemp;
				global.itemdf[i, 0] = weapondftemp;
				global.itemmag[i, 0] = weaponmagtemp;
				global.itembolts[i, 0] = weaponboltstemp;
				global.itemgrazeamt[i, 0] = weapongrazeamttemp;
				global.itemgrazesize[i, 0] = weapongrazesizetemp;
			}
		}
		public void scr_armorinfo_mine()
		{
			for (i = 0; i < 4; i += 1)
			{
				scr_armorinfo(global.chararmor1[i]);
				chararmor1name[i] = armornametemp;
				chararmor1desc[i] = armordesctemp;
				chararmor1at[i] = armorattemp;
				chararmor1df[i] = armordftemp;
				chararmor1mag[i] = armormagtemp;
				chararmor1bolts[i] = armorboltstemp;
				chararmor1grazeamt[i] = armorgrazeamttemp;
				chararmor1grazesize[i] = armorgrazesizetemp;
				chararmor1ability[i] = armorabilitytemp;
				chararmor1abilityicon[i] = armorabilityicontemp;
				chararmor1icon[i] = armoricontemp;
				global.itemat[i, 1] = armorattemp;
				global.itemdf[i, 1] = armordftemp;
				global.itemmag[i, 1] = armormagtemp;
				global.itembolts[i, 1] = armorboltstemp;
				global.itemgrazeamt[i, 1] = armorgrazeamttemp;
				global.itemgrazesize[i, 1] = armorgrazesizetemp;
				scr_armorinfo(global.chararmor2[i]);
				chararmor2name[i] = armornametemp;
				chararmor2desc[i] = armordesctemp;
				chararmor2at[i] = armorattemp;
				chararmor2df[i] = armordftemp;
				chararmor2mag[i] = armormagtemp;
				chararmor2bolts[i] = armorboltstemp;
				chararmor2grazeamt[i] = armorgrazeamttemp;
				chararmor2grazesize[i] = armorgrazesizetemp;
				chararmor2ability[i] = armorabilitytemp;
				chararmor2abilityicon[i] = armorabilityicontemp;
				chararmor2icon[i] = armoricontemp;
				global.itemat[i, 2] = armorattemp;
				global.itemdf[i, 2] = armordftemp;
				global.itemmag[i, 2] = armormagtemp;
				global.itembolts[i, 2] = armorboltstemp;
				global.itemgrazeamt[i, 2] = armorgrazeamttemp;
				global.itemgrazesize[i, 2] = armorgrazesizetemp;
			}
		}
		public void scr_spell_overworld(int argument0)
		{
			w = argument0;
			usable = false;
			switch (argument0)
			{
				case 0:
					break;
				case 2:
					scr_healitem(global.charselect, 100);
					break;
			}
		}
		public void scr_healitem(int argument0, int argument1)
		{
			scr_heal(argument0, argument1);
			healx = scr_charbox_x(argument0);
			healtext = instance_create(((healx + 70) + xx), (yy + 430), "obj_healwriter");
			healtext.healamt = argument1;
		}
		public int scr_heal(int argument0, int argument1)
		{
			abovemaxhp = false;
			belowzero = false;
			hltarget = global.chara[argument0];
			_curhp = global.hp[hltarget];
			if (global.hp[hltarget] <= 0)
				belowzero = true;
			if (global.hp[hltarget] > global.maxhp[hltarget])
				abovemaxhp = true;
			if (abovemaxhp == false)
			{
				global.hp[hltarget] += argument1;
				if (global.hp[hltarget] > global.maxhp[hltarget])
					global.hp[hltarget] = global.maxhp[hltarget];
			}
			if (belowzero == true && global.hp[hltarget] >= 0)
			{
				if (global.hp[hltarget] < ceil((global.maxhp[hltarget] / 6d)))
					global.hp[hltarget] = ceil((global.maxhp[hltarget] / 6d));
				scr_revive(argument0);
			}
			snd_stop("snd_power");
			snd_play("snd_power");
			return (global.hp[hltarget] - _curhp);
		}
		public void scr_revive(int argument0)
		{
			global.charmove[argument0] = true;
			global.charcantarget[argument0] = true;
			global.chardead[argument0] = false;
		}
		public int scr_charbox_x(int argument0)
		{
			if (argument0 == 0 && chartotal == 3)
				return 0;
			if (argument0 == 1 && chartotal == 3)
				return 212;
			if (argument0 == 2 && chartotal == 3)
				return 424;
			if (argument0 == 0 && chartotal == 2)
				return 106;
			if (argument0 == 1 && chartotal == 2)
				return 326;
			if (argument0 == 0 && chartotal == 1)
				return 212;

			return 0;
		}
		public void scr_itemdesc()
		{
			for (i = 0; i < 12; i += 1)
			{
				itemid = global.item[i];
				switch (itemid)
				{
					case 0:
						itemdesc[i] = "---";
						break;
					case 1:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_11_0");
						break;
					case 2:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_14_0");
						break;
					case 3:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_17_0");
						break;
					case 4:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_20_0");
						break;
					case 5:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_23_0");
						break;
					case 6:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_26_0");
						break;
					case 7:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_29_0");
						break;
					case 8:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_32_0");
						break;
					case 9:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_35_0");
						break;
					case 10:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_38_0");
						break;
					case 11:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_41_0");
						break;
					case 12:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_44_0");
						break;
					case 13:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_47_0");
						break;
					case 14:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_50_0");
						break;
					case 15:
						itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_53_0");
						break;
				}
			}
		}
		public void scr_itemshift(int argument0, int argument1)
        {
            global.item[12] = argument1;
            for (i = argument0; i < 12; i += 1)
                global.item[i] = global.item[(i + 1)];
            scr_iteminfo_all();
            scr_itemname();
		}
        public void scr_itemname()
        {
            for (i = 0; i < 12; i += 1)
            {
                itemid = global.item[i];
                scr_itemnamelist();
            }
        }
        public void scr_itemnamelist()
        {
            switch (itemid)
            {
                case 0:
                    global.itemname[i] = " ";
                    break;
                case 1:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_8_0");
                    break;
                case 2:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_11_0");
                    break;
                case 3:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_14_0");
                    break;
                case 4:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_17_0");
                    break;
                case 5:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_20_0");
                    break;
                case 6:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_23_0");
                    break;
                case 7:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_26_0");
                    break;
                case 8:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_29_0");
                    break;
                case 9:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_32_0");
                    break;
                case 10:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_35_0");
                    break;
                case 11:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_38_0");
                    break;
                case 12:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_41_0");
                    break;
                case 13:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_44_0");
                    break;
                case 14:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_47_0");
                    break;
                case 15:
                    global.itemname[i] = scr_84_get_lang_string("scr_itemnamelist_slash_scr_itemnamelist_gml_50_0");
                    break;
            }
        }
        public void scr_itemuse(int argument0)
        {
            w = argument0;
            usable = false;
            if (global.charselect < 3)
                _gc = global.chara[global.charselect];
            suspos = -1;
            ralpos = -1;
            for (i = 0; i < 3; i += 1)
            {
                if (global.chara[i] == 2)
                    suspos = i;
                if (global.chara[i] == 3)
                    ralpos = i;
            }
			switch (argument0)
			{
				case 0:
					itemnameb = " ";
					itemdescb = "---";
					break;
				case 1:
					scr_healitem(global.charselect, 40);
					usable = true;
					if (_gc == 2)
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_28_0"));
					if (_gc == 3)
					{
						if (scr_havechar(2))
							scr_itemcomment(suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_33_0"));
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_35_0"));
					}
					break;
				case 2:
					reviveamt = ceil((global.maxhp[global.chara[global.charselect]] / 2));
					scr_healitem(global.charselect, reviveamt);
					usable = true;
					if (_gc == 2)
					{
						scr_itemcomment(suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_47_0"));
						scr_itemcomment(ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_48_0"));
					}
					if (_gc == 3)
					{
						if (scr_havechar(2))
							scr_itemcomment(suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_53_0"));
						scr_itemcomment(ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_54_0"));
					}
					break;
				case 4:
					global.interact = 6;
					FindObjectOfType<obj_darkcontroller>().charcon = 0;
					global.menuno = -1;
					charcon = 0;
					global.fc = 0;
					global.fe = 0;
					global.typer = 6;
					global.msg[0] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_71_0");
					instance_create(0, 0, "obj_dialoguer");
					break;
				case 5:
					scr_healitem(global.charselect, 20);
					usable = true;
					break;
				case 6:
					scr_healitem_all(160);
					if (suspos >= 0)
						scr_itemcomment(suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_83_0"));
					if (ralpos >= 0)
						scr_itemcomment(ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_84_0"));
					usable = true;
					break;
				case 7:
					scr_healitem_all(80);
					if (suspos >= 0)
						scr_itemcomment(suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_90_0"));
					if (ralpos >= 0)
						scr_itemcomment(ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_91_0"));
					usable = true;
					break;
				case 8:
					scr_healitem(global.charselect, 70);
					usable = true;
					if (global.chara[global.charselect] == 2)
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_101_0"));
					if (global.chara[global.charselect] == 3)
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_105_0"));
					break;
				case 9:
					scr_healitem(global.charselect, 4);

					usable = true;

					if (global.chara[global.charselect] == 2)
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_115_0"));
					if (global.chara[global.charselect] == 3)
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_119_0"));
					break;
				case 10:
					scr_healitem(global.charselect, 4);
					usable = true;

					if (global.chara[global.charselect] == 2)
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_129_0"));
					if (global.chara[global.charselect] == 3)
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_133_0"));
					break;
				case 11:
					scr_healitem_all(30);
					if (suspos >= 0)
						scr_itemcomment(suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_139_0"));
					if (ralpos >= 0)
						scr_itemcomment(ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_140_0"));
					usable = true;
					break;
				case 12:
					usable = true;
					if (global.chara[global.charselect] == 1)
						scr_healitem(global.charselect, 20);
					if (global.chara[global.charselect] == 2)
					{
						scr_healitem(global.charselect, 80);
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_154_0"));
					}
					if (global.chara[global.charselect] == 3)
					{
						scr_healitem(global.charselect, 50);
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_159_0"));
					}
					break;
				case 13:
					usable = true;
					if (global.chara[global.charselect] == 1)
						scr_healitem(global.charselect, 80);
					if (global.chara[global.charselect] == 2)
					{
						scr_healitem(global.charselect, 20);
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_173_0"));
					}
					if (global.chara[global.charselect] == 3)
					{
						scr_healitem(global.charselect, 50);
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_178_0"));
					}
					break;
				case 14:
					usable = true;
					scr_healitem(global.charselect, 500);
					if (global.chara[global.charselect] == 2)
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_188_0"));
					if (global.chara[global.charselect] == 3)
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_192_0"));
					break;
				case 15:
					scr_healitem(global.charselect, 50);
					usable = true;
					if (global.chara[global.charselect] == 2)
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_202_0"));
					if (global.chara[global.charselect] == 3)
						scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_206_0"));
					break;
				case 300:
					break;
				case 301:
					FindObjectOfType<obj_darkcontroller>().charcon = 0;
					global.menuno = -1;
					charcon = 0;
					global.fc = 0;
					global.fe = 0;
					global.typer = 6;
					snd_play("snd_phone");
					global.msg[0] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_222_0");
					instance_create(0, 0, "obj_dialoguer");
					instance_create(0, 0, "obj_darkphone_event");
					global.interact = 1;
					break;
				case 302:
					global.interact = 6;
					FindObjectOfType<obj_darkcontroller>().charcon = 0;
					global.menuno = -1;
					charcon = 0;
					snd_play("snd_egg");
					global.fc = 0;
					global.fe = 0;
					global.typer = 6;
					global.msg[0] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_237_0");
					instance_create(0, 0, "obj_dialoguer");
					break;
			}
        }
		public void scr_itemcomment(int argument0, string argument1)
		{
			talkx = scr_charbox_x(argument0);
			itemcomment = instance_create((talkx + xx), (yy + 460), "obj_menuwriter");
			itemcomment.msg = argument1;
			itemcomment.who = argument0;
			if (global.flag[32] == 1)
			{
				itemcomment.instance_destroy();
			}
		}
		public void scr_healitem_all(int argument0)
		{
			scr_healall(argument0);
			for (i = 0; i < chartotal; i += 1)
			{
				healx = scr_charbox_x(i);
				healtext = instance_create(((healx + 70) + xx), (yy + 430), "obj_healwriter");
				healtext.healamt = argument0;
			}
		}
		public void scr_healall(int argument0)
		{
			for (i = 0; i < 3; i += 1)
			{
				if (global.chara[i] != 0)
					scr_heal(i, argument0);
			}
		}
		public void scr_dmenu_armor_selection_match()
		{
			if (global.submenu == 13 && global.submenucoord[14] != global.submenucoord[13])
				global.submenucoord[14] = global.submenucoord[13];
			if (global.submenu == 14 && global.submenucoord[13] != global.submenucoord[14])
				global.submenucoord[13] = global.submenucoord[14];
		}
		public void scr_keyiteminfo_all()
		{
			for (i = 0; i < 12; i += 1)
			{
				keyitemid = global.keyitem[i];
				keyitemname[i] = " ";
				scr_keyiteminfo(keyitemid);
				keyitemusable[i] = tempkeyitemusable;
				keyitemname[i] = tempkeyitemname;
				keyitemdesc[i] = tempkeyitemdesc;
			}
		}
		public void scr_keyiteminfo(int argument0)
		{
			tempkeyitemdesc = "---";
			tempkeyitemname = " ";
			tempkeyitemusable = false;
			switch (argument0)
			{
				case 0:
					tempkeyitemdesc = "---";
					tempkeyitemname = " ";
					break;
				case 1:
					tempkeyitemdesc = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_13_0");
					tempkeyitemname = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_14_0");
					tempkeyitemusable = true;
					break;
				case 2:
					tempkeyitemdesc = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_18_0");
					tempkeyitemname = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_19_0");
					tempkeyitemusable = true;
					break;
				case 3:
					tempkeyitemdesc = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_23_0");
					tempkeyitemname = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_24_0");
					break;
				case 4:
					tempkeyitemdesc = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_27_0");
					tempkeyitemname = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_28_0");
					break;
				case 5:
					tempkeyitemdesc = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_31_0");
					tempkeyitemname = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_32_0");
					break;
				case 6:
					tempkeyitemdesc = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_35_0");
					tempkeyitemname = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_36_0");
					break;
				case 7:
					tempkeyitemdesc = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_39_0");
					tempkeyitemname = scr_84_get_lang_string("scr_keyiteminfo_slash_scr_keyiteminfo_gml_40_0");
					break;
			}
		}
		public void snd_pause(AudioSource argument0)
		{
			audio_pause_sound(argument0);
		}
		public void snd_resume(AudioSource argument0)
		{
			audio_resume_sound(argument0);
		}
		public void scr_getchar(int argument0)
		{
			getchar = 0;
			if (global.chara[0] == 0)
			{
				global.chara[0] = argument0;
				getchar = 1;
			}
			if (global.chara[1] == 0 && getchar == 0)
			{
				global.chara[1] = argument0;
				getchar = 1;
			}
			if (global.chara[2] == 0 && getchar == 0)
			{
				global.chara[2] = argument0;
				getchar = 1;
			}

			var obj_darkcontroller = FindObjectOfType<obj_darkcontroller>();
			if (obj_darkcontroller != null)
			{
				obj_darkcontroller.chartotal = 0;
				obj_darkcontroller.havechar[0] = false;
				obj_darkcontroller.havechar[1] = false;
				obj_darkcontroller.havechar[2] = false;
				for (i = 0; i < 3; i += 1)
				{
					global.faceaction[i] = 0;
					if (global.chara[i] != 0)
						obj_darkcontroller.chartotal += 1;
					if (global.chara[i] == 1)
					{
						obj_darkcontroller.havechar[0] = true;
						obj_darkcontroller.charpos[0] = i;
					}
					if (global.chara[i] == 2)
					{
						obj_darkcontroller.havechar[1] = true;
						obj_darkcontroller.charpos[1] = i;
					}
					if (global.chara[i] == 3)
					{
						obj_darkcontroller.havechar[2] = true;
						obj_darkcontroller.charpos[2] = i;
					}
				}
			}
			
		}
		public void scr_pan_to_obj(GamemakerObject argument0, int argument1)
		{
			_wd = (argument0.x - floor(((__view_get(2, 0) / 2d) - (argument0.sprite_width / 2d))));
			_ht = (argument0.y - floor(((__view_get(3, 0) / 2d) - (argument0.sprite_height / 2d))));
			_vx = _wd;
			_vy = _ht;
			if (_vx < 0)
				_vx = 0;
			if (_vx > (room_width - _vx))
				_vx = (room_width - _vx);
			if (_vy < 0)
				_vy = 0;
			if (_vy > (room_height - __view_get(3, 0)))
				_vy = (room_height - __view_get(3, 0));
			scr_pan(((_vx - __view_get(0, 0)) / argument1), ((_vy - __view_get(1, 0)) / argument1), argument1);
		}
		public obj_afterimage scr_afterimage()
		{
			afterimage = instance_create<obj_afterimage>(x, y, "obj_afterimage");
			afterimage.sprite_index = sprite_index;
			afterimage.image_index = image_index;
			afterimage.image_blend = image_blend;
			afterimage.image_speed = 0;
			afterimage.depth = depth;
			afterimage.image_xscale = image_xscale;
			afterimage.image_yscale = image_yscale;
			afterimage.image_angle = image_angle;
			return afterimage;
		}
		public void tile_layer_shift(int argument0, int argument1, int argument2)
		{
			var __depth = argument0;
			var __x = argument1;
			var __y = argument2;
			var __layers = layer_get_all();
			var __numlayers = array_length_1d(__layers);
			for (var __i = 0; __i < __numlayers; __i++)
			{
				if (layer_get_depth(__layers[__i]) != __depth)
				{
				}
				else
				{
					var __els = layer_get_all_elements(__layers[__i]);
					var __numels = array_length_1d(__els);
					for (var __j = 0; __j < __numels; __j++)
					{
						var __eltype = layer_get_element_type(__els[__j]);
						if (__eltype == 7)
						{
							layer_tile_x(__els[__j], (layer_tile_get_x(__els[__j]) + __x));
							layer_tile_y(__els[__j], (layer_tile_get_y(__els[__j]) + __y));
						}
					}
				}
			}
		}
		public void scr_ralface(int argument0, int argument1)
		{
			global.msg[argument0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_ralface_slash_scr_ralface_gml_1_0"), gm_string(argument1));
		}
		public void scr_ralface(int argument0, string argument1)
		{
			global.msg[argument0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_ralface_slash_scr_ralface_gml_1_0"), gm_string(argument1));
		}
		public int scr_getmsgno()
		{
			if (instance_exists("obj_writer"))
				return FindObjectOfType<obj_writer>().msgno;
			return 0;
		}
		public void scr_lanface(int argument0, int argument1)
		{
			global.msg[argument0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_lanface_slash_scr_lanface_gml_1_0"), gm_string(argument1));
		}
		public void scr_encountersetup(int argument0)
		{
			xx = __view_get(0, 0);
			yy = __view_get(1, 0);
			for (i = 0; i < 3; i += 1)
			{
				global.heromakex[i] = (xx + 80);
				global.heromakey[i] = ((yy + 50) + (80 * i));
				global.monsterinstancetype[i] = "obj_lancerboss";
				global.monstertype[i] = 1;
				global.monstermakex[i] = (xx + 540);
				global.monstermakey[i] = ((yy + 160) + (80 * i));
			}
			if (global.chara[0] != 0 && global.chara[1] == 0 && global.chara[2] == 0)
				global.heromakey[0] = (yy + 140);
			if (global.chara[0] != 0 && global.chara[1] != 0 && global.chara[2] == 0)
			{
				global.heromakey[0] = (yy + 100);
				global.heromakey[1] = (yy + 180);
			}
			switch (argument0)
			{
				case 0:
					break;
				case 2:
					global.monsterinstancetype[0] = "obj_lancerboss";
					global.monstertype[0] = 2;
					global.monstermakex[0] = (xx + 540);
					global.monstermakey[0] = (yy + 200);
					global.monstertype[1] = 0;
					global.monstertype[2] = 0;
					break;
				case 4:
					global.monsterinstancetype[0] = "obj_diamondenemy";
					global.monstertype[0] = 5;
					global.monstermakex[0] = (xx + 480);
					global.monstermakey[0] = (yy + 140);
					global.monstertype[1] = 0;
					global.monstertype[2] = 0;
					global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_82_0");
					if (global.flag[500] >= 1)
						global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_83_0");
					if (global.flag[500] == 2)
						global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_84_0");
					break;
				case 5:
					global.monsterinstancetype[0] = "obj_diamondenemy";
					global.monstertype[0] = 5;
					global.monstermakex[0] = (xx + 480);
					global.monstermakey[0] = (yy + 110);
					global.monsterinstancetype[1] = "obj_diamondenemy";
					global.monstertype[1] = 5;
					global.monstermakex[1] = (xx + 500);
					global.monstermakey[1] = (yy + 200);
					global.monstertype[2] = 0;
					global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_100_0");
					break;
				case 7:
					global.monsterinstancetype[0] = "obj_smallcheckers_enemy";
					global.monstertype[0] = 9;
					global.monstermakex[0] = (xx + 440);
					global.monstermakey[0] = (yy + 150);
					global.monstertype[1] = 0;
					global.monstertype[2] = 0;
					global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_128_0");
					break;
				case 8:
					global.monsterinstancetype[0] = "obj_clubsenemy";
					global.monstertype[0] = 16;
					global.monstermakex[0] = (xx + 400);
					global.monstermakey[0] = (yy + 120);
					global.monstertype[1] = 0;
					global.monstertype[2] = 0;
					global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_139_0");
					break;
				case 9:
					global.monsterinstancetype[0] = "obj_heartenemy";
					global.monstertype[0] = 6;
					global.monstermakex[0] = (xx + 480);
					global.monstermakey[0] = (yy + 20);
					global.monsterinstancetype[1] = "obj_heartenemy";
					global.monstertype[1] = 6;
					global.monstermakex[1] = (xx + 500);
					global.monstermakey[1] = (yy + 120);
					global.monsterinstancetype[2] = "obj_heartenemy";
					global.monstertype[2] = 6;
					global.monstermakex[2] = (xx + 460);
					global.monstermakey[2] = (yy + 220);
					global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_158_0");
					break;
				case 22:
					global.monsterinstancetype[0] = "obj_jigsawryenemy";
					global.monstertype[0] = 15;
					global.monstermakex[0] = (xx + 480);
					global.monstermakey[0] = (yy + 20);
					global.monsterinstancetype[1] = "obj_jigsawryenemy";
					global.monstertype[1] = 15;
					global.monstermakex[1] = (xx + 500);
					global.monstermakey[1] = (yy + 120);
					global.monsterinstancetype[2] = "obj_jigsawryenemy";
					global.monstertype[2] = 15;
					global.monstermakex[2] = (xx + 460);
					global.monstermakey[2] = (yy + 220);
					global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_324_0");
					break;
				case 25:
					global.heromakex[0] = (xx + 80);
					global.heromakey[0] = (yy + 100);
					global.heromakex[1] = (xx + 90);
					global.heromakey[1] = (yy + 150);
					global.heromakex[2] = (xx + 100);
					global.heromakey[2] = (yy + 210);
					global.monsterinstancetype[0] = "obj_joker";
					global.monstertype[0] = 20;
					global.monstermakex[0] = (xx + 500);
					global.monstermakey[0] = (yy + 160);
					global.monstertype[1] = 0;
					global.monstertype[2] = 0;
					global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_384_0");
					break;
				case 33:
					global.monsterinstancetype[0] = "obj_diamondenemy";
					global.monstertype[0] = 5;
					global.monstermakex[0] = (xx + 480);
					global.monstermakey[0] = (yy + 20);
					global.monsterinstancetype[1] = "obj_heartenemy";
					global.monstertype[1] = 6;
					global.monstermakex[1] = (xx + 500);
					global.monstermakey[1] = (yy + 120);
					global.monsterinstancetype[2] = "obj_diamondenemy";
					global.monstertype[2] = 5;
					global.monstermakex[2] = (xx + 460);
					global.monstermakey[2] = (yy + 220);
					global.battlemsg[0] = scr_84_get_lang_string("scr_encountersetup_slash_scr_encountersetup_gml_505_0");
					break;
				default:
					throw new NotImplementedException(argument0.ToString());
			}
		}
		public void scr_mnendturn()
		{
			if (global.chara[0] == 2)
				sus = 0;
			if (global.chara[1] == 2)
				sus = 1;
			if (global.chara[2] == 2)
				sus = 2;
			techwon = false;
			if (scr_monsterpop() == 0)
				techwon = true;
			if (techwon == false)
			{
				scr_battlecursor_memory_reset();
				global.mnfight = 0;
				global.myfight = 0;
				global.bmenuno = 0;
				global.charturn = 0;
				skip = false;
				for (i = 0; i < 3; i += 1)
				{
					if (global.charinstance[i] != null)
					{
						global.charinstance[i].tu = 0;
					}
					hptarget = global.chara[i];
					if (global.chara[i] != 0 && global.hp[hptarget] <= 0)
					{
						healamt = ceil((global.maxhp[hptarget] / 8.0));
						dmgwr = instance_create(global.charinstance[i].x, ((global.charinstance[i].y + global.charinstance[i].myheight) - 24), "obj_dmgwriter");
						dmgwr.delay = 1;
						dmgwr.type = 3;
						dmgwr.damage = scr_heal(i, healamt);
						if (global.hp[hptarget] >= 1)
						{
							dmgwr.specialmessage = 4;
						}
					}
				}
				if (global.charmove[0] == false || global.charauto[global.chara[0]] == true)
					global.charturn = 1;
				if (global.charturn == 1)
				{
					if (global.charmove[1] == false || global.charauto[global.chara[1]] == true)
						global.charturn = 2;
				}
				if (global.charturn == 2)
				{
					if (global.charmove[2] == false || global.charauto[global.chara[2]] == true)
						skip = true;
				}
				for (i = 0; i < 3; i += 1)
				{
					global.acting[i] = false;
					global.temptension[i] = global.tension;
					global.charspecial[i] = 0;
					global.targeted[i] = false;
					global.charaction[i] = 0;
					global.faceaction[i] = 0;
				}
				foreach (var item in with<obj_monsterparent>())
				{
					item.attacked = false;
					item.talked = false;
					item.acting = 0;
				}
				if (skip == true)
				{
					if (global.chara[0] == 2 && global.charauto[2] == true)
					{
						global.acting[0] = true;
						global.myfight = 3;
					}
					scr_endturn();
				}
				for (i = 0; i < 12; i += 1)
				{
					for (j = 0; j < 3; j += 1)
						tempitem[i, j] = global.item[i];
				}
			}
			else
				scr_wincombat();
		}
		public int scr_monsterpop()
		{
			return ((global.monster[0] + global.monster[1]) + global.monster[2]);
		}

		public void scr_endturn()
		{
			for (i = 0; i < 12; i += 1)
				global.item[i] = tempitem[i, global.charturn];
			for (i = 0; i < 12; i += 1)
			{
				for (j = 0; j < 3; j += 1)
					tempitem[i, j] = global.item[i];
			}

			moveswapped = false;

			foreach (var item in with<obj_writer>())
			{
				item.instance_destroy();
			}
			foreach (var item in with<obj_face>())
			{
				item.instance_destroy();
			}
			foreach (var item in with<obj_smallface>())
			{
				item.instance_destroy();
			}
			global.attacking = false;
			for (i = 0; i < 3; i += 1)
			{
				if (global.charauto[global.chara[i]] == true && global.hp[global.chara[i]] > 0)
				{
					if (global.monster[2] == 1)
						global.chartarget[i] = 2;
					if (global.monster[1] == 1)
						global.chartarget[i] = 1;
					if (global.monster[0] == 1)
						global.chartarget[i] = 0;
				}

				if (global.charaction[i] == 1)
					global.attacking = true;
			}

			if (global.acting[0] == false)
				scr_attackphase();
			else
			{
				global.charturn = 3;
				global.myfight = 3;
			}
		}

		public void scr_wincombat()
		{
			global.myfight = 7;
			global.mnfight = -1;
			FindObjectOfType<obj_battlecontroller>().victory = true;
			for (i = 0; i < 3; i += 1)
			{
				if (global.monster[i] == 1 && instance_exists(global.monsterinstance[i]))
				{
					global.monsterinstance[i].scr_monsterdefeat();
				}
			}
		}
		public void scr_battlecursor_memory_reset()
		{
			if (global.flag[14] == 0)
			{
				for (i = 0; i < 20; i += 1)
				{
					for (j = 0; j < 20; j += 1)
						global.bmenucoord[i, j] = 0;
				}
			}
		}
		public void scr_spareanim()
		{
			spareanim = instance_create(x, y, "obj_spareanim");
			spareanim.sprite_index = sprite_index;
			spareanim.sprite_index = sparedsprite;
			spareanim.image_index = 0;
			spareanim.image_xscale = image_xscale;
			spareanim.image_yscale = image_yscale;
		}
		public void scr_monsterdefeat()
		{
			if (global.monster[myself] == 1)
			{
				global.monstergold[3] += global.monstergold[myself];
				global.monsterexp[3] += global.monsterexp[myself];
				global.monster[myself] = 0;
				if (global.flag[(51 + myself)] == 0)
				{
					global.flag[(51 + myself)] = 2;
					if (global.monsterhp[myself] <= 0)
						global.flag[(51 + myself)] = 1;
				}
				if (global.flag[(51 + myself)] == 1)
					global.flag[40] += 1;
				if (global.flag[(51 + myself)] == 2)
					global.flag[41] += 1;
				if (global.flag[(51 + myself)] == 3)
					global.flag[42] += 1;
				if (global.flag[(51 + myself)] == 5)
					global.flag[43] += 1;
				if (scr_monsterpop() == 0)
				{
					_amt_add = 0;
					_violenced = 0;
					_spared = 0;
					_pacified = 0;
					for (d_i = 0; d_i < 3; d_i += 1)
					{
						if (global.flag[(51 + d_i)] != 0)
							_amt_add += 1;
						if (global.flag[(51 + d_i)] == 1)
							_violenced += 1;
						if (global.flag[(51 + d_i)] == 2)
							_spared += 1;
						if (global.flag[(51 + d_i)] == 3)
							_pacified += 1;
					}
					if (_pacified > 0)
						global.flag[50] = 3;
					if (_spared > 0)
						global.flag[50] = 2;
					if (_violenced > 0)
						global.flag[50] = 1;
				}
				event_user(11);
			}
		}

		public void scr_retarget(int argument0)
		{
			thistarget = global.chartarget[argument0];
			cancelattack = false;
			if (thistarget == 0)
			{
				if (global.monster[0] == 0)
					thistarget = 1;
			}

			if (thistarget == 1)
			{
				if (global.monster[1] == 0)
					thistarget = 2;
			}

			if (thistarget == 2)
			{
				if (global.monster[2] == 0)
					thistarget = 3;
				if (thistarget == 3 && global.monster[0] == 1)
					thistarget = 0;
				if (thistarget == 3 && global.monster[1] == 1)
					thistarget = 1;
				if (thistarget == 3)
					cancelattack = true;
			}

			global.chartarget[argument0] = thistarget;
		}

		public void scr_tensionheal(int argument0)
		{
			global.tension += argument0;
			if (global.tension > global.maxtension)
				global.tension = global.maxtension;
		}

		public void scr_spell(int argument0, int argument1)
		{
			spell = argument0;
			caster = argument1;
			star = global.chartarget[argument1];
			global.spelldelay = 10;
			switch (spell)
			{
				case 0:
					break;
				case 3:
					if (global.monster[star] == 0)
						scr_retarget_spell();
					if (global.monster[star] == 1)
					{
						if (global.monsterstatus[star] == true)
						{
							if (global.monstertype[global.monsterinstance[star].myself] != 19 && global.monstertype[global.monsterinstance[star].myself] != 3)
							{
								global.flag[(51 + global.monsterinstance[star].myself)] = 3;
								global.monsterinstance[star].event_user(10);
								global.monsterinstance[star].scr_monsterdefeat();
							}
							else
							{
								global.monsterinstance[star].pacifycon = 1;
								global.spelldelay = 999;
							}
						}
						else
						{
							_pspell = instance_create(0, 0, "obj_pacifyspell");
							_pspell.target = global.monsterinstance[star];
							_pspell.fail = 1;
						}
					}
					global.spelldelay = 20;
					break;
				case 100:
					if (global.monster[star] == 0)
						scr_retarget_spell();
					if (global.monster[star] == 1)
					{
						if (global.mercymod[star] >= 100)
						{
							if (global.monstertype[star] != 3)
							{
								global.flag[(51 + global.monsterinstance[star].myself)] = 2;
								global.monsterinstance[star].event_user(10);
								global.monsterinstance[star].scr_monsterdefeat();
							}
							else
							{
								global.monsterinstance[star].sparecon = 1;
							}
						}
						else
						{
							scr_mercyadd(star, global.sparepoint[star]);
							_pspell = instance_create(0, 0, "obj_pacifyspell");
							_pspell.target = global.monsterinstance[star];
							_pspell.fail = 1;
							_pspell.flashcolor = c_yellow;
						}
					}

					global.spelldelay = 0;
					break;
				default:
					throw new NotImplementedException(spell.ToString());
			}
		}

		public void scr_nexthero()
		{
			moveswapped = false;
			prevturn = global.charturn;
			if (global.charturn == 0)
			{
				moveswapped = true;
				if (global.charmove[1] == true && scr_charcan(1))
					global.charturn = 1;
				else if (global.charmove[2] == true && scr_charcan(2))
					global.charturn = 2;
				else
					scr_endturn();
			}

			if (global.charturn == 1 && moveswapped == false)
			{
				moveswapped = true;
				if (scr_charcan(2) && global.acting[1] == false)
					global.charturn = 2;
				else
					scr_endturn();
			}

			if (global.charturn == 2 && moveswapped == false)
				scr_endturn();
			if (moveswapped == true)
				global.bmenuno = 0;
			if (global.charturn > 0)
			{
				global.temptension[global.charturn] = global.tension;
				for (i = 0; i < 12; i += 1)
					tempitem[i, global.charturn] = tempitem[i, prevturn];
			}
		}

		public bool scr_charcan(int argument0)
		{
			charcan = true;
			if (global.hp[global.chara[argument0]] <= 0)
				charcan = false;
			if (global.acting[argument0] == true)
				charcan = false;
			if (global.chara[argument0] == 0)
				charcan = false;
			if (global.charmove[argument0] == false)
				charcan = false;
			if (global.charauto[global.chara[argument0]] == true)
				charcan = false;
			return charcan;
		}

		public void scr_prevhero()
		{
			prevturn = global.charturn;
			moveswapped = false;
			if (global.charturn == 1)
			{
				if (global.charmove[0] == true)
				{
					global.charturn = 0;
					moveswapped = true;
				}
			}

			if (global.charturn == 2)
			{
				moveswapped = true;
				if (global.charmove[1] == true && global.acting[1] == false)
					global.charturn = 1;
				else if (global.charmove[0] == true)
					global.charturn = 0;
			}

			if (moveswapped == true)
			{
				global.bmenuno = 0;
				global.faceaction[global.charturn] = 0;
				global.chartarget[global.charturn] = 0;
				global.charaction[global.charturn] = 0;
				global.charspecial[global.charturn] = 0;
				movenoise = true;
			}

			if (global.charturn == 0)
			{
				foreach (var item in with<obj_monsterparent>())
				{
					item.acting = 0;
				}
				global.acting[0] = false;
				global.acting[1] = false;
				global.acting[2] = false;
				global.faceaction[1] = 0;
				global.chartarget[1] = 0;
				global.charaction[1] = 0;
				global.charspecial[1] = 0;
				global.faceaction[2] = 0;
				global.tension = global.temptension[0];
				for (i = 0; i < 12; i += 1)
					tempitem[i, 0] = global.item[i];
			}
			else
			{
				global.tension = global.temptension[global.charturn];
				for (i = 0; i < 12; i += 1)
					tempitem[i, global.charturn] = tempitem[i, (global.charturn - 1)];
			}
		}

		public void scr_iteminfo_temp(int argument0)
		{
			for (i = 0; i < 12; i += 1)
			{
				itemid = tempitem[i, argument0];
				scr_iteminfo(itemid);
				tempitemnameb[i, argument0] = itemnameb;
				tempitemdescb[i, argument0] = itemdescb;
				tempitemvalue[i, argument0] = value;
				tempitemusable[i, argument0] = usable;
			}
		}

		public obj_writer scr_battletext()
		{
			xx = __view_get(0, 0);
			yy = __view_get(1, 0);
			if (global.fc != 0)
				battlewriter = instance_create((xx + 30), (yy + 376), "obj_writer");
			if (global.fc == 0)
				battlewriter = instance_create((xx + 30), (yy + 376), "obj_writer");
			myface = instance_create((xx + 26), (yy + 380), "obj_face");
			battlewriter.dialoguer = 1;

			battlewriter.facer = 1;

			if (global.fc == 0 && battlewriter.originalcharline == 33)
				battlewriter.charline = 26;
			return battlewriter;
		}

		public void scr_attackphase()
		{
			var obj_battlecontroller = FindObjectOfType<obj_battlecontroller>();

			obj_battlecontroller.techwon = false;
			if (obj_battlecontroller.scr_monsterpop() == 0)
				obj_battlecontroller.techwon = true;
			if (obj_battlecontroller.techwon == false)
			{
				obj_battlecontroller.fightphase = 1;
				global.charturn = 3;
				if (global.charaction[0] == 4 || global.charaction[0] == 2)
					obj_battlecontroller.fightphase = 0;
				if (global.charaction[1] == 4 || global.charaction[1] == 2)
					obj_battlecontroller.fightphase = 0;
				if (global.charaction[2] == 4 || global.charaction[2] == 2)
					obj_battlecontroller.fightphase = 0;
				if (global.myfight == 4)
					obj_battlecontroller.fightphase = 1;
				if (obj_battlecontroller.fightphase == 1)
				{
					global.myfight = 1;
					instance_create((obj_battlecontroller.xx + 2), (obj_battlecontroller.yy + 365), "obj_attackpress");
				}
				else
				{
					global.myfight = 4;
					obj_battlecontroller.instance_create(0, 0, "obj_spellphase");
				}
			}
			else
				obj_battlecontroller.scr_wincombat();
		}

		public void scr_spellconsumeb()
		{
			global.tension -= cost;
			global.faceaction[global.charturn] = 2;
			global.charaction[global.charturn] = 2;
			global.charspecial[global.charturn] = global.spell[global.chara[global.charturn], global.bmenucoord[2, global.charturn]];
			global.tensionselect = 0;
			scr_nexthero();
		}

		public void scr_itemconsumeb()
		{
			global.faceaction[global.charturn] = 3;
			global.charaction[global.charturn] = 4;
			global.charspecial[global.charturn] = (tempitem[global.bmenucoord[4, global.charturn], global.charturn] + 200);
			if (usable == true)
				scr_itemshift_temp(global.bmenucoord[4, global.charturn], global.charturn);
			scr_nexthero();
		}

		public void scr_itemshift_temp(int argument0, int argument1)
		{
			tempitem[12, argument1] = 0;
			for (i = argument0; i < 12; i += 1)
				tempitem[i, argument1] = tempitem[(i + 1), argument1];
		}

		public dynamic scr_enemyblcon(double argument0, double argument1, int argument2)
		{
			if (argument2 == 0)
			{
				mywriter = instance_create(argument0, argument1, "obj_writer");
				return mywriter;
			}

			if (argument2 == 1)
			{
				myblcon = instance_create(argument0, argument1, "obj_battleblcon");
				return myblcon;
			}

			if (argument2 == 2)
			{
				myblcon = instance_create(argument0, argument1, "obj_battleblcon");
				myblcon.sprite_index = "spr_battleblcon_v";
				return myblcon;
			}

			if (argument2 == 3)
			{
				myblcon = instance_create(argument0, argument1, "obj_battleblcon");
				myblcon.sprite_index = "spr_battleblcon_long";
				return myblcon;
			}

			if (argument2 == 4)
			{
				myblcon = instance_create(argument0, argument1, "obj_battleblcon");
				myblcon.sprite_index = "spr_battleblcon_clubs";
				myblcon.image_index = 0;
				myblcon.image_speed = 0;
				return myblcon;
			}

			if (argument2 == 5)
			{
				myblcon = instance_create(argument0, argument1, "obj_battleblcon");
				myblcon.sprite_index = "spr_battleblcon_clubs";
				myblcon.image_index = 1;
				myblcon.image_speed = 0;
				return myblcon;
			}

			if (argument2 == 6)
			{
				myblcon = instance_create(argument0, argument1, "obj_battleblcon");
				myblcon.sprite_index = "spr_battleblcon_clubs";
				myblcon.image_index = 2;
				myblcon.image_speed = 0;
				return myblcon;
			}

			if (argument2 == 7)
			{
				myblcon = instance_create(argument0, argument1, "obj_battleblcon");
				myblcon.sprite_index = "spr_battleblcon_long_r";
				myblcon.image_index = 2;
				myblcon.image_speed = 0;
				return myblcon;
			}

			if (argument2 == 8)
			{
				myblcon = instance_create(argument0, argument1, "obj_battleblcon");
				myblcon.sprite_index = "spr_battleblcon_long_tall";
				return myblcon;
			}

			return null;
		}

		public obj_writer scr_battletext_default()
		{
			global.fc = 0;
			global.typer = 4;
			scr_battletext();
			return battlewriter;
		}

		public void scr_mercyadd(int argument0, int argument1)
		{
			global.mercymod[argument0] += argument1;
			if (global.mercymod[argument0] < 0)
				global.mercymod[argument0] = 0;
		}

		public dynamic scr_moveheart()
		{
			var obj_herokris = FindObjectOfType<obj_herokris>();
			return instance_create((obj_herokris.x + 10), (obj_herokris.y + 40), "obj_moveheart");
		}

		public void scr_boltcheck(int argument0)
		{
			pressbuffer[global.chara[argument0]] = 5;
			qualifybolt = -1;
			close = 99;
			topclose = 99;
			for (i = 0; i < bolttotal; i += 1)
			{
				if (boltchar[i] == argument0 && boltalive[i] == 1)
				{
					close = (boltframe[i, 0] - boltx);
					if (close < 15 && close > -5)
					{
						if (close < topclose)
						{
							topclose = close;
							qualifybolt = i;
						}
					}
				}
			}

			if (qualifybolt != -1)
			{
				p = abs(topclose);
				burstbolt = instance_create((((x + 80) + (boltframe[qualifybolt, 0] * boltspeed)) - (boltx * boltspeed)), (y + (38 * argument0)), "obj_burstbolt");
				if (p == 0)
				{
					points[argument0] += 150;
					burstbolt.image_blend = c_yellow;
					burstbolt.mag = 0.2;
				}

				if (p == 1)
					points[argument0] += 120;
				if (p == 2)
					points[argument0] += 110;
				if (p >= 3)
				{
					points[argument0] += (100 - (abs(topclose) * 2));
					burstbolt.image_blend = boltcolor[argument0];
				}

				if (p >= 15)
					burstbolt.image_blend = charcolor[argument0];
				boltalive[qualifybolt] = 0;
			}
		}

		public void scr_boltcheck_onebutton(int argument0)
		{
			dualbolt = -1;
			dualboltid = -1;
			pressbuffer[0] = 5;
			pressbuffer[1] = 5;
			pressbuffer[2] = 5;
			qualifybolt = -1;
			close = 99;
			topclose = 999;
			for (i = 0; i < bolttotal; i += 1)
			{
				if (boltalive[i] == 1)
				{
					close = (boltframe[i,0] - boltx);
					if (close < 15 && close > -5)
					{
						if (close == topclose)
						{
							dualbolt = 1;
							dualboltid = i;
						}
						if (close < topclose)
						{
							topclose = close;
							qualifybolt = i;
						}
					}
				}
			}

			if (qualifybolt != -1)
			{
				bc = boltchar[qualifybolt];
				p = abs(topclose);
				burstbolt = instance_create((((x + 80) + (boltframe[qualifybolt, 0] * boltspeed)) - (boltx * boltspeed)), (y + (38 * bc)), "obj_burstbolt");
				if (p == 0)
				{
					points[bc] += 150;
					burstbolt.image_blend = c_yellow;
					burstbolt.mag = 0.2;
				}

				if (p == 1)
					points[bc] += 120;
				if (p == 2)
					points[bc] += 110;
				if (p >= 3)
				{
					points[bc] += (100 - (abs(topclose) * 2));
					burstbolt.image_blend = boltcolor[bc];
				}

				if (p >= 15)
					burstbolt.image_blend = charcolor[bc];
				boltalive[qualifybolt] = 0;

				if (dualbolt == 1)
				{
					bc = boltchar[dualboltid];
					p = abs(topclose);
					burstbolt = instance_create((((x + 80) + (boltframe[dualboltid, 0] * boltspeed)) - (boltx * boltspeed)), (y + (38 * bc)), "obj_burstbolt");
					if (p == 0)
					{
						points[bc] += 150;
						burstbolt.image_blend = c_yellow;
						burstbolt.mag = 0.2;
					}

					if (p == 1)
						points[bc] += 120;
					if (p == 2)
						points[bc] += 110;
					if (p >= 3)
					{
						points[bc] += (100 - (abs(topclose) * 2));
						burstbolt.image_blend = boltcolor[bc];
					}

					if (p >= 15)
						burstbolt.image_blend = charcolor[bc];
					boltalive[dualboltid] = 0;
				}
			}
		}

		public void scr_damage_all()
		{
			if (global.inv < 0)
			{
				remdamage = damage;
				_temptarget = target;
				for (ti = 0; ti < 3; ti += 1)
				{
					global.inv = -1;
					damage = remdamage;
					target = ti;
					if (global.hp[global.chara[ti]] > 0 && global.chara[ti] != 0)
						scr_damage();
				}

				global.inv = (global.invc * 40);
				target = _temptarget;
			}
		}

		public void scr_endcombat()
		{
			global.fighting = false;
			if (global.specialbattle == 0 || global.specialbattle == 2 || global.specialbattle == 3)
			{
				if (global.specialbattle == 2)
				{
					throw new NotImplementedException("global.specialbattle == 2");
				}

				instance_create(0, 0, "obj_endbattle");
				foreach (var item in with<obj_monsterparent>())
				{
					item.instance_destroy();
				}
				foreach (var item in with<obj_bulletparent>())
				{
					item.instance_destroy();
				}
				foreach (var item in with<obj_heroparent>())
				{
					item.instance_destroy();
				}
				instance_destroy();
			}
		}

		public void draw_background_tiled_ext(string argument0, int argument1, double argument2, double argument3, double argument4, int argument5, double argument6)
		{
			draw_sprite_tiled_ext(argument0, 0, argument1, argument2, argument3, argument4, argument5, argument6);
		}

		public void scr_caterpillar_interpolate()
		{
			remx[0] = obj_mainchara.x;
			remy[0] = obj_mainchara.y;
			facing[0] = global.facing;
			for (i = target; i > 0; i -= 1)
			{
				facing[i] = 2;
				remx[i] = (obj_mainchara.x + ((x - obj_mainchara.x) * (i / (double)target)));
				remy[i] = (obj_mainchara.y + ((y - obj_mainchara.y) * (i / (double)target)));
			}
		}

		public void scr_itemget(int argument0)
		{
			i = 0;
			loop = true;
			noroom = false;
			global.item[12] = 999;
			while (loop == true)
			{
				if (global.item[i] == 0)
				{
					global.item[i] = argument0;
					break;
				}
				else if (i == 12)
				{
					noroom = true;
					break;
				}
				else
				{
					i += 1;
					continue;
				}
			}

			scr_iteminfo_all();
		}

		public void scr_move_to_point_over_time(double argument0, double argument1, double argument2)
		{
			_mmm = instance_create(x, y, "obj_move_to_point");
			_mmm.target = id;
			_mmm.movex = argument0;
			_mmm.movey = argument1;
			_mmm.movemax = argument2;
		}

		public bool scr_debug()
		{
			return false;
		}

		public bool scr_outside_camera(double argument0)
		{
			_offcamera = false;
			rightx = (x + sprite_width);
			leftx = x;
			bottomy = (y + sprite_height);
			topy = y;
			if (x > ((__view_get(0, 0) + __view_get(2, 0)) + argument0))
				_offcamera = true;
			if (rightx < (__view_get(0, 0) - argument0))
				_offcamera = true;
			if (y > ((__view_get(1, 0) + __view_get(3, 0)) + argument0))
				_offcamera = true;
			if (bottomy < (__view_get(1, 0) - argument0))
				_offcamera = true;
			return _offcamera;
		}

		public void scr_monstersetup()
		{
			global.monstername[myself] = "bepis";

			if (global.monstertype[myself] == 1)
			{
				global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_4_0");
				global.monstermaxhp[myself] = 130;
				global.monsterhp[myself] = 130;
				global.monsterat[myself] = 7;
				global.monsterdf[myself] = 0;
				global.monsterexp[myself] = 0;
				global.monstergold[myself] = 0;
				global.sparepoint[myself] = 10;
				global.mercymod[myself] = 0;
				global.mercymax[myself] = 100;
				global.canact[myself, 0] = true;
				global.actname[myself, 0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_16_0");
				global.canact[myself, 1] = true;
				global.actname[myself, 1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_18_0");
				global.canact[myself, 2] = true;
				global.actname[myself, 2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_20_0");
				global.canact[myself, 3] = true;
				global.actname[myself, 3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_22_0");
				global.canact[myself, 4] = true;
				global.actname[myself, 4] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_24_0");
				global.canact[myself, 5] = true;
				global.actname[myself, 5] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_26_0");
				global.battlemsg[0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_27_0");
			}
			if (global.monstertype[myself] == 2)
			{
				global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_32_0");
				global.monstermaxhp[myself] = 540;
				global.monsterhp[myself] = 540;
				global.monsterat[myself] = 5;
				global.monsterdf[myself] = 1;
				global.monsterexp[myself] = 0;
				global.monstergold[myself] = 20;
				global.sparepoint[myself] = 10;
				global.mercymod[myself] = 0;
				global.mercymax[myself] = 100;
				global.canact[myself, 0] = true;
				global.actname[myself, 0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_44_0");
				global.canact[myself, 1] = true;
				global.actname[myself, 1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_47_0");
				global.canact[myself, 2] = true;
				global.actname[myself, 2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_50_0");
				global.battlemsg[0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_51_0");
			}
			if (global.monstertype[myself] == 3)
			{
				global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_59_0");
				global.monstermaxhp[myself] = 450;
				global.monsterhp[myself] = 450;
				global.monsterat[myself] = 0;
				global.monsterdf[myself] = 0;
				global.monsterexp[myself] = 0;
				global.monstergold[myself] = 0;
				global.sparepoint[myself] = 0;
				global.mercymod[myself] = 0;
				global.mercymax[myself] = 100;
				global.canact[myself, 0] = true;
				global.actname[myself, 0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_71_0");
				global.canact[myself, 1] = true;
				global.actname[myself, 1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_73_0");
				global.canact[myself, 2] = true;
				global.actname[myself, 2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_75_0");
				global.actactor[myself, 2] = 3;
				global.battlemsg[0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_78_0");
			}
			if (global.monstertype[myself] == 4)
			{
				global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_83_0");
				global.monstermaxhp[myself] = 90;
				global.monsterhp[myself] = 90;
				global.monsterat[myself] = 8;
				global.monsterdf[myself] = 6;
				global.monsterexp[myself] = 0;
				global.monstergold[myself] = 0;
				global.sparepoint[myself] = 0;
				global.mercymod[myself] = 0;
				global.mercymax[myself] = 100;
				global.canact[myself, 0] = true;
				global.actname[myself, 0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_95_0");
				global.canact[myself, 1] = true;
				global.actname[myself, 1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_97_0");
				global.battlemsg[0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_98_0");
			}

			if (global.monstertype[myself] == 5)
			{
				global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_103_0");
				global.monstermaxhp[myself] = 120;
				global.monsterhp[myself] = 120;
				global.monsterat[myself] = 5;
				global.monsterdf[myself] = 0;
				global.monsterexp[myself] = 0;
				global.monstergold[myself] = 30;
				global.sparepoint[myself] = 10;
				global.mercymod[myself] = 0;
				global.mercymax[myself] = 100;
				global.canact[myself, 0] = true;
				global.actname[myself, 0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_115_0");
				global.canact[myself, 1] = true;
				global.actname[myself, 1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_117_0");
				global.canact[myself, 2] = true;
				global.actname[myself, 2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_119_0");
				if (scr_havechar(2) && global.plot < 150)
				{
					global.canact[myself, 3] = true;
					global.actname[myself, 3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_123_0");
					global.actactor[myself, 3] = 3;
				}
			}

			if (global.monstertype[myself] == 6)
			{
				global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_132_0");
				global.monstermaxhp[myself] = 150;
				global.monsterhp[myself] = 150;
				global.monsterat[myself] = 6;
				global.monsterdf[myself] = 0;
				global.monsterexp[myself] = 0;
				global.monstergold[myself] = 28;
				global.sparepoint[myself] = 10;
				global.mercymod[myself] = 0;
				global.mercymax[myself] = 100;
				global.canact[myself, 0] = true;
				global.actname[myself, 0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_144_0");
				global.canact[myself, 1] = true;
				global.actname[myself, 1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_146_0");
				global.canact[myself, 2] = true;
				global.actname[myself, 2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_148_0");
				global.actactor[myself, 2] = 3;
				if (global.encounterno == 7)
				{
					global.actactor[myself, 2] = 2;
					if (global.plot < 40)
						global.plot = 40;
				}

				if (scr_havechar(2) && global.plot < 150)
				{
					global.canact[myself, 3] = true;
					global.actname[myself, 3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_154_0");
					global.actactor[myself, 3] = 3;
				}

				if (scr_havechar(2) && global.plot >= 150)
				{
					global.canact[myself, 3] = true;
					global.actname[myself, 3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_160_0");
					global.actactor[myself, 3] = 2;
				}
			}

			if (global.monstertype[myself] == 9)
			{
				global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_251_0");
				global.monstermaxhp[myself] = 10;
				global.monsterhp[myself] = 10;
				global.monsterat[myself] = 5;
				global.monsterdf[myself] = 0;
				global.monsterexp[myself] = 0;
				global.monstergold[myself] = 10;
				global.sparepoint[myself] = 0;
				global.mercymod[myself] = 0;
				global.mercymax[myself] = 100;
				global.canact[myself, 0] = true;
				global.actname[myself, 0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_263_0");
				if (global.encounterno == 7)
				{
					if (global.plot < 40)
						global.plot = 40;
				}

				if (scr_havechar(2))
				{
					global.canact[myself, 1] = true;
					global.actactor[myself, 1] = 2;
					global.actname[myself, 1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_271_0");
					global.canact[myself, 2] = true;
					global.actname[myself, 2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_274_0");
					global.actactor[myself, 2] = 3;
				}
			}

			if (global.monstertype[myself] == 15)
			{
				global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_420_0");
				global.monstermaxhp[myself] = 90;
				global.monsterhp[myself] = 90;
				global.monsterat[myself] = 5;
				global.monsterdf[myself] = 0;
				global.monsterexp[myself] = 0;
				global.monstergold[myself] = 20;
				global.sparepoint[myself] = 10;
				global.mercymod[myself] = 0;
				global.mercymax[myself] = 100;
				global.canact[myself, 0] = true;
				global.actname[myself, 0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_432_0");
				global.canact[myself, 1] = true;
				global.actname[myself, 1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_434_0");
				if (scr_havechar(2) && global.plot < 150)
				{
					global.canact[myself, 2] = true;
					global.actname[myself, 2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_440_0");
					global.actactor[myself, 2] = 3;
				}
			}

			if (global.monstertype[myself] == 20)
			{
				global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_562_0");
				global.monstermaxhp[myself] = 3500;
				global.monsterhp[myself] = 3500;
				global.monsterat[myself] = 10;
				global.monsterdf[myself] = 5;
				global.monsterexp[myself] = 0;
				global.monstergold[myself] = 0;
				global.sparepoint[myself] = 0;
				global.mercymod[myself] = 0;
				global.mercymax[myself] = 999;
				global.canact[myself, 0] = true;
				global.actname[myself, 0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_574_0");
				global.canact[myself, 1] = true;
				global.actactor[myself, 1] = 1;
				global.actname[myself, 1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_579_0");
				global.actdesc[myself, 1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_580_0");
				global.actcost[myself, 1] = 50;
				global.canact[myself, 2] = true;
				global.actactor[myself, 2] = 4;
				global.actname[myself, 2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_585_0");
				global.actdesc[myself, 2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_586_0");
				global.actcost[myself, 2] = 125;
			}

			if (global.monstername[myself] == "bepis")
			{
				throw new NotImplementedException(global.monstertype[myself].ToString());
			}
		}

		public void scr_defeatrun()
		{
			defeatanim = instance_create(x, y, "obj_defeatanim");
			defeatanim.sprite_index = sprite_index;
			defeatanim.sprite_index = hurtsprite;
			defeatanim.image_index = 0;
			defeatanim.image_xscale = image_xscale;
			defeatanim.image_yscale = image_yscale;
			instance_destroy();
		}

		public void scr_blconskip(int argument0)
		{
			if (argument0 != -1)
			{
				if (button1_p() && talktimer > argument0)
					talktimer = talkmax;
				talktimer += 1;
				if (talktimer >= talkmax)
				{
					foreach (var item in with<obj_writer>())
					{
						item.instance_destroy();
					}

					global.mnfight = 2;
				}
			}

			if (argument0 == -1)
			{
				if (instance_exists("obj_writer") == false)
					global.mnfight = 2;
			}
		}

		public void scr_spelltext(int argument0, int argument1)
		{
			spell = argument0;
			caster = argument1;
			star = global.chartarget[argument1];
			spelltext = " ";
			switch (spell)
			{
				case 0:
					break;
				case 1:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_14_0"), global.charname[global.chara[caster]]);
					break;
				case 2:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_18_0"), global.charname[global.chara[caster]]);
					break;
				case 3:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_23_0"), global.charname[global.chara[caster]]);
					scr_retarget_spell();
					if (global.monster[star] == 1)
					{
						if (global.monsterstatus[star] == true)
						{
						}
						else
						{
							global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_33_0"), global.charname[global.chara[caster]]);
							if (global.mercymod[star] >= 100)
								global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_36_0"), global.charname[global.chara[caster]]);
						}
					}

					break;
				case 4:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_43_0"), global.charname[global.chara[caster]]);
					break;
				case 5:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_47_0"), global.charname[global.chara[caster]]);
					break;
				case 6:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_51_0"), global.charname[global.chara[caster]]);
					break;
				case 100:
					cancelattack = false;
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_58_0"), global.charname[global.chara[caster]], global.monstername[star]);
					scr_retarget_spell();
					if (global.mercymod[star] >= 100)
						global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_62_0"), global.charname[global.chara[caster]], global.monstername[star]);
					else
					{
						global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_66_0"), global.charname[global.chara[caster]], global.monstername[star]);
						if (global.monsterstatus[star] == true)
						{
							global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_69_0"), global.charname[global.chara[caster]], global.monstername[star]);
							global.msg[1] = scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_70_0");
						}
					}

					if (cancelattack == true)
						global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_73_0"), global.charname[global.chara[caster]]);
					break;
				case 201:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_78_0"), global.charname[global.chara[caster]]);
					break;
				case 202:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_82_0"), global.charname[global.chara[caster]]);
					break;
				case 203:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_86_0"), global.charname[global.chara[caster]]);
					global.msg[1] = scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_87_0");
					spec_shard = 0;
					for (_en = 0; _en < 3; _en += 1)
					{
						shardtest[_en] = 0;
						if (global.monster[_en] == 1)
						{
							if (global.monstertype[_en] == 5)
							{
								spec_shard = 1;
								shardtest[_en] = 1;
								global.mercymod[_en] = 200;
							}
						}
					}

					if (spec_shard > 0)
					{
						scr_itemshift(global.bmenucoord[4, argument1], 0);
						global.msg[1] = "";
						global.msg[2] = scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_109_0");
						for (_j = 0; _j < 3; _j += 1)
						{
							if (shardtest[_j] == 1)
								global.msg[1] += scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_112_0"), global.monstername[_j]);
						}

						global.msg[1] += "/";
					}

					break;
				case 204:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_122_0"), global.charname[global.chara[caster]]);
					global.msg[1] = scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_123_0");
					spec_shard = 0;
					for (_en = 0; _en < 3; _en += 1)
					{
						shardtest[_en] = 0;
						if (global.monster[_en] == 1)
						{
							if (global.monstertype[_en] == 5)
							{
								spec_shard = 1;
								shardtest[_en] = 1;
								global.monsterstatus[_en] = true;
								global.monstercomment[_en] = scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_135_0");
							}

							if (global.monstertype[_en] == 6)
							{
								spec_shard = 1;
								shardtest[_en] = 2;
							}

							if (global.monstertype[_en] == 7 || global.monstertype[_en] == 16)
							{
								spec_shard = 1;
								shardtest[_en] = 3;
								global.monsterinstance[_en].battlecancel = 1;
								if (global.monsterinstance[_en].manual == 0)
								{
									global.monsterinstance[_en].manual = 1;
									global.monsterinstance[_en].scr_mercyadd(global.monsterinstance[_en].myself, 50);
								}
							}
						}
					}

					if (spec_shard > 0)
					{
						global.msg[1] = "";
						for (_j = 0; _j < 3; _j += 1)
						{
							if (shardtest[_j] == 1)
								global.msg[1] += scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_168_0"), global.monstername[_j]);
							if (shardtest[_j] == 2)
								global.msg[1] += scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_169_0"), global.monstername[_j]);
							if (shardtest[_j] == 3)
								global.msg[1] += scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_170_0"), global.monstername[_j]);
						}

						global.msg[1] += scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_172_0");
					}

					break;
				case 205:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_179_0"), global.charname[global.chara[caster]]);
					break;
				case 206:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_183_0"), global.charname[global.chara[caster]]);
					break;
				case 207:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_187_0"), global.charname[global.chara[caster]]);
					break;
				case 208:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_191_0"), global.charname[global.chara[caster]]);
					break;
				case 209:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_194_0"), global.charname[global.chara[caster]]);
					break;
				case 210:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_197_0"), global.charname[global.chara[caster]]);
					break;
				case 211:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_200_0"), global.charname[global.chara[caster]]);
					break;
				case 212:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_203_0"), global.charname[global.chara[caster]]);
					break;
				case 213:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_206_0"), global.charname[global.chara[caster]]);
					break;
				case 214:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_209_0"), global.charname[global.chara[caster]]);
					break;
				case 215:
					global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_spelltext_slash_scr_spelltext_gml_212_0"), global.charname[global.chara[caster]]);
					break;
				default:
					break;
			}
		}

		public void scr_retarget_spell()
		{
			cancelattack = false;
			if (star == 0)
			{
				if (global.monster[0] == 0)
					star = 1;
			}

			if (star == 1)
			{
				if (global.monster[1] == 0)
					star = 2;
			}

			if (star == 2)
			{
				if (global.monster[2] == 0)
					star = 3;
				if (star == 3 && global.monster[0] == 1)
					star = 0;
				if (star == 3 && global.monster[1] == 1)
					star = 1;
				if (star == 3)
					cancelattack = true;
			}
		}

		public void scr_keyitemget(int argument0)
		{
			i = 0;
			loop = true;
			noroom = false;
			global.item[12] = 999;
			while (loop == true)
			{
				if (global.keyitem[i] == 0)
				{
					global.keyitem[i] = argument0;
					break;
				}
				else if (i == 12)
				{
					noroom = true;
					break;
				}
				else
				{
					i += 1;
					continue;
				}
			}

			scr_keyiteminfo_all();
		}

		public void scr_armorget(int argument0)
		{
			i = 0;
			loop = true;
			noroom = false;
			global.armor[12] = 999;
			while (loop == true)
			{
				if (global.armor[i] == 0)
				{
					global.armor[i] = argument0;
					break;
				}
				else if (i == 12)
				{
					noroom = true;
					break;
				}
				else
				{
					i += 1;
					continue;
				}
			}

			scr_armorinfo_all();
		}

		public void scr_weaponget(int argument0)
		{
			i = 0;
			loop = true;
			noroom = false;
			global.weapon[12] = 999;
while (loop == true)
{
    if (global.weapon[i] == 0)
    {
	    global.weapon[i] = argument0;
	    break;
    }
    else if (i == 12)
    {
	    noroom = true;
	    break;
    }
    else
    {
	    i += 1;
	    continue;
    }
}
scr_weaponinfo_all();
		}

		public void scr_darkbox_black(double argument0, double argument1, double argument2, double argument3)
		{
			draw_set_color(c_black);
			draw_rectangle((argument0 + 20), (argument1 + 20), (argument2 - 20), (argument3 - 20), false);
			scr_darkbox(argument0, argument1, argument2, argument3);
		}

		public void scr_shopmenu(int argument0)
		{
			if (argument0 == 0)
			{
				if (menu == 1 || menu == 2)
				{
					scr_darkbox_black(400, minimenuy, 640, 255);
					draw_set_color(c_white);
					scr_84_set_draw_font("mainbig");
					if (menuc[1] == 0)
						draw_text(440, (minimenuy + 28), string_hash_to_newline(shopdesc[0]));
					if (menuc[1] == 1)
						draw_text(440, (minimenuy + 28), string_hash_to_newline(shopdesc[1]));
					if (menuc[1] == 2)
						draw_text(440, (minimenuy + 28), string_hash_to_newline(shopdesc[2]));
					if (menuc[1] == 3)
						draw_text(440, (minimenuy + 28), string_hash_to_newline(shopdesc[3]));
					scr_84_set_draw_font("dotumche");
					if (itemtype[menuc[1]] == "weapon" || itemtype[menuc[1]] == "armor")
					{

					}
				}
			}

			if (argument0 == 4)
			{
				if (menu == 11 || menu == 15)
				{
					throw new NotImplementedException("11 or 15");
				}

				if (menu == 12 || menu == 16)
				{
					throw new NotImplementedException("12 or 16");
				}

				if (menu == 13 || menu == 17)
				{
					throw new NotImplementedException("13 or 17");
				}
			}

			if (argument0 == 5)
			{
				if (menu == 15)
				{
					throw new NotImplementedException("15");
				}

				if (menu == 16)
				{
					throw new NotImplementedException("16");
				}

				if (menu == 17)
				{
					throw new NotImplementedException("17");
				}
			}
		}

		public bool scr_armorcheck_inventory(int argument0)
		{
			haveit = false;
			itemcount = 0;
			for (i = 0; i < 12; i += 1)
			{
				if (global.armor[i] == argument0)
					haveit = true;

				if (global.armor[i] == argument0)
					itemcount += 1;
			}
			return haveit;
		}

		public bool scr_weaponcheck_inventory(int argument0)
		{
			haveit = false;
			itemcount = 0;
			for (i = 0; i < 12; i += 1)
			{
				if (global.weapon[i] == argument0)
					haveit = true;

				if (global.weapon[i] == argument0)
					itemcount += 1;
			}
			return haveit;
		}

		public void scr_bullet_inherit(GamemakerObject argument0)
		{
			if (instance_exists(argument0))
			{
				argument0.damage = damage;
				argument0.grazepoints = grazepoints;
				argument0.timepoints = timepoints;
				argument0.inv = inv;
				argument0.target = target;
				argument0.grazed = false;
				argument0.grazetimer = 0;
			}
		}

		public void scr_caterpillar_facing(int argument0)
		{
			foreach (var item in with<obj_caterpillarchara>())
			{
				for (i = 0; i < 25; i += 1)
					item.facing[i] = argument0;
			}
		}

		public string scr_84_get_sound(string argument0)
		{
			return argument0;
		}

		public void scr_targetall()
		{
			for (_ti = 0; _ti < 3; _ti += 1)
			{
				if (global.charcantarget[_ti] == true)
					global.targeted[_ti] = true;
			}

			mytarget = 3;
			target = 3;
		}

		public dynamic __background_set(int argument0, int argument1, object argument2)
		{
			var __prop = argument0;
			var __bind = argument1;
			var __val = argument2;
			var __backinfo = __background_get_element(__bind);
			__background_set_internal(__prop, __bind, __val, __backinfo);
			var __res = __background_get_internal(__prop, __bind, __backinfo);
			return __res;
		}

		public int[] __background_get_element(int argument0)
		{
			var __result = new int[3];
			var __bind = argument0;
			__result[0] = -1;
			__result[1] = -1;
			__result[2] = -1;
			var __fgstring = "Compatibility_Foreground_";
			var __bgstring = "Compatibility_Background_";
			var __fglen = string_length(__fgstring);
			var __bglen = string_length(__bgstring);
			var __layerlist = layer_get_all();
			var __layerlistlength = array_length_1d(__layerlist);
			var __layerid = -1;
			var __isforeground = 0;
			var __i = 0;
			while (__i < __layerlistlength)
			{
				var __layername = layer_get_name(__layerlist[__i]);
				if (string_pos(__fgstring, __layername) > 0)
				{
					var __slotchr = string_char_at(__layername, (__fglen + 1));
					if (__slotchr == "")
					{
						__i++;
						continue;
					}
					else
					{
						var __slot = real(__slotchr);
						if (__slot == __bind)
						{
							__layerid = __layerlist[__i];
							__isforeground = 1;
							break;
						}
						else
						{
							__i++;
							continue;
						}
					}
				}
				else if (string_pos(__bgstring, __layername) > 0)
				{
					var __slotchr = string_char_at(__layername, (__bglen + 1));
					if (__slotchr == "")
					{
						__i++;
						continue;
					}
					else
					{
						var __slot = real(__slotchr);
						if (__slot == __bind)
						{
							__layerid = __layerlist[__i];
							__isforeground = 0;
							break;
						}
						else
						{
							__i++;
							continue;
						}
					}
				}
				else
				{
					__i++;
					continue;
				}
			}

			if (__layerid != -1)
			{
				var __els = layer_get_all_elements(__layerid);
				var __elslength = array_length_1d(__els);
				for (__i = 0; __i < __elslength; __i++)
				{
					if (layer_get_element_type(__els[__i]) == 1)
					{
						__result[0] = __els[__i];
						__result[1] = __layerid;
						__result[2] = __isforeground;
					}
				}
			}
			else
			{
				var __newback = __background_set_element(__bind, false, 0, "", 0, 0, 1, 1, 1, 1, 1, 0, 0, c_white, 1);
				__result[0] = __newback[0];
				__result[1] = __newback[1];
				__result[2] = 0;
			}

			return __result;
		}

		public int[] __background_set_element(
			int argument0,
			GMBOOL argument1,
			int argument2,
			string argument3,
			double argument4,
			double argument5,
			GMBOOL argument6,
			GMBOOL argument7,
			double argument8,
			double argument9,
			GMBOOL argument10,
			double argument11,
			double argument12,
			int argument13,
			double argument14)
		{
			//var __result, __slots, __isforeground;
			var __result = new int[2];
			var __slots = new int[8];
			var __isforeground = new int[8];
			var __bind = argument0;
			var __vis = argument1;
			var __fore = argument2;
			var __back = argument3;
			var __x = argument4;
			var __y = argument5;
			var __htiled = argument6;
			var __vtiled = argument7;
			var __xscale = argument8;
			var __yscale = argument9;
			var __stretch = argument10;
			var __hspeed = argument11;
			var __vspeed = argument12;
			var __blend = argument13;
			var __alpha = argument14;
			var __nearestdepth = 1000000000;
			var __farthestdepth = -1000000000;
			var __depthinc = 100;
			__result[0] = -1;
			__result[1] = -1;
			var __fgstring = "Compatibility_Foreground_";
			var __bgstring = "Compatibility_Background_";
			var __colstring = "Compatibility_Colour";
			var __fglen = string_length(__fgstring);
			var __bglen = string_length(__bgstring);
			var __layerlist = layer_get_all();
			var __layerlistlength = array_length_1d(__layerlist);
			var __collayer = -1;
			for (var __i = 0; __i < 8; __i++)
			{
				__slots[__i] = -1;
				__isforeground[__i] = 0;
			}

			int __slot = 0;
			string __layername = "";

			for (var __i = 0; __i < __layerlistlength; __i++)
			{
				__layername = layer_get_name(__layerlist[__i]);
				if (string_pos(__fgstring, __layername) > 0)
				{
					var __slotchr = string_char_at(__layername, (__fglen + 1));
					if (__slotchr == "")
					{
					}
					else
					{
						__slot = (int)real(__slotchr);
						__slots[__slot] = __layerlist[__i];
						__isforeground[__slot] = 1;
					}
				}
				else if (string_pos(__bgstring, __layername) > 0)
				{
					var __slotchr = string_char_at(__layername, (__bglen + 1));
					if (__slotchr == "")
					{
					}
					else
					{
						__slot = (int)real(__slotchr);
						__slots[__slot] = __layerlist[__i];
						__isforeground[__slot] = 0;
					}
				}
				else if (string_pos(__colstring, __layername) > 0)
				{
					__collayer = __layerlist[__i];
					layer_depth(__layerlist[__i], __farthestdepth);
				}
				else
				{
					var __currdepth = layer_get_depth(__layerlist[__i]);
					if (__currdepth < __nearestdepth)
						__nearestdepth = __currdepth;
					if (__currdepth > __farthestdepth)
						__farthestdepth = __currdepth;
				}
			}

			__farthestdepth += (__depthinc + 1000);
			__nearestdepth -= __depthinc;
			__farthestdepth = max(__farthestdepth, 2147483600);
			__nearestdepth = min(__nearestdepth, -2147482000);

			for (var __i = 0; __i < 8; __i++)
			{
				if (__slots[__i] != -1)
				{
					var __depth = 0;
					if (__isforeground[__i] == 1)
						__depth = (__nearestdepth - (__i * __depthinc));
					else
						__depth = ((__farthestdepth - __depthinc) - (__slot * __depthinc));
					layer_depth(__slots[__i], __depth);
				}
			}

			int __layerdepth = 0;

			if (__collayer != -1)
				layer_depth(__collayer, __farthestdepth);
			if (__bind == -1)
			{
				__layername = __colstring;
				__layerdepth = __farthestdepth;
			}
			else if (__fore == 1)
			{
				__layername = (__fgstring + gm_string(__bind));
				__layerdepth = (__nearestdepth - (__bind * __depthinc));
			}
			else
			{
				__layername = (__bgstring + gm_string(__bind));
				__layerdepth = ((__farthestdepth - __depthinc) - (__bind * __depthinc));
			}

			int __layerid = 0;

			if (__bind == -1)
				__layerid = __collayer;
			else
				__layerid = __slots[__bind];

			if (__layerid != -1)
				layer_destroy(__layerid);

			__layerid = layer_create(__layerdepth, __layername);
			layer_x(__layerid, __x);
			layer_y(__layerid, __y);
			layer_hspeed(__layerid, __hspeed);
			layer_vspeed(__layerid, __vspeed);
			var __backel = layer_background_create(__layerid, __back);
			layer_background_visible(__backel, __vis);
			layer_background_htiled(__backel, __htiled);
			layer_background_vtiled(__backel, __vtiled);
			layer_background_xscale(__backel, __xscale);
			layer_background_yscale(__backel, __yscale);
			layer_background_stretch(__backel, __stretch);
			layer_background_blend(__backel, __blend);
			layer_background_alpha(__backel, __alpha);
			__result[0] = __backel;
			__result[1] = __layerid;
			return __result;
		}

		public int __background_set_internal(int argument0, int argument1, dynamic argument2, int[] argument3)
		{
			var __prop = argument0;
			var __bind = argument1;
			var __val = argument2;
			var __backinfo = argument3;
			if (__backinfo[0] == -1)
				return -1;
			var __backid = __backinfo[0];
			var __layerid = __backinfo[1];
			var __isfore = __backinfo[2];

			if (__prop == 1)
			{
				if (round(__val) != round(__isfore))
				{
					var __visible = layer_get_visible(__layerid);
					var __index = layer_background_get_sprite(__backid);
					var __htiled = layer_background_get_htiled(__backid);
					var __vtiled = layer_background_get_vtiled(__backid);
					var __stretch = layer_background_get_stretch(__backid);
					var __blend = layer_background_get_blend(__backid);
					var __alpha = layer_background_get_alpha(__backid);
					var __xscale = layer_background_get_xscale(__backid);
					var __yscale = layer_background_get_yscale(__backid);
					var __x = layer_get_x(__layerid);
					var __y = layer_get_y(__layerid);
					var __hspeed = layer_get_hspeed(__layerid);
					var __vspeed = layer_get_vspeed(__layerid);
					__background_set_element(__bind, __visible, __val, __index, __x, __y, __htiled, __vtiled, __xscale, __yscale, __stretch, __hspeed, __vspeed, __blend, __alpha);
				}
			}
			else
			{
				switch (__prop)
				{
					case 0:
						layer_set_visible(__layerid, __val);
						break;
					case 2:
						layer_background_change(__backid, __val);
						break;
					case 3:
						layer_x(__layerid, __val);
						break;
					case 4:
						layer_y(__layerid, __val);
						break;
					case 7:
						layer_background_htiled(__backid, __val);
						break;
					case 8:
						layer_background_vtiled(__backid, __val);
						break;
					case 9:
						layer_background_xscale(__backid, __val);
						break;
					case 10:
						layer_background_yscale(__backid, __val);
						break;
					case 11:
						layer_hspeed(__layerid, __val);
						break;
					case 12:
						layer_vspeed(__layerid, __val);
						break;
					case 13:
						layer_background_blend(__backid, __val);
						break;
					case 14:
						layer_background_alpha(__backid, __val);
						break;
					default:
						break;
				}
			}

			return -1;
		}
	}
}
