using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_encounterbasic : GamemakerObject
	{
		public override void Create()
		{
			global.interact = 2;
			if (global.flag[9] == 1)
				snd_volume(global.currentsong1, 0, 20);
			scr_encountersetup(global.encounterno);
			obj_mainchara.visible = false;
			if (global.cinstance[0] != null)
			{
				global.cinstance[0].visible = false;
			}
			if (global.cinstance[1] != null)
			{
				global.cinstance[1].visible = false;
			}
			count = 0;
			c[0] = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, "spr_krisr_dark");
			if (instance_exists((GamemakerObject)global.cinstance[0]))
			{
				count += 1;
				c[1] = scr_dark_marker(global.cinstance[0].x, global.cinstance[0].y, global.cinstance[0].rsprite);
				if (global.cinstance[0].rsprite == "spr_susier_dark")
					c[1].sprite_index = "spr_susier_wall";
			}
			if (instance_exists((GamemakerObject)global.cinstance[1]))
			{
				count += 1;
				c[2] = scr_dark_marker(global.cinstance[1].x, global.cinstance[1].y, global.cinstance[1].rsprite);
				if (global.cinstance[1].rsprite == "spr_susier_dark")
					c[2].sprite_index = "spr_susier_wall";
			}
			for (i = 0; i < (count + 1); i += 1)
			{
				c[i].direction = point_direction(c[i].x, c[i].y, global.heromakex[i], global.heromakey[i]);
				c[i].speed = (point_distance(c[i].x, c[i].y, global.heromakex[i], global.heromakey[i]) / 10d);
				c[i].depth = (200 - (i * 20));
			}
			fightcon = 1;
			counttimer = 0;
		}

		public override void Step_0()
		{
			if (fightcon == 1)
			{
				if (global.flag[9] == 1)
					snd_pause(global.currentsong1);
				counttimer += 1;
				if (counttimer < 10)
				{
					for (i = 0; i < (count + 1); i += 1)
					{
						c[i].af = scr_afterimage();
						c[i].af.image_alpha = 0.5;
					}
				}
				if (counttimer >= 10)
				{
					wp = snd_play("snd_impact");
					snd_volume(wp, 0.7, 0);
					wp2 = snd_play("snd_weaponpull_fast");
					snd_volume(wp2, 0.8, 0);
					for (i = 0; i < (count + 1); i += 1)
					{
						c[i].speed = 0;
						c[i].image_index = 0;
						if (global.chara[i] == 1)
							c[i].sprite_index = "spr_krisb_attack";
						if (global.chara[i] == 2)
						{
							c[i].sprite_index = "spr_susieb_attack";
							if (global.charweapon[global.chara[i]] == 0)
								c[i].sprite_index = "spr_susieb_attack_unarmed";
						}
						if (global.chara[i] == 3)
							c[i].sprite_index = "spr_ralseib_battleintro";
						c[i].image_speed = 0.5;
					}
					fightcon = 2;
					counttimer = 0;
				}
			}
			if (fightcon == 2)
			{
				counttimer += 1;
				if (counttimer >= 15)
				{
					counttimer = 0;
					fightcon = 3;
					for (i = 0; i < (count + 1); i += 1)
					{
						c[i].instance_destroy();
					}
					instance_create(0, 0, "obj_battlecontroller");
					instance_destroy();
				}
			}
		}
	}
}
