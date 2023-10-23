using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_spinheart : obj_regularbullet_permanent
	{
		public override void Create()
		{
			con = 0;
			htimer = 0;
			image_xscale = 4;
			image_yscale = 4;
			active = false;
			image_alpha = 0;
			var obj_heart = FindObjectOfType<obj_heart>();
			x = (obj_heart.x + 8);
			y = (obj_heart.y + 8);
			image_angle = -90;
			joker = 0;
			damage = 100;
			grazed = false;
			grazepoints = 5;
			timepoints = 0;
			inv = 60;
			grazetimer = 0;
		}

		public override void Step_0()
		{
			if (con == 4)
			{
				htimer += 1;
				if (htimer >= 10)
				{
					friction = 0;
					speed = 0;
				}

				if (htimer >= 20)
				{
					active = false;
					image_alpha -= 0.2;
				}

				if (htimer >= 25)
				{
					if (global.turntimer >= 0)
						global.turntimer = -2;
				}
			}

			if (con == 3)
			{
				htimer += 1;
				if (htimer >= hmax)
				{
					direction = image_angle;
					speed = 2.5;
					friction = -0.5;
					if (joker == 1)
						speed = 5;
					con = 4;
					htimer = 0;
				}
			}

			if (con == 2)
			{
				htimer += 1;
				image_angle += 24;
				if (htimer >= spinmax)
				{
					hmax = 19;
					if (joker == 1)
						hmax = 15;
					image_angle = (270 + (spinmax * 24));
					con = 3;
					htimer = 0;
				}
			}

			if (con == 1)
			{
				htimer += 1;
				if (htimer >= 10)
				{
					spinmax = choose(26.25, 30, 33.75, 37.5);
					if (joker == 1)
						spinmax = (15 + random(15));
					con = 2;
					htimer = 0;
				}
			}

			if (con == 0)
			{
				image_alpha += 0.2;
				image_xscale -= 0.2;
				image_yscale -= 0.2;
				htimer += 1;
				if (htimer >= 5)
				{
					con = 1;
					htimer = 0;
					active = true;
				}
			}

			if (grazed == true)
				grazetimer += 1;
			if (grazetimer >= 15)
			{
				grazetimer = 0;
				grazed = false;
			}
		}
	}
}
