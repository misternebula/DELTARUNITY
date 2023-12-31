.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 52
cmp.i.v EQ
bf [17]

:[1]
push.v 326.x
push.v self.x
cmp.v.v GTE
bf [4]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [12]

:[6]
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e -5
pushi.e 210
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_event_room_slash_Step_0_gml_11_0"@6460
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "B"@2529
conv.s.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_13_0"@6461
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_15_0"@6462
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
b [9]

:[8]
pushi.e 6
pop.v.i global.fe
push.s "obj_event_room_slash_Step_0_gml_20_0"@6463
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "B"@2529
conv.s.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_22_0"@6464
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
push.s "obj_event_room_slash_Step_0_gml_24_0"@6465
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 2
pushi.e -5
pushi.e 210
pop.v.i [array]global.flag

:[9]
pushglb.v global.plot
pushi.e 34
cmp.i.v LT
bf [11]

:[10]
pushi.e 34
pop.v.i global.plot

:[11]
pushi.e 1
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[12]
push.v self.con
pushi.e 1
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
bf [17]

:[16]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[17]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
bt [19]

:[18]
pushbltn.v self.room
pushi.e 55
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [26]

:[21]
push.v self.candytree
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[22]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.d 0.7
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
mul.d.v
add.v.d
push.v self.candytree
conv.v.i
pop.v.v [stacktop]self.image_alpha
pushi.e -5
push.v self.candyflag
conv.v.i
push.v [array]global.flag
push.v self.candytree
conv.v.i
pop.v.v [stacktop]self.image_index
pushi.e -5
push.v self.candyflag
conv.v.i
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [26]

:[23]
push.v self.candytree
conv.v.i
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]
call.i instance_destroy(argc=0)
popz.v

:[26]
pushbltn.v self.room
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[28]
pushbltn.v self.room
pushi.e 7
cmp.i.v EQ
bf [30]

:[29]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[30]
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bf [53]

:[31]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.timer
pushi.e 5
cmp.i.v GTE
bf [35]

:[32]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [35]

:[33]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
push.v self.rem_facing
pushi.e 3
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [48]

:[37]
pushi.e -5
pushi.e 277
push.v [array]global.flag
pushi.e 7
cmp.i.v EQ
bf [39]

:[38]
pushi.e 7
pop.v.i global.typer
pushi.e 4
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e -5
pushi.e 277
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
push.s "obj_event_room_slash_Step_0_gml_71_0"@6466
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_72_0"@6467
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

:[39]
pushi.e -5
pushi.e 277
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [41]

:[40]
pushi.e -5
pushi.e 277
push.v [array]global.flag
pushi.e 6
cmp.i.v LTE
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e -5
pushi.e 277
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 2
pop.v.i self.con

:[44]
pushi.e -5
pushi.e 277
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 7
pop.v.i global.typer
pushi.e 4
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e -5
pushi.e 277
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
push.s "obj_event_room_slash_Step_0_gml_91_0"@6468
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_92_0"@6469
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_93_0"@6470
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

:[46]
pushi.e -5
pushi.e 277
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
pushi.e 7
pop.v.i global.typer
pushi.e 4
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e -5
pushi.e 277
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
push.s "obj_event_room_slash_Step_0_gml_106_0"@6471
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_107_0"@6472
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_108_0"@6473
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_109_0"@6474
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_110_0"@6475
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

:[48]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
call.i d_ex(argc=0)
conv.v.b
not.b
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[53]
pushbltn.v self.room
pushi.e 111
cmp.i.v EQ
bf [94]

:[54]
push.v 326.x
pushi.e 200
sub.i.v
pushi.e 1400
conv.i.d
div.d.v
pop.v.v self.m
push.v self.m
push.d 0.2
cmp.d.v LT
bf [56]

:[55]
push.d 0.2
pop.v.d self.m

:[56]
push.v self.m
push.v self.maxm
cmp.v.v LT
bf [58]

:[57]
push.v self.maxm
pop.v.v self.m

:[58]
push.v self.m
push.d 0.8
cmp.d.v GTE
bf [60]

:[59]
push.d 0.8
pop.v.d self.m

:[60]
push.v self.m
pop.v.v self.maxm
pushi.e 0
conv.i.v
push.v self.m
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [62]

