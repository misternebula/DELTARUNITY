.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [23]

:[4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
push.v 326.x
push.v self.x
cmp.v.v GTE
bf [23]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
pushi.e 165
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
popenv [6]
pushi.e 326
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.visible

:[9]
popenv [8]
pushi.e 209
conv.i.v
push.v 165.y
push.v 165.x
call.i scr_dark_marker(argc=3)
pop.v.v self.r
pushi.e 829
conv.i.v
push.v 326.y
push.v 326.x
call.i scr_dark_marker(argc=3)
pop.v.v self.k
pushi.e -5
pushi.e 250
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [15]

:[10]
pushi.e 78
pushenv [12]

:[11]
pushi.e 2
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[12]
popenv [11]
pushi.e 70
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v
pushi.e 326
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.cutscene

:[14]
popenv [13]
pushi.e 1
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [20]

:[15]
pushi.e 78
pushenv [17]

:[16]
pushi.e 4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[17]
popenv [16]
pushi.e 35
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 45
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v
pushi.e 326
pushenv [19]

:[18]
pushi.e 1
pop.v.i self.cutscene

:[19]
popenv [18]
pushi.e 1
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[20]
pushi.e 40
conv.i.v
push.v self.yy
pushi.e 160
add.i.v
push.v self.xx
pushi.e 740
add.i.v
call.i instance_create(argc=3)
pop.v.v self.thrashmachine
push.v self.thrashmachine
conv.v.i
pushenv [22]

:[21]
pushi.e 0
pop.v.i self.value
pushi.e 0
pop.v.i self.animate
pushi.e 1
pop.v.i self.bad

:[22]
popenv [21]

:[23]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [33]

:[24]
push.v self.k
conv.v.i
pushenv [26]

:[25]
call.i scr_halt(argc=0)
popz.v

:[26]
popenv [25]
push.v self.r
conv.v.i
pushenv [28]

:[27]
call.i scr_halt(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_56_0"@4419
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_57_0"@4420
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 250
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 2
pop.v.i global.fc
pushi.e 9
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_62_0"@4421
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
pushi.e -5
pushi.e 250
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [32]

:[31]
pushi.e 2
pop.v.i global.fc
pushi.e 12
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_68_0"@4422
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.valuetimer

:[33]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
call.i d_ex(argc=0)
conv.v.b
not.b
b [36]

:[35]
push.e 0

:[36]
bf [45]

:[37]
push.v self.valuetimer
pushi.e 1
add.i.v
pop.v.v self.valuetimer
pushi.e -5
pushi.e 250
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [39]

:[38]
push.v self.valuetimer
pushi.e 1
add.i.v
pop.v.v self.valuetimer

:[39]
push.v self.thrashmachine
conv.v.i
pushenv [43]

:[40]
push.v self.value
pushi.e 1
cmp.i.v LT
bf [42]

:[41]
push.v self.value
push.d 0.04
add.d.v
pop.v.v self.value
b [43]

:[42]
pushi.e 1
pop.v.i self.value

:[43]
popenv [40]
push.v self.valuetimer
pushi.e 60
cmp.i.v GTE
bf [45]

:[44]
pushi.e 4
pop.v.i self.con

:[45]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [47]

:[46]
call.i d_ex(argc=0)
conv.v.b
not.b
b [48]

:[47]
push.e 0

:[48]
bf [54]

:[49]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 9
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_93_0"@4424
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 250
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushi.e 12
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_97_0"@4425
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
pushi.e -5
pushi.e 250
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [53]

:[52]
pushi.e 6
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_102_0"@4426
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 17
pop.v.i self.con

:[54]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [56]

:[55]
call.i d_ex(argc=0)
conv.v.b
not.b
b [57]

:[56]
push.e 0

:[57]
bf [63]

:[58]
pushi.e 31
pop.v.i global.encounterno
pushglb.v global.encounterno
call.i scr_encountersetup(argc=1)
popz.v
pushi.e 220
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.monstermakey
pushi.e 50
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.monstermakex
pushi.e 200
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.l
pushi.e 180
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.monstermakey
pushi.e -5
pushi.e 0
push.v [array]global.monstermakex
pushi.e 200
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
push.v self.l
conv.v.i
pushenv [60]

:[59]
call.i scr_depth(argc=0)
popz.v
pushi.e -5
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.image_speed

:[60]
popenv [59]
push.v self.s
conv.v.i
pushenv [62]

:[61]
call.i scr_depth(argc=0)
popz.v
pushi.e -5
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.image_speed

:[62]
popenv [61]
pushi.e 18
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[63]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [69]

:[64]
push.v self.l
conv.v.i
pushenv [66]

:[65]
call.i scr_halt(argc=0)
popz.v

:[66]
popenv [65]
push.v self.s
conv.v.i
pushenv [68]

:[67]
call.i scr_halt(argc=0)
popz.v

:[68]
popenv [67]
pushi.e 20
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[69]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [71]

:[70]
call.i d_ex(argc=0)
conv.v.b
not.b
b [72]

:[71]
push.e 0

:[72]
bf [75]

:[73]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_148_0"@4427
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_149_0"@4428
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.d 21.1
pop.v.d self.con
pushi.e -5
pushi.e 250
push.v [array]global.flag
pushi.e 1
cmp.i.v LT
bf [75]

:[74]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[75]
push.v self.con
push.d 21.1
cmp.d.v EQ
bf [77]

:[76]
call.i d_ex(argc=0)
conv.v.b
not.b
b [78]

:[77]
push.e 0

:[78]
bf [88]

:[79]
push.v self.r
conv.v.i
pushenv [81]

:[80]
pushi.e 496
pop.v.i self.sprite_index

:[81]
popenv [80]
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 111
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 708
conv.i.v
push.v self.thrashmachine
conv.v.i
push.v [stacktop]self.y
pushi.e 40
add.i.v
push.v self.thrashmachine
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.boom
push.v self.boom
conv.v.i
pushenv [83]

:[82]
pushi.e -400
pop.v.i self.depth
push.d 0.5
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.image_xscale
pushi.e 3
pop.v.i self.image_yscale

:[83]
popenv [82]
push.v self.s
conv.v.i
pushenv [85]

:[84]
pushi.e 197
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[85]
popenv [84]
push.v self.l
conv.v.i
pushenv [87]

:[86]
pushi.e 223
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[87]
popenv [86]
push.d 21.2
pop.v.d self.con
pushi.e 0
pop.v.i self.boomtimer

:[88]
push.v self.con
push.d 21.2
cmp.d.v EQ
bf [99]

:[89]
push.v self.boomtimer
pushi.e 1
add.i.v
pop.v.v self.boomtimer
push.v self.boom
call.i instance_exists(argc=1)
conv.v.b
bf [94]

:[90]
push.v self.boom
conv.v.i
push.v [stacktop]self.image_index
pushi.e 5
cmp.i.v GTE
bf [94]

:[91]
push.v self.thrashmachine
conv.v.i
pushenv [93]

:[92]
call.i instance_destroy(argc=0)
popz.v

:[93]
popenv [92]

:[94]
push.v self.boom
conv.v.i
pushenv [97]

:[95]
push.v self.image_index
pushi.e 16
cmp.i.v GTE
bf [97]

:[96]
call.i instance_destroy(argc=0)
popz.v

:[97]
popenv [95]
push.v self.boomtimer
pushi.e 70
cmp.i.v GTE
bf [99]

:[98]
push.d 21.3
pop.v.d self.con

:[99]
push.v self.con
push.d 21.3
cmp.d.v EQ
bf [111]

:[100]
push.v self.s
conv.v.i
pushenv [102]

:[101]
call.i scr_halt(argc=0)
popz.v
pushi.e 180
pop.v.i self.sprite_index

:[102]
popenv [101]
push.v self.l
conv.v.i
pushenv [104]

:[103]
call.i scr_halt(argc=0)
popz.v
pushi.e 220
pop.v.i self.sprite_index

:[104]
popenv [103]
push.v self.r
conv.v.i
pushenv [106]

:[105]
pushi.e 209
pop.v.i self.sprite_index

:[106]
popenv [105]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 2
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_210_0"@4431
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_212_0"@4432
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_213_0"@4433
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_215_0"@4434
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_217_0"@4435
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_219_0"@4436
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_221_0"@4437
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_222_0"@4438
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_224_0"@4439
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_225_0"@4440
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_226_0"@4441
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_227_0"@4442
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e -5
pushi.e 250
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_susieandlancer_event_slash_Step_0_gml_233_0"@4443
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_235_0"@4444
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_237_0"@4445
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_238_0"@4446
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_240_0"@4447
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_242_0"@4448
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_243_0"@4449
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 11
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_245_0"@4450
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[108]
pushi.e -5
pushi.e 250
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [110]

:[109]
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_susieandlancer_event_slash_Step_0_gml_252_0"@4451
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_254_0"@4452
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "A"@366
conv.s.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_256_0"@4453
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_258_0"@4454
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[110]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 26
pop.v.i self.con

:[111]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [113]

:[112]
call.i d_ex(argc=0)
conv.v.b
not.b
b [114]

:[113]
push.e 0

:[114]
bf [118]

:[115]
push.v self.s
conv.v.i
pushenv [117]

:[116]
pushi.e 474
pop.v.i self.sprite_index
pushi.e -2
pop.v.i self.image_xscale
push.v self.x
pushi.e 80
add.i.v
pop.v.v self.x

:[117]
popenv [116]
pushi.e 99
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 27
pop.v.i self.con

:[118]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [123]

:[119]
push.v self.s
conv.v.i
pushenv [121]

:[120]
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index

:[121]
popenv [120]
push.v self.s
conv.v.i
push.v [stacktop]self.image_index
pushi.e 4
cmp.i.v GTE
bf [123]

:[122]
pushi.e 28
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[123]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [131]

:[124]
pushi.e 1
pop.v.i self.lcon
pushi.e 0
pop.v.i self.ltimer
push.v self.l
conv.v.i
push.v [stacktop]self.x
pop.v.v self.remlx
push.v self.s
conv.v.i
pushenv [126]

:[125]
pushi.e 609
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
push.v self.x
pushi.e 80
sub.i.v
pop.v.v self.x

:[126]
popenv [125]
pushi.e 2
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 450
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e -5
pushi.e 250
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [128]

:[127]
pushi.e 2
pop.v.i global.fc
pushi.e 9
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_susieandlancer_event_slash_Step_0_gml_302_0"@4457
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_304_0"@4458
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[128]
pushi.e -5
pushi.e 250
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [130]

:[129]
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_susieandlancer_event_slash_Step_0_gml_312_0"@4459
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_314_0"@4460
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_316_0"@4461
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[130]
call.i d_make(argc=0)
popz.v
pushi.e 30
pop.v.i self.con
pushi.e 0
pop.v.i self.choosetimer

:[131]
push.v self.lcon
pushi.e 1
cmp.i.v EQ
bf [138]

:[132]
push.v self.l
conv.v.i
pushenv [134]

:[133]
push.v self.x
pushi.e 15
add.i.v
pop.v.v self.x

:[134]
popenv [133]
push.v self.l
conv.v.i
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 700
add.i.v
cmp.v.v GTE
bf [138]

:[135]
push.v self.l
conv.v.i
pushenv [137]

:[136]
pushi.e 426
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
push.v self.y
pushi.e 50
add.i.v
pop.v.v self.y

:[137]
popenv [136]
pushi.e 2
pop.v.i self.lcon

:[138]
push.v self.lcon
pushi.e 2
cmp.i.v EQ
bf [143]

:[139]
push.v self.l
conv.v.i
pushenv [141]

:[140]
push.v self.x
pushi.e 15
sub.i.v
pop.v.v self.x

:[141]
popenv [140]
push.v self.l
conv.v.i
push.v [stacktop]self.x
push.v self.remlx
cmp.v.v LTE
bf [143]

:[142]
push.v self.remlx
push.v self.l
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 3
pop.v.i self.lcon

:[143]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [153]

:[144]
pushi.e 1
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [151]

:[145]
push.v self.choosetimer
pushi.e 1
add.i.v
pop.v.v self.choosetimer
push.v self.choosetimer
pushi.e 30
cmp.i.v GTE
bf [151]

:[146]
push.v 1.choiced
pushi.e 0
cmp.i.v EQ
bf [150]

:[147]
pushi.e 1
pushenv [149]

:[148]
pushi.e 1
pop.v.i self.canchoose
pushi.e 1
pop.v.i self.mychoice
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[149]
popenv [148]

:[150]
pushi.e 31
pop.v.i self.con

:[151]
call.i d_ex(argc=0)
conv.v.b
not.b
bf [153]

:[152]
pushi.e 31
pop.v.i self.con

:[153]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [156]

:[154]
call.i d_ex(argc=0)
conv.v.b
not.b
bf [156]

:[155]
push.v self.lcon
pushi.e 3
cmp.i.v EQ
b [157]

:[156]
push.e 0

:[157]
bf [171]

:[158]
pushi.e -5
pushi.e 250
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
push.v self.k
conv.v.i
push.v [stacktop]self.x
pop.v.v 326.x
push.v self.k
conv.v.i
push.v [stacktop]self.y
pop.v.v 326.y
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.x
push.v self.r
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 1
pop.v.i global.facing
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [160]

:[159]
call.i scr_caterpillar_interpolate(argc=0)
popz.v

:[160]
popenv [159]
pushglb.v global.facing
call.i scr_caterpillar_facing(argc=1)
popz.v
push.v self.s
conv.v.i
pushenv [162]

:[161]
pushi.e 0
pop.v.i self.visible

:[162]
popenv [161]
pushi.e 100
push.v self.s
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.l
conv.v.i
pushenv [164]

:[163]
pushi.e 0
pop.v.i self.visible

:[164]
popenv [163]
push.v self.k
conv.v.i
pushenv [166]

:[165]
pushi.e 0
pop.v.i self.visible

:[166]
popenv [165]
push.v self.r
conv.v.i
pushenv [168]

:[167]
pushi.e 0
pop.v.i self.visible

:[168]
popenv [167]
pushi.e 0
pop.v.i global.specialbattle
pushi.e 1
pushi.e -5
pushi.e 9
pop.v.i [array]global.flag
pushi.e 64
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.beaten
pushi.e 3
pop.v.i global.specialbattle
push.s "lancerfight.ogg"@4464
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.batmusic
pushi.e 187
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bc
push.v self.bc
conv.v.i
pushenv [170]

:[169]
pushi.e 1
pop.v.i self.skipvictory

:[170]
popenv [169]
pushi.e 35
pop.v.i self.con

:[171]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [178]

:[172]
pushi.e 187
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [178]

:[173]
call.i snd_free_all(argc=0)
popz.v
push.v self.s
conv.v.i
pushenv [175]

:[174]
pushi.e 1
pop.v.i self.visible

:[175]
popenv [174]
push.v self.l
conv.v.i
pushenv [177]

:[176]
pushi.e 1
pop.v.i self.visible

:[177]
popenv [176]
pushi.e 45
pop.v.i self.con
pushi.e 1
pop.v.i global.interact

:[178]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [180]

:[179]
call.i d_ex(argc=0)
conv.v.b
not.b
b [181]

:[180]
push.e 0

:[181]
bf [187]

:[182]
pushi.e 1
pop.v.i global.interact
pushi.e -5
pushi.e 249
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [186]

:[183]
push.v self.s
conv.v.i
pushenv [185]

:[184]
pushi.e 607
pop.v.i self.sprite_index

:[185]
popenv [184]

:[186]
pushi.e 4
pop.v.i self.lcon
pushi.e 46
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[187]
push.v self.con
pushi.e 46
cmp.i.v EQ
bf [189]

:[188]
pushi.e 1
pop.v.i global.interact

:[189]
push.v self.lcon
pushi.e 4
cmp.i.v EQ
bf [196]

:[190]
push.v self.l
conv.v.i
pushenv [192]

:[191]
push.v self.x
pushi.e 15
add.i.v
pop.v.v self.x

:[192]
popenv [191]
push.v self.l
conv.v.i
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 700
add.i.v
cmp.v.v GTE
bf [196]

:[193]
push.v self.l
conv.v.i
pushenv [195]

:[194]
pushi.e 220
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
push.v self.y
pushi.e 50
sub.i.v
pop.v.v self.y

:[195]
popenv [194]
pushi.e 5
pop.v.i self.lcon

:[196]
push.v self.lcon
pushi.e 5
cmp.i.v EQ
bf [201]

:[197]
push.v self.l
conv.v.i
pushenv [199]

:[198]
push.v self.x
pushi.e 15
sub.i.v
pop.v.v self.x

:[199]
popenv [198]
push.v self.l
conv.v.i
push.v [stacktop]self.x
push.v self.remlx
cmp.v.v LTE
bf [201]

:[200]
push.v self.remlx
push.v self.l
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 6
pop.v.i self.lcon

:[201]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [203]

:[202]
push.v self.lcon
pushi.e 6
cmp.i.v EQ
b [204]

:[203]
push.e 0

:[204]
bf [208]

:[205]
pushi.e 30
pop.v.i global.typer
pushi.e 9
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
push.s "obj_susieandlancer_event_slash_Step_0_gml_454_0"@4466
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_455_0"@4467
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_456_0"@4468
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 249
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [207]

:[206]
pushi.e 0
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_461_0"@4469
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_462_0"@4470
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_464_0"@4471
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_466_0"@4472
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_467_0"@4473
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[207]
pushi.e 48
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[208]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [210]

:[209]
call.i d_ex(argc=0)
conv.v.b
not.b
b [211]

:[210]
push.e 0

:[211]
bf [217]

:[212]
push.v self.s
conv.v.i
pushenv [214]

:[213]
pushi.e 182
pop.v.i self.sprite_index

:[214]
popenv [213]
push.v self.k
conv.v.i
push.v [stacktop]self.x
push.v self.s
conv.v.i
pop.v.v [stacktop]self.kx
push.v self.k
conv.v.i
push.v [stacktop]self.y
push.v self.s
conv.v.i
pop.v.v [stacktop]self.ky
push.v self.s
conv.v.i
pushenv [216]

:[215]
pushi.e 60
conv.i.v
push.v self.ky
pushi.e 15
sub.i.v
push.v self.kx
pushi.e 120
add.i.v
call.i scr_move_to_point_over_time(argc=3)
popz.v
push.d 0.2
pop.v.d self.image_speed

:[216]
popenv [215]
pushi.e 49
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[217]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [221]

:[218]
push.v self.s
conv.v.i
pushenv [220]

:[219]
call.i scr_halt(argc=0)
popz.v

:[220]
popenv [219]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_489_0"@4474
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_491_0"@4475
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 51
pop.v.i self.con

:[221]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [223]

:[222]
call.i d_ex(argc=0)
conv.v.b
not.b
b [224]

:[223]
push.e 0

:[224]
bf [230]

:[225]
push.v self.s
conv.v.i
pushenv [227]

:[226]
pushi.e 185
pop.v.i self.sprite_index

:[227]
popenv [226]
push.v self.l
conv.v.i
pushenv [229]

:[228]
pushi.e 219
pop.v.i self.sprite_index

:[229]
popenv [228]
pushi.e 52
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[230]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [232]

:[231]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_509_0"@4476
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_510_0"@4477
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_511_0"@4478
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 54
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[232]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [234]

:[233]
call.i d_ex(argc=0)
conv.v.b
not.b
b [235]

:[234]
push.e 0

:[235]
bf [239]

:[236]
push.v self.s
conv.v.i
pushenv [238]

:[237]
pushi.e -6
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.image_index

:[238]
popenv [237]
pushi.e 55
pop.v.i self.con
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[239]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [243]

:[240]
push.v self.s
conv.v.i
pushenv [242]

:[241]
call.i scr_halt(argc=0)
popz.v

:[242]
popenv [241]
pushi.e 57
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[243]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [245]

:[244]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_535_0"@4479
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i d_make(argc=0)
popz.v
pushi.e 59
pop.v.i self.con

:[245]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [247]

:[246]
call.i d_ex(argc=0)
conv.v.b
not.b
b [248]

:[247]
push.e 0

:[248]
bf [252]

:[249]
push.v self.s
conv.v.i
pushenv [251]

:[250]
pushi.e 183
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.hspeed

:[251]
popenv [250]
pushi.e 60
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[252]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [256]

:[253]
push.v self.s
conv.v.i
pushenv [255]

:[254]
call.i scr_halt(argc=0)
popz.v

:[255]
popenv [254]
pushi.e 2
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_551_0"@4480
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_552_0"@4481
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i d_make(argc=0)
popz.v
pushi.e 62
pop.v.i self.con

:[256]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [258]

:[257]
call.i d_ex(argc=0)
conv.v.b
not.b
b [259]

:[258]
push.e 0

:[259]
bf [263]

:[260]
push.v self.s
conv.v.i
pushenv [262]

:[261]
pushi.e 182
pop.v.i self.sprite_index

:[262]
popenv [261]
pushi.e 63
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[263]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [275]

:[264]
push.v self.s
conv.v.i
pushenv [266]

:[265]
pushi.e 183
pop.v.i self.sprite_index

:[266]
popenv [265]
pushi.e 2
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_568_0"@4482
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.name
pushi.e -5
pushi.e 214
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [268]

:[267]
push.s "obj_susieandlancer_event_slash_Step_0_gml_569_0"@4483
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.name

:[268]
pushi.e -5
pushi.e 214
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [270]

:[269]
push.s "obj_susieandlancer_event_slash_Step_0_gml_570_0"@4484
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.name

:[270]
pushi.e -5
pushi.e 214
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [272]

:[271]
push.s "obj_susieandlancer_event_slash_Step_0_gml_571_0"@4485
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.name

:[272]
push.v self.name
push.s "obj_susieandlancer_event_slash_Step_0_gml_573_0"@4486
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.v self.name
push.s "obj_susieandlancer_event_slash_Step_0_gml_575_0"@4487
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_576_0"@4488
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
call.i d_make(argc=0)
popz.v
push.v self.l
conv.v.i
pushenv [274]

:[273]
pushi.e 220
pop.v.i self.sprite_index

:[274]
popenv [273]
pushi.e 65
pop.v.i self.con

:[275]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [277]

:[276]
call.i d_ex(argc=0)
conv.v.b
not.b
b [278]

:[277]
push.e 0

:[278]
bf [282]

:[279]
push.v self.l
conv.v.i
pushenv [281]

:[280]
pushi.e 218
pop.v.i self.sprite_index

:[281]
popenv [280]
pushi.e 4
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_586_0"@4489
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i d_make(argc=0)
popz.v
pushi.e 66
pop.v.i self.con

:[282]
push.v self.con
pushi.e 66
cmp.i.v EQ
bf [284]

:[283]
call.i d_ex(argc=0)
conv.v.b
not.b
b [285]

:[284]
push.e 0

:[285]
bf [289]

:[286]
push.v self.l
conv.v.i
pushenv [288]

:[287]
pushi.e 220
pop.v.i self.sprite_index

:[288]
popenv [287]
pushi.e 3
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_595_0"@4490
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_597_0"@4491
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_599_0"@4492
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_600_0"@4493
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 6
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_susieandlancer_event_slash_Step_0_gml_602_0"@4494
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 67
pop.v.i self.con
call.i d_make(argc=0)
popz.v

:[289]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [291]

:[290]
call.i d_ex(argc=0)
conv.v.b
not.b
b [292]

:[291]
push.e 0

:[292]
bf [294]

:[293]
push.s "fanfare.ogg"@4495
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_play(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 0
pop.v.i global.fc
pushi.e 52
pop.v.i global.typer
push.s "obj_susieandlancer_event_slash_Step_0_gml_615_0"@4496
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
pop.v.v self.d
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.skippable
pushi.e 70
pop.v.i self.con

:[294]
push.v self.con
pushi.e 9999
cmp.i.v EQ
bf [300]

:[295]
call.i snd_free_all(argc=0)
popz.v
pushi.e 5
pushenv [297]

:[296]
call.i instance_destroy(argc=0)
popz.v

:[297]
popenv [296]
pushi.e 6
pushenv [299]

:[298]
call.i instance_destroy(argc=0)
popz.v

:[299]
popenv [298]
pushi.e 30
pop.v.i global.typer
pushi.e 8
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
push.s "obj_susieandlancer_event_slash_Step_0_gml_629_0"@4497
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
pushi.e 70
pop.v.i self.con

:[300]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [302]

:[301]
call.i d_ex(argc=0)
conv.v.b
not.b
b [303]

:[302]
push.e 0

:[303]
bf [311]

:[304]
call.i snd_free_all(argc=0)
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
pop.v.i self.scon
pushi.e 20
pop.v.i self.lcon
pushi.e 326
pushenv [306]

:[305]
pushi.e 1
pop.v.i self.visible

:[306]
popenv [305]
push.v self.k
conv.v.i
pushenv [308]

:[307]
pushi.e 0
pop.v.i self.visible

:[308]
popenv [307]
pushglb.v global.plot
pushi.e 130
cmp.i.v LT
bf [310]

:[309]
pushi.e 130
pop.v.i global.plot

:[310]
pushi.e 71
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e 326
conv.i.v
call.i scr_pan_to_obj(argc=2)
popz.v
pushi.e 52
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[311]
push.v self.scon
pushi.e 1
cmp.i.v EQ
bf [316]

:[312]
push.v self.s
conv.v.i
pushenv [314]

:[313]
pushi.e 180
pop.v.i self.sprite_index
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index
push.v self.x
pushi.e 10
sub.i.v
pop.v.v self.x

:[314]
popenv [313]
push.v self.s
conv.v.i
push.v [stacktop]self.x
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e 50
sub.i.v
cmp.v.v LTE
bf [316]

:[315]
call.i scr_losechar(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i scr_getchar(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_getchar(argc=1)
popz.v
pushi.e 0
push.v self.s
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 165
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
push.v self.s
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.cinstance
pushi.e 24
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
pop.v.i [stacktop]self.target
pushi.e 2
pop.v.i self.scon

:[316]
push.v self.lcon
pushi.e 20
cmp.i.v EQ
bf [319]

:[317]
pushi.e 220
push.v self.l
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.l
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
sub.i.v
pop.i.v [stacktop]self.x
push.v self.l
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.d 0.5
add.d.v
pop.i.v [stacktop]self.y
push.v self.l
conv.v.i
push.v [stacktop]self.x
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e 120
sub.i.v
cmp.v.v LTE
bf [319]

:[318]
pushi.e 21
pop.v.i self.lcon

:[319]
push.v self.lcon
pushi.e 21
cmp.i.v EQ
bf [323]

:[320]
pushi.e 84
conv.i.v
push.v self.l
conv.v.i
push.v [stacktop]self.y
push.v self.l
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.npc
pushi.e 216
push.v self.npc
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 22
pop.v.i self.lcon
pushi.e 1
pushi.e -5
pushi.e 229
pop.v.i [array]global.flag
push.v self.l
conv.v.i
pushenv [322]

:[321]
pushi.e 0
pop.v.i self.visible

:[322]
popenv [321]

:[323]
push.v self.con
pushi.e 72
cmp.i.v EQ
bf [333]

:[324]
pushi.e 75
conv.i.v
pushi.e 80
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.savepoint
push.v self.r
conv.v.i
pushenv [326]

:[325]
pushi.e 0
pop.v.i self.visible

:[326]
popenv [325]
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.x
push.v self.r
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [328]

:[327]
pushi.e 1
pop.v.i self.visible
call.i scr_caterpillar_interpolate(argc=0)
popz.v

:[328]
popenv [327]
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
pushenv [330]

:[329]
pushi.e 1
pop.v.i self.visible
call.i scr_caterpillar_interpolate(argc=0)
popz.v

:[330]
popenv [329]
pushi.e 1
conv.i.v
call.i scr_caterpillar_facing(argc=1)
popz.v
pushi.e 326
pushenv [332]

:[331]
pushi.e 0
pop.v.i self.cutscene

:[332]
popenv [331]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
call.i scr_tempsave(argc=0)
popz.v
pushi.e 99
pop.v.i self.con

:[333]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
bf [337]

:[334]
push.v self.con
pushi.e 99
cmp.i.v EQ
bf [337]

:[335]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [337]

:[336]
push.v 326.x
pushi.e 80
cmp.i.v LTE
b [338]

:[337]
push.e 0

:[338]
bf [340]

:[339]
pushi.e 82
pop.v.i 326.x
pushi.e 1
pop.v.i global.interact
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_susieandlancer_event_slash_Step_0_gml_712_0"@4499
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_susieandlancer_event_slash_Step_0_gml_713_0"@4500
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 100
pop.v.i self.con

:[340]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [342]

:[341]
call.i d_ex(argc=0)
conv.v.b
not.b
b [343]

:[342]
push.e 0

:[343]
bf [end]

:[344]
pushi.e 99
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[end]