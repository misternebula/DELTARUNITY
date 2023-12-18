.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[1]
call.i snd_free_all(argc=0)
popz.v
pushi.e 200
pop.v.i self.y
pushi.e 1
pop.v.i global.interact
pushi.e 209
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -50
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.ral
pushi.e 829
conv.i.v
push.v 326.y
pushi.e 0
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.k
push.v self.k
pushi.e -1
pushi.e 0
pop.v.v [array]self.c
push.v self.ral
pushi.e -1
pushi.e 1
pop.v.v [array]self.c
pushi.e 165
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.visible

:[3]
popenv [2]
pushi.e 326
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
push.v self.ral
conv.v.i
pushenv [7]

:[6]
pushi.e 4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[7]
popenv [6]
push.v self.k
conv.v.i
pushenv [9]

:[8]
pushi.e 4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[9]
popenv [8]
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i global.interact

:[12]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [16]

:[13]
pushi.e 78
pushenv [15]

:[14]
call.i scr_halt(argc=0)
popz.v

:[15]
popenv [14]
pushi.e 4
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_thrashmaker_event_slash_Step_0_gml_57_0"@4594
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_59_0"@4595
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
push.d 5.1
pop.v.d self.con

:[18]
push.v self.con
push.d 5.1
cmp.d.v EQ
bf [20]

:[19]
call.i d_ex(argc=0)
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.s "lancer.ogg"@4596
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 1
conv.i.v
push.d 0.6
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 221
pop.v.i self.sprite_index
pushi.e 5
pop.v.i global.fc
pushi.e 13
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_thrashmaker_event_slash_Step_0_gml_74_0"@4597
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
push.s "obj_thrashmaker_event_slash_Step_0_gml_76_0"@4598
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "E"@2532
conv.s.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_78_0"@4599
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 6
pop.v.i self.con

:[23]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [25]

:[24]
call.i d_ex(argc=0)
conv.v.b
not.b
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 111
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 224
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 7
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [30]

:[29]
pushi.e 221
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 11
pop.v.i global.fe
push.s "obj_thrashmaker_event_slash_Step_0_gml_103_0"@4600
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "D"@2531
conv.s.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_105_0"@4601
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "C"@2530
conv.s.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_107_0"@4602
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "E"@2532
conv.s.v
pushi.e 5
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_109_0"@4603
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_111_0"@4604
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_112_0"@4605
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_113_0"@4606
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "E"@2532
conv.s.v
pushi.e 11
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_115_0"@4607
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 8.1
pop.v.d self.con

:[30]
push.v self.con
push.d 8.1
cmp.d.v EQ
bf [32]

:[31]
call.i d_ex(argc=0)
conv.v.b
not.b
b [33]

:[32]
push.e 0

:[33]
bf [37]

:[34]
pushi.e 329
conv.i.v
pushi.e -80
conv.i.v
pushi.e 280
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.easel
push.v self.easel
conv.v.i
pushenv [36]

:[35]
pushi.e 3
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.gravity
push.i 700000
pop.v.i self.depth

:[36]
popenv [35]
pushi.e 19
conv.i.v
call.i snd_play(argc=1)
popz.v
push.d 8.2
pop.v.d self.con

:[37]
push.v self.con
push.d 8.2
cmp.d.v EQ
bf [42]

:[38]
push.v self.easel
conv.v.i
push.v [stacktop]self.y
pushi.e 155
cmp.i.v GTE
bf [42]

:[39]
push.v self.easel
conv.v.i
pushenv [41]

:[40]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
pushi.e 160
pop.v.i self.y

:[41]
popenv [40]
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 8.3
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[42]
push.v self.con
push.d 9.3
cmp.d.v EQ
bf [44]

:[43]
call.i d_ex(argc=0)
conv.v.b
not.b
b [45]

:[44]
push.e 0

:[45]
bf [51]

:[46]
push.v self.k
conv.v.i
pushenv [48]

:[47]
pushi.e 8
pop.v.i self.hspeed
pushi.e 829
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[48]
popenv [47]
push.v self.ral
conv.v.i
pushenv [50]

:[49]
pushi.e 8
pop.v.i self.hspeed
pushi.e 209
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[50]
popenv [49]
pushi.e -1
pop.v.i self.hspeed
pushi.e 10
pop.v.i self.con
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[51]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [61]

:[52]
push.v self.k
conv.v.i
pushenv [54]

:[53]
call.i scr_halt(argc=0)
popz.v

:[54]
popenv [53]
push.v self.ral
conv.v.i
pushenv [56]

:[55]
call.i scr_halt(argc=0)
popz.v

