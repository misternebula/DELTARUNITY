using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_choicer_old : GamemakerObject
	{
		public override void Create()
		{
			alarm[1] = 3;
			canchoose = false;
			dar = ((global.darkzone ? 1 : 0) + 1);
			image_xscale = dar;
			image_yscale = dar;
			add = __view_get(0, view_current);
			x = ((89 * dar) + add);
			y = ((210 * dar) + __view_get(1, view_current));
			d = -1;
			if (instance_exists("obj_dialoguer"))
				d = FindObjectOfType<obj_dialoguer>().side;
			if (d == -1)
			{
				if (obj_mainchara.y > (__view_get(1, view_current) + (130 * dar)))
					y -= (155 * dar);
			}
			else if (d == 0)
				y -= (155 * dar);
			mychoice = 0;
			global.choice = -1;
			choiced = false;
		}

		public override void Alarm_0()
		{
			if (instance_exists("obj_dialoguer"))
			{
				var obj_dialoguer = FindObjectOfType<obj_dialoguer>();
				FindObjectOfType<obj_face>().instance_destroy();
				obj_dialoguer.writer.instance_destroy();
				global.msc += 1;
				obj_dialoguer.scr_text(global.msc);
				obj_dialoguer.event_user(0);
			}
			FindObjectOfType<obj_choicer_old>().instance_destroy();
		}

		public override void Alarm_1()
		{
			canchoose = true;
		}

		public override void Draw_0()
		{
			draw_self();
		}

		public override void Other_10()
		{
			if (canchoose == true && choiced == false)
{
				choiced = true;
				global.choice = mychoice;
				alarm[0] = 1;
}
		}

		public override void Step_0()
		{
			if (button1_p())
				event_user(0);
			if (left_p())
			{
				if (mychoice == 0)
					mychoice = 1;
				else
					mychoice = 0;
				if (mychoice == 1)
					x = ((185 * dar) + add);
				else
					x = ((89 * dar) + add);
			}
			if (right_p())
			{
				if (mychoice == 0)
					mychoice = 1;
				else
					mychoice = 0;
				if (mychoice == 1)
					x = ((185 * dar) + add);
				else
					x = ((89 * dar) + add);
			}
		}
	}
}
