﻿using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_dmgwriter : GamemakerObject
	{
		public override void Create()
		{
			spec = 0;
			delaytimer = 0;
			delay = 2;
			active = false;
			damage = round(random(600));
			bounces = 0;
			type = -1;
			stretch = 0.2;
			stretchgo = 1;
			lightf = merge_color(c_purple, c_white, 0.6);
			lightb = merge_color(c_aqua, c_white, 0.5);
			lightg = merge_color(c_lime, c_white, 0.5);
			kill = 0;
			killtimer = 0;
			killactive = false;
			foreach (var item in with<obj_dmgwriter>())
			{
				if (item.type != 3)
					item.killtimer = 0;
			}
			specialmessage = 0;
		}

        public override void Draw_0()
        {
            if (delaytimer < delay)
            {
                foreach (var item in with<obj_dmgwriter>())
                {
                    item.killtimer = 0;
                }
            }
            delaytimer += 1;
            if (delaytimer == delay)
            {
                vspeed = (-5 - random(2));
                hspeed = 10;
                vstart = vspeed;
                flip = 90;
            }
            if (delaytimer >= delay)
            {
                draw_set_color(c_white);
                if (type == 0)
                    draw_set_color(lightb);
                if (type == 1)
                    draw_set_color(lightf);
                if (type == 2)
                    draw_set_color(lightg);
                if (type == 3)
                    draw_set_color(c_lime);
                if (type == 4)
                    draw_set_color(c_red);
                message = specialmessage;
                if (damage == 0)
                    message = 1;
                if (type == 4)
                    message = 2;
                draw_set_font(global.damagefont);
                if (hspeed > 0)
                    hspeed -= 1;
                if (hspeed < 0)
                    hspeed += 1;
                if (abs(hspeed) < 1)
                    hspeed = 0;
                if (message == 0)
                {
                    draw_set_alpha((1 - kill));
                    draw_set_halign(fa_right);
                    if (spec == 0)
                        draw_text_transformed((x + 30), y, string_hash_to_newline(gm_string(damage)), (2 - stretch), (stretch + kill), 0);
                    if (spec == 1)
                        draw_text_transformed((x + 30), y, string_hash_to_newline(gm_string(damage)), (2 - stretch), (stretch + kill), 90);
                    draw_set_halign(fa_left);
                    draw_set_alpha(1);
                }
                else
                {
                    if (message == 1)
                        draw_sprite_ext("spr_battlemsg", 0, (x + 30), y, (2 - stretch), (stretch + kill), 0, draw_get_color(), (1 - kill));
                    if (message == 2)
                        draw_sprite_ext("spr_battlemsg", 1, (x + 30), y, (2 - stretch), (stretch + kill), 0, c_red, (1 - kill));
                    if (message == 3)
                        draw_sprite_ext("spr_battlemsg", 2, (x + 30), y, (2 - stretch), (stretch + kill), 0, c_lime, (1 - kill));
                    if (message == 4)
                        draw_sprite_ext("spr_battlemsg", 3, (x + 30), y, (2 - stretch), (stretch + kill), 0, c_lime, (1 - kill));
                }
                if (bounces < 2)
                    vspeed += 1;
                if (y > ystart && bounces < 2 && killactive == false)
                {
                    y = ystart;
                    vspeed = (vstart / 2);
                    bounces += 1;
                }
                if (bounces >= 2 && killactive == false)
                {
                    vspeed = 0;
                    y = ystart;
                }
                if (stretchgo == 1)
                    stretch += 0.4;
                if (stretch >= 1.2)
                {
                    stretch = 1;
                    stretchgo = 0;
                }
                killtimer += 1;
                if (killtimer > 35)
                    killactive = true;
                if (killactive == true)
                {
                    kill += 0.08;
                    y -= 4;
                }
                if (kill > 1)
                    instance_destroy();
            }
        }
	}
}
