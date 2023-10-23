using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_hallway_mirror : GamemakerObject
	{
		public override void Create()
		{
			sx = 0;
			sy = 0;
			alpha = 0.1;
			shadow = scr_marker(200, 70, "spr_krisd");
			shadow.depth = (depth - 100);
		}

		public override void Draw_0()
		{
			draw_self();
			draw_set_alpha(0.1);
			draw_set_color(c_white);
			draw_rectangle(x, y, (x + sprite_width), (y + sprite_height), false);
			draw_set_alpha(1);
		}

		public override void Step_2()
		{
			shadow.x = obj_mainchara.x;
			shadow.sprite_index = obj_mainchara.sprite_index;
			shadow.image_index = obj_mainchara.image_index;
			shadow.y = (192 - obj_mainchara.y);
			if (obj_mainchara.sprite_index == "spr_krisd")
				shadow.sprite_index = "spr_krisu";
			if (obj_mainchara.sprite_index == "spr_krisu")
				shadow.sprite_index = "spr_krisd";
			if (obj_mainchara.sprite_index == "spr_krisl")
				shadow.sprite_index = "spr_krisl";
			if (obj_mainchara.sprite_index == "spr_krisr")
				shadow.sprite_index = "spr_krisr";
		}
	}
}
