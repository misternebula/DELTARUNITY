using Assets;

namespace OBJECT_SCRIPTS.DOOR
{
	public class obj_doorB : obj_doorparent
	{
		public override void Create()
		{
			touched = false;
		}

		public override void Alarm_2()
		{
			foreach (var item in with<obj_overworldbulletparent>())
			{
				item.active = false;
			}
			global.entrance = 2;
			instance_create(0, 0, "obj_persistentfadein");
			room_goto_previous();
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
