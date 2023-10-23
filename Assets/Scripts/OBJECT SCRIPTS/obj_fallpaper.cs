using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_fallpaper : GamemakerObject
	{
		public override void Create()
		{
			alarm[0] = 1;
			y += 10;
			image_angle = (random(10) - random(10));
			after_x = ((x - 30) / 260d);
			if (after_x > 1)
				after_x = 1;
			image_blend = merge_color(c_white, c_black, after_x);
		}

		public override void Alarm_0()
		{
			if (instance_exists("obj_insideclosetcutscene"))
			{
				var obj_insideclosetcutscene = FindObjectOfType<obj_insideclosetcutscene>();
				i = obj_insideclosetcutscene.papeno;
				obj_insideclosetcutscene.pape[i] = this;
				obj_insideclosetcutscene.papeno += 1;
			}
		}
	}
}
