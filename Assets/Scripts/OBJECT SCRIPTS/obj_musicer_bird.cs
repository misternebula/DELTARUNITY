using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_musicer_bird : obj_musicer
	{
		public override void Create()
		{
			if (room == "room_field_start" || room == "room_field_forest")
				global.flag[31] = 0;
			if (!snd_is_playing(global.currentsong1))
			{
				global.currentsong0 = snd_init("bird.ogg");
				global.currentsong1 = mus_loop_ext(global.currentsong0, 1, 1);
			}
			image_index = 1;
			image_speed = 0;
			visible = true;
			if (room != "room_field_start")
			{
				visible = false;
				instance_destroy();
			}
		}
	}
}
