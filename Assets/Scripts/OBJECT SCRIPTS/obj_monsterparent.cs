using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_monsterparent : GamemakerObject
	{
		public override void Other_20()
		{
			scr_spareanim();
			scr_monsterdefeat();
			instance_destroy();
		}
	}
}
