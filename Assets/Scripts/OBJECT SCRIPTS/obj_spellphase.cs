using Assets;

namespace OBJECT_SCRIPTS
{
	public class obj_spellphase : GamemakerObject
	{
		public override void Create()
		{
			spelltimer = 0;
			spellmax = 40;
			spelltotal = 0;
			chara = 0;
			castyet = 0;
			re_castyet = 0;
			active = false;
			alarm[0] = 5;
		}

		public override void Alarm_0()
		{
			for (xyz = 0; xyz < 3; xyz += 1)
			{
				_using[xyz] = 0;
				gotspell[xyz] = 0;
				gotitem[xyz] = 0;
				if (global.charaction[xyz] == 2)
				{
					spelltotal += 1;
					_using[xyz] = 1;
					gotspell[xyz] = 1;
					if (castyet == 0)
					{
						if (global.charinstance[xyz] != null)
						{
							global.charinstance[xyz].state = 2;
							global.charinstance[xyz].attacktimer = 0;
						}

						castyet = 1;
						chara = (xyz + 1);
						scr_spelltext(global.charspecial[xyz], xyz);
						spellwriter = scr_battletext_default();
					}
				}

				if (global.charaction[xyz] == 4)
				{
					spelltotal += 1;
					_using[xyz] = 1;
					gotitem[xyz] = 1;
					if (castyet == 0)
					{
						if (global.charinstance[xyz] != null)
						{
							global.charinstance[xyz].state = 4;
							global.charinstance[xyz].attacktimer = 0;
						}

						castyet = 1;
						chara = (xyz + 1);
						scr_spelltext(global.charspecial[xyz], xyz);
						spellwriter = scr_battletext_default();
					}
				}
			}

			active = true;
			global.spelldelay = 90;
		}

		public override void Step_0()
		{
			if (active == true)
			{
				spelltimer += 1;

				if (spelltimer >= global.spelldelay && instance_exists(spellwriter) == 0)
				{
					if (chara >= 3 || spelltotal == 1)
					{
						scr_attackphase();
						spellwriter.instance_destroy();
						instance_destroy();
					}
					else if (scr_monsterpop() > 0)
					{
						if (gotitem[chara] == 1)
						{
							re_castyet = 1;
							global.charinstance[chara].state = 4;
							spellwriter.instance_destroy();
							scr_spelltext(global.charspecial[chara], chara);
							spellwriter = scr_battletext_default();
						}

						if (gotspell[chara] == 1)
						{
							re_castyet = 1;
							global.charinstance[chara].state = 2;
							spellwriter.instance_destroy();
							scr_spelltext(global.charspecial[chara], chara);
							spellwriter = scr_battletext_default();
						}

						global.spelldelay = 90;
						if (re_castyet == 0)
							global.spelldelay = 1;
						chara += 1;

						for (var r = 0; r < 2; r++)
						{
							if (chara < 3)
							{
								if (_using[chara] == 0)
									chara += 1;
							}
						}

						spelltimer = 0;
						re_castyet = 0;
					}
					else
					{
						scr_attackphase();
						spellwriter.instance_destroy();
						instance_destroy();
					}
				}
			}
		}
	}
}
