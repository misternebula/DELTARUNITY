using Assets;

namespace OBJECT_SCRIPTS.DOOR
{
	public class obj_doorD : obj_doorparent
	{
		public override void Create()
		{
			touched = false;
		}

		public override void Alarm_2()
		{
			global.entrance = 5;
			instance_create(0, 0, "obj_persistentfadein");
			room_goto(room_previous(room_previous(room)));
		}

		public override void Other_19()
		{
			global.interact = 3;
			instance_create(0, 0, "obj_fadeout");
			if (touched == false)
			{
				alarm[2] = 8;
				touched = true;
			}
		}
	}
}
