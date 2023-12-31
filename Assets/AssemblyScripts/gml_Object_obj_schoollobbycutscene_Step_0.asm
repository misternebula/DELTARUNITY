.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.type
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [54]

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[5]
pushi.e 326
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.vspeed

:[7]
popenv [6]
push.v self.t
conv.v.i
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[9]
popenv [8]
pushi.e 3
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [14]

:[11]
push.v self.t
conv.v.i
pushenv [13]

:[12]
pushi.e 93
pop.v.i self.sprite_index

:[13]
popenv [12]
pushi.e 5
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [20]

:[15]
pushi.e 6
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
push.v self.t
conv.v.i
pushenv [19]

:[18]
push.d 0.2
pop.v.d self.image_speed

:[19]
popenv [18]
pushi.e 7
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[20]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [24]

:[21]
push.v self.t
conv.v.i
pushenv [23]

:[22]
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_index

:[23]
popenv [22]
pushi.e 11
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [30]

:[25]
pushi.e 6
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]
push.v self.t
conv.v.i
pushenv [29]

:[28]
push.d -0.2
pop.v.d self.image_speed

:[29]
popenv [28]
pushi.e 13
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [34]

:[31]
push.v self.t
conv.v.i
pushenv [33]

:[32]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 96
pop.v.i self.sprite_index

:[33]
popenv [32]
pushi.e 839
conv.i.v
push.v self.t
conv.v.i
push.v [stacktop]self.y
pushi.e 21
add.i.v
push.v self.t
conv.v.i
push.v [stacktop]self.x
pushi.e 4
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.k
pushi.e 15
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [40]

:[35]
push.v self.t
conv.v.i
pushenv [37]

:[36]
pushi.e 103
pop.v.i self.sprite_index

:[37]
popenv [36]
pushi.e 118
conv.i.v
pushi.e 0
conv.i.v
pushi.e -3
conv.i.v
call.i scr_pan(argc=3)
popz.v
push.v self.k
conv.v.i
pushenv [39]

:[38]
pushi.e 836
pop.v.i self.sprite_index
pushi.e -3
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[39]
popenv [38]
pushi.e 17
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[40]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [44]

:[41]
push.v self.t
conv.v.i
pushenv [43]

:[42]
pushi.e 101
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[43]
popenv [42]
push.d 18.1
pop.v.d self.con
pushi.e 78
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[44]
push.v self.con
push.d 19.1
cmp.d.v EQ
bf [46]

:[45]
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade
push.d 0.02
push.v self.fade
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 19
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[46]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [50]

:[47]
push.v self.k
conv.v.i
pushenv [49]

:[48]
pushi.e 0
pop.v.i self.hspeed
pushi.e 839
pop.v.i self.sprite_index
push.d -0.5
pop.v.d self.vspeed

:[49]
popenv [48]
pushi.e 21
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[50]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [52]

:[51]
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i room_goto(argc=1)
popz.v

:[52]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [54]

:[53]
call.i snd_free_all(argc=0)
popz.v
pushi.e 23
pop.v.i self.con

:[54]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [56]

:[55]
push.v self.type
pushi.e 2
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [282]

:[58]
push.v self.con
push.d 0.1
cmp.d.v EQ
bf [60]

:[59]
pushi.e 1
pop.v.i global.interact

:[60]
push.v self.con
push.d 1.1
cmp.d.v EQ
bf [66]

:[61]
push.v self.k
conv.v.i
pushenv [63]

:[62]
pushi.e 834
pop.v.i self.sprite_index

:[63]
popenv [62]
push.v self.s
conv.v.i
pushenv [65]

:[64]
pushi.e 168
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[65]
popenv [64]
push.d 1.2
pop.v.d self.con
pushi.e 0
pop.v.i self.chalksound

:[66]
push.v self.con
push.d 1.2
cmp.d.v EQ
bf [76]

:[67]
push.v self.s
conv.v.i
push.v [stacktop]self.image_index
pushi.e 16
cmp.i.v GTE
bf [69]

:[68]
push.v self.chalksound
pushi.e 0
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 1
pop.v.i self.chalksound
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v

