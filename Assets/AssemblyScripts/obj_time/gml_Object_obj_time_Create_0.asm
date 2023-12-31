.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.quit_timer
pushi.e 1
pop.v.i self.keyboard_active
pushi.e 1
pop.v.i self.gamepad_active
pushi.e 0
pop.v.i self.gamepad_check_timer
pushi.e 0
pop.v.i self.gamepad_id
push.d 0.4
pop.v.d self.axis_value
pushi.e 0
pop.v.i self.fullscreen_toggle
pushi.e 0
pop.v.i self.window_center_toggle
pushi.e 0
pop.v.i self.screenshot_number
pushi.e 320
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
call.i display_get_height(argc=0)
pop.v.v self.display_height
call.i display_get_width(argc=0)
pop.v.v self.display_width
pushi.e 1
pop.v.i self.window_size_multiplier
pushi.e 2
pop.v.i self._ww

:[3]
push.v self._ww
pushi.e 6
cmp.i.v LT
bf [10]

:[4]
push.v self.display_width
pushi.e 640
push.v self._ww
mul.v.i
cmp.v.v GT
bf [6]

:[5]
push.v self.display_height
pushi.e 480
push.v self._ww
mul.v.i
cmp.v.v GT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self._ww
pop.v.v self.window_size_multiplier

:[9]
push.v self._ww
pushi.e 1
add.i.v
pop.v.v self._ww
b [3]

:[10]
push.v self.window_size_multiplier
pushi.e 1
cmp.i.v GT
bf [12]

:[11]
pushi.e 480
push.v self.window_size_multiplier
mul.v.i
pushi.e 640
push.v self.window_size_multiplier
mul.v.i
call.i window_set_size(argc=2)
popz.v
pushi.e 1
pop.v.i self.window_center_toggle

:[12]
call.i scr_controls_default(argc=0)
popz.v
call.i scr_ascii_input_names(argc=0)
popz.v
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [end]

:[14]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_pressed
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_held
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_released
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[end]