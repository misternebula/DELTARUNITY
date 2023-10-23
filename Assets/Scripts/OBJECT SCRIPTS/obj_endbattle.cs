using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_endbattle : GamemakerObject
	{
		public override void Create()
		{
			alarm[0] = 15;
			con = 0;
			foreach (var item in with<obj_battleback>())
			{
				item.destroy = 1;
			}

			count = 0;
			global.tension = 0;
			if (global.specialbattle == 0 || global.specialbattle == 3)
			{
				c[0] = scr_dark_marker(global.heromakex[0], global.heromakey[0], "spr_krisr_dark");
				if (instance_exists((GamemakerObject)global.cinstance[0]))
				{
					count += 1;
					c[1] = scr_dark_marker(global.heromakex[1], global.heromakey[1], global.cinstance[0].rsprite);
				}
				if (instance_exists((GamemakerObject)global.cinstance[1]))
				{
					count += 1;
					c[2] = scr_dark_marker(global.heromakex[2], global.heromakey[2], global.cinstance[1].rsprite);
				}

				for (i = 0; i < (count + 1); i += 1)
				{
					if (i == 0)
					{
						c[i].direction = point_direction(c[i].x, c[i].y, obj_mainchara.x, obj_mainchara.y);
						c[i].speed = (point_distance(c[i].x, c[i].y, obj_mainchara.x, obj_mainchara.y) / 10);
						c[i].depth = (200 - (i * 20));
					}

					if (i == 1 || i == 2)
					{
						c[i].direction = point_direction(c[i].x, c[i].y, global.cinstance[(i - 1)].x, global.cinstance[(i - 1)].y);
						c[i].speed = (point_distance(c[i].x, c[i].y, global.cinstance[(i - 1)].x, global.cinstance[(i - 1)].y) / 10);
						c[i].depth = (200 - (i * 20));
					}
				}

				alarm[0] = 10;
			}

			if (global.flag[9] == 1)
				snd_volume(global.batmusic1, 0, alarm[0]);
		}

		public override void Alarm_0()
		{
			if (global.specialbattle != 3)
				obj_mainchara.cutscene = false;
			obj_mainchara.visible = true;
			foreach (var item in with<obj_caterpillarchara>())
			{
				item.visible = true;
			}

			if (global.specialbattle == 0 || global.specialbattle == 3)
			{
				for (i = 0; i < (count + 1); i += 1)
				{
					c[i]?.instance_destroy();
				}
			}

			if (global.specialbattle == 0 || global.specialbattle == 2)
				global.interact = 0;
			if (global.flag[9] == 1)
			{
				snd_free(global.batmusic0);
				snd_volume(global.currentsong1, 0, 0);
				snd_resume(global.currentsong1);
				snd_volume(global.currentsong1, 1, 20);
			}

			instance_destroy();
		}
	}
}
