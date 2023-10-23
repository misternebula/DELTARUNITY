using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_musicer_darkcastle : obj_musicer
	{
		public override void Create()
		{
			if (global.plot < 30)
			{
				if (!snd_is_playing(global.currentsong1))
				{
					global.currentsong0 = snd_init("creepydoor.ogg");
					global.currentsong1 = mus_loop_ext(global.currentsong0, 1, 1);
				}
			}
			else if (!snd_is_playing(global.currentsong1))
			{
				global.currentsong0 = snd_init("castletown_empty.ogg");
				global.currentsong1 = mus_loop_ext(global.currentsong0, 1, 1);
			}
		}
	}
}
