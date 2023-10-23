using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_caterpillarchara : GamemakerObject
	{
		public override void Create()
		{
			scr_depth();
			image_speed = 0;
			darkmode = global.darkzone;
			if (darkmode == true)
			{
				image_xscale = 2;
				image_yscale = 2;
			}
			walk = false;
			fun = false;
			runmove = false;
			dir = 0;
			walkbuffer = 0;
			walktimer = 0;
			blushtimer = 0;
			target = 12;
			usprite = "spr_susieu_dark";
			dsprite = "spr_susied_dark";
			rsprite = "spr_susier_dark";
			lsprite = "spr_susiel_dark";
			if (global.plot >= 240)
			{
				usprite = "spr_susieu_dark";
				dsprite = "spr_susied_dark_eyes";
				rsprite = "spr_susier_dark_eyes";
				lsprite = "spr_susiel_dark_eyes";
			}
			usprite_blush = "spr_ralseiu";
			dsprite_blush = "spr_ralseid";
			rsprite_blush = "spr_ralseir_blush";
			lsprite_blush = "spr_ralseil_blush";
			parent = obj_mainchara;
			pd = parent.dsprite;
			pr = parent.rsprite;
			pl = parent.lsprite;
			pu = parent.usprite;
            facing = new int[50];
			for (i = 0; i < 25; i += 1)
			{
				remx[i] = obj_mainchara.x;
				remy[i] = obj_mainchara.y;
				facing[i] = global.facing;
			}
			depth = (obj_mainchara.depth + 5);
			mywidth = sprite_width;
			myheight = sprite_height;
		}

		public override void Step_0()
		{
			scr_depth();
			depth += 5;
			nowx = x;
			nowy = y;
			moved = 0;
			walk = false;
			runmove = false;
			if (obj_mainchara.x != remx[0])
				moved = 1;
			if (obj_mainchara.y != remy[0])
				moved = 1;
			if (moved == 1)
{
                blushtimer = 0;
    for (i = 25; i > 0; i -= 1)
    {
                    remx[i] = remx[(i - 1)];
                    remy[i] = remy[(i - 1)];
                    facing[i] = facing[(i - 1)];
    }
                remx[0] = obj_mainchara.x;
                remy[0] = obj_mainchara.y;
                facing[0] = global.facing;
                if (usprite == "spr_susieu_dark")
                    x = (remx[target] - 6);
                else
                    x = (remx[target] - 4);
                if (usprite == "spr_susieu_dark")
                    y = (remy[target] - 16);
                else
                    y = (remy[target] - 12);
                if (abs((remx[(target + 1)] - remx[target])) > 4)
                    runmove = true;
                if (abs((remy[(target + 1)] - remy[target])) > 4)
                    runmove = true;
                dir = facing[target];
}
            if (x != nowx)
                walk = true;
            if (y != nowy)
                walk = true;
            if (walk == true)
                walkbuffer = 6;
if (walkbuffer > 3 && fun == false)
{
                walktimer += 1.5;
                if (runmove == true)
                    walktimer += 1.5;
                if (walktimer >= 40)
                    walktimer -= 40;
                if (walktimer < 10)
                    image_index = 0;
                if (walktimer >= 10)
                    image_index = 1;
                if (walktimer >= 20)
                    image_index = 2;
                if (walktimer >= 30)
                    image_index = 3;
}
if (walkbuffer <= 0 && fun == false)
{
                if (walktimer < 10)
                    walktimer = 9.5;
                if (walktimer >= 10 && walktimer < 20)
                    walktimer = 19.5;
                if (walktimer >= 20 && walktimer < 30)
                    walktimer = 29.5;
                if (walktimer >= 30)
                    walktimer = 39.5;
                image_index = 0;
}
            walkbuffer -= 0.75;
if (fun == false)
{
                if (facing[target] == 0)
                    sprite_index = dsprite;
                if (facing[target] == 1)
                    sprite_index = rsprite;
                if (facing[target] == 2)
                    sprite_index = usprite;
                if (facing[target] == 3)
                    sprite_index = lsprite;
}
            if (dsprite == "spr_ralseid" && global.interact == 0 && fun == false)
            {
                distfrommcx = (obj_mainchara.x - (x + 4));
                distfrommcy = (obj_mainchara.y - (y + 12));
                if (abs(distfrommcy) <= 10 && abs(distfrommcx) <= 16)
                {
                    if (distfrommcx <= 0 && global.facing == 1)
                        blushtimer += 1;
                    if (distfrommcx >= 0 && global.facing == 3)
                        blushtimer += 1;
                }
                else
                    blushtimer = 0;
                if (blushtimer >= 300)
                {
                    if (sprite_index == dsprite)
                        sprite_index = dsprite_blush;
                    if (sprite_index == rsprite)
                        sprite_index = rsprite_blush;
                    if (sprite_index == usprite)
                        sprite_index = usprite_blush;
                    if (sprite_index == lsprite)
                        sprite_index = lsprite_blush;
                }
            }
            else
                blushtimer = 0;
		}
	}
}
