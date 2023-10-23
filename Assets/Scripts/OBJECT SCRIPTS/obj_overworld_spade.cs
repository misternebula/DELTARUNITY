using UnityEngine;

namespace OBJECT_SCRIPTS
{
	internal class obj_overworld_spade : obj_overworldbulletparent
	{
		public override void Create()
		{
			active = false;
			image_alpha = 0;
			timer = 0;
			damage = 18;
			target = 0;
		}

        public override void Step_0()
        {
            timer += 1;
            if (timer >= 2)
            {
                if (image_alpha < 1)
                    image_alpha += 0.1;
                if (Mathf.Approximately((float)image_alpha, 1))
                    active = true;
            }
            if (room == "room_dark_chase2")
			{
                if (x > 680)
                    instance_destroy();
                if (x < -40)
                    instance_destroy();
            }
            else
            {
                if (room == "room_dark_chase1")
                {
                    if (x >= (__view_get(0, 0) + 800))
                        x -= 900;
                    if (x <= (__view_get(0, 0) - 200))
                        x += 900;
                }
                if (y > (__view_get(1, 0) + 600))
                    instance_destroy();
                if (y < (__view_get(1, 0) - 800))
                    instance_destroy();
            }
        }
	}
}
