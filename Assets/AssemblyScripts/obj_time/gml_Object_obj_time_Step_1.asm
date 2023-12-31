.localvar 0 arguments

:[0]
push.v global.time
pushi.e 1
add.i.v
pop.v.v global.time
call.i scr_debug(argc=0)
conv.v.b
bf [5]

:[1]
pushi.e 1
conv.i.v
call.i scr_84_debug(argc=1)
conv.v.b
bf [3]

:[2]
exit.i

:[3]
pushi.e 121
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [5]

:[4]
push.v self.screenshot_number
call.i string(argc=1)
push.s "_shot.png"@9980
add.s.v
pop.v.v self.screen_name
push.v self.screen_name
call.i screen_save(argc=1)
popz.v
push.v self.screenshot_number
pushi.e 1
add.i.v
pop.v.v self.screenshot_number

:[5]
pushi.e 27
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [11]

:[6]
push.v self.quit_timer
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
pushi.e 0
pop.v.i self.quit_timer

:[8]
push.v self.quit_timer
pushi.e 1
add.i.v
pop.v.v self.quit_timer
push.v self.quit_timer
pushi.e 30
cmp.i.v GTE
bf [10]

:[9]
call.i game_end(argc=0)
popz.v

:[10]
b [12]

:[11]
push.v self.quit_timer
pushi.e 2
sub.i.v
pop.v.v self.quit_timer

:[12]
pushi.e 115
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [14]

:[13]
pushi.e 1
pop.v.i self.fullscreen_toggle

:[14]
push.v self.fullscreen_toggle
pushi.e 1
cmp.i.v EQ
bf [18]

:[15]
pushi.e 0
pop.v.i self.fullscreen_toggle
call.i window_get_fullscreen(argc=0)
conv.v.b
bf [17]

:[16]
pushi.e 0
conv.i.v
call.i window_set_fullscreen(argc=1)
popz.v
push.s "true_config.ini"@3518
conv.s.v
call.i ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "FULLSCREEN"@9984
conv.s.v
push.s "SCREEN"@9985
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
b [18]

:[17]
pushi.e 1
conv.i.v
call.i window_set_fullscreen(argc=1)
popz.v
push.s "true_config.ini"@3518
conv.s.v
call.i ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "FULLSCREEN"@9984
conv.s.v
push.s "SCREEN"@9985
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v

:[18]
push.v self.window_center_toggle
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
call.i window_center(argc=0)
popz.v
pushi.e 0
pop.v.i self.window_center_toggle

:[20]
push.v self.window_center_toggle
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 2
pop.v.i self.window_center_toggle

:[22]
pushi.e 0
pop.v.i self.i

:[23]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [25]

:[24]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_released
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_pressed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [23]

:[25]
push.v self.gamepad_check_timer
pushi.e 1
add.i.v
pop.v.v self.gamepad_check_timer
push.v self.gamepad_check_timer
pushi.e 90
cmp.i.v GTE
bf [30]

:[26]
pushi.e 0
conv.i.v
call.i gamepad_is_connected(argc=1)
conv.v.b
bf [28]

:[27]
pushi.e 1
pop.v.i self.gamepad_active
pushi.e 0
pop.v.i self.gamepad_id
b [29]

:[28]
pushi.e 0
pop.v.i self.gamepad_active

:[29]
pushi.e 0
pop.v.i self.gamepad_check_timer

:[30]
push.v self.gamepad_active
pushi.e 1
cmp.i.v EQ
bf [59]

:[31]
pushi.e 0
pop.v.i self.i

:[32]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [45]

:[33]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_k
call.i keyboard_check(argc=1)
conv.v.b
bt [36]

:[34]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_g
pushi.e 0
conv.i.v
call.i gamepad_button_check(argc=2)
conv.v.b
bt [36]

:[35]
push.v self.i
pushi.e 0
conv.i.v
call.i scr_gamepad_axis_check(argc=2)
conv.v.b
b [37]

:[36]
push.e 1

:[37]
bf [41]

:[38]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_held
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_pressed

:[40]
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_held
b [44]

:[41]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_held
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_released

:[43]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_held

:[44]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [32]

:[45]
pushi.e 4
pop.v.i self.i

:[46]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [58]

:[47]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_k
call.i keyboard_check(argc=1)
conv.v.b
bt [49]

:[48]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_g
pushi.e 0
conv.i.v
call.i gamepad_button_check(argc=2)
conv.v.b
b [50]

:[49]
push.e 1

:[50]
bf [54]

:[51]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_held
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_pressed

:[53]
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_held
b [57]

:[54]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_held
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_released

:[56]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_held

:[57]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [46]

:[58]
b [end]

:[59]
pushi.e 0
pop.v.i self.i

:[60]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [end]

:[61]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_k
call.i keyboard_check(argc=1)
conv.v.b
bf [65]

:[62]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_held
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_pressed

:[64]
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_held
b [68]

:[65]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_held
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_released

:[67]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.input_held

:[68]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [60]

:[end]