:[72]
push.v self.s
conv.v.i
push.v [stacktop]self.image_index
pushi.e 21
cmp.i.v GTE
bf [76]

:[73]
push.v self.s
conv.v.i
pushenv [75]

:[74]
pushi.e 173
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[75]
popenv [74]
push.d 0.3
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[76]
push.v self.con
push.d 1.3
cmp.d.v EQ
bf [78]

:[77]
pushi.e 177
push.v self.s
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.4
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[78]
push.v self.con
push.d 1.4
cmp.d.v EQ
bf [80]

:[79]
pushi.e 169
push.v self.s
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d -0.5
push.v self.s
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.1
push.v self.s
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d 0.5
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[80]
push.v self.con
push.d 1.5
cmp.d.v EQ
bf [86]

:[81]
push.v self.s
conv.v.i
pushenv [83]

:[82]
pushi.e 220
pop.v.i self.x
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[83]
popenv [82]
pushi.e 1
pop.v.i self.con
pushi.e 162
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 162
pushenv [85]

:[84]
pushi.e 40
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[85]
popenv [84]
pushi.e 88
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[86]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [90]

:[87]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.v self.k
conv.v.i
pushenv [89]

:[88]
pushi.e 834
pop.v.i self.sprite_index

:[89]
popenv [88]
pushi.e 1
pop.v.i global.facing
pushi.e 10
pop.v.i global.typer
push.s "obj_schoollobbycutscene_slash_Step_0_gml_193_0"@3766
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_194_0"@3767
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
push.d 2.1
pop.v.d self.con

:[90]
push.v self.con
push.d 2.1
cmp.d.v EQ
bf [92]

:[91]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
pushi.e 176
push.v self.s
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 1.6
pop.v.d self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[95]
push.v self.con
push.d 2.6
cmp.d.v EQ
bf [97]

:[96]
pushi.e 173
push.v self.s
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.s "obj_schoollobbycutscene_slash_Step_0_gml_209_0"@3768
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_210_0"@3769
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[97]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [99]

:[98]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushi.e 4
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[102]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [106]

:[103]
push.v self.s
conv.v.i
pushenv [105]

:[104]
pushi.e 175
pop.v.i self.sprite_index

:[105]
popenv [104]
push.s "obj_schoollobbycutscene_slash_Step_0_gml_225_0"@3770
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_226_0"@3771
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[106]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [108]

:[107]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
pushi.e 7
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[111]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [115]

:[112]
push.v self.s
conv.v.i
pushenv [114]

:[113]
pushi.e 179
pop.v.i self.sprite_index

:[114]
popenv [113]
pushi.e 9
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[115]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [119]

:[116]
push.v self.s
conv.v.i
pushenv [118]

:[117]
pushi.e 169
pop.v.i self.sprite_index

:[118]
popenv [117]
pushi.e 11
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[119]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [121]

:[120]
pushi.e 1
pop.v.i global.fe
push.s "obj_schoollobbycutscene_slash_Step_0_gml_254_0"@3772
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 13
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[121]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [123]

:[122]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [124]

:[123]
push.e 0

:[124]
bf [128]

:[125]
push.v self.s
conv.v.i
pushenv [127]

:[126]
pushi.e -1
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.image_speed

:[127]
popenv [126]
pushi.e 56
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 14
pop.v.i self.con

:[128]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [132]

:[129]
push.v self.k
conv.v.i
pushenv [131]

:[130]
push.d 0.1
pop.v.d self.image_speed
push.d -0.5
pop.v.d self.hspeed

:[131]
popenv [130]
pushi.e 16
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[132]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [138]

:[133]
push.v self.k
conv.v.i
pushenv [135]

:[134]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[135]
popenv [134]
push.v self.s
conv.v.i
pushenv [137]

:[136]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[137]
popenv [136]
pushi.e 18
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[138]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [140]

:[139]
push.s "obj_schoollobbycutscene_slash_Step_0_gml_303_0"@3773
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
pushi.e 20
pop.v.i self.con

:[140]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [142]

:[141]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [143]

:[142]
push.e 0

