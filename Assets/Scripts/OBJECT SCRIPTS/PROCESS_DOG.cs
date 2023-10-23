using Assets;

namespace OBJECT_SCRIPTS
{
	public class PROCESS_DOG : GamemakerObject
	{
		public override void Create()
		{
			visible = true;
			image_xscale = 2;
			image_yscale = 2;
			x = (room_width / 2);
			y = (room_height / 2);
			SONG_THAT_EMERGES_FROM_A_SLEEPING_DOG = snd_init("dogcheck.ogg");
			mus_loop_ext(SONG_THAT_EMERGES_FROM_A_SLEEPING_DOG, 1, (0.9 + random(0.1)));
			image_speed = 0.05;
			window_set_caption(scr_84_get_lang_string("PROCESS_DOG_slash_Create_0_gml_12_0"));
		}
	}
}
