.localvar 0 arguments

:[0]
push.v self.con
pushi.e 40
cmp.i.v LT
bf [120]

:[1]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [7]

:[2]
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
push.v self.k
conv.v.i
pushenv [4]

:[3]
call.i scr_halt(argc=0)
popz.v

:[4]
popenv [3]
push.v self.s
conv.v.i
pushenv [6]

:[5]
call.i scr_halt(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 3
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [11]

:[8]
pushi.e 326
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.cutscene

:[10]
popenv [9]
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.s "obj_darkcastle_event_slash_Step_0_gml_20_0"@5131
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_21_0"@5132
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[11]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [13]

:[12]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [19]

:[15]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i global.fc
pushi.e 42
pop.v.i global.typer
push.s "obj_darkcastle_event_slash_Step_0_gml_32_0"@5133
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
push.v self.yy
pushi.e 100
add.i.v
push.v self.xx
pushi.e 200
add.i.v
call.i instance_create(argc=3)
pop.v.v self.wr
call.i scr_debug(argc=0)
pushi.e 0
cmp.i.v EQ
bf [19]

:[16]
push.v self.wr
conv.v.i
pushenv [18]

:[17]
pushi.e 0
pop.v.i self.skippable

:[18]
popenv [17]

:[19]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [22]

:[20]
push.v self.wr
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushi.e 9
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.s "obj_darkcastle_event_slash_Step_0_gml_46_0"@5135
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 7
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[22]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [24]

:[23]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [30]

:[26]
pushi.e 0
pop.v.i global.fc
pushi.e 8
pop.v.i self.con
pushi.e 42
pop.v.i global.typer
push.s "obj_darkcastle_event_slash_Step_0_gml_58_0"@5136
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_59_0"@5137
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
push.v self.yy
pushi.e 100
add.i.v
push.v self.xx
pushi.e 200
add.i.v
call.i instance_create(argc=3)
pop.v.v self.wr
call.i scr_debug(argc=0)
pushi.e 0
cmp.i.v EQ
bf [30]

:[27]
push.v self.wr
conv.v.i
pushenv [29]

:[28]
pushi.e 0
pop.v.i self.skippable

:[29]
popenv [28]

:[30]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [39]

:[31]
push.v self.wr
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [39]

:[32]
pushi.e 202
conv.i.v
pushi.e 310
conv.i.v
pushi.e 495
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.r
push.v self.r
conv.v.i
pushenv [34]

:[33]
pushi.e 100
pop.v.i self.depth

:[34]
popenv [33]
push.v self.s
conv.v.i
pushenv [36]

:[35]
pushi.e -4
pop.v.i self.vspeed
push.d 0.1
pop.v.d self.image_speed

:[36]
popenv [35]
push.v self.k
conv.v.i
pushenv [38]

:[37]
pushi.e -4
pop.v.i self.vspeed
push.d 0.1
pop.v.d self.image_speed

:[38]
popenv [37]
pushi.e 70
conv.i.v
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 9
pop.v.i self.con
pushi.e 85
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[39]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [45]

:[40]
push.v self.k
conv.v.i
pushenv [42]

:[41]
call.i scr_halt(argc=0)
popz.v

:[42]
popenv [41]
push.v self.s
conv.v.i
pushenv [44]

:[43]
call.i scr_halt(argc=0)
popz.v

:[44]
popenv [43]
pushi.e 11
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[45]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [47]

:[46]
pushi.e 6
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pushi.e -5
pushi.e 30
pop.v.i [array]global.flag
pushi.e 120
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 20
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side

:[47]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [49]

:[48]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [54]

:[51]
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade
push.v self.fade
conv.v.i
pushenv [53]

:[52]
push.d 0.01
pop.v.d self.fadespeed

:[53]
popenv [52]
pushi.e 21
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[54]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
pop.v.i self.room_persistent
pushi.e 24
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[56]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [58]

:[57]
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 132
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 20
pop.v.i global.plot
pushi.e 26
pop.v.i self.con
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[58]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [60]

:[59]
pushi.e 21
pop.v.i global.plot
pushi.e 0
pop.v.i self.room_persistent
pushi.e 28
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[60]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [62]

:[61]
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
push.s "obj_darkcastle_event_slash_Step_0_gml_142_0"@5139
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_143_0"@5140
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_144_0"@5141
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_145_0"@5142
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_146_0"@5143
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
pop.v.v self.d
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 35
pop.v.i self.con

:[62]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [64]

:[63]
call.i d_ex(argc=0)
pushi.e 1
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [74]

:[66]
call.i scr_getmsgno(argc=0)
pushi.e 17
cmp.i.v EQ
bf [70]

:[67]
push.v self.s
conv.v.i
pushenv [69]

:[68]
pushi.e 183
pop.v.i self.sprite_index

:[69]
popenv [68]

:[70]
call.i scr_getmsgno(argc=0)
pushi.e 18
cmp.i.v EQ
bf [74]

:[71]
push.v self.s
conv.v.i
pushenv [73]

:[72]
pushi.e 187
pop.v.i self.sprite_index

:[73]
popenv [72]

:[74]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [76]

:[75]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
pushi.e 40
pop.v.i self.con

:[79]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [81]

:[80]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [86]

:[83]
push.v self.s
conv.v.i
pushenv [85]

:[84]
pushi.e 183
pop.v.i self.sprite_index

:[85]
popenv [84]
pushi.e 36
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[86]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [90]

:[87]
push.v self.s
conv.v.i
pushenv [89]

:[88]
pushi.e 190
pop.v.i self.sprite_index

:[89]
popenv [88]
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
push.s "obj_darkcastle_event_slash_Step_0_gml_181_0"@5145
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
push.s "obj_darkcastle_event_slash_Step_0_gml_183_0"@5146
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_185_0"@5147
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_186_0"@5148
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_188_0"@5149
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_190_0"@5150
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_191_0"@5151
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_192_0"@5152
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 12
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_194_0"@5153
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 14
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_196_0"@5154
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_197_0"@5155
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_198_0"@5156
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_199_0"@5157
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 19
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_201_0"@5158
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 38
pop.v.i self.con

:[90]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [92]

:[91]
call.i d_ex(argc=0)
pushi.e 1
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [114]

:[94]
call.i scr_getmsgno(argc=0)
pushi.e 0
cmp.i.v EQ
bf [98]

:[95]
push.v self.s
conv.v.i
pushenv [97]

:[96]
pushi.e 190
pop.v.i self.sprite_index

:[97]
popenv [96]

:[98]
call.i scr_getmsgno(argc=0)
pushi.e 9
cmp.i.v EQ
bf [102]

:[99]
push.v self.s
conv.v.i
pushenv [101]

:[100]
pushi.e 183
pop.v.i self.sprite_index

:[101]
popenv [100]

:[102]
call.i scr_getmsgno(argc=0)
pushi.e 13
cmp.i.v EQ
bf [106]

:[103]
push.v self.s
conv.v.i
pushenv [105]

:[104]
pushi.e 190
pop.v.i self.sprite_index

:[105]
popenv [104]

:[106]
call.i scr_getmsgno(argc=0)
pushi.e 15
cmp.i.v EQ
bf [110]

:[107]
push.v self.s
conv.v.i
pushenv [109]

:[108]
pushi.e 180
pop.v.i self.sprite_index

:[109]
popenv [108]

:[110]
call.i scr_getmsgno(argc=0)
pushi.e 18
cmp.i.v EQ
bf [114]

:[111]
push.v self.s
conv.v.i
pushenv [113]

:[112]
pushi.e 187
pop.v.i self.sprite_index

:[113]
popenv [112]

:[114]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [116]

:[115]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushi.e 40
pop.v.i self.con

:[119]
b [355]

:[120]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [122]

:[121]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [123]

:[122]
push.e 0

:[123]
bf [127]

:[124]
push.v self.s
conv.v.i
pushenv [126]

:[125]
pushi.e 190
pop.v.i self.sprite_index

:[126]
popenv [125]
pushi.e 111
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 44
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[127]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [131]

:[128]
pushi.e 109
conv.i.v
call.i snd_play(argc=1)
popz.v
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
pushi.e 426
conv.i.v
push.v self.r
conv.v.i
push.v [stacktop]self.y
push.v self.r
conv.v.i
push.v [stacktop]self.sprite_height
add.v.v
pushi.e 10
sub.i.v
push.v self.xx
pushi.e 720
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.l
push.v self.l
conv.v.i
pushenv [130]

:[129]
pushi.e -32
pop.v.i self.hspeed

:[130]
popenv [129]
pushi.e 46
pop.v.i self.con

:[131]
push.v self.con
pushi.e 46
cmp.i.v EQ
bf [138]

:[132]
push.v self.l
conv.v.i
push.v [stacktop]self.x
push.v self.xx
pushi.e 360
add.i.v
cmp.v.v LTE
bf [138]

:[133]
pushi.e 77
conv.i.v
push.v self.r
conv.v.i
push.v [stacktop]self.y
pushi.e 30
add.i.v
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ex
pushi.e 708
push.v self.ex
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.ex
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.ex
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.d 0.5
push.v self.ex
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 10
push.v self.ex
conv.v.i
pop.v.i [stacktop]self.depth
push.s "lancer.ogg"@4596
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.v self.l
conv.v.i
pushenv [135]

:[134]
pushi.e 0
pop.v.i self.hspeed

:[135]
popenv [134]
push.v self.r
conv.v.i
pushenv [137]

:[136]
pushi.e -32
pop.v.i self.hspeed
pushi.e -8
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.gravity

:[137]
popenv [136]
pushi.e 1
pop.v.i self.rflip
pushi.e 112
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
pushi.e 47
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[138]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [142]

:[139]
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 49
pop.v.i self.con
pushi.e 5
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_darkcastle_event_slash_Step_0_gml_276_0"@5160
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_277_0"@5161
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_278_0"@5162
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_279_0"@5163
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_281_0"@5164
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_283_0"@5165
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 203
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [141]

:[140]
push.s "obj_darkcastle_event_slash_Step_0_gml_287_0"@5166
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_288_0"@5167
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_290_0"@5168
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_292_0"@5169
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[141]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side

:[142]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [144]

:[143]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [145]

:[144]
push.e 0

:[145]
bf [149]

:[146]
pushi.e 50
pop.v.i self.con
pushi.e 110
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.l
conv.v.i
pushenv [148]

:[147]
pushi.e 429
pop.v.i self.sprite_index

:[148]
popenv [147]
pushi.e 0
pop.v.i self.siner
pushi.e 20
pop.v.i self.maxamt

:[149]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [154]

:[150]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 2
push.v self.siner
pushi.e 2
mul.i.v
push.d 3.141592653589793
mul.d.v
push.v self.maxamt
div.v.v
call.i cos(argc=1)
mul.v.i
push.v self.l
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.siner
push.v self.maxamt
cmp.v.v GTE
bf [154]

:[151]
pushi.e 51
pop.v.i self.con
pushi.e -5
pushi.e 203
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [153]

:[152]
pushi.e 54
pop.v.i self.con

:[153]
pushi.e 2
push.v self.l
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[154]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [158]

:[155]
push.v self.l
conv.v.i
pushenv [157]

:[156]
pushi.e 426
pop.v.i self.sprite_index

:[157]
popenv [156]
pushi.e 1
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
push.s "obj_darkcastle_event_slash_Step_0_gml_327_0"@5171
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_328_0"@5172
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_329_0"@5173
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_330_0"@5174
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
push.s "obj_darkcastle_event_slash_Step_0_gml_332_0"@5175
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
push.s "obj_darkcastle_event_slash_Step_0_gml_334_0"@5176
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_335_0"@5177
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_336_0"@5178
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_337_0"@5179
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_338_0"@5180
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_339_0"@5181
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_340_0"@5182
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 14
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_342_0"@5183
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 16
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_344_0"@5184
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 18
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_346_0"@5185
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_347_0"@5186
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 70
pop.v.i self.con

:[158]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [164]

:[159]
push.v self.l
conv.v.i
pushenv [161]

:[160]
pushi.e 426
pop.v.i self.sprite_index

:[161]
popenv [160]
pushi.e 5
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_darkcastle_event_slash_Step_0_gml_360_0"@5187
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_362_0"@5188
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_364_0"@5189
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_366_0"@5190
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 7
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_368_0"@5191
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
push.v self.d
conv.v.i
pushenv [163]

:[162]
pushi.e 1
pop.v.i self.side

:[163]
popenv [162]
pushi.e 56
pop.v.i self.con

:[164]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [166]

:[165]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [167]

:[166]
push.e 0

:[167]
bf [171]

:[168]
pushi.e 202
conv.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 60
sub.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.r2
push.v self.r2
conv.v.i
pushenv [170]

:[169]
pushi.e 16
pop.v.i self.hspeed

:[170]
popenv [169]
pushi.e 57
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[171]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [177]

:[172]
pushi.e 6
pop.v.i global.typer
push.v self.r2
conv.v.i
pushenv [174]

:[173]
pushi.e 0
pop.v.i self.hspeed

:[174]
popenv [173]
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_darkcastle_event_slash_Step_0_gml_388_0"@5192
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_390_0"@5193
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_392_0"@5194
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_394_0"@5195
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
push.v self.d
conv.v.i
pushenv [176]

:[175]
pushi.e 1
pop.v.i self.side

:[176]
popenv [175]
pushi.e 59
pop.v.i self.con

:[177]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [179]

:[178]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [180]

:[179]
push.e 0

:[180]
bf [184]

:[181]
push.v self.r2
conv.v.i
pushenv [183]

:[182]
pushi.e -8
pop.v.i self.hspeed

:[183]
popenv [182]
pushi.e 60
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[184]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [188]

:[185]
pushi.e 5
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_darkcastle_event_slash_Step_0_gml_412_0"@5196
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_413_0"@5197
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_414_0"@5198
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_415_0"@5199
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_416_0"@5200
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_418_0"@5201
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 7
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_420_0"@5202
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
push.v self.d
conv.v.i
pushenv [187]

:[186]
pushi.e 1
pop.v.i self.side

:[187]
popenv [186]
pushi.e 62
pop.v.i self.con

:[188]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [190]

:[189]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [191]

:[190]
push.e 0

:[191]
bf [195]

:[192]
pushi.e 202
conv.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 60
sub.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.r3
push.v self.r3
conv.v.i
pushenv [194]

:[193]
pushi.e 16
pop.v.i self.hspeed

:[194]
popenv [193]
pushi.e 63
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[195]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [201]

:[196]
push.v self.r3
conv.v.i
pushenv [198]

:[197]
pushi.e 0
pop.v.i self.hspeed

:[198]
popenv [197]
pushi.e 6
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_darkcastle_event_slash_Step_0_gml_440_0"@5204
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_442_0"@5205
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
pop.v.v self.d
push.v self.d
conv.v.i
pushenv [200]

:[199]
pushi.e 1
pop.v.i self.side

:[200]
popenv [199]
pushi.e 65
pop.v.i self.con

:[201]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [203]

:[202]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [204]

:[203]
push.e 0

:[204]
bf [208]

:[205]
push.v self.r3
conv.v.i
pushenv [207]

:[206]
pushi.e -8
pop.v.i self.hspeed

:[207]
popenv [206]
pushi.e 66
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[208]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [212]

:[209]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_darkcastle_event_slash_Step_0_gml_460_0"@5206
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_462_0"@5207
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
push.s "obj_darkcastle_event_slash_Step_0_gml_464_0"@5208
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_465_0"@5209
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
push.v self.d
conv.v.i
pushenv [211]

:[210]
pushi.e 1
pop.v.i self.side

:[211]
popenv [210]
pushi.e 70
pop.v.i self.con

:[212]
push.v self.con
pushi.e 72
cmp.i.v EQ
bf [220]

:[213]
pushi.e 1
pushi.e -5
pushi.e 9
pop.v.i [array]global.flag
push.s "battle.ogg"@4970
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.batmusic
pushi.e 2
pop.v.i global.encounterno
pushi.e 3
pop.v.i global.specialbattle
pushi.e 2
conv.i.v
call.i scr_getchar(argc=1)
popz.v
push.v self.k
conv.v.i
push.v [stacktop]self.x
pop.v.v 326.x
push.v self.k
conv.v.i
push.v [stacktop]self.y
pop.v.v 326.y
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
pushi.e 0
pop.v.v [array]global.cinstance
push.v self.k
conv.v.i
pushenv [215]

:[214]
call.i instance_destroy(argc=0)
popz.v

:[215]
popenv [214]
push.v self.s
conv.v.i
pushenv [217]

:[216]
call.i instance_destroy(argc=0)
popz.v

:[217]
popenv [216]
pushi.e 164
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 73
pop.v.i self.con
push.v self.l
conv.v.i
pushenv [219]

:[218]
pushi.e -5
pushi.e 0
push.v [array]global.monstermakey
pushi.e -5
pushi.e 0
push.v [array]global.monstermakex
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
pushi.e -5
pushi.e 0
push.v [array]global.monstermakey
pushi.e -5
pushi.e 0
push.v [array]global.monstermakex
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.speed

:[219]
popenv [218]
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[220]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [222]

:[221]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [223]

:[222]
push.e 0

:[223]
bf [225]

:[224]
call.i snd_free_all(argc=0)
popz.v
pushi.e 71
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[225]
push.v self.con
pushi.e 74
cmp.i.v EQ
bf [232]

:[226]
push.v self.l
conv.v.i
pushenv [228]

:[227]
pushi.e 0
pop.v.i self.speed

:[228]
popenv [227]
pushi.e 187
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [232]

:[229]
push.v self.l
conv.v.i
pushenv [231]

:[230]
call.i instance_destroy(argc=0)
popz.v

:[231]
popenv [230]
pushi.e 75
pop.v.i self.con

:[232]
push.v self.con
pushi.e 75
cmp.i.v EQ
bf [238]

:[233]
pushglb.v global.plot
pushi.e 22
cmp.i.v EQ
bf [238]

:[234]
pushi.e 187
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [237]

:[235]
pushi.e 302
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [237]

:[236]
pushi.e 76
pop.v.i self.con

:[237]
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[238]
push.v self.con
pushi.e 77
cmp.i.v EQ
bf [244]

:[239]
pushi.e 0
pop.v.i self.rflip
pushi.e 1
pop.v.i global.interact
pushi.e 830
conv.i.v
push.v 326.y
push.v 326.x
call.i scr_dark_marker(argc=3)
pop.v.v self.k
pushi.e 190
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.s
pushi.e 326
pushenv [241]

:[240]
pushi.e 0
pop.v.i self.visible

:[241]
popenv [240]
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [243]

:[242]
call.i instance_destroy(argc=0)
popz.v

:[243]
popenv [242]
pushi.e 78
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[244]
push.v self.con
pushi.e 79
cmp.i.v EQ
bf [246]

:[245]
pushi.e 202
conv.i.v
pushi.e 310
conv.i.v
pushi.e 95
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.r
pushi.e 16
push.v self.r
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 80
pop.v.i self.con
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[246]
push.v self.con
pushi.e 81
cmp.i.v EQ
bf [250]

:[247]
push.v self.r
conv.v.i
pushenv [249]

:[248]
pushi.e 0
pop.v.i self.speed

:[249]
popenv [248]
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
push.s "obj_darkcastle_event_slash_Step_0_gml_552_0"@5212
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
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 82
pop.v.i self.con

:[250]
push.v self.con
pushi.e 82
cmp.i.v EQ
bf [252]

:[251]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [253]

:[252]
push.e 0

:[253]
bf [259]

:[254]
push.v self.r
conv.v.i
pushenv [256]

:[255]
pushi.e 6
pop.v.i self.vspeed

:[256]
popenv [255]
push.v self.r
conv.v.i
pushenv [258]

:[257]
pushi.e 1000
pop.v.i self.depth

:[258]
popenv [257]
pushi.e 83
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[259]
push.v self.con
pushi.e 84
cmp.i.v EQ
bf [263]

:[260]
push.v self.r
conv.v.i
pushenv [262]

:[261]
pushi.e 0
pop.v.i self.vspeed

:[262]
popenv [261]
push.s "obj_darkcastle_event_slash_Step_0_gml_569_0"@5213
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_571_0"@5214
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_572_0"@5215
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_574_0"@5216
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 85
pop.v.i self.con

:[263]
push.v self.con
pushi.e 85
cmp.i.v EQ
bf [265]

:[264]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [266]

:[265]
push.e 0

:[266]
bf [270]

:[267]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.r
conv.v.i
pushenv [269]

:[268]
pushi.e 203
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.1
pop.v.d self.image_speed

:[269]
popenv [268]
pushi.e 86
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[270]
push.v self.con
pushi.e 87
cmp.i.v EQ
bf [274]

:[271]
push.v self.r
conv.v.i
pushenv [273]

:[272]
pushi.e 204
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[273]
popenv [272]
pushi.e 0
pushi.e -5
pushi.e 30
pop.v.i [array]global.flag
pushi.e 88
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[274]
push.v self.con
pushi.e 89
cmp.i.v EQ
bf [276]

:[275]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_darkcastle_event_slash_Step_0_gml_611_0"@5217
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_612_0"@5218
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_613_0"@5219
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_615_0"@5220
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_617_0"@5221
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_darkcastle_event_slash_Step_0_gml_619_0"@5222
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 90
pop.v.i self.con

:[276]
push.v self.con
pushi.e 90
cmp.i.v EQ
bf [278]

:[277]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [279]

:[278]
push.e 0

:[279]
bf [283]

:[280]
push.v self.s
conv.v.i
pushenv [282]

:[281]
pushi.e 183
pop.v.i self.sprite_index

:[282]
popenv [281]
pushi.e 91
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[283]
push.v self.con
pushi.e 92
cmp.i.v EQ
bf [287]

:[284]
push.v self.k
conv.v.i
pushenv [286]

:[285]
pushi.e 829
pop.v.i self.sprite_index

:[286]
popenv [285]
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
push.s "obj_darkcastle_event_slash_Step_0_gml_637_0"@5223
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
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 93
pop.v.i self.con

:[287]
push.v self.con
pushi.e 93
cmp.i.v EQ
bf [289]

:[288]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [290]

:[289]
push.e 0

:[290]
bf [296]

:[291]
push.v self.k
conv.v.i
pushenv [293]

:[292]
pushi.e 827
pop.v.i self.sprite_index

:[293]
popenv [292]
push.v self.s
conv.v.i
pushenv [295]

:[294]
pushi.e 4
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 187
pop.v.i self.sprite_index

:[295]
popenv [294]
pushi.e 94
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[296]
push.v self.con
pushi.e 95
cmp.i.v EQ
bf [300]

:[297]
push.v self.k
conv.v.i
pushenv [299]

:[298]
pushi.e 830
pop.v.i self.sprite_index

:[299]
popenv [298]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_darkcastle_event_slash_Step_0_gml_663_0"@5224
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_664_0"@5225
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
pop.v.v self.d
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 96
pop.v.i self.con

:[300]
push.v self.con
pushi.e 96
cmp.i.v EQ
bf [302]

:[301]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [303]

:[302]
push.e 0

:[303]
bf [309]

:[304]
push.v self.k
conv.v.i
pushenv [306]

:[305]
pushi.e 829
pop.v.i self.sprite_index

:[306]
popenv [305]
push.v self.r
conv.v.i
pushenv [308]

:[307]
pushi.e 1
pop.v.i self.hspeed
pushi.e 2
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[308]
popenv [307]
pushi.e 97
pop.v.i self.con

:[309]
push.v self.con
pushi.e 97
cmp.i.v EQ
bf [312]

:[310]
push.v self.r
conv.v.i
push.v [stacktop]self.y
push.v self.k
conv.v.i
push.v [stacktop]self.y
pushi.e 12
sub.i.v
cmp.v.v GTE
bf [312]

:[311]
push.v self.k
conv.v.i
push.v [stacktop]self.y
pushi.e 12
sub.i.v
push.v self.r
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 0
push.v self.r
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.r
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 207
push.v self.r
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.r
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.r
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.r
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 98
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[312]
push.v self.con
pushi.e 99
cmp.i.v EQ
bf [314]

:[313]
pushi.e 5
pop.v.i global.fe
push.s "obj_darkcastle_event_slash_Step_0_gml_702_0"@5226
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_703_0"@5227
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_704_0"@5228
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_705_0"@5229
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_706_0"@5230
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_darkcastle_event_slash_Step_0_gml_707_0"@5231
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 100
pop.v.i self.con

:[314]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [316]

:[315]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [317]

:[316]
push.e 0

:[317]
bf [321]

:[318]
push.v self.r
conv.v.i
pushenv [320]

:[319]
pushi.e 204
pop.v.i self.sprite_index

:[320]
popenv [319]
pushi.e 101
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[321]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [323]

:[322]
pushi.e 0
pop.v.i global.fe
push.s "obj_darkcastle_event_slash_Step_0_gml_723_0"@5232
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
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 103
pop.v.i self.con

:[323]
push.v self.con
pushi.e 103
cmp.i.v EQ
bf [325]

:[324]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [326]

:[325]
push.e 0

:[326]
bf [330]

:[327]
push.v self.r
conv.v.i
pushenv [329]

:[328]
pushi.e -4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 207
pop.v.i self.sprite_index

:[329]
popenv [328]
pushi.e 104
pop.v.i self.con

:[330]
push.v self.con
pushi.e 104
cmp.i.v EQ
bf [337]

:[331]
push.v self.r
conv.v.i
push.v [stacktop]self.x
push.v self.k
conv.v.i
push.v [stacktop]self.x
pushi.e 70
sub.i.v
cmp.v.v LTE
bf [337]

:[332]
push.v self.r
conv.v.i
pushenv [334]

:[333]
call.i scr_halt(argc=0)
popz.v

:[334]
popenv [333]
push.v self.r
conv.v.i
pushenv [336]

:[335]
pushi.e 209
pop.v.i self.sprite_index

:[336]
popenv [335]
pushi.e 105
pop.v.i self.con
pushi.e 8
pop.v.i global.fe
push.s "obj_darkcastle_event_slash_Step_0_gml_749_0"@5233
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
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side

:[337]
push.v self.con
pushi.e 105
cmp.i.v EQ
bf [339]

:[338]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [340]

:[339]
push.e 0

:[340]
bf [342]

:[341]
pushi.e 107
pop.v.i self.con
push.s "castletown_empty.ogg"@5234
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 25
conv.i.v
pushi.e 326
conv.i.v
call.i scr_pan_to_obj(argc=2)
popz.v

:[342]
push.v self.con
pushi.e 109
cmp.i.v EQ
bf [346]

:[343]
push.v self.r
conv.v.i
pushenv [345]

:[344]
call.i instance_destroy(argc=0)
popz.v

:[345]
popenv [344]
pushi.e 110
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[346]
push.v self.con
pushi.e 108
cmp.i.v EQ
bf [355]

:[347]
call.i scr_losechar(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i scr_getchar(argc=1)
popz.v
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i 326.visible
pushi.e 0
pop.v.i 326.cutscene
push.v self.k
conv.v.i
pushenv [349]

:[348]
call.i instance_destroy(argc=0)
popz.v

:[349]
popenv [348]
pushi.e 165
conv.i.v
push.v self.r
conv.v.i
push.v [stacktop]self.y
pushi.e 12
add.i.v
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e 4
add.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.cinstance
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [354]

:[350]
call.i scr_caterpillar_interpolate(argc=0)
popz.v
pushi.e 206
pop.v.i self.usprite
pushi.e 204
pop.v.i self.dsprite
pushi.e 209
pop.v.i self.rsprite
pushi.e 207
pop.v.i self.lsprite
pushi.e 0
pop.v.i self.i

:[351]
push.v self.i
pushi.e 50
cmp.i.v LT
bf [353]

:[352]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.facing
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [351]

:[353]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 12
sub.i.v
pop.v.v self.y

:[354]
popenv [350]
pushi.e 109
pop.v.i self.con
call.i scr_tempsave(argc=0)
popz.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 30
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact

:[355]
push.v self.rflip
pushi.e 1
cmp.i.v EQ
bf [end]

:[356]
push.v self.r
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[357]
push.v self.r
conv.v.i
pushenv [359]

:[358]
push.v self.image_angle
pushi.e 2
add.i.v
pop.v.v self.image_angle

:[359]
popenv [358]

:[end]