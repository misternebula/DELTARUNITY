using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_returnheart : GamemakerObject
	{
		public override void Create()
		{
			burst = 0;
			shift = 1;
			image_alpha = 1;
			flytime = 8;
			var obj_herokris = FindObjectOfType<OBJECT_SCRIPTS.obj_herokris>();
			distx = (obj_herokris.x + 10);
			disty = (obj_herokris.y + 40);
			dist = point_distance(x, y, distx, disty);
			move_towards_point(distx, disty, (dist / flytime));
			alarm[0] = flytime;
			image_speed = 0;
		}

		public override void Alarm_0()
		{
			x = distx;
			y = disty;
			instance_create(x, y, "obj_heartburst");
			instance_destroy();
		}
	}
}
