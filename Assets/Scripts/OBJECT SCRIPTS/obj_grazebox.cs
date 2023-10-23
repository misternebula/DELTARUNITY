using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_grazebox : GamemakerObject
	{
		public override void Precreate()
		{
			AddCollideEvent(typeof(obj_collidebullet));
		}

		public override void Create()
		{
			if (instance_exists("obj_heart"))
			{
				var obj_heart = FindObjectOfType<OBJECT_SCRIPTS.obj_heart>();
				x = (obj_heart.x + 10);
				y = (obj_heart.y + 10);
			}

			grazetimer = 0;
		}

		public override void Draw_0()
		{
			if (grazetimer > 0)
			{
				draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, (grazetimer / 6d));
				draw_sprite_ext(sprite_index, 3, x, y, 1, 1, 0, c_white, ((grazetimer / 6d) - 0.2));
			}
			grazetimer -= 1;
		}

		public override void Step_2()
		{
			if (instance_exists("obj_heart"))
			{
				var obj_heart = FindObjectOfType<OBJECT_SCRIPTS.obj_heart>();
				x = (obj_heart.x + 10);
				y = (obj_heart.y + 10);
			}
			else
				instance_destroy();
		}

		public void Collision_obj_collidebullet(GamemakerObject other)
		{
			if (global.inv < 0)
			{
				if (other.grazed == true)
				{
					scr_tensionheal((other.grazepoints / 20));

					if (global.turntimer >= 10)
						global.turntimer -= (other.timepoints / 20);

					if (grazetimer >= 0 && grazetimer < 4)
						grazetimer = 3;

					if (grazetimer < 2)
						grazetimer = 2;
				}

				if (other.grazed == false)
				{
					other.grazed = true;
					scr_tensionheal(other.grazepoints);
					if (global.turntimer >= 10)
						global.turntimer -= timepoints;
					FindObjectOfType<obj_battlecontroller>().grazenoise = true;
					grazetimer = 10;
				}
			}
		}
	}
}