:[61]
call.i d_ex(argc=0)
conv.v.b
not.b
b [63]

:[62]
push.e 0

:[63]
bf [67]

:[64]
pushi.e 337
conv.i.v
push.v self.doorimg
conv.v.i
push.v [stacktop]self.y
push.v self.doorimg
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.doorimg2
push.v self.doorimg2
conv.v.i
pushenv [66]

:[65]
push.i 400000
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.image_index

:[66]
popenv [65]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 70
conv.i.v
call.i snd_play(argc=1)
popz.v

:[67]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [72]

:[68]
pushi.e 1
pop.v.i global.interact
push.v self.doorimg2
conv.v.i
pushenv [70]

:[69]
push.v self.image_alpha
push.d 0.03
add.d.v
pop.v.v self.image_alpha

:[70]
popenv [69]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 80
cmp.i.v GTE
bf [72]

:[71]
pushi.e 7
pop.v.i self.con

:[72]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [74]

:[73]
pushi.e 0
pop.v.i self.timer
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_event_room_slash_Step_0_gml_163_0"@6477
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
pushi.e 8
pop.v.i self.con

:[74]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [76]

:[75]
call.i d_ex(argc=0)
conv.v.b
not.b
b [77]

:[76]
push.e 0

:[77]
bf [83]

:[78]
push.v self.doorimg
conv.v.i
pushenv [80]

:[79]
pushi.e 2
pop.v.i self.image_index

:[80]
popenv [79]
push.v self.doorimg2
conv.v.i
pushenv [82]

:[81]
call.i instance_destroy(argc=0)
popz.v

:[82]
popenv [81]
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 37
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 33
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 9
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[83]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [89]

:[84]
push.v self.doorsolid
conv.v.i
pushenv [86]

:[85]
call.i instance_destroy(argc=0)
popz.v

:[86]
popenv [85]
push.v self.doorevent
conv.v.i
pushenv [88]

:[87]
call.i instance_destroy(argc=0)
popz.v

:[88]
popenv [87]
pushi.e 90
conv.i.v
push.v self.y
push.v self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.door_door
pushi.e 0
pop.v.i global.interact
pushi.e 11
pop.v.i self.con

:[89]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [91]

:[90]
call.i d_ex(argc=0)
conv.v.b
not.b
b [92]

:[91]
push.e 0

:[92]
bf [94]

:[93]
pushi.e 129
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 21
pop.v.i self.con

:[94]
pushbltn.v self.room
pushi.e 129
cmp.i.v EQ
bf [148]

:[95]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
pushi.e -5
pushi.e 248
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [112]

:[96]
push.v 326.x
pushi.e 30
cmp.i.v LTE
bf [99]

:[97]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [99]

:[98]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [107]

:[101]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 30
pop.v.i global.typer
pushi.e 32
pop.v.i 326.x
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_event_room_slash_Step_0_gml_212_0"@6478
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_213_0"@6479
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [103]

:[102]
push.v self.timer
pushi.e 900
cmp.i.v GTE
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 3
pop.v.i global.fe
push.s "obj_event_room_slash_Step_0_gml_217_0"@6480
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[106]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[107]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
call.i d_ex(argc=0)
conv.v.b
not.b
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[112]
pushi.e -5
pushi.e 248
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [148]

:[113]
pushglb.v global.plot
pushi.e 244
cmp.i.v LT
bf [136]

:[114]
push.v 326.x
pushi.e 30
cmp.i.v LTE
bf [118]

:[115]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [118]

:[116]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [118]

:[117]
pushglb.v global.plot
pushi.e 240
cmp.i.v LTE
b [119]

:[118]
push.e 0

:[119]
bf [121]

:[120]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_event_room_slash_Step_0_gml_248_0"@6481
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_249_0"@6482
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_250_0"@6483
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_251_0"@6484
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_252_0"@6485
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_253_0"@6486
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_254_0"@6487
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
pushi.e 241
pop.v.i global.plot

:[121]
push.v 326.y
pushi.e 280
cmp.i.v LTE
bf [124]

:[122]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [124]

:[123]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [125]

:[124]
push.e 0

:[125]
bf [131]

