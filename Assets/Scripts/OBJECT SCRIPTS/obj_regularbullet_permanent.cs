namespace OBJECT_SCRIPTS
{
	public class obj_regularbullet_permanent : obj_regularbullet
	{
		public override void Other_15()
		{
			if (active == true)
			{
				if (target != 3)
					scr_damage();
				if (target == 3)
					scr_damage_all();
			}
		}
	}
}
