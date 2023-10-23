using Assets;
using UnityEngine;

namespace OBJECT_SCRIPTS
{
	public class obj_ob_checkertile : obj_overworldbulletparent
	{
		public override void Precreate()
		{
			AddCollideEvent(typeof(obj_mainchara));
		}

		public override void Create()
		{
			active = false;
			image_alpha = 0;
			timer = 0.0;
			damage = ceil((global.maxhp[1] / 6.0));
			target = 3;
			if (room == "room_field_checkers4")
				x += 2;
		}

		public override void Other_15()
		{
			Debug.Log($"OTHER_15");
			if (active == true && global.interact == 0)
			{
				global.interact = 1;
				snd_play("snd_boost");
				var obj_ob_gen = FindObjectOfType<obj_ob_gen>();
				obj_ob_gen.whitetimer = 0;
				obj_ob_gen.whitecon = 1;
			}
		}

		public override void Step_0()
		{
			if (global.interact == 0)
				timer += 1;
			if (timer >= 0 && timer <= 10)
				image_alpha = (timer / 10.0);
			if (timer == 10)
				active = true;
			if (timer >= 20)
			{
				image_alpha = (3.0 - (timer / 10.0));
				active = false;
				if (image_alpha <= 0)
				{
					if (room == "room_field_checkers1")
						x -= 80;
					if (room == "room_field_checkers4")
					{
						x -= 40;
						y += 40;
						if (y >= 350)
						{
							y = 240;
							x += 120;
						}
					}

					if (room == "room_field_checkers6")
					{
						x -= 40;
						y += 40;
						if (y >= 310)
						{
							y = 240;
							x += 80;
						}
					}

					timer = -10;
					if (room == "room_field_checkers6")
						timer = -6;
					if (room == "room_field_checkers4")
						timer = -4;
					image_alpha = 0;
				}
			}
			if (x < 500)
				instance_destroy();
		}

		public void Collision_obj_mainchara(GamemakerObject other)
		{
			Debug.Log($"Collision_obj_mainchara");
			if (active == true && global.interact == 0)
				event_user(5);
		}
	}
}