:[56]
popenv [55]
push.v self.k
conv.v.i
pushenv [58]

:[57]
pushi.e 830
pop.v.i self.sprite_index

:[58]
popenv [57]
push.v self.ral
conv.v.i
pushenv [60]

:[59]
pushi.e 206
pop.v.i self.sprite_index

:[60]
popenv [59]
call.i scr_halt(argc=0)
popz.v
pushi.e 12
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[61]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [63]

:[62]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 14
pop.v.i global.fe
push.s "obj_thrashmaker_event_slash_Step_0_gml_187_0"@4609
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_188_0"@4610
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
pushi.e 23
pop.v.i self.con

:[63]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [65]

:[64]
call.i d_ex(argc=0)
conv.v.b
not.b
b [66]

:[65]
push.e 0

:[66]
bf [72]

:[67]
call.i snd_free_all(argc=0)
popz.v
push.v self.ral
conv.v.i
pushenv [69]

:[68]
call.i scr_halt(argc=0)
popz.v

:[69]
popenv [68]
push.v self.k
conv.v.i
pushenv [71]

:[70]
call.i scr_halt(argc=0)
popz.v

:[71]
popenv [70]
pushi.e 24
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[72]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [74]

:[73]
push.s "thrashmachine.ogg"@4611
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 1
conv.i.v
push.d 0.6
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 39
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
pop.v.i self.con

:[74]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [76]

:[75]
pushi.e 39
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [77]

:[76]
push.e 0

:[77]
bf [83]

:[78]
call.i snd_free_all(argc=0)
popz.v
push.v self.ral
conv.v.i
pushenv [80]

:[79]
pushi.e 209
pop.v.i self.sprite_index

:[80]
popenv [79]
push.v self.k
conv.v.i
pushenv [82]

:[81]
pushi.e 829
pop.v.i self.sprite_index

:[82]
popenv [81]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 14
pop.v.i global.fe
push.s "obj_thrashmaker_event_slash_Step_0_gml_223_0"@4612
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_225_0"@4613
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
pushi.e 31
pop.v.i self.con

:[83]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [85]

:[84]
call.i d_ex(argc=0)
conv.v.b
not.b
b [86]

:[85]
push.e 0

:[86]
bf [92]

:[87]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.bush
conv.v.i
pushenv [89]

:[88]
pushi.e 1
pop.v.i self.image_index

:[89]
popenv [88]
pushi.e 187
conv.i.v
push.v self.bush
conv.v.i
push.v [stacktop]self.y
pushi.e 44
add.i.v
push.v self.bush
conv.v.i
push.v [stacktop]self.x
pushi.e 88
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
push.v self.s
conv.v.i
pushenv [91]

:[90]
pushi.e 8
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed
call.i scr_depth(argc=0)
popz.v

:[91]
popenv [90]
pushi.e 725
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
push.v self.s
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.bush_debris_obj
push.v self.s
conv.v.i
push.v [stacktop]self.depth
pushi.e 20
sub.i.v
push.v self.bush_debris_obj
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 1
pop.v.i self.bush_debris
pushi.e 8
pop.v.i self.hspeed
pushi.e 32
pop.v.i self.con

:[92]
push.v self.bush_debris
pushi.e 1
cmp.i.v EQ
bf [98]

:[93]
push.v self.s
call.i instance_exists(argc=1)
conv.v.b
bf [95]

:[94]
push.v self.bush_debris_obj
call.i instance_exists(argc=1)
conv.v.b
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
push.v self.s
conv.v.i
push.v [stacktop]self.x
push.v self.bush_debris_obj
conv.v.i
pop.v.v [stacktop]self.x
push.v self.s
conv.v.i
push.v [stacktop]self.y
push.v self.bush_debris_obj
conv.v.i
pop.v.v [stacktop]self.y
push.v self.s
conv.v.i
push.v [stacktop]self.depth
pushi.e 20
sub.i.v
push.v self.bush_debris_obj
conv.v.i
pop.v.v [stacktop]self.depth

:[98]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [107]

:[99]
pushi.e 0
pop.v.i self.move_finished
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 185
cmp.i.v GTE
bf [103]

:[100]
push.v self.s
conv.v.i
pushenv [102]

:[101]
call.i scr_halt(argc=0)
popz.v
pushi.e 185
pop.v.i self.y
pushi.e 180
pop.v.i self.sprite_index

:[102]
popenv [101]
push.v self.move_finished
pushi.e 1
add.i.v
pop.v.v self.move_finished

:[103]
push.v self.x
pushi.e 460
cmp.i.v GTE
bf [105]

