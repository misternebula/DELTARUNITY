using Assets;
using UnityEngine.Device;

namespace OBJECT_SCRIPTS
{
	public class obj_time : GamemakerObject
	{
		public override void Create()
		{
			quit_timer = 0;
			keyboard_active = true;
			gamepad_active = true;
			gamepad_check_timer = 0;
			gamepad_id = 0;
			axis_value = 0.4;
			fullscreen_toggle = false;
			window_center_toggle = 0;
			screenshot_number = 0;
			if (instance_number("obj_time") > 1)
				instance_destroy();
			else
			{
				display_height = display_get_height();
				display_width = display_get_width();
				show_debug_message($"display size is {display_width}x{display_height}");
				window_size_multiplier = 1;
				for (_ww = 2; _ww < 6; _ww += 1)
				{
					if (display_width > (640 * _ww) && display_height > (480 * _ww))
						window_size_multiplier = _ww;
				}
				show_debug_message($"window_size_multiplier is {window_size_multiplier}");
				if (window_size_multiplier > 1)
				{
					//window_set_size((640 * window_size_multiplier), (480 * window_size_multiplier));
					Screen.SetResolution(640 * window_size_multiplier, 480 * window_size_multiplier, false);
					window_center_toggle = 1;
				}
				scr_controls_default();
				scr_ascii_input_names();
				for (i = 0; i < 10; i += 1)
				{
					global.input_pressed[i] = false;
					global.input_held[i] = false;
					global.input_released[i] = false;
				}
			}
		}

		public override void Step_0()
		{
			global.time += 1;
			// debug stuff
			if (keyboard_check(vk_escape))
			{
				if (quit_timer < 0)
					quit_timer = 0;
				quit_timer += 1;
				if (quit_timer >= 30)
					game_end();
			}
			else
			{
				quit_timer -= 2;
			}

			if (keyboard_check_pressed(vk_f4))
				fullscreen_toggle = true;

			if (fullscreen_toggle == true)
			{
				fullscreen_toggle = false;
				Screen.fullScreen = !Screen.fullScreen;
			}

			if (window_center_toggle == 2)
			{
				// window_center()
				window_center_toggle = 0;
			}

			if (window_center_toggle == 1)
				window_center_toggle = 2;

			for (i = 0; i < 10; i += 1)
			{
				global.input_released[i] = false;
				global.input_pressed[i] = false;
			}

			gamepad_check_timer += 1;
			if (gamepad_check_timer >= 90)
			{
				// check gamepad stuff
				gamepad_active = false;
				gamepad_check_timer = 0;
			}
			if (gamepad_active == true)
			{

			}
			else
			{
				for (i = 0; i < 10; i += 1)
				{
					if (keyboard_check(global.input_k[i]))
					{
						if (global.input_held[i] == false)
							global.input_pressed[i] = true;
						global.input_held[i] = true;
					}
					else
					{
						if (global.input_held[i] == true)
							global.input_released[i] = true;
						global.input_held[i] = false;
					}
				}
			}
		}

		public override void Draw_0()
		{
			//debug
		}

		public override void Draw_64()
		{
			if (quit_timer >= 1)
				draw_sprite_ext(scr_84_get_sprite("spr_quitmessage"), (quit_timer / 7), 4, 4, 2, 2, 0, c_white, (quit_timer / 15d));
			// debug stuff
		}
	}
}
