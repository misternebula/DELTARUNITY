.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 326
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.visible

:[3]
popenv [2]
pushi.e 829
conv.i.v
push.v 326.y
pushi.e 0
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.k
push.v self.k
conv.v.i
pushenv [5]

:[4]
pushi.e 12
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[5]
popenv [4]
pushi.e 189
conv.i.v
push.v 326.y
pushi.e 10
sub.i.v
pushi.e 340
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
pushi.e 2
pop.v.i self.con
pushi.e 22
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [12]

:[7]
pushi.e 1
pop.v.i global.interact
push.v self.k
conv.v.i
pushenv [9]

:[8]
call.i scr_halt(argc=0)
popz.v

:[9]
popenv [8]
push.v self.s
conv.v.i
pushenv [11]

:[10]
pushi.e 182
pop.v.i self.sprite_index

:[11]
popenv [10]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 9
pop.v.i global.fe
push.s "obj_lancerslideevent_slash_Step_0_gml_34_0"@5242
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[12]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [14]

:[13]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [21]

:[16]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.s
conv.v.i
pushenv [18]

:[17]
pushi.e 189
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed
pushi.e 20
pop.v.i self.vspeed

:[18]
popenv [17]
push.v self.k
conv.v.i
pushenv [20]

:[19]
pushi.e 827
pop.v.i self.sprite_index

:[20]
popenv [19]
pushi.e 5
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [25]

:[22]
push.v self.k
conv.v.i
pushenv [24]

:[23]
pushi.e 4
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[24]
popenv [23]
pushi.e 7
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [35]

:[26]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.k
conv.v.i
push.v [stacktop]self.x
pop.v.v 326.x
push.v self.k
conv.v.i
push.v [stacktop]self.y
pop.v.v 326.y
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 141
conv.i.v
call.i snd_loop(argc=1)
pop.v.v self.slidesfx
pushi.e 326
pushenv [28]

:[27]
pushi.e 1
pop.v.i self.cutscene
pushi.e 1
pop.v.i self.visible
pushi.e 20
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.fun
pushi.e 832
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.autorun

:[28]
popenv [27]
push.v self.seiz
pushi.e 1
cmp.i.v EQ
bf [32]

:[29]
pushi.e 326
pushenv [31]

:[30]
pushi.e 10
pop.v.i self.vspeed

:[31]
popenv [30]

:[32]
push.v self.k
conv.v.i
pushenv [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
popenv [33]
pushi.e 1
pop.v.i self.cameracon
pushi.e 9
pop.v.i self.con

:[35]
push.v self.cameracon
pushi.e 1
cmp.i.v EQ
bf [52]

:[36]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 880
cmp.i.v LT
bf [41]

:[37]
push.v self.seiz
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v
b [40]

:[39]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v

:[40]
b [52]

:[41]
pushi.e 326
pushenv [43]

:[42]
pushi.e 0
pop.v.i self.vspeed

:[43]
popenv [42]
pushi.e 0
pop.v.i global.interact
pushi.e 181
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 331
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.block1
push.v self.block1
conv.v.i
pushenv [45]

:[44]
pushi.e 40
pop.v.i self.image_xscale

:[45]
popenv [44]
pushi.e 331
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 440
add.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.block2
push.v self.block2
conv.v.i
pushenv [47]

:[46]
pushi.e 40
pop.v.i self.image_xscale

:[47]
popenv [46]
pushi.e 70
conv.i.v
pushi.e 2280
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.w
pushi.e 70
conv.i.v
pushi.e 1560
conv.i.v
pushi.e 550
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.w
pushi.e 70
conv.i.v
pushi.e 1800
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.w
pushi.e 70
conv.i.v
pushi.e 2040
conv.i.v
pushi.e 550
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.w
push.v self.seiz
conv.v.b
bf [51]

:[48]
pushi.e 70
pushenv [50]

:[49]
pushi.e -10
pop.v.i self.vspeed

:[50]
popenv [49]

:[51]
pushi.e 2
pop.v.i self.cameracon
pushi.e 0
pop.v.i self.shifted

:[52]
push.v self.cameracon
pushi.e 2
cmp.i.v EQ
bf [end]

:[53]
push.v self.slidetimer
pushi.e 1
add.i.v
pop.v.v self.slidetimer
push.v self.seiz
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
pushi.e -20
conv.i.v
pushi.e 0
conv.i.v
push.i 1000000
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v
push.v self.shifted
pushi.e 20
sub.i.v
pop.v.v self.shifted
b [56]

:[55]
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.i 1000000
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v
push.v self.shifted
pushi.e 10
sub.i.v
pop.v.v self.shifted

:[56]
push.v self.shifted
pushi.e -480
cmp.i.v LTE
bf [58]

:[57]
pushi.e 480
conv.i.v
pushi.e 0
conv.i.v
push.i 1000000
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v
push.v self.shifted
pushi.e 480
add.i.v
pop.v.v self.shifted

:[58]
pushglb.v global.inv
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.v self.slidetimer
pushi.e 390
cmp.i.v LTE
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
push.v self.slidetimer
pushi.e 10
sub.i.v
pop.v.v self.slidetimer

:[63]
push.v self.slidetimer
pushi.e 390
cmp.i.v EQ
bf [71]

:[64]
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_volume(argc=3)
popz.v
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
push.v self.slidesfx
call.i snd_volume(argc=3)
popz.v
pushi.e 181
pushenv [66]

:[65]
pushi.e -40
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[66]
popenv [65]
pushi.e 180
pushenv [68]

:[67]
push.d -0.4
pop.v.d self.gravity
pushi.e 0
pop.v.i self.active

:[68]
popenv [67]
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fo
push.v self.fo
conv.v.i
pushenv [70]

:[69]
push.i 16777215
pop.v.i self.image_blend
push.d 0.01
pop.v.d self.fadespeed

:[70]
popenv [69]

:[71]
push.v self.slidetimer
pushi.e 540
cmp.i.v EQ
bf [end]

:[72]
push.v self.slidesfx
call.i snd_stop(argc=1)
popz.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i snd_free(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
call.i room_goto_next(argc=0)
popz.v

:[end]