using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_musicer_darkcliff : obj_musicer
	{
		public override void Create()
		{
			if (!snd_is_playing(global.currentsong1))
{
				global.currentsong0 = snd_init("creepylandscape.ogg");
				global.currentsong1 = mus_loop_ext(global.currentsong0, 0.5, 0.95);
}
		}
	}
}
