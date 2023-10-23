using System;
using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_joker_body : GamemakerObject
	{
		public override void Create()
		{
			siner = 0;
			ji = 0;
			maxchain = 6;
			maxdist = 0;
			size = 2;
			floatsiner = 0;
			floatsinerspeed = 1;
			debug = false;
			sndcon = 0;
			condition = 0;
			timer = 0;
			scythecon = 0;
			spintimer = 0;
			s_xscale = 2;
			s_yscale = 2;
			s_sprite = "spr_joker_teleport";
			s_y = 0;
			s_vspeed = 0;
			xsiner = 0;
			ysiner = 0;
			rotsiner = 0;
			image_speed = 0.334;
			dance_side = 0;
			fliptimer = 0;
			dancelv = 0;
			dancesiner = 0;
			dancemade = 0;
			fade = 0;
			for (i = 0; i < 7; i += 1)
			{
				shadowx[i] = 0;
				shadowy[i] = 0;
				sfactor[i] = 1;
			}
		}

		public override void Draw_0()
		{
			floatsiner += floatsinerspeed;
			fly = ((sin((floatsiner / 8.0)) * 3) * ((floatsinerspeed * 2) - 1));
			flyx = 0;
			if (dancelv >= 1)
				flyx = ((cos((floatsiner / 8.0)) * 3) * ((floatsinerspeed * 2) - 1));
			if (dancelv == 4)
			{
				flyx = 0;
				fly = 0;
			}

			offx = (x + 20);
			offy = (y + 18);
			if (condition == 0)
			{
				if (fade == 0)
					fade_a = 1;
				if (fade == 1)
					fade_a = abs(sin((floatsiner / 13.0)));
				if (dancelv == 0)
					draw_sprite_ext("spr_joker_main", 0, (offx + flyx), (offy + fly), 2, 2, 0, c_white, fade_a);
				if (dancelv == 1)
					draw_sprite_ext("spr_joker_dance", (floatsiner / 3.0), (offx + flyx), (offy + fly), 2, 2, 0, c_white, 1);
				if (dancelv == 2)
					draw_sprite_ext("spr_joker_tired", 0, (offx + flyx), (offy + fly), 2, 2, 0, c_white, 1);
				if (dancelv == 3)
				{
					dancesiner += 1;
					for (i = 0; i < 7; i += 1)
					{
						if (i >= 1)
						{
							shadowx[i] += ((sin((i + (floatsiner / 5.0))) * 8) * sfactor[i]);
							shadowy[i] += ((cos((i + (floatsiner / 5.0))) * 4) * sfactor[i]);
						}

						dalpha[i] = sin((i + (dancesiner / 9.0)));
						if (dalpha[i] < 0 && i >= 1)
						{
							shadowx[i] = (60 - random(120));
							shadowy[i] = (60 - random(120));
							sfactor[i] = (1.5 - random(3));
						}

						draw_sprite_ext("spr_joker_dance", ((dancesiner / 2.0) + (i / 4.0)), (x + shadowx[i]), (y + shadowy[i]), 2, 2, 0, image_blend, dalpha[i]);
					}
				}

				if (dancelv == 4)
					draw_sprite_ext("spr_joker_teleport", 1, (offx + flyx), (offy + fly), 2, 2, 0, c_white, 1);
			}

			if (condition == 1)
			{
				if (maxdist >= 150)
					maxdist = 150;
				sinadd = (0.8 + (maxdist / 50.0));
				if (sinadd < 0.8)
					sinadd = 0.8;
				if (sinadd > 2)
					sinadd = 2;
				siner += sinadd;
				sinx = (sin((siner / 4.0)) * maxdist);
				siny = ((-(abs(sin((siner / 4))))) * (maxdist * 0.7));
				ji = 0;
				if (sinx > (maxdist / 2.0) && maxdist > 15)
					ji = 1;
				if (sinx < ((-maxdist) / 2.0) && maxdist > 15)
					ji = 2;
				if (maxdist < 4)
					ji = 3;
				for (i = 0; i < (maxchain - 1); i += 1)
					draw_sprite_ext("spr_jokerchain", ji, ((offx + (sinx * (i / (double)maxchain))) - 2), (((offy + 6) + ((siny - 32) * (i / (double)maxchain))) + fly), 2, 2, 0, c_white, 1);
				draw_sprite_ext("spr_jokerbody", 0, (offx - 42), ((offy + fly) - 2), 2, 2, 0, c_white, 1);
				draw_sprite_ext("spr_jokerhead", ji, ((offx + sinx) - 2), (((offy + siny) + fly) - 14), 2, 2, 0, c_white, 1);
				maxdist -= 1;
				if (maxdist <= 0)
				{
					maxdist = 0;
					condition = 0;
				}
			}

			if (condition == 2)
			{
				foreach (var item in with<obj_heroparent>())
				{
					item.image_alpha -= 0.25;
				}
				if (sndcon == 0)
				{
					snd_play("snd_spearappear");
					sndcon = 1;
				}

				draw_sprite_ext("spr_joker_main", 0, offx, (offy + fly), size, 2, 0, c_white, 1);
				size -= 0.5;
				if (size <= 0)
				{
					foreach (var item in with<obj_heroparent>())
					{
						item.image_alpha = 0;
					}

					sndcon = 0;
					size = 2;
					condition = 4;
				}
			}

			if (condition == 3)
			{
				foreach (var item in with<obj_heroparent>())
				{
					item.image_alpha += 0.25;
				}
				if (sndcon == 0)
				{
					snd_play("snd_spearappear");
					sndcon = 1;
				}

				draw_sprite_ext("spr_joker_main", 0, offx, (offy + fly), size, 2, 0, c_white, 1);
				size += 0.5;
				if (size >= 2)
				{
					foreach (var item in with<obj_heroparent>())
					{
						item.image_alpha = 1;
					}

					size = 2;
					condition = 0;
					sndcon = 0;
				}
			}

			if (condition == 4)
			{
				if (global.turntimer <= 10)
				{
					timer = 0;
					condition = 3;
					size = 0;
				}
			}

			if (condition == 5)
			{
				throw new NotImplementedException("5");
			}

			if (condition == 0 || condition == 1)
			{
				if (dancelv <= 2)
				{
					draw_set_color(c_black);
					draw_rectangle(((((x + (sprite_width / 2.0)) - 20) - fly) + flyx), ((y + 80) - (fly / 2.0)), ((((x + (sprite_width / 2.0)) + 30) + fly) + flyx), ((y + 85) + (fly / 2.0)), false);
				}
			}
		}
	}
}
