using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_darkphone_event : GamemakerObject
	{
		public override void Create()
		{
			con = 0;
			global.interact = 1;
		}

		public override void Alarm_4()
		{
			con += 1;
		}

		public override void Step_0()
		{
			if (con == 0)
{
				con = 1;
				alarm[4] = 40;
}
			if (con == 1)
				global.interact = 1;
			if (con == 2)
			{
				sndplay = false;
				if (snd_is_playing(global.currentsong1))
				{
					sndplay = true;
					snd_pause(global.currentsong1);
				}
				snd_play("snd_smile");
				con = 3;
				alarm[4] = 200;
			}
			if (con == 4)
			{
				foreach (var item in with<obj_dialoguer>())
				{
					item.instance_destroy();
				}
				foreach (var item in with<obj_writer>())
				{
					item.instance_destroy();
				}
				con = 7;
			}
			if (con == 7)
			{
				snd_stop("snd_smile");
				if (sndplay == true)
					snd_resume(global.currentsong1);
				global.msg[0] = scr_84_get_lang_string("obj_darkphone_event_slash_Step_0_gml_42_0");
				instance_create(0, 0, "obj_dialoguer");
				con = 5;
				global.interact = 6;
				instance_destroy();
			}
		}
	}
}
