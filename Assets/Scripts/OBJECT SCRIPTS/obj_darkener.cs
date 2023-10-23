using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_darkener : GamemakerObject
	{
		public override void Create()
		{
			if (instance_number("obj_darkener") > 1)
				instance_destroy();
			darken = true;
			darkamt = 0;
		}

		public override void Destroy()
		{
			foreach (var item in with<obj_whiteedge>())
			{
				item.image_alpha = 0;
			}
		}

		public override void Draw_0()
		{
			if (darken == true)
			{
				foreach (var item in with<obj_heroparent>())
				{
					item.darkify = true;
				}
				if (darkamt < 15)
					darkamt += 1;
				foreach (var item in with<obj_whiteedge>())
				{
					item.image_alpha = (darkamt / 15);
				}
			}

			if (darken == false)
			{
				foreach (var item in with<obj_growtangle>())
				{
					item.growcon = 3;
				}
				foreach (var item in with<obj_heroparent>())
				{
					item.darkify = false;
				}
				if (darkamt > 0)
					darkamt -= 1;
				foreach (var item in with<obj_whiteedge>())
				{
					item.image_alpha = (darkamt / 15);
				}
				if (darkamt <= 0)
					instance_destroy();
			}

			draw_set_alpha((darkamt / 20));
			draw_set_color(c_black);
			draw_rectangle((__view_get(0, 0) - 40), (__view_get(1, 0) - 40), (__view_get(0, 0) + 680), (__view_get(1, 0) + 520), false);
			draw_set_alpha(1);
		}
	}
}
