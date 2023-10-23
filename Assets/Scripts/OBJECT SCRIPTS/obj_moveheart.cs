using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_moveheart : GamemakerObject
	{
		public override void Create()
		{
			burst = 0;
			shift = 1;
			image_alpha = 0;
			flytime = 8;
			if (instance_exists("obj_heartmarker"))
			{
				var obj_heartmarker = FindObjectOfType<obj_heartmarker>();
				distx = obj_heartmarker.x;
				disty = obj_heartmarker.y;
			}
			else
			{
				distx = (__view_get(0, 0) + 310);
				disty = (__view_get(1, 0) + 160);
			}

			dist = point_distance(x, y, distx, disty);
			move_towards_point(distx, disty, (dist / flytime));
			alarm[0] = flytime;
			image_speed = 0;
			instance_create(x, y, "obj_heartburst");
		}

		public override void Alarm_0()
		{
			x = distx;
			y = disty;
			instance_create(x, y, "obj_heart");
			instance_destroy();
		}

		public override void Draw_0()
		{
			draw_self();
		}

		public override void Step_0()
		{
			image_alpha += 0.334;
		}
	}
}