:[104]
pushi.e 460
pop.v.i self.x
pushi.e 0
pop.v.i self.speed
push.v self.move_finished
pushi.e 1
add.i.v
pop.v.v self.move_finished

:[105]
push.v self.move_finished
pushi.e 2
cmp.i.v EQ
bf [107]

:[106]
pushi.e 35
pop.v.i self.con

:[107]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [111]

:[108]
push.v self.s
conv.v.i
pushenv [110]

:[109]
call.i scr_halt(argc=0)
popz.v

:[110]
popenv [109]
pushi.e 34
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[111]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [113]

:[112]
push.s "lancer.ogg"@4596
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 1
conv.i.v
push.d 0.6
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_thrashmaker_event_slash_Step_0_gml_299_0"@4616
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_300_0"@4617
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
pushi.e 39
pop.v.i self.con

:[113]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [115]

:[114]
call.i d_ex(argc=0)
conv.v.b
not.b
b [116]

:[115]
push.e 0

:[116]
bf [124]

:[117]
push.v self.s
conv.v.i
pushenv [119]

:[118]
call.i scr_depth(argc=0)
popz.v
pushi.e -8
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[119]
popenv [118]
push.v self.k
conv.v.i
pushenv [121]

:[120]
pushi.e -8
pop.v.i self.hspeed

:[121]
popenv [120]
push.v self.ral
conv.v.i
pushenv [123]

:[122]
pushi.e -8
pop.v.i self.hspeed

:[123]
popenv [122]
pushi.e 40
pop.v.i self.con
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[124]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [132]

:[125]
push.v self.s
conv.v.i
pushenv [127]

:[126]
call.i scr_halt(argc=0)
popz.v

:[127]
popenv [126]
push.v self.k
conv.v.i
pushenv [129]

:[128]
call.i scr_halt(argc=0)
popz.v

:[129]
popenv [128]
push.v self.ral
conv.v.i
pushenv [131]

:[130]
call.i scr_halt(argc=0)
popz.v

:[131]
popenv [130]
call.i scr_halt(argc=0)
popz.v
pushi.e 190
push.v self.s
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 123
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[132]
push.v self.con
pushi.e 124
cmp.i.v EQ
bf [166]

:[133]
pushi.e -1
pop.v.i self.type
pushi.e -1
pop.v.i self.topstat
pushi.e 0
pop.v.i self.topstatlevel
pushi.e 0
pop.v.i self.i

:[134]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [143]

:[135]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stat
push.v self.topstatlevel
cmp.v.v EQ
bf [137]

:[136]
push.v self.topstatlevel
pushi.e 2
cmp.i.v GTE
b [138]

:[137]
push.e 0

:[138]
bf [140]

:[139]
pushi.e 7
pop.v.i self.type

:[140]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stat
push.v self.topstatlevel
cmp.v.v GT
bf [142]

:[141]
push.v self.i
pop.v.v self.topstat
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stat
pop.v.v self.topstatlevel

:[142]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [134]

:[143]
push.v self.topstat
pop.v.v self.type
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [145]

:[144]
pushi.e -1
pop.v.i self.type

:[145]
push.v self.topstatlevel
pushi.e 0
cmp.i.v EQ
bf [147]

:[146]
pushi.e 6
pop.v.i self.type

:[147]
pushi.e 128
pop.v.i self.con
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
push.s "obj_thrashmaker_event_slash_Step_0_gml_359_0"@4620
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.type
pushi.e -1
cmp.i.v EQ
bf [149]

:[148]
push.s "obj_thrashmaker_event_slash_Step_0_gml_363_0"@4621
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[149]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [151]

:[150]
push.s "obj_thrashmaker_event_slash_Step_0_gml_367_0"@4622
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[151]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [153]

:[152]
push.s "obj_thrashmaker_event_slash_Step_0_gml_371_0"@4623
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[153]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [155]

:[154]
push.s "obj_thrashmaker_event_slash_Step_0_gml_375_0"@4624
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[155]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [157]

:[156]
push.s "obj_thrashmaker_event_slash_Step_0_gml_379_0"@4625
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_380_0"@4626
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_381_0"@4627
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_382_0"@4628
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_384_0"@4629
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[157]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [159]

:[158]
push.s "obj_thrashmaker_event_slash_Step_0_gml_388_0"@4630
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[159]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [161]

:[160]
push.s "obj_thrashmaker_event_slash_Step_0_gml_392_0"@4631
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_393_0"@4632
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[161]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [165]

:[162]
push.v self.s
conv.v.i
pushenv [164]

