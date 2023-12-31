.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 1.5
pop.v.d self.con

:[2]
push.v self.con
push.d 2.5
cmp.d.v EQ
bf [4]

:[3]
push.s "mus_school.ogg"@3713
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 0
pop.v.i global.fe
pushi.e 11
pop.v.i global.fc
pushi.e 20
pop.v.i global.typer
push.s "obj_classscene_slash_Step_0_gml_14_0"@3714
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
pushi.e 3
pop.v.i self.con

:[4]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [13]

:[8]
pushi.e 37
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.door
conv.v.i
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.image_index

:[10]
popenv [9]
pushi.e 4
pop.v.i self.con
push.v self.alphys
conv.v.i
pushenv [12]

:[11]
pushi.e 122
pop.v.i self.sprite_index

:[12]
popenv [11]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[13]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [17]

:[14]
pushi.e 326
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.fun
pushi.e 837
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.vspeed

:[16]
popenv [15]
pushi.e 6
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [23]

:[18]
pushi.e 326
pushenv [20]

:[19]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed

:[20]
popenv [19]
push.v self.door
conv.v.i
pushenv [22]

:[21]
pushi.e 0
pop.v.i self.image_index

:[22]
popenv [21]
pushi.e 36
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 8
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_classscene_slash_Step_0_gml_60_0"@3715
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_61_0"@3716
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_62_0"@3717
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 10
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[25]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [27]

:[26]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [38]

:[29]
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
popz.v
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 80
conv.i.v
pushi.e 51
conv.i.v
pushi.e 244
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.door_readable
push.v self.alphys
pop.v.v self.alphys2
pushi.e 83
conv.i.v
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
push.v self.alphys
conv.v.i
push.v [stacktop]self.sprite_height
add.v.v
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.alphys
push.v self.alphys2
conv.v.i
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
pushi.e 336
conv.i.v
pushi.e 52
conv.i.v
pushi.e 236
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.doorsolid
push.v self.doorsolid
conv.v.i
pushenv [33]

:[32]
pushi.e 2
pop.v.i self.image_xscale

:[33]
popenv [32]
push.v self.door
conv.v.i
pushenv [35]

:[34]
push.i 500000
pop.v.i self.depth

:[35]
popenv [34]
pushi.e 326
pushenv [37]

:[36]
pushi.e 0
pop.v.i self.fun

:[37]
popenv [36]
pushi.e 2
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 11
pop.v.i self.con

:[38]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [40]

:[39]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 1
pop.v.i global.interact
pushi.e 21
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[43]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [45]

:[44]
pushi.e 1
pop.v.i global.interact

:[45]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [47]

:[46]
pushi.e 13
pop.v.i global.typer
pushi.e 12
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 2
pop.v.i global.facing
push.s "obj_classscene_slash_Step_0_gml_107_0"@3721
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_108_0"@3722
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_109_0"@3723
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_110_0"@3724
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_111_0"@3725
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_112_0"@3726
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 23
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[47]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [49]

:[48]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [58]

:[51]
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i snd_stop_all(argc=0)
popz.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i snd_free(argc=1)
popz.v
push.v self.door
conv.v.i
pushenv [53]

:[52]
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 117
pop.v.i self.sprite_index
pushi.e 5000
pop.v.i self.depth

:[53]
popenv [52]
pushi.e 179
conv.i.v
pushi.e 24
conv.i.v
pushi.e 237
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.sus
push.v self.sus
conv.v.i
pushenv [55]

:[54]
call.i scr_depth(argc=0)
popz.v

:[55]
popenv [54]
pushi.e 24
pop.v.i self.con
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.doorsolid
conv.v.i
pushenv [57]

:[56]
call.i instance_destroy(argc=0)
popz.v

:[57]
popenv [56]

:[58]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [64]

:[59]
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.alphys
pop.v.v self.alphys2
pushi.e 123
conv.i.v
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
call.i scr_marker(argc=3)
pop.v.v self.alphys
push.v self.alphys
conv.v.i
pushenv [61]

:[60]
call.i scr_depth(argc=0)
popz.v

:[61]
popenv [60]
push.v self.alphys2
conv.v.i
pushenv [63]

:[62]
call.i instance_destroy(argc=0)
popz.v

