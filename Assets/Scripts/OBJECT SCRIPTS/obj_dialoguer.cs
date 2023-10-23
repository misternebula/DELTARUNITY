using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_dialoguer : GamemakerObject
	{
		public override void Create()
		{
			cur_jewel = 0;
			active = false;
			alarm[0] = 1;
			skippable = true;
			free = 0;
			xxx = __view_get(0, 0);
			yyy = __view_get(1, 0);
			writer = null;
			side = 1;
			if (instance_exists("obj_mainchara"))
			{
				if (global.darkzone == false)
				{
					if (obj_mainchara.y > (yyy + 130))
						side = 0;
				}
				if (global.darkzone == true)
				{
					if (obj_mainchara.y > (yyy + 250))
						side = 0;
				}
			}
			f = 1;
			if (global.darkzone == true)
				f = 2;
		}

		public override void Alarm_0()
		{
			event_user(0);
		}

		public override void Destroy()
		{
			if (free == 1)
			{
				global.interact = 0;
			}
				
			myface.instance_destroy();
		}

		public override void Draw_0()
		{
			if (active == true)
			{
				scr_dbox();
				if (!instance_exists(writer))
					instance_destroy();
			}
		}

		public override void Other_10()
		{
			active = true;
			xx = ((19 * f) + __view_get(0, 0));
			yy = ((20 * f) + __view_get(1, 0));
			xx = round(xx);
			yy = round(yy);
			if (side == 0)
			{
				writer = instance_create<obj_writer>((xx + (10 * f)), (yy - (5 * f)), "obj_writer");
				scr_facechoice();
				writer.dialoguer = 1;
			}
			if (side == 1)
			{
				writer = instance_create<obj_writer>((xx + (10 * f)), (yy + (150 * f)), "obj_writer");
				writer.skippable = skippable;
				scr_facechoice();
				writer.dialoguer = 1;
			}
			if (instance_exists(writer) && global.fc != 0)
			{
				writer.dialoguer = 1;
				if (writer.originalcharline == 33)
					writer.charline = 26;
			}
		}
	}
}
