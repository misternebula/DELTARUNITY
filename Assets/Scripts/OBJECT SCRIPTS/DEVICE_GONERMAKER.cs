using Assets;

namespace OBJECT_SCRIPTS
{
	public class DEVICE_GONERMAKER : GamemakerObject
	{
		public override void Create()
		{
			HEAD = 0;
			BODY = 0;
			LEGS = 0;
			HEADMAX = 7;
			BODYMAX = 5;
			LEGSMAX = 1;
			PART[0] = global.flag[900];
			PART[1] = global.flag[901];
			PART[2] = global.flag[902];
			PARTMAX[0] = 7;
			PARTMAX[1] = 5;
			PARTMAX[2] = 4;
			s = 0;
			offx = 0;
			movetimer = 0;
			PARTX[0] = 0;
			IDEALX[0] = 0;
			PARTX[1] = 0;
			IDEALX[1] = 0;
			PARTX[2] = 0;
			IDEALX[2] = 0;
			for (i = 0; i < 3; i += 1)
			{
				IDEALX[i] = (PART[i] * -50);
				PARTX[i] = IDEALX[i];
			}
			LOCK[0] = false;
			LOCK[1] = false;
			LOCK[2] = false;
			sy[0] = 0;
			sy[1] = 34;
			sy[2] = 60;
			siner = 0;
			obacktimer = 0;
			OB_DEPTH = 0;
			flashtimer = 0;
			midscreenx = (__view_get(0, 0) + (__view_get(2, 0) / 2));
			midscreeny = (__view_get(1, 0) + (__view_get(3, 0) / 2));
			STEP = 1;
			FINISH = false;
			ONEBUFFER = 10;
			FADEBUFFER = 10;
			CANCEL = false;
			initx = x;
			inity = y;
			NAMEFADE = 0;
		}

		public override void Draw_0()
		{
			FA = ((10 - FADEBUFFER) / 10);
			if (FA > 1)
				FA = 1;

			for (k = 0; k < STEP; k += 1)
			{
				img = "IMAGE_GONERHEAD";
				if (k == 1)
					img = "IMAGE_GONERBODY";
				if (k == 2)
					img = "IMAGE_GONERLEGS";
				if (LOCK[k] == true)
				{
					s_size = abs((sin((siner / 16f)) / 2));
					draw_sprite_ext(img, PART[k], (x - ((s_size * sprite_width) / 2)), ((y + sy[k]) - ((s_size * sprite_height) / 2)), (2 + s_size), (2 + s_size), 0, c_white, (0.4 * FA));
					s_size = abs((sin((siner / 21f)) / 2));
					draw_sprite_ext(img, PART[k], (x - ((s_size * sprite_width) / 2)), ((y + sy[k]) - ((s_size * sprite_height) / 2)), (2 + s_size), (2 + s_size), 0, c_white, (0.4 * FA));
				}
			}

			if (CANCEL == false)
				draw_sprite_ext("IMAGE_SOUL_BLUR", 0, (initx + 10), (inity - 30), 1, 1, 0, c_white, (1 * FA));

			for (j = 0; j < STEP; j += 1)
			{
				img = "IMAGE_GONERHEAD";
				if (j == 1)
					img = "IMAGE_GONERBODY";
				if (j == 2)
					img = "IMAGE_GONERLEGS";
				if (s == j)
				{
					for (i = 0; i <= PARTMAX[j]; i += 1)
					{
						alpha = (1 - (abs((PARTX[j] + (i * 50))) / 120f));
						draw_sprite_ext(img, i, ((x + PARTX[j]) + (i * 50)), (y + sy[j]), 2, 2, 0, image_blend, (alpha * FA));
					}
				}
				else
					draw_sprite_ext(img, PART[j], x, (y + sy[j]), 2, 2, 0, image_blend, (1 * FA));
			}

			NAMEFADE_COMPLETE = false;
			if (instance_exists("DEVICE_CHOICE"))
			{
				if (FindObjectOfType<DEVICE_CHOICE>().TYPE == 3)
				{
					NAMEFADE_COMPLETE = true;
					NAMEFADE += 0.03;
					NAMEFADE *= 1.25;
					if (NAMEFADE >= 1)
						NAMEFADE = 1;
				}
			}

			if (NAMEFADE_COMPLETE == false)
			{
				NAMEFADE -= 0.03;
				NAMEFADE *= 0.75;
				if (NAMEFADE <= 0)
					NAMEFADE = 0;
			}

			image_blend = merge_color(c_white, c_black, NAMEFADE);
		}

		public override void Step_0()
		{
			siner += 1;
			x = (initx + (sin((siner / 24f)) * 2));
			y = (inity + (cos((siner / 30f)) * 2));
			if (FINISH == false && ONEBUFFER < 0 && CANCEL == false)
			{
				if (left_p())
					PART[s] -= 1;
				if (right_p())
					PART[s] += 1;
				if (button1_p() && LOCK[s] == true)
				{
					FINISH = true;
					global.flag[(900 + s)] = PART[s];
					global.flag[20] = 1;
				}
			}
			for (i = 0; i < 3; i += 1)
			{
				if (PART[i] > PARTMAX[i])
					PART[i] = PARTMAX[i];
				if (PART[i] < 0)
					PART[i] = 0;
				IDEALX[i] = (PART[i] * -50);
				if (PARTX[i] < IDEALX[i])
				{
					if (abs((IDEALX[i] - PARTX[i])) >= 0)
						PARTX[i] += 10;
					if (abs((IDEALX[i] - PARTX[i])) > 50)
						PARTX[i] += 10;
					if (abs((IDEALX[i] - PARTX[i])) > 100)
						PARTX[i] += 10;
					if (abs((IDEALX[i] - PARTX[i])) > 150)
						PARTX[i] += 10;
				}
				if (PARTX[i] > IDEALX[i])
				{
					if (abs((IDEALX[i] - PARTX[i])) >= 0)
						PARTX[i] -= 10;
					if (abs((IDEALX[i] - PARTX[i])) > 50)
						PARTX[i] -= 10;
					if (abs((IDEALX[i] - PARTX[i])) > 100)
						PARTX[i] -= 10;
					if (abs((IDEALX[i] - PARTX[i])) > 150)
						PARTX[i] -= 10;
				}
				if (PARTX[i] == IDEALX[i])
					LOCK[i] = true;
				else
					LOCK[i] = false;
			}
			ONEBUFFER -= 1;
			if (FADEBUFFER > 0 && FINISH == false)
				FADEBUFFER -= 1;
			if (FINISH == true)
				FADEBUFFER += 1;
			if (FADEBUFFER > 10)
				instance_destroy();
		}
	}
}
