namespace OBJECT_SCRIPTS
{
	internal class obj_darkeyepuzzle_switch : obj_interactable
	{
		public override void Other_10()
		{
			var obj_darkeyepuzzle = FindObjectOfType<obj_darkeyepuzzle>();
			done = 0;
			if (x < 600)
			{
				if (obj_darkeyepuzzle.eye[0] == 0)
					obj_darkeyepuzzle.eye[0] = 1;
				else
					obj_darkeyepuzzle.eye[0] = 0;
				if (obj_darkeyepuzzle.eye[2] == 0)
					obj_darkeyepuzzle.eye[2] = 1;
				else
					obj_darkeyepuzzle.eye[2] = 0;
				done = 1;
			}
			if (x < 700 && done == 0)
			{
				if (obj_darkeyepuzzle.eye[0] == 0)
					obj_darkeyepuzzle.eye[0] = 1;
				else
					obj_darkeyepuzzle.eye[0] = 0;
				if (obj_darkeyepuzzle.eye[1] == 0)
					obj_darkeyepuzzle.eye[1] = 1;
				else
					obj_darkeyepuzzle.eye[1] = 0;
				done = 1;
			}
			if (x < 800 && done == 0)
			{
				if (obj_darkeyepuzzle.eye[2] == 0)
					obj_darkeyepuzzle.eye[2] = 1;
				else
					obj_darkeyepuzzle.eye[2] = 0;
				done = 1;
			}
			snd_play("snd_noise");
			obj_mainchara.onebuffer = 3;
		}
	}
}
