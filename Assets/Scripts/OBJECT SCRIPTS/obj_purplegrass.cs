using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_purplegrass : GamemakerObject
	{
		public override void Create()
		{
			length = image_xscale;
			height = image_yscale;
			siner = 0;
			index = 0;
			pausetimer = 0;
		}

		public override void Draw_0()
		{
			index += 0.2;
			for (i = 0; i < length; i += 1)
			{
				for (j = 0; j < height; j += 1)
					draw_sprite(sprite_index, ((((index + (x / 320.0)) + (i * 0.125)) + (j * 0.125)) + (y / 320.0)), (x + (40.0 * i)), (y + (40.0 * j)));
			}
		}
	}
}