:[163]
pushi.e 0
pop.v.i self.image_speed

:[164]
popenv [163]
pushi.e 0
pop.v.i global.fe
push.s "obj_thrashmaker_event_slash_Step_0_gml_401_0"@4633
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_402_0"@4634
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_403_0"@4635
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_404_0"@4636
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 126
pop.v.i self.con

:[165]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[166]
push.v self.con
pushi.e 126
cmp.i.v EQ
bf [168]

:[167]
call.i d_ex(argc=0)
conv.v.b
not.b
b [169]

:[168]
push.e 0

:[169]
bf [175]

:[170]
push.v self.s
conv.v.i
pushenv [172]

:[171]
call.i scr_halt(argc=0)
popz.v

:[172]
popenv [171]
push.v self.s
conv.v.i
pushenv [174]

:[173]
pushi.e 190
pop.v.i self.sprite_index

:[174]
popenv [173]
pushi.e 127
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[175]
push.v self.con
pushi.e 128
cmp.i.v EQ
bf [177]

:[176]
call.i d_ex(argc=0)
conv.v.b
not.b
b [178]

:[177]
push.e 0

:[178]
bf [186]

:[179]
push.v self.s
conv.v.i
pushenv [181]

:[180]
pushi.e 183
pop.v.i self.sprite_index

:[181]
popenv [180]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
push.s "obj_thrashmaker_event_slash_Step_0_gml_427_0"@4637
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "D"@2531
conv.s.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_429_0"@4638
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_430_0"@4639
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [185]

:[182]
push.v self.s
conv.v.i
pushenv [184]

:[183]
pushi.e 182
pop.v.i self.sprite_index

:[184]
popenv [183]
pushi.e 6
pop.v.i global.fe
push.s "obj_thrashmaker_event_slash_Step_0_gml_435_0"@4640
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "D"@2531
conv.s.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_437_0"@4641
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_439_0"@4642
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "E"@2532
conv.s.v
pushi.e 5
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_441_0"@4643
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_442_0"@4644
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[185]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 49
pop.v.i self.con

:[186]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [188]

:[187]
call.i d_ex(argc=0)
conv.v.b
not.b
b [189]

:[188]
push.e 0

:[189]
bf [195]

:[190]
push.v self.s
conv.v.i
pushenv [192]

:[191]
pushi.e 183
pop.v.i self.sprite_index
pushi.e 12
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[192]
popenv [191]
push.v self.easel
conv.v.i
pushenv [194]

:[193]
pushi.e 12
pop.v.i self.hspeed

:[194]
popenv [193]
pushi.e 12
pop.v.i self.hspeed
pushi.e 50
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_volume(argc=3)
popz.v
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[195]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [197]

:[196]
call.i snd_free_all(argc=0)
popz.v
pushi.e 31
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 2
pop.v.i global.fc
push.s "obj_thrashmaker_event_slash_Step_0_gml_465_0"@4645
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
pushi.e 52
pop.v.i self.con

:[197]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [199]

:[198]
call.i d_ex(argc=0)
conv.v.b
not.b
b [200]

:[199]
push.e 0

:[200]
bf [206]

:[201]
push.v self.ral
conv.v.i
pushenv [203]

:[202]
pushi.e 209
pop.v.i self.sprite_index

:[203]
popenv [202]
push.v self.k
conv.v.i
pushenv [205]

:[204]
pushi.e 829
pop.v.i self.sprite_index

:[205]
popenv [204]
pushi.e 54
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[206]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [end]

:[207]
push.v self.ral
pop.v.v self.r
push.v self.k
conv.v.i
push.v [stacktop]self.x
pop.v.v 326.x
push.v self.k
conv.v.i
push.v [stacktop]self.y
pop.v.v 326.y
pushi.e 326
pushenv [209]

:[208]
pushi.e 1
pop.v.i self.visible

:[209]
popenv [208]
call.i scr_unmarkify_caterpillar(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i scr_caterpillar_facing(argc=1)
popz.v
pushi.e 0
pop.v.i global.facing
push.v self.ral
conv.v.i
pushenv [211]

:[210]
call.i instance_destroy(argc=0)
popz.v

:[211]
popenv [210]
push.v self.k
conv.v.i
pushenv [213]

:[212]
call.i instance_destroy(argc=0)
popz.v

:[213]
popenv [212]
push.v self.s
conv.v.i
pushenv [215]

:[214]
call.i instance_destroy(argc=0)
popz.v

:[215]
popenv [214]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
call.i scr_tempsave(argc=0)
popz.v
pushi.e 56
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 226
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]