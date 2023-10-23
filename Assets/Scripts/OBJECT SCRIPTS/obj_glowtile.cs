using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_glowtile : GamemakerObject
	{
		public override void Precreate()
		{
			AddCollideEvent(typeof(obj_mainchara));
			AddCollideEvent(typeof(obj_caterpillarchara));
		}

		public override void Create()
		{
			active = false;
			stepped = false;
			stepbuffer = 0;
			image_speed = 0.2;
			image_xscale = 2;
			image_yscale = 2;
			if (instance_exists("obj_glowtilepuzz"))
			{
				var obj_glowtilepuzz = FindObjectOfType<obj_glowtilepuzz>();
				obj_glowtilepuzz.tempid = (obj_glowtile)id;
				obj_glowtilepuzz.tileid[obj_glowtilepuzz.tiletotal] = obj_glowtilepuzz.tempid;
				obj_glowtilepuzz.tiletotal += 1;
			}
		}

		public override void Other_17()
		{
			if (active == true)
			{
				if (stepped == false)
				{
					FindObjectOfType<obj_glowtilepuzz>().stepnoise = true;
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

		public void Collision_obj_mainchara(GamemakerObject other)
		{
			event_user(7);
		}

		public void Collision_obj_caterpillarchara(GamemakerObject other)
		{
			event_user(7);
		}
	}
}
