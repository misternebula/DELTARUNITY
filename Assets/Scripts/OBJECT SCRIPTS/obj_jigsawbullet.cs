using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_jigsawbullet : obj_collidebullet
	{
		public override void Precreate()
		{
			AddCollideEvent(typeof(obj_jigsawbullet));
		}

		public override void Create()
		{
			damage = 0;
			grazepoints = 0;
			grazed = false;
			timepoints = 0;
			active = false;
			image_alpha = 0;
			init = false;
			tracking = true;
			timer = 0;
			con = 0;
			side = 0;
			fade = 0;
			locked = false;
			ltimer = 0;
			joker = 0;
		}

		public override void Step_0()
		{
			if (init == false && image_alpha < 1)
			{
				image_alpha += 0.1;
				if (image_alpha >= 1)
				{
					init = true;
					active = true;
				}
			}

			if (tracking == true)
			{
				if (instance_exists("obj_heart"))
				{
					var obj_heart = FindObjectOfType<obj_heart>();
					if (side == 1 || side == 3)
					{
						if (((obj_heart.x + 10) - x) >= 10)
							x += 3;
						if (((obj_heart.x + 10) - x) <= -10)
							x -= 3;
					}

					if (side == 0 || side == 2)
					{
						if (((obj_heart.y + 10) - y) >= 10)
							y += 3;
						if (((obj_heart.y + 10) - y) <= -10)
							y -= 3;
					}
				}
			}

			timer += 1;
			if (timer >= 30 && con == 0)
			{
				tracking = false;
				direction = ((side * 90) + 180);
				speed = 4;
				gravity_direction = (side * 90);
				gravity = 1.2;
				if (joker == 1)
				{
					gravity = 1.6;
					speed = 6;
				}

				con = 1;
			}

			if (timer >= 40)
				gravity = 0;
			if (locked == true)
			{
				ltimer += 1;
				if (ltimer >= 12)
				{
					image_alpha -= 0.2;
					active = false;
				}

				if (ltimer >= 17)
					instance_destroy();
			}
		}

		public void Collision_obj_jigsawbullet(GamemakerObject other)
		{
			if (con == 1 && other.con == 1 && active == true && other.active == true)
			{
				if (locked == false)
				{
					speed = 0;
					locked = true;
					other.speed = 0;
					other.locked = true;
					for (int o = 0; o < 16; o++)
					{
						if (side == 0)
						{
							if (x >= (other.x - 28))
								x -= 1;
							if (x >= (other.x - 28))
								other.x += 1;
						}

						if (side == 3)
						{
							if (y >= (other.y - 28))
								y -= 1;
							if (y >= (other.y - 28))
								other.y += 1;
						}

						if (side == 2)
						{
							if (x <= (other.x + 28))
								x += 1;
							if (x <= (other.x + 28))
								other.x -= 1;
						}

						if (side == 1)
						{
							if (y <= (other.y + 28))
								y += 1;
							if (y <= (other.y + 28))
								other.y -= 1;
						}
					}
				}
			}
		}
	}
}
