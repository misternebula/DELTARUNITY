using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_wobblything_evil : GamemakerObject
	{
		public override void Create()
		{
			global.charinstance[0] = obj_mainchara;
			image_speed = 0;
			image_xscale = 2;
			image_yscale = 2;
			scr_depth();
			wobbled = 0;
			if (room == "room_dark_wobbles")
			{
				tilearray = tile_get_ids_at_depth(777777);

				for (var i = 0; i < array_length_1d(tilearray); i++)
					tile_set_alpha(tilearray[i], 0);
			}
		}

		public override void Step_0()
		{
			if (wobbled == 0)
			{
				if (instance_exists(obj_mainchara) && global.interact == 0)
				{
					if (obj_mainchara.x > (x - 20) && obj_mainchara.x < (x + 50))
					{
						if (!instance_exists("obj_battlealphaer"))
						{
							d = instance_create(0, 0, "obj_battlealphaer");
							d.depth = 800000;
						}
						obj_mainchara.battlemode = 1;
						obj_mainchara.threebuffer = 2;
						s = snd_play("snd_wobbler");
						snd_pitch(s, (0.5 + random(0.2)));
						s2 = snd_play("snd_wobbler");
						snd_pitch(s2, (0.9 + random(0.2)));
						image_speed = 0.2;
						wobbled = 1;
						for (i = 0; i < 3; i += 1)
						{
							dbullet = instance_create(x, y, "obj_overworld_spade");
							dbullet.damage = 15;
							dbullet.sprite_index = "spr_wobblebullet";
							dbullet.image_alpha = 0.7;
							dbullet.image_xscale = 2;
							dbullet.image_yscale = 2;
							dbullet.speed = 10;
							dbullet.direction = (250 + (i * 20));
						}
					}
				}
			}
		}
	}
}
