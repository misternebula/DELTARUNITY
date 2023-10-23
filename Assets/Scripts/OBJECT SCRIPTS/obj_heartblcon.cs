using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_heartblcon : GamemakerObject
	{
		public override void Create()
		{
			image_speed = 0.2;
			siner = 0;
		}

		public override void Draw_0()
		{
			siner += 1;
			draw_sprite("spr_battleblcon", 0, x, y);
			draw_sprite(sprite_index, image_index, ((x + 15) + round(sin((siner / 8.0)))), ((y + 15) + round(cos((siner / 8.0)))));
		}
	}
}