:[63]
popenv [62]
pushi.e 26
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[64]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [68]

:[65]
push.v self.door
conv.v.i
pushenv [67]

:[66]
pushi.e 0
pop.v.i self.image_speed
push.i 500000
pop.v.i self.depth

:[67]
popenv [66]
pushi.e 32
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[68]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [70]

:[69]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [75]

:[72]
push.v self.sus
conv.v.i
pushenv [74]

:[73]
push.d 0.1
pop.v.d self.image_speed
push.d 0.5
pop.v.d self.vspeed

:[74]
popenv [73]
pushi.e 30
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[75]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [79]

:[76]
push.v self.sus
conv.v.i
pushenv [78]

:[77]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.vspeed

:[78]
popenv [77]
pushi.e 34
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[79]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [81]

:[80]
pushi.e 2
pop.v.i global.fe
pushi.e 11
pop.v.i global.fc
pushi.e 22
pop.v.i global.typer
push.s "obj_classscene_slash_Step_0_gml_190_0"@3728
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
pushi.e 28
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[81]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [83]

:[82]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 10
pop.v.i global.typer
push.s "obj_classscene_slash_Step_0_gml_203_0"@3729
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_204_0"@3730
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_205_0"@3731
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_206_0"@3732
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_207_0"@3733
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
push.s "obj_classscene_slash_Step_0_gml_209_0"@3734
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_210_0"@3735
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 36
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[83]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [85]

:[84]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [86]

:[85]
push.e 0

:[86]
bf [90]

:[87]
pushi.e 37
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.alphys
conv.v.i
pushenv [89]

:[88]
pushi.e 119
pop.v.i self.sprite_index

:[89]
popenv [88]

:[90]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [92]

:[91]
pushi.e 11
pop.v.i global.fc
pushi.e 20
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
push.s "obj_classscene_slash_Step_0_gml_230_0"@3736
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_231_0"@3737
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

:[92]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [94]

:[93]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [95]

:[94]
push.e 0

:[95]
bf [99]

:[96]
push.v self.alphys
conv.v.i
pushenv [98]

:[97]
pushi.e 122
pop.v.i self.sprite_index
pushi.e 3
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[98]
popenv [97]
pushi.e 40
pop.v.i self.con
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[99]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [103]

:[100]
push.v self.alphys
conv.v.i
pushenv [102]

:[101]
pushi.e 120
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.hspeed

:[102]
popenv [101]
pushi.e 42
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[103]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [105]

:[104]
push.s "obj_classscene_slash_Step_0_gml_263_0"@3738
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 44
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[105]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [107]

:[106]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [108]

:[107]
push.e 0

:[108]
bf [112]

:[109]
pushi.e 45
pop.v.i self.con
push.v self.alphys
conv.v.i
pushenv [111]

:[110]
pushi.e 121
pop.v.i self.sprite_index

:[111]
popenv [110]
pushi.e 46
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[112]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [116]

:[113]
push.v self.alphys
conv.v.i
pushenv [115]

:[114]
pushi.e 122
pop.v.i self.sprite_index

:[115]
popenv [114]
pushi.e 48
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[116]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [120]

:[117]
push.v self.alphys
conv.v.i
pushenv [119]

:[118]
pushi.e 119
pop.v.i self.sprite_index

:[119]
popenv [118]
pushi.e 50
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[120]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [122]

:[121]
pushi.e 8
pop.v.i global.fe
push.s "obj_classscene_slash_Step_0_gml_294_0"@3739
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_295_0"@3740
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_296_0"@3741
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_298_0"@3742
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_299_0"@3743
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_300_0"@3744
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_301_0"@3745
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_302_0"@3746
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_303_0"@3747
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
popz.v
push.d 51.1
pop.v.d self.con

:[122]
push.v self.con
push.d 51.1
cmp.d.v EQ
bf [124]

:[123]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [125]

:[124]
push.e 0

:[125]
bf [129]

:[126]
push.v self.alphys
conv.v.i
pushenv [128]

:[127]
pushi.e 119
pop.v.i self.sprite_index

:[128]
popenv [127]
push.d 50.2
pop.v.d self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[129]
push.v self.con
push.d 51.2
cmp.d.v EQ
bf [133]

