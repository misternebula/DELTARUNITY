﻿using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_blocktile : GamemakerObject
	{
		public override void Precreate()
		{
			AddCollideEvent(typeof(obj_mainchara));
			AddCollideEvent(typeof(obj_pushableblock));
			AddCollideEvent(typeof(obj_caterpillarchara));
		}

		public void Collision_obj_mainchara(GamemakerObject other)
		{
			event_user(7);
		}

		public void Collision_obj_pushableblock(GamemakerObject other)
		{
			event_user(7);
			other.sprite_index = "spr_npc_block_solved";
		}

		public void Collision_obj_caterpillarchara(GamemakerObject other)
		{
			event_user(7);
		}

		public override void Create()
		{
			active = true;
			stepped = false;
			stepbuffer = 0;
			image_speed = 0.2;
			image_xscale = 2;
			image_yscale = 2;
		}

		public override void Other_17()
		{
			if (active == true)
			{
				if (stepped == false)
				{
					if (FindObjectOfType<obj_glowtilepuzz>() != null)
					{
						FindObjectOfType<obj_glowtilepuzz>().stepnoise = true;
					}

					sprite_index = "spr_glowtile_on";
				}

				stepped = true;
				stepbuffer = 3;
			}
		}

		public override void Step_0()
		{
			stepbuffer -= 1;
			if (stepbuffer == 0)
			{
				stepped = false;
				sprite_index = "spr_glowtile_step";
			}
		}
	}
}
