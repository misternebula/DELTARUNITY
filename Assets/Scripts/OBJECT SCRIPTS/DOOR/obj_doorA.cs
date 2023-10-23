using Assets;

namespace OBJECT_SCRIPTS.DOOR
{
	public class obj_doorA : obj_doorparent
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

		public override void Other_19()
		{
			foreach (var item in with<obj_overworldbulletparent>())
			{
				item.active = false;
			}
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