:[130]
push.v self.alphys
conv.v.i
pushenv [132]

:[131]
pushi.e 119
pop.v.i self.sprite_index

:[132]
popenv [131]
pushi.e 6
pop.v.i global.fe
push.s "obj_classscene_slash_Step_0_gml_319_0"@3748
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_320_0"@3749
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.d 51.3
pop.v.d self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[133]
push.v self.con
push.d 51.3
cmp.d.v EQ
bf [135]

:[134]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [140]

:[137]
push.v self.alphys
conv.v.i
pushenv [139]

:[138]
pushi.e 122
pop.v.i self.sprite_index

:[139]
popenv [138]
push.d 50.4
pop.v.d self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[140]
push.v self.con
push.d 51.4
cmp.d.v EQ
bf [144]

:[141]
push.v self.alphys
conv.v.i
pushenv [143]

:[142]
pushi.e 119
pop.v.i self.sprite_index

:[143]
popenv [142]
pushi.e 9
pop.v.i global.fe
push.s "obj_classscene_slash_Step_0_gml_336_0"@3750
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_337_0"@3751
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_338_0"@3752
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_339_0"@3753
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_340_0"@3754
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_341_0"@3755
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_342_0"@3756
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
popz.v
pushi.e 52
pop.v.i self.con

:[144]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [150]

:[145]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [150]

:[146]
push.v 6.msgno
pushi.e 4
cmp.i.v EQ
bf [150]

:[147]
push.v self.alphys
conv.v.i
pushenv [149]

:[148]
pushi.e 122
pop.v.i self.sprite_index

:[149]
popenv [148]

:[150]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [152]

:[151]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [153]

:[152]
push.e 0

:[153]
bf [157]

:[154]
push.v self.sus
conv.v.i
pushenv [156]

:[155]
pushi.e -1
pop.v.i self.vspeed
pushi.e 176
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[156]
popenv [155]
pushi.e 53
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[157]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [163]

:[158]
push.v self.sus
conv.v.i
pushenv [160]

:[159]
call.i instance_destroy(argc=0)
popz.v

:[160]
popenv [159]
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.door
conv.v.i
pushenv [162]

:[161]
pushi.e 0
pop.v.i self.image_index

:[162]
popenv [161]
pushi.e 55
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[163]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [169]

:[164]
push.v self.sus
conv.v.i
pushenv [166]

:[165]
call.i instance_destroy(argc=0)
popz.v

:[166]
popenv [165]
push.v self.alphys
conv.v.i
pushenv [168]

:[167]
pushi.e 119
pop.v.i self.sprite_index

:[168]
popenv [167]
pushi.e 11
pop.v.i global.fc
pushi.e 20
pop.v.i global.typer
pushi.e 4
pop.v.i global.fe
push.s "obj_classscene_slash_Step_0_gml_394_0"@3757
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_395_0"@3758
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_classscene_slash_Step_0_gml_396_0"@3759
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
pushi.e 57
pop.v.i self.con

:[169]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [171]

:[170]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [172]

:[171]
push.e 0

:[172]
bf [end]

:[173]
push.v self.door_readable
conv.v.i
pushenv [175]

:[174]
call.i instance_destroy(argc=0)
popz.v

:[175]
popenv [174]
pushi.e 93
conv.i.v
pushi.e 51
conv.i.v
pushi.e 242
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.doorb
pushi.e 3
pop.v.i global.plot
pushi.e 0
pop.v.i global.facing
push.v self.alphys
pop.v.v self.alphys2
pushi.e 83
conv.i.v
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
push.v self.alphys
conv.v.i
push.v [stacktop]self.sprite_height
add.v.v
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.alphys
pushi.e 83
pushenv [177]

:[176]
pushi.e 0
pop.v.i self.talked

:[177]
popenv [176]
push.v self.alphys2
conv.v.i
pushenv [179]

:[178]
call.i instance_destroy(argc=0)
popz.v

:[179]
popenv [178]
push.v self.doorsolid
conv.v.i
pushenv [181]

:[180]
call.i instance_destroy(argc=0)
popz.v

:[181]
popenv [180]
pushi.e 0
pop.v.i global.interact
pushi.e 58
pop.v.i self.con

:[end]