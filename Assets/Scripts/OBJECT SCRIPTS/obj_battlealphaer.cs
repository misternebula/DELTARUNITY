using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_battlealphaer : GamemakerObject
	{
		public override void Create()
		{
			global.charinstance[0] = obj_mainchara;
			global.charinstance[1] = global.cinstance[0];
			global.charinstance[2] = global.cinstance[1];
			battlealpha = 0;
			active = false;
			tile_fade = false;
			fadeplease = false;
			if (room == "room_forest_starwalker")
				fadeplease = true;
			if (room == "room_forest_maze1")
				fadeplease = true;
			if (room == "room_forest_maze2")
				fadeplease = true;
			if (room == "room_dark_wobbles")
				fadeplease = true;
			if (fadeplease == true)
			{
				tile_layer_amount = 777777;

				if (room == "room_forest_maze1" || room == "room_forest_maze2")
					tile_layer_amount = 222222;

				alpha_changed = false;
				tile_fade = true;
				tilearray = tile_get_ids_at_depth(tile_layer_amount);
				for (var i = 0; i < array_length_1d(tilearray); i++)
					tile_set_alpha(tilearray[i], 0);
			}
		}

		public override void Draw_0()
		{
			cur_alpha = battlealpha;
			if (obj_mainchara.battlemode == 1)
			{
				if (battlealpha < 0.5)
					battlealpha += 0.04;
			}
			else if (battlealpha > 0)
				battlealpha -= 0.04;
			if (tile_fade == true)
			{
				if (cur_alpha != battlealpha)
				{
					for (var i = 0; i < array_length_1d(tilearray); i++)
						tile_set_alpha(tilearray[i], (battlealpha * 2));
				}
			}
			draw_set_alpha(battlealpha);
			draw_set_color(c_black);
			draw_rectangle((__view_get(0, 0) - 100), (__view_get(1, 0) - 100), (__view_get(0, 0) + 740), (__view_get(1, 0) + 540), false);
			draw_set_alpha(1);
			if (instance_exists("obj_caterpillarchara"))
			{
				var obj_caterpillarchara = FindObjectOfType<obj_caterpillarchara>();
				obj_caterpillarchara.image_blend = merge_color(c_white, c_black, battlealpha);
				if (battlealpha <= 0)
					obj_caterpillarchara.image_blend = c_white;
			}
		}
	}
}