:[143]
bf [149]

:[144]
pushi.e 21
pop.v.i self.con
push.v self.k
conv.v.i
pushenv [146]

:[145]
pushi.e 0
pop.v.i self.visible

:[146]
popenv [145]
push.v self.s
conv.v.i
pushenv [148]

:[147]
pushi.e 161
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.2
pop.v.d self.image_speed

:[148]
popenv [147]
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[149]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [153]

:[150]
push.v self.s
conv.v.i
pushenv [152]

:[151]
pushi.e 0
pop.v.i self.image_speed

:[152]
popenv [151]
pushi.e 23
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[153]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [155]

:[154]
push.s "obj_schoollobbycutscene_slash_Step_0_gml_330_0"@3774
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
pushi.e 25
pop.v.i self.con

:[155]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [157]

:[156]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [158]

:[157]
push.e 0

:[158]
bf [160]

:[159]
pushi.e 27
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[160]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [164]

:[161]
push.v self.s
conv.v.i
pushenv [163]

:[162]
pushi.e 163
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.334
pop.v.d self.image_speed

:[163]
popenv [162]
pushi.e 29
pop.v.i self.con
pushi.e 9
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[164]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [166]

:[165]
pushi.e 33
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 31
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[166]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [170]

:[167]
push.v self.s
conv.v.i
pushenv [169]

:[168]
pushi.e 0
pop.v.i self.image_speed

:[169]
popenv [168]
pushi.e 33
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[170]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [172]

:[171]
pushi.e 2
pop.v.i global.fe
push.s "obj_schoollobbycutscene_slash_Step_0_gml_374_0"@3775
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
pushi.e 35
pop.v.i self.con

:[172]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [174]

:[173]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [175]

:[174]
push.e 0

:[175]
bf [177]

:[176]
push.s "s_neo.ogg"@3776
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 36
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[177]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [179]

:[178]
push.s "obj_schoollobbycutscene_slash_Step_0_gml_389_0"@3777
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_390_0"@3778
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_391_0"@3779
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.s "/"@357
add.s.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_392_0"@3780
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_393_0"@3781
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_394_0"@3782
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_395_0"@3783
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_396_0"@3784
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_397_0"@3785
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_398_0"@3786
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_399_0"@3787
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_400_0"@3788
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_401_0"@3789
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_402_0"@3790
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 38
pop.v.i self.con

:[179]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [181]

:[180]
push.v self.con
pushi.e 38
cmp.i.v EQ
b [182]

:[181]
push.e 0

:[182]
bf [186]

:[183]
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i snd_free(argc=1)
popz.v
push.v self.s
conv.v.i
pushenv [185]

:[184]
pushi.e 164
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.2
pop.v.d self.image_speed

:[185]
popenv [184]
pushi.e 39
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[186]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [190]

:[187]
push.v self.s
conv.v.i
pushenv [189]

:[188]
pushi.e 0
pop.v.i self.image_speed

:[189]
popenv [188]
pushi.e 41
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[190]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [194]

:[191]
pushi.e 3
pop.v.i global.fe
pushi.e 2
pop.v.i global.typer
push.s "obj_schoollobbycutscene_slash_Step_0_gml_432_0"@3791
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
push.v self.d
conv.v.i
pushenv [193]

:[192]
pushi.e 0
pop.v.i self.skippable

:[193]
popenv [192]
pushi.e 43
pop.v.i self.con

:[194]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [196]

:[195]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [197]

:[196]
push.e 0

:[197]
bf [201]

