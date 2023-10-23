using Assets;

namespace OBJECT_SCRIPTS
{
	internal class obj_choicer_neo : GamemakerObject
	{
		public override void Create()
		{
			alarm[1] = 3;
			canchoose = false;
			dar = ((global.darkzone ? 1 : 0) + 1);
			global.flag[33] = 0;
			image_xscale = dar;
			image_yscale = dar;
			remfc = global.fc;
			global.fc = 0;
			xx = __view_get(0, view_current);
			yy = __view_get(1, view_current);
			d = -1;
			if (instance_exists("obj_dialoguer"))
				d = FindObjectOfType<obj_dialoguer>().side;
			d_add = 0;
			if (d == -1)
			{
				if (obj_mainchara.y <= (__view_get(1, view_current) + (130 * dar)))
					d_add = 155;
			}
			else if (d != 0)
				d_add = 155;
			chx = ((140 * dar) + xx);
			chy = (((36 + d_add) * dar) + yy);
			hx = chx;
			hy = chy;
			mychoice = -1;
			global.choice = -1;
			choiced = false;
			choicetotal = 3;
			textposx[0] = 0;
			textposy[0] = 0;
			textposx[1] = 0;
			textposy[1] = 0;
			textposx[2] = 0;
			textposy[2] = 0;
			textposx[3] = 0;
			textposy[3] = 0;
			candraw = false;
		}

		public override void Alarm_0()
		{
			var obj_dialoguer = FindObjectOfType<obj_dialoguer>();
			if (instance_exists(obj_dialoguer))
			{
				if (instance_exists(obj_dialoguer.writer))
				{
					obj_dialoguer.wwx = obj_dialoguer.writer.x;
					obj_dialoguer.wwy = obj_dialoguer.writer.y;
				}

				foreach (var item in with<obj_face>())
				{
					item.instance_destroy();
				}

				obj_dialoguer.writer.instance_destroy();

				foreach (var item in with<obj_choicer_neo>())
				{
					global.fc = item.remfc;
				}

				global.msc += 1;
				obj_dialoguer.scr_text(global.msc);
				obj_dialoguer.event_user(0);
			}

			foreach (var item in with<obj_choicer_neo>())
			{
				item.instance_destroy();
			}
		}

		public override void Alarm_1()
		{
			canchoose = true;
		}

		public override void Draw_0()
		{
			if (dar == 1)
				scr_84_set_draw_font("main");
			else
				scr_84_set_draw_font("mainbig");
			textx = xx;
			texty = yy;
			for (i = 0; i < (choicetotal + 1); i += 1)
			{
				draw_set_color(c_white);
				if (mychoice == i)
					draw_set_color(c_yellow);
				textx = textposx[i];
				texty = textposy[i];
				if (candraw == true)
					draw_text(textx, texty, string_hash_to_newline(global.choicemsg[i]));
			}
			if (global.lang == "ja")
			{
				if (candraw == false && choicetotal == 2 && mychoice == -1)
					hy += (20 * dar);
			}
			candraw = true;
			draw_sprite_ext("spr_heartsmall", 0, hx, hy, image_xscale, image_yscale, 0, c_white, 1);
		}

		public override void Other_4()
		{
			snd_play("snd_error");
		}

		public override void Other_10()
		{
			if (canchoose == true && choiced == false)
			{
				choiced = true;
				global.choice = mychoice;
				alarm[0] = 1;
			}
		}

		public override void Step_0()
		{
			global.flag[33] += 1;
			if (canchoose == true)
			{
				if (mychoice >= 0)
				{
					if (button1_p())
						event_user(0);
				}
				if (choiced == false)
				{
					if (left_h())
						mychoice = 0;
					if (choicetotal >= 1)
					{
						if (right_h())
							mychoice = 1;
					}
					if (choicetotal >= 2)
					{
						if (up_h())
							mychoice = 2;
					}
					if (choicetotal >= 3)
					{
						if (down_h())
							mychoice = 3;
					}
				}
			}
			if (dar == 1)
				scr_84_set_draw_font("main");
			else
				scr_84_set_draw_font("mainbig");
			heartposx[0] = (xx + (30 * dar));
			heartposy[0] = (yy + ((34 + d_add) * dar));
			textposx[0] = (heartposx[0] + (16 * dar));
			textposy[0] = (yy + ((13 + d_add) * dar));
			if (choicetotal >= 1)
			{
				var str1width = string_width(string_hash_to_newline(global.choicemsg[1]));
				heartposx[1] = ((((xx + (320 * dar)) - (30 * dar)) - str1width) - (14 * dar));
				heartposy[1] = (yy + ((34 + d_add) * dar));
				textposx[1] = (heartposx[1] + (16 * dar));
				textposy[1] = (yy + ((13 + d_add) * dar));
			}
			if (choicetotal >= 2)
			{
				var msg0right = ((heartposx[0] + (16 * dar)) + string_width(string_hash_to_newline(global.choicemsg[0])));
				var msg1left = heartposx[1];
				var msg2width = (string_width(string_hash_to_newline(global.choicemsg[2])) + (16 * dar));
				if (choicetotal == 3)
				{
					var msg3width = (string_width(string_hash_to_newline(global.choicemsg[3])) + (16 * dar));
					if (msg3width > msg2width)
						msg2width = msg3width;
				}
				heartposx[2] = ((msg0right + ((msg1left - msg0right) / 2)) - (msg2width / 2));
				heartposy[2] = (yy + ((16 + d_add) * dar));
				textposx[2] = (heartposx[2] + (16 * dar));
				textposy[2] = (yy + ((13 + d_add) * dar));
			}
			if (choicetotal >= 3)
			{
				heartposx[3] = heartposx[2];
				heartposy[3] = (yy + ((60 + d_add) * dar));
				textposx[3] = (heartposx[3] + (16 * dar));
				textposy[3] = (yy + ((56 + d_add) * dar));
			}
			if (mychoice >= 0)
			{
				hx = heartposx[mychoice];
				hy = heartposy[mychoice];
			}
		}
	}
}