:[126]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 30
pop.v.i global.typer
pushi.e 282
pop.v.i 326.y
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushglb.v global.plot
pushi.e 241
cmp.i.v GTE
bf [128]

:[127]
pushi.e 2
pop.v.i global.fe
push.s "obj_event_room_slash_Step_0_gml_272_0"@6488
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [129]

:[128]
pushi.e 445
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[129]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.plot
pushi.e 240
cmp.i.v LTE
bf [131]

:[130]
pushi.e 241
pop.v.i global.plot

:[131]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [133]

:[132]
call.i d_ex(argc=0)
conv.v.b
not.b
b [134]

:[133]
push.e 0

:[134]
bf [136]

:[135]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[136]
pushglb.v global.plot
pushi.e 244
cmp.i.v GTE
bf [148]

:[137]
push.v 326.x
pushi.e 30
cmp.i.v LTE
bf [140]

:[138]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [140]

:[139]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [141]

:[140]
push.e 0

:[141]
bf [143]

:[142]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 30
pop.v.i global.typer
pushi.e 32
pop.v.i 326.x
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_event_room_slash_Step_0_gml_307_0"@6489
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_308_0"@6490
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

:[143]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [145]

:[144]
call.i d_ex(argc=0)
conv.v.b
not.b
b [146]

:[145]
push.e 0

:[146]
bf [148]

:[147]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[148]
pushbltn.v self.room
pushi.e 96
cmp.i.v EQ
bf [157]

:[149]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [151]

:[150]
call.i snd_free_all(argc=0)
popz.v
push.d 10.5
pop.v.d self.con
pushi.e 95
conv.i.v
call.i snd_play(argc=1)
popz.v

:[151]
push.v self.con
push.d 11.5
cmp.d.v EQ
bf [153]