:[198]
push.s "s_neo_clip.ogg"@3792
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.d 0.667
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i audio_sound_pitch(argc=2)
popz.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_play(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
push.v self.s
conv.v.i
pushenv [200]

:[199]
pushi.e 0
pop.v.i self.image_index
push.d 0.06666666666666667
pop.v.d self.image_speed
pushi.e 166
pop.v.i self.sprite_index

:[200]
popenv [199]
push.d 43.5
pop.v.d self.con
pushi.e 89
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[201]
push.v self.con
push.d 44.5
cmp.d.v EQ
bf [205]

:[202]
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i snd_free(argc=1)
popz.v
push.v self.s
conv.v.i
pushenv [204]

:[203]
pushi.e 0
pop.v.i self.image_speed

:[204]
popenv [203]
pushi.e 44
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[205]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [209]

:[206]
push.v self.s
conv.v.i
pushenv [208]

:[207]
pushi.e 165
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_index

:[208]
popenv [207]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 46
pop.v.i self.con
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[209]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [213]

:[210]
push.v self.s
conv.v.i
pushenv [212]

:[211]
pushi.e 0
pop.v.i self.image_speed

:[212]
popenv [211]
pushi.e 48
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[213]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [219]

:[214]
pushi.e 10
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.v self.k
conv.v.i
pushenv [216]

:[215]
pushi.e 1
pop.v.i self.visible
pushi.e 835
pop.v.i self.sprite_index

:[216]
popenv [215]
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 19
sub.i.v
push.v self.k
conv.v.i
pop.v.v [stacktop]self.x
push.v self.s
conv.v.i
pushenv [218]

:[217]
pushi.e 0
pop.v.i self.image_index
pushi.e 173
pop.v.i self.sprite_index

:[218]
popenv [217]
pushi.e 50
pop.v.i self.con
push.s "obj_schoollobbycutscene_slash_Step_0_gml_499_0"@3794
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

:[219]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [221]

:[220]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [222]

:[221]
push.e 0

:[222]
bf [226]

:[223]
push.v self.s
conv.v.i
pushenv [225]

:[224]
pushi.e 2
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[225]
popenv [224]
pushi.e 51
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[226]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [230]

:[227]
push.v self.s
conv.v.i
pushenv [229]

:[228]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.hspeed

:[229]
popenv [228]
pushi.e 53
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[230]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [234]

:[231]
push.v self.s
conv.v.i
pushenv [233]

:[232]
pushi.e 175
pop.v.i self.sprite_index

:[233]
popenv [232]
push.s "obj_schoollobbycutscene_slash_Step_0_gml_532_0"@3795
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_533_0"@3796
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
pushi.e 55
pop.v.i self.con

:[234]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [236]

:[235]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [237]

:[236]
push.e 0

:[237]
bf [241]

:[238]
push.v self.s
conv.v.i
pushenv [240]

:[239]
pushi.e 169
pop.v.i self.sprite_index

:[240]
popenv [239]
pushi.e 56
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[241]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [243]

:[242]
pushi.e 104
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 57.1
pop.v.d self.con
pushi.e 0
pop.v.i self.choosetimer

:[243]
push.v self.con
push.d 57.1
cmp.d.v EQ
bf [253]

:[244]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [251]

:[245]
push.v self.choosetimer
pushi.e 1
add.i.v
pop.v.v self.choosetimer
push.v self.choosetimer
pushi.e 30
cmp.i.v GTE
bf [251]

:[246]
push.v choiced
pushi.e 0
cmp.i.v EQ
bf [250]

:[247]
pushi.e 0
pushenv [249]

:[248]
pushi.e 1
pop.v.i self.canchoose
pushi.e 1
pop.v.i self.mychoice
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[249]
popenv [248]

:[250]
pushi.e 58
pop.v.i self.con

:[251]
call.i d_ex(argc=0)
conv.v.b
not.b
bf [253]

:[252]
pushi.e 58
pop.v.i self.con

:[253]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [255]

:[254]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [256]

:[255]
push.e 0

:[256]
bf [260]

:[257]
push.v self.s
conv.v.i
pushenv [259]

:[258]
pushi.e 173
pop.v.i self.sprite_index

:[259]
popenv [258]
push.s "obj_schoollobbycutscene_slash_Step_0_gml_582_0"@3798
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_583_0"@3799
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_584_0"@3800
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
pushi.e 59
pop.v.i self.con

:[260]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [262]

:[261]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [263]

:[262]
push.e 0

:[263]
bf [267]

:[264]
push.v self.s
conv.v.i
pushenv [266]

:[265]
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.hspeed

:[266]
popenv [265]
pushi.e 60
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[267]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [271]

:[268]
push.v self.s
conv.v.i
pushenv [270]

:[269]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[270]
popenv [269]
pushi.e 62
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[271]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [273]

:[272]
push.s "obj_schoollobbycutscene_slash_Step_0_gml_616_0"@3801
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
pushi.e 64
pop.v.i self.con

:[273]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [275]

:[274]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [276]

:[275]
push.e 0

:[276]
bf [282]

:[277]
pushi.e 80
conv.i.v
pushi.e 200
conv.i.v
pushi.e 110
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.interact
push.v self.k
conv.v.i
push.v [stacktop]self.x
pushi.e 6
add.i.v
pop.v.v 326.x
push.v self.k
conv.v.i
push.v [stacktop]self.y
pushi.e 2
add.i.v
pop.v.v 326.y
push.v self.k
conv.v.i
pushenv [279]

:[278]
call.i instance_destroy(argc=0)
popz.v

:[279]
popenv [278]
pushi.e 1
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 326
pushenv [281]

:[280]
pushi.e 1
pop.v.i self.visible

:[281]
popenv [280]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.type
pushi.e 1
pop.v.i self.scon

:[282]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [350]

:[283]
push.v self.s
conv.v.i
pushenv [285]

:[284]
call.i scr_depth(argc=0)
popz.v

:[285]
popenv [284]
push.v self.scon
pushi.e 1
cmp.i.v EQ
bf [294]

:[286]
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 448
cmp.i.v LT
bf [291]

:[287]
push.v self.s
conv.v.i
pushenv [290]

:[288]
pushi.e 3
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed
push.v 326.px
pushi.e 3
cmp.i.v GT
bf [290]

:[289]
push.v 11.ran
pushi.e 1
add.i.v
pop.v.v 11.ran
push.v 326.px
pushi.e 1
add.i.v
pop.v.v self.hspeed
push.d 0.4
pop.v.d self.image_speed

:[290]
popenv [288]
b [294]

:[291]
push.v self.s
conv.v.i
pushenv [293]

:[292]
pushi.e 450
pop.v.i self.x
pushi.e 169
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[293]
popenv [292]
pushi.e 2
pop.v.i self.scon

:[294]
push.v self.scon
pushi.e 2
cmp.i.v EQ
bf [297]

:[295]
push.v 326.x
pushi.e 404
cmp.i.v GTE
bf [297]

:[296]
pushi.e 3
pop.v.i self.scon

:[297]
push.v self.scon
pushi.e 3
cmp.i.v EQ
bf [305]

:[298]
push.v self.s
conv.v.i
pushenv [301]

:[299]
pushi.e 176
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e -3
pop.v.i self.vspeed
push.v 326.py
pushi.e -3
cmp.i.v LT
bf [301]

:[300]
push.v 11.ran
pushi.e 1
add.i.v
pop.v.v 11.ran
push.v 326.py
pushi.e 1
sub.i.v
pop.v.v self.vspeed
push.d 0.4
pop.v.d self.image_speed

:[301]
popenv [299]
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 42
cmp.i.v LTE
bf [305]

:[302]
push.v self.s
conv.v.i
pushenv [304]

:[303]
pushi.e 177
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[304]
popenv [303]
pushi.e 4
pop.v.i self.scon

:[305]
push.v self.scon
pushi.e 4
cmp.i.v EQ
bf [315]

:[306]
push.v 326.y
pushi.e 80
cmp.i.v LTE
bf [308]

:[307]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [309]

:[308]
push.e 0

:[309]
bf [315]

:[310]
pushi.e 1
pop.v.i global.interact
pushi.e 5
pop.v.i self.scon
pushi.e 1
pop.v.i global.fc
pushi.e 10
pop.v.i global.typer
pushi.e 1
pop.v.i global.fe
push.v self.ran
pushi.e 15
cmp.i.v LT
bf [312]

:[311]
push.s "obj_schoollobbycutscene_slash_Step_0_gml_719_0"@3804
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_720_0"@3805
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_721_0"@3806
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_722_0"@3807
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[312]
push.v self.ran
pushi.e 15
cmp.i.v GTE
bf [314]

:[313]
pushi.e 1
pushi.e -5
pushi.e 200
pop.v.i [array]global.flag
push.s "obj_schoollobbycutscene_slash_Step_0_gml_727_0"@3808
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_728_0"@3809
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_729_0"@3810
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_730_0"@3811
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[314]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[315]
push.v self.scon
pushi.e 5
cmp.i.v EQ
bf [317]

:[316]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [318]

:[317]
push.e 0

:[318]
bf [328]

:[319]
pushi.e 94
pushenv [321]

:[320]
call.i instance_destroy(argc=0)
popz.v

:[321]
popenv [320]
push.v self.s
conv.v.i
pushenv [323]

:[322]
pushi.e -1
pop.v.i self.vspeed
pushi.e 176
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[323]
popenv [322]
pushi.e 326
pushenv [325]

:[324]
pushi.e 1
pop.v.i self.fun
pushi.e 839
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 450
conv.i.v
call.i move_towards_point(argc=3)
popz.v

:[325]
popenv [324]
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.f
push.v self.f
conv.v.i
pushenv [327]

:[326]
push.d 0.03
pop.v.d self.fadespeed

:[327]
popenv [326]
pushi.e 6
pop.v.i self.scon
pushi.e 5
pop.v.i self.con
pushi.e 34
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[328]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [330]

:[329]
pushi.e 4
pop.v.i global.plot
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 31
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 7
pop.v.i self.con

:[330]
push.v 326.x
pushi.e 560
cmp.i.v GTE
bf [332]

:[331]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [333]

:[332]
push.e 0

:[333]
bf [337]

:[334]
pushi.e 558
pop.v.i 326.x
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i global.facing
pushi.e 1
pop.v.i global.fc
pushi.e 10
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i self.dex
push.s "obj_schoollobbycutscene_slash_Step_0_gml_776_0"@3813
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_777_0"@3814
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_778_0"@3815
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_779_0"@3816
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_780_0"@3817
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.teast
pushi.e 0
cmp.i.v GT
bf [336]

:[335]
push.s "obj_schoollobbycutscene_slash_Step_0_gml_784_0"@3818
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[336]
push.v self.teast
pushi.e 1
add.i.v
pop.v.v self.teast
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[337]
push.v 326.y
pushi.e 300
cmp.i.v GTE
bf [339]

:[338]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [340]

:[339]
push.e 0

:[340]
bf [344]

:[341]
pushi.e 298
pop.v.i 326.y
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 1
pop.v.i global.fc
pushi.e 10
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i self.dex
push.s "obj_schoollobbycutscene_slash_Step_0_gml_799_0"@3819
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_800_0"@3820
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_schoollobbycutscene_slash_Step_0_gml_801_0"@3821
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.tsouth
pushi.e 0
cmp.i.v GT
bf [343]

:[342]
push.s "obj_schoollobbycutscene_slash_Step_0_gml_805_0"@3822
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[343]
push.v self.tsouth
pushi.e 1
add.i.v
pop.v.v self.tsouth
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[344]
push.v self.dex
pushi.e 1
cmp.i.v EQ
bf [347]

:[345]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [347]

:[346]
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
b [348]

:[347]
push.e 0

:[348]
bf [350]

:[349]
pushi.e 0
pop.v.i self.dex
pushi.e 0
pop.v.i global.interact

:[350]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [end]

:[351]
pushi.e -5
pushi.e 272
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [354]

:[352]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [354]

:[353]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [355]

:[354]
push.e 0

:[355]
bf [360]

:[356]
push.v 326.y
pushi.e 320
cmp.i.v GTE
bf [360]

:[357]
pushi.e 0
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e 365
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 27
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -5
pushi.e 272
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [359]

:[358]
pushi.e 1
pushi.e -5
pushi.e 272
pop.v.i [array]global.flag

:[359]
pushi.e 2
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[360]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [362]

:[361]
call.i d_ex(argc=0)
conv.v.b
not.b
b [363]

:[362]
push.e 0

:[363]
bf [end]

:[364]
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.con

:[end]