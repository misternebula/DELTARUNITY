﻿using Assets;

namespace OBJECT_SCRIPTS.DOOR
{
	public class obj_doorA_musfade : obj_doorparent
	{
		public override void Create()
		{
			touched = false;
		}

		public override void Alarm_2()
		{
			global.entrance = 1;
			instance_create(0, 0, "obj_persistentfadein");
			room_goto_next();
		}

		public override void Alarm_3()
		{
			snd_free(global.currentsong0);
		}

		public override void Other_19()
		{
			global.interact = 3;
			instance_create(0, 0, "obj_fadeout");
			mus_volume(global.currentsong1, 0, 14);
			if (touched == false)
			{
				alarm[3] = 14;
				alarm[2] = 15;
				touched = true;
			}
		}
	}
}
