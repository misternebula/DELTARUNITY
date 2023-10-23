using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_overworldc : GamemakerObject
	{
		public override void Create()
		{
			buffer = 0;
			saved = 0;
			selnoise = false;
			movenoise = false;
		}

		public override void Step_0()
		{
			if (global.interact == 5)
			{
				currentmenu = global.menuno;
				if (global.menuno < 6)
					currentspot = global.menucoord[global.menuno];
				if (button1_p())
				{
					if (global.menuno == 5)
					{
						if (global.menucoord[5] == 0)
						{
							global.menuno = 9;
							scr_litemuseb(global.menucoord[1], global.litem[global.menucoord[1]]);
						}
						if (global.menucoord[5] == 1)
						{
							global.menuno = 9;
							scr_litemdesc(global.litem[global.menucoord[1]]);
							scr_writetext(0, "x", 0, 0);
						}
						if (global.menucoord[5] == 2)
						{
							dontthrow = 0;
							global.menuno = 9;
							if (global.litem[global.menucoord[1]] == 5)
								dontthrow = 1;
							if (dontthrow == 0)
							{
								i = round(random(30));
								if (i == 0)
									global.msg[0] = ((scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_32_0") + global.litemname[global.menucoord[1]]) + ".");
								if (i == 1)
									global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_33_0"), global.litemname[global.menucoord[1]]);
								if (i == 2)
									global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_35_0"), global.litemname[global.menucoord[1]]);
								if (i == 3)
									global.msg[0] = ((scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_36_0") + global.litemname[global.menucoord[1]]) + ".");
								if (i > 3)
									global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_37_0"), global.litemname[global.menucoord[1]]);
								global.msg[0] += scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_38_0");
								if (global.litem[global.menucoord[1]] == 8)
								{
									global.msg[0] = scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_41_0");
									if (global.flag[263] == 0)
										global.flag[263] = 1;
								}
								scr_writetext(0, "x", 0, 0);
								scr_litemshift(global.menucoord[1], 0);
							}
							if (dontthrow == 1)
							{
								global.msc = 10;
								scr_text(global.msc);
								scr_writetext(10, "x", 0, 0);
							}
						}
					}
					if (global.menuno == 3)
					{
						global.menuno = 9;
						scr_litemuseb(global.menucoord[3], global.phone[global.menucoord[3]]);
					}
					if (global.menuno == 1)
					{
						global.menuno = 5;
						global.menucoord[5] = 0;
					}
					if (global.menuno == 0)
						global.menuno += (global.menucoord[0] + 1);
					if (global.menuno == 3)
					{
						scr_phonename();
						global.menucoord[3] = 0;
					}
					if (global.menuno == 1)
					{
						if (global.litem[0] != 0)
						{
							global.menucoord[1] = 0;
							scr_litemname();
						}
						else
							global.menuno = 0;
					}
				}
				if (up_p())
				{
					if (global.menuno == 0)
					{
						if (global.menucoord[0] != 0)
							global.menucoord[0] -= 1;
					}
					if (global.menuno == 1)
					{
						if (global.menucoord[1] != 0)
							global.menucoord[1] -= 1;
					}
					if (global.menuno == 3)
					{
						if (global.menucoord[3] != 0)
							global.menucoord[3] -= 1;
					}
				}
				if (down_p())
				{
					if (global.menuno == 0)
					{
						if (global.menucoord[0] != 2)
							global.menucoord[0] += 1;
					}
					if (global.menuno == 1)
					{
						if (global.menucoord[1] != 7)
						{
							if (global.litem[(global.menucoord[1] + 1)] != 0)
								global.menucoord[1] += 1;
						}
					}
					if (global.menuno == 3)
					{
						if (global.menucoord[3] != 7)
						{
							if (global.phone[(global.menucoord[3] + 1)] != 0)
								global.menucoord[3] += 1;
						}
					}
				}
				if (button2_p() && buffer >= 0)
				{
					if (global.menuno == 0)
					{
						global.menuno = -1;
						global.interact = 0;
					}
					else if (global.menuno <= 3)
						global.menuno = 0;
					if (global.menuno == 5)
						global.menuno = 1;
				}
				if (right_p())
				{
					if (global.menuno == 5)
					{
						if (global.menucoord[5] != 2)
							global.menucoord[5] += 1;
					}
				}
				if (left_p())
				{
					if (global.menuno == 5)
					{
						if (global.menucoord[5] != 0)
							global.menucoord[5] -= 1;
					}
				}
				if (button3_p())
				{
					if (global.menuno == 0)
					{
						global.menuno = -1;
						global.interact = 0;
					}
				}
				if (currentmenu < global.menuno && global.menuno != 9)
					selnoise = true;
				else if (global.menuno >= 0 && global.menuno < 6)
				{
					if (currentspot != global.menucoord[global.menuno])
						movenoise = true;
				}
			}
			if (global.menuno == 9 && instance_exists("obj_dialoguer") == false)
			{
				global.menuno = -1;
				global.interact = 0;
			}
			if (selnoise == true)
			{
				snd_play("snd_select");
				selnoise = false;
			}
			if (movenoise == true)
			{
				snd_play("snd_menumove");
				movenoise = false;
			}
		}

		public override void Draw_0()
		{
			buffer += 1;
			if (global.interact == 5)
			{
				xx = __view_get(0, view_current);
				yy = (__view_get(1, view_current) + 10);
				moveyy = yy;
				var stat_right = 263;
				if (global.lang == "ja")
					stat_right = 300;
				if (obj_mainchara.y > (yy + 120))
					moveyy += 135;
				if (global.menuno != 4)
				{
					draw_set_color(c_white);
					draw_rectangle((16 + xx), (16 + moveyy), (86 + xx), (70 + moveyy), false);
					draw_rectangle((16 + xx), (74 + yy), (86 + xx), (147 + yy), false);
					if (global.menuno == 1 || global.menuno == 5 || global.menuno == 6)
						draw_rectangle((94 + xx), (16 + yy), (266 + xx), (196 + yy), false);
					if (global.menuno == 2)
						draw_rectangle((94 + xx), (16 + yy), ((stat_right + 3) + xx), (224 + yy), false);
					if (global.menuno == 3)
						draw_rectangle((94 + xx), (16 + yy), (266 + xx), (150 + yy), false);
					if (global.menuno == 7)
						draw_rectangle((94 + xx), (16 + yy), (266 + xx), (216 + yy), false);
					draw_set_color(c_black);
					draw_rectangle((19 + xx), (19 + moveyy), (83 + xx), (67 + moveyy), false);
					draw_rectangle((19 + xx), (77 + yy), (83 + xx), (144 + yy), false);
					if (global.menuno == 1 || global.menuno == 5 || global.menuno == 6)
						draw_rectangle((97 + xx), (19 + yy), (263 + xx), (193 + yy), false);
					if (global.menuno == 2)
						draw_rectangle((97 + xx), (19 + yy), (stat_right + xx), (221 + yy), false);
					if (global.menuno == 3)
						draw_rectangle((97 + xx), (19 + yy), (263 + xx), (147 + yy), false);
					if (global.menuno == 7)
						draw_rectangle((97 + xx), (19 + yy), (263 + xx), (213 + yy), false);
					draw_set_color(c_white);
					draw_set_font("fnt_small");
					draw_text((23 + xx), (49 + moveyy), string_hash_to_newline((((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_36_0") + gm_string(global.lhp)) + "/") + gm_string(global.lmaxhp))));
					draw_text((23 + xx), (40 + moveyy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_37_0") + gm_string(global.llv))));
					draw_text((23 + xx), (58 + moveyy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_39_0") + gm_string(global.lgold))));
					scr_84_set_draw_font("main");
					if (global.lang == "ja")
						draw_text((20 + xx), (20 + moveyy), string_hash_to_newline(global.lcharname));
					else
						draw_text((23 + xx), (20 + moveyy), string_hash_to_newline(global.lcharname));
					draw_text((42 + xx), (84 + yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_42_0")));
					draw_text((42 + xx), (102 + yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_43_0")));
					draw_text((42 + xx), (120 + yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_44_0")));
					if (global.menuno == 1 || global.menuno == 5)
					{
						for (i = 0; i < 8; i += 1)
							draw_text((116 + xx), ((30 + yy) + (i * 16)), string_hash_to_newline(global.litemname[i]));
						draw_text((116 + xx), (170 + yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_52_0")));
						draw_text(((116 + xx) + 48), (170 + yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_53_0")));
						draw_text(((116 + xx) + 105), (170 + yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_54_0")));
					}
				}
				if (global.menuno == 3)
				{
					for (i = 0; i < 7; i += 1)
						draw_text((116 + xx), ((30 + yy) + (i * 16)), string_hash_to_newline(global.phonename[i]));
				}
				if (global.menuno == 2)
				{
					draw_text((108 + xx), (32 + yy), string_hash_to_newline(scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_66_0"), global.lcharname)));
					draw_text((108 + xx), (62 + yy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_67_0") + gm_string(global.llv))));
					draw_text((108 + xx), (78 + yy), string_hash_to_newline((scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_68_0"), gm_string(global.lhp)) + gm_string(global.lmaxhp))));
					draw_text((108 + xx), (110 + yy), string_hash_to_newline(((scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_70_0"), gm_string(global.lat)) + gm_string(global.lwstrength)) + ")")));
					draw_text((108 + xx), (126 + yy), string_hash_to_newline(((scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_71_0"), gm_string(global.ldf)) + gm_string(global.ladef)) + ")")));
					weaponname = scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_72_0");
					armorname = scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_73_0");
					if (global.lweapon == 2)
						weaponname = scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_74_0");
					if (global.lweapon == 6)
						weaponname = scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_75_0");
					if (global.lweapon == 7)
						weaponname = scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_76_0");
					if (global.larmor == 3)
						armorname = scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_77_0");
					draw_text((108 + xx), (156 + yy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_80_0") + weaponname)));
					draw_text((108 + xx), (172 + yy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_81_0") + armorname)));
					draw_text((108 + xx), (192 + yy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_82_0") + gm_string(global.lgold))));
					if (string_length(global.lcharname) >= 7)
						draw_text((192 + xx), (32 + yy), string_hash_to_newline(scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_88_0")));
					nextlevel = 0;
					draw_text((192 + xx), (110 + yy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_91_0") + gm_string(global.lxp))));
					if (global.llv == 1)
						nextlevel = (10 - global.lxp);
					if (global.llv == 2)
						nextlevel = (30 - global.lxp);
					if (global.llv == 3)
						nextlevel = (70 - global.lxp);
					if (global.llv == 4)
						nextlevel = (120 - global.lxp);
					if (global.llv == 5)
						nextlevel = (200 - global.lxp);
					if (global.llv == 6)
						nextlevel = (300 - global.lxp);
					if (global.llv == 7)
						nextlevel = (500 - global.lxp);
					if (global.llv == 8)
						nextlevel = (800 - global.lxp);
					if (global.llv == 9)
						nextlevel = (1200 - global.lxp);
					if (global.llv == 10)
						nextlevel = (1700 - global.lxp);
					if (global.llv == 11)
						nextlevel = (2500 - global.lxp);
					if (global.llv == 12)
						nextlevel = (3500 - global.lxp);
					if (global.llv == 13)
						nextlevel = (5000 - global.lxp);
					if (global.llv == 14)
						nextlevel = (7000 - global.lxp);
					if (global.llv == 15)
						nextlevel = (10000 - global.lxp);
					if (global.llv == 16)
						nextlevel = (15000 - global.lxp);
					if (global.llv == 17)
						nextlevel = (25000 - global.lxp);
					if (global.llv == 18)
						nextlevel = (50000 - global.lxp);
					if (global.llv == 19)
						nextlevel = (99999 - global.lxp);
					if (global.llv >= 20)
						nextlevel = 0;
					draw_text((192 + xx), (126 + yy), string_hash_to_newline((scr_84_get_lang_string("obj_overworldc_slash_Draw_0_gml_112_0") + gm_string(nextlevel))));
				}
				if (global.menuno == 444)
				{
				}
				if (global.menuno == 0)
					draw_sprite("spr_heartsmall", 0, (28 + xx), ((88 + yy) + (18 * global.menucoord[0])));
				if (global.menuno == 1)
					draw_sprite("spr_heartsmall", 0, (104 + xx), ((34 + yy) + (16 * global.menucoord[1])));
				if (global.menuno == 3)
					draw_sprite("spr_heartsmall", 0, (104 + xx), ((34 + yy) + (16 * global.menucoord[3])));
				if (global.menuno == 6)
					draw_sprite("spr_heartsmall", 0, (104 + xx), ((34 + yy) + (16 * global.menucoord[6])));
				if (global.menuno == 7)
					draw_sprite("spr_heartsmall", 0, (104 + xx), ((34 + yy) + (16 * global.menucoord[7])));
				if (global.menuno == 5)
				{
					if (global.menucoord[5] == 0)
						draw_sprite("spr_heartsmall", 0, ((104 + xx) + (45 * global.menucoord[5])), (174 + yy));
					if (global.menucoord[5] == 1)
						draw_sprite("spr_heartsmall", 0, ((104 + xx) + ((45 * global.menucoord[5]) + 3)), (174 + yy));
					if (global.menucoord[5] == 2)
						draw_sprite("spr_heartsmall", 0, ((104 + xx) + ((45 * global.menucoord[5]) + 15)), (174 + yy));
				}
			}
		}
	}
}
