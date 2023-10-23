using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_move_to_point : GamemakerObject
	{
		public override void Create()
		{
			target = null;
			moved = 0;
			movetimer = 0;
			movex = 0;
			movey = 0;
			movemax = 10;
		}

		public override void Step_0()
		{
			if (instance_exists((GamemakerObject)target))
			{
				if (moved == 0)
				{
					x = target.x;
					y = target.y;
					dist = distance_to_point(movex, movey);
					dir = point_direction(x, y, movex, movey);
					amt = (dist / movemax);
					xadd = lengthdir_x(amt, dir);
					yadd = lengthdir_y(amt, dir);
					moved = 1;
				}

				target.x += xadd;
				target.y += yadd;
				movetimer += 1;
				if (movetimer >= movemax)
					instance_destroy();
				if (target == null)
					instance_destroy();
			}
			else
				instance_destroy();
		}
	}
}
