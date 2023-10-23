using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_musicer_field : obj_musicer
	{
		public override void Create()
		{
			global.flag[31] = 1;
			if (!snd_is_playing(global.currentsong1))
			{
				global.currentsong0 = snd_init("field_of_hopes.ogg");
				global.currentsong1 = mus_loop_ext(global.currentsong0, 0.7, 1);
				if (global.flag[209] == 0)
				{
					global.flag[209] = 1;
					instance_create(0, 0, "obj_fieldmuslogo");
				}
			}
		}
	}
}
