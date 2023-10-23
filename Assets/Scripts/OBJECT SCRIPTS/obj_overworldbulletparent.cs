using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_overworldbulletparent : GamemakerObject
	{
        public override void Other_15()
        {
            if (active == true)
            {
                snd_stop("snd_hurt1");
                snd_play("snd_hurt1");
				if (target != 3)
                    scr_damage();
                if (target == 3)
                    scr_damage_all_overworld();
                FindObjectOfType<obj_darkcontroller>().charcon = 1;
                global.interact = 1;
                obj_mainchara.alarm[1] = 7;
            }
        }
	}
}