:[152]
pushi.e 111
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.ll
pushi.e 39
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.sl
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
push.v self.ll
call.i snd_volume(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
push.v self.sl
call.i snd_volume(argc=3)
popz.v
pushi.e 12
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[153]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [157]

:[154]
pushi.e 138
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.blackmarker
conv.v.i
pushenv [156]

:[155]
call.i instance_destroy(argc=0)
popz.v

:[156]
popenv [155]
pushi.e 0
pop.v.i global.interact
pushi.e 13
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[157]
pushbltn.v self.room
pushi.e 64
cmp.i.v EQ
bf [178]

:[158]
push.v self.pcon
pushi.e 0
cmp.i.v EQ
bf [160]

:[159]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [161]

:[160]
push.e 0

:[161]
bf [173]

:[162]
push.v self.puzzle
conv.v.i
push.v [stacktop]self.won
pushi.e 1
cmp.i.v EQ
bf [164]

:[163]
push.v self.pcon
pushi.e 0
cmp.i.v EQ
b [165]

:[164]
push.e 0

:[165]
bf [173]

:[166]
push.v self.spike_solid
conv.v.i
pushenv [168]

:[167]
call.i instance_destroy(argc=0)
popz.v

:[168]
popenv [167]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.pcon
pushi.e -1
pushi.e 0
push.v [array]self.spikee
conv.v.i
pushenv [170]

:[169]
pushi.e 1
pop.v.i self.image_index

:[170]
popenv [169]
pushi.e -1
pushi.e 1
push.v [array]self.spikee
conv.v.i
pushenv [172]

:[171]
pushi.e 1
pop.v.i self.image_index

:[172]
popenv [171]

:[173]
push.v self.pcon
pushi.e 1
cmp.i.v EQ
bf [175]

:[174]
pushi.e 0
pop.v.i self.ptimer
pushi.e 103
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
pushi.e 2
pop.v.i self.pcon

:[175]
push.v self.pcon
pushi.e 2
cmp.i.v EQ
bf [178]

:[176]
push.v self.ptimer
pushi.e 1
add.i.v
pop.v.v self.ptimer
push.v self.ptimer
pushi.e 20
cmp.i.v GTE
bf [178]

:[177]
pushi.e 0
pop.v.i self.ptimer
pushi.e 3
pop.v.i self.pcon
pushi.e 0
pop.v.i global.interact

:[178]
pushbltn.v self.room
pushi.e 79
cmp.i.v EQ
bf [200]

:[179]
push.v self.pcon
pushi.e 0
cmp.i.v EQ
bf [181]

:[180]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [182]

:[181]
push.e 0

:[182]
bf [195]

:[183]
push.v self.puzzle
conv.v.i
push.v [stacktop]self.won
pushi.e 1
cmp.i.v EQ
bf [186]

:[184]
push.v self.pcon
pushi.e 0
cmp.i.v EQ
bf [186]

:[185]
pushi.e -5
pushi.e 290
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [187]

:[186]
push.e 0

:[187]
bf [195]

:[188]
push.v self.spike_solid
conv.v.i
pushenv [190]

:[189]
call.i instance_destroy(argc=0)
popz.v

:[190]
popenv [189]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.pcon
pushi.e -1
pushi.e 0
push.v [array]self.spikee
conv.v.i
pushenv [192]

:[191]
pushi.e 1
pop.v.i self.image_index

:[192]
popenv [191]
pushi.e -1
pushi.e 1
push.v [array]self.spikee
conv.v.i
pushenv [194]

:[193]
pushi.e 1
pop.v.i self.image_index

:[194]
popenv [193]

:[195]
push.v self.pcon
pushi.e 1
cmp.i.v EQ
bf [197]

:[196]
pushi.e 0
pop.v.i self.ptimer
pushi.e 103
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
pushi.e 2
pop.v.i self.pcon

:[197]
push.v self.pcon
pushi.e 2
cmp.i.v EQ
bf [200]

:[198]
push.v self.ptimer
pushi.e 1
add.i.v
pop.v.v self.ptimer
push.v self.ptimer
pushi.e 20
cmp.i.v GTE
bf [200]

:[199]
pushi.e 1
pushi.e -5
pushi.e 290
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.ptimer
pushi.e 3
pop.v.i self.pcon
pushi.e 0
pop.v.i global.interact

:[200]
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
bf [213]

:[201]
push.v 326.y
pushi.e 40
cmp.i.v LTE
bf [205]

:[202]
pushglb.v global.plot
pushi.e 85
cmp.i.v LT
bf [205]

:[203]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [205]

:[204]
push.v self.con
pushi.e 1
cmp.i.v EQ
b [206]

:[205]
push.e 0

:[206]
bf [208]

:[207]
pushi.e 1
pop.v.i global.interact
pushi.e 32
pop.v.i global.typer
pushi.e 2
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
push.s "obj_event_room_slash_Step_0_gml_437_0"@6491
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_439_0"@6492
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_440_0"@6493
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_442_0"@6494
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.con
call.i d_make(argc=0)
popz.v

:[208]
push.v self.con
pushi.e 2
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
bf [213]

:[212]
pushi.e 85
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.con

:[213]
pushbltn.v self.room
pushi.e 93
cmp.i.v EQ
bf [end]

:[214]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [217]

:[215]
push.v 326.y
push.v self.y
pushi.e 120
add.i.v
cmp.v.v LTE
bf [217]

:[216]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [218]

:[217]
push.e 0

:[218]
bf [222]

:[219]
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_event_room_slash_Step_0_gml_461_0"@6495
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_462_0"@6496
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_464_0"@6497
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
push.s "obj_event_room_slash_Step_0_gml_466_0"@6498
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_467_0"@6499
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_468_0"@6500
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_470_0"@6501
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
push.s "obj_event_room_slash_Step_0_gml_472_0"@6502
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 12
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_474_0"@6503
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_475_0"@6504
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_event_room_slash_Step_0_gml_476_0"@6505
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [221]

:[220]
pushi.e 100
pop.v.i global.plot

:[221]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
call.i d_make(argc=0)
popz.v

:[222]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [224]

:[223]
call.i d_ex(argc=0)
conv.v.b
not.b
b [225]

:[224]
push.e 0

:[225]
bf [227]

:[226]
pushi.e 190
pop.v.i self.sprite_index
pushi.e -10
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[227]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [229]

:[228]
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_event_room_slash_Step_0_gml_497_0"@6506
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i d_make(argc=0)
popz.v
pushi.e 5
pop.v.i self.con

:[229]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [231]

:[230]
call.i d_ex(argc=0)
conv.v.b
not.b
b [232]

:[231]
push.e 0

:[232]
bf [end]

:[233]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 6
pop.v.i self.con

:[end]