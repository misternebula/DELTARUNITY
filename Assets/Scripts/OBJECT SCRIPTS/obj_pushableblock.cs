using Assets;
using OBJECT_SCRIPTS.COLLISION;

namespace OBJECT_SCRIPTS
{
	internal class obj_pushableblock : obj_interactablesolid
	{
		public override void Create()
		{
			movecourse = 0;
			movetimer = 0;
			_event = 1;
			myinteract = 0;
			image_xscale = 2;
			image_yscale = 2;
			if (room == "room_field_boxpuzzle")
			{
				if (global.flag[212] == 2)
					instance_destroy();
			}
		}

		public override void Other_10()
		{
			if (global.interact == 0 && _event == 0)
			{
				movedir = global.facing;
				wd = sprite_width;
				ht = sprite_height;
				ix = 0;
				iy = 0;
				confirm = true;
				if (movedir == 0)
				{
					ix = (x + 2);
					iy = (y + ht);
				}

				if (movedir == 1)
				{
					ix = (x + wd);
					iy = (y + 2);
				}

				if (movedir == 2)
				{
					ix = (x + 2);
					iy = ((y - ht) + 5);
				}

				if (movedir == 3)
				{
					ix = ((x - wd) + 5);
					iy = (y + 2);
				}

				if (collision_rectangle<obj_solidblock>(ix, iy, (ix + 15), (iy + 15), false, true))
					confirm = false;
				if (collision_rectangle<obj_interactablesolid>(ix, iy, (ix + 15), (iy + 15), false, true))
					confirm = false;
				if (collision_rectangle<obj_solidenemy>(ix, iy, (ix + 15), (iy + 15), false, true))
					confirm = false;
				snd_play("snd_noise");
				if (confirm == true)
				{
					sprite_index = "spr_npc_block";
					global.interact = 1;
					movecourse = 1;
					movetimer = 0;
				}
			}
		}

		public override void Step_0()
		{
			scr_depth();
			if (movecourse == 1)
			{
				if (movedir == 1)
					x += 8;
				if (movedir == 0)
					y += 8;
				if (movedir == 2)
					y -= 8;
				if (movedir == 3)
					x -= 8;
				sprite_index = "spr_npc_block";
				movetimer += 1;
				if (movetimer >= 5)
				{
					movetimer = 0;
					global.interact = 0;
					movecourse = 0;
				}
			}

			if (myinteract == 3)
			{
				if (instance_exists(mydialoguer) == 0)
				{
					global.interact = 0;
					myinteract = 0;
					obj_mainchara.onebuffer = 5;
				}
			}
		}
	}
}
