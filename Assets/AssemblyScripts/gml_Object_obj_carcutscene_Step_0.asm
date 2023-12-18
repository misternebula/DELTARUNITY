.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [7]

:[2]
pushi.e 1
pop.v.i self.persistent
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i __view_set(argc=3)
popz.v
push.v self.k
conv.v.i
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.fun
pushi.e 1
pop.v.i self.cutscene

:[4]
popenv [3]
push.v self.t
conv.v.i
pushenv [6]

:[5]
pushi.e 98
pop.v.i self.sprite_index

:[6]
popenv [5]
pushi.e 4
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 7
pop.v.i global.typer
push.s "obj_carcutscene_slash_Step_0_gml_17_0"@3962
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
pop.v.v self.dd
pushi.e 0
push.v self.dd
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 3
pop.v.i self.con

:[7]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [16]

:[11]
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_play(argc=1)
popz.v
pushi.e 20
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.t
conv.v.i
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[13]
popenv [12]
pushi.e 60
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_pan(argc=3)
popz.v
push.d 2.1
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.k
conv.v.i
pushenv [15]

:[14]
pushi.e 836
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e -1
pop.v.i self.hspeed

:[15]
popenv [14]

:[16]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [24]

:[17]
push.v self.t
conv.v.i
pushenv [19]

:[18]
pushi.e 103
pop.v.i self.sprite_index

:[19]
popenv [18]
push.v self.k
conv.v.i
pushenv [21]

:[20]
call.i scr_halt(argc=0)
popz.v

:[21]
popenv [20]
push.v self.k
conv.v.i
pushenv [23]

:[22]
pushi.e 837
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[23]
popenv [22]
pushi.e 4
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [30]

:[25]
push.v self.t
conv.v.i
pushenv [27]

:[26]
pushi.e 103
pop.v.i self.sprite_index

:[27]
popenv [26]
push.v self.k
conv.v.i
pushenv [29]

:[28]
call.i scr_halt(argc=0)
popz.v
pushi.e 834
pop.v.i self.sprite_index

:[29]
popenv [28]
pushi.e 8
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [38]

:[31]
push.v self.c
conv.v.i
pushenv [33]

:[32]
pushi.e 6000
pop.v.i self.depth

:[33]
popenv [32]
push.v self.t
conv.v.i
pushenv [35]

:[34]
pushi.e -1
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[35]
popenv [34]
push.v self.k
conv.v.i
pushenv [37]

:[36]
pushi.e 834
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[37]
popenv [36]
pushi.e 10
pop.v.i self.con
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[38]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [44]

:[39]
pushi.e 12
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.c
conv.v.i
push.v [stacktop]self.x
push.v self.k
conv.v.i
push.v [stacktop]self.x
sub.v.v
pop.v.v self.ckx
push.v self.c
conv.v.i
push.v [stacktop]self.y
push.v self.k
conv.v.i
push.v [stacktop]self.y
sub.v.v
pop.v.v self.cky
push.v self.c
conv.v.i
push.v [stacktop]self.x
push.v self.t
conv.v.i
push.v [stacktop]self.x
sub.v.v
pop.v.v self.ctx
push.v self.c
conv.v.i
push.v [stacktop]self.y
push.v self.t
conv.v.i
push.v [stacktop]self.y
sub.v.v
pop.v.v self.cty
push.v self.t
conv.v.i
pushenv [41]

:[40]
pushi.e 0
pop.v.i self.visible

:[41]
popenv [40]
push.v self.k
conv.v.i
pushenv [43]

:[42]
pushi.e 0
pop.v.i self.visible

:[43]
popenv [42]

:[44]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [48]

:[45]
push.v self.c
conv.v.i
pushenv [47]

:[46]
pushi.e 90
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[47]
popenv [46]
pushi.e 14
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[48]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [52]

:[49]
push.v self.c
conv.v.i
pushenv [51]

:[50]
call.i scr_halt(argc=0)
popz.v

:[51]
popenv [50]
pushi.e 16
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[52]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [56]

:[53]
push.v self.c
conv.v.i
pushenv [55]

:[54]
pushi.e -1
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[55]
popenv [54]
pushi.e 18
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[56]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [60]

:[57]
pushi.e 100
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
call.i scr_pan(argc=3)
popz.v
push.v self.c
conv.v.i
pushenv [59]

:[58]
pushi.e 91
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 2
pop.v.i self.vspeed

:[59]
popenv [58]
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade
pushi.e 4000
push.v self.fade
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 400
push.v self.fade
conv.v.i
pop.v.i [stacktop]self.height
push.d 0.01
push.v self.fade
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 20
pop.v.i self.con
pushi.e 190
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[60]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [62]

:[61]
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade
pushi.e -200
push.v self.fade
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 400
push.v self.fade
conv.v.i
pop.v.i [stacktop]self.height
push.d 0.025
push.v self.fade
conv.v.i
pop.v.d [stacktop]self.fadespeed
push.i 16777215
push.v self.fade
conv.v.i
pop.v.i [stacktop]self.image_blend
pushi.e 22
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[62]
push.v self.con
push.d 23.1
cmp.d.v EQ
bf [78]

:[63]
pushi.e 91
conv.i.v
pushi.e 0
conv.i.v
pushi.e 390
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.car
push.v self.car
conv.v.i
pushenv [65]

:[64]
call.i scr_depth(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.vspeed

:[65]
popenv [64]
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 326
pushenv [67]

:[66]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pop.v.i self.cutscene

:[67]
popenv [66]
pushi.e 180
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 900
conv.i.v
pushi.e 0
conv.i.v
push.d 2.5
conv.d.v
call.i scr_pan(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 24
pop.v.i self.con
pushi.e 140
conv.i.d
push.v self.car
conv.v.i
push.v [stacktop]self.vspeed
div.v.d
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.carcon
pushi.e 84
pushenv [69]

:[68]
call.i instance_destroy(argc=0)
popz.v

:[69]
popenv [68]
pushi.e 288
conv.i.v
pushi.e 68
conv.i.v
pushi.e 486
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.catty
pushi.e 286
conv.i.v
pushi.e 64
conv.i.v
pushi.e 574
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.cattydad
pushi.e 287
conv.i.v
pushi.e 174
conv.i.v
pushi.e 744
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.bratty
pushi.e 293
conv.i.v
pushi.e 114
conv.i.v
pushi.e 800
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.froggit
push.v self.froggit
conv.v.i
pushenv [71]

:[70]
call.i scr_depth(argc=0)
popz.v
push.d 0.2
pop.v.d self.image_speed

:[71]
popenv [70]
push.v self.catty
conv.v.i
pushenv [73]

:[72]
call.i scr_depth(argc=0)
popz.v

:[73]
popenv [72]
push.v self.cattydad
conv.v.i
pushenv [75]

:[74]
call.i scr_depth(argc=0)
popz.v

:[75]
popenv [74]
push.v self.bratty
conv.v.i
pushenv [77]

:[76]
call.i scr_depth(argc=0)
popz.v

:[77]
popenv [76]

:[78]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [82]

:[79]
pushi.e 6
pushenv [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [80]
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade2
push.i 16777215
push.v self.fade2
conv.v.i
pop.v.i [stacktop]self.image_blend
push.d 23.1
pop.v.d self.con
pushi.e 9
conv.i.v
call.i room_goto(argc=1)
popz.v

:[82]
push.v self.carcon
pushi.e 1
cmp.i.v EQ
bf [91]

:[83]
push.v self.car
conv.v.i
push.v [stacktop]self.y
pushi.e 100
cmp.i.v GTE
bf [87]

:[84]
push.v self.catty
conv.v.i
pushenv [86]

:[85]
pushi.e 298
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[86]
popenv [85]

:[87]
push.v self.car
conv.v.i
push.v [stacktop]self.x
pushi.e 550
cmp.i.v GTE
bf [91]

:[88]
push.v self.cattydad
conv.v.i
pushenv [90]

:[89]
pushi.e 299
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[90]
popenv [89]

:[91]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [93]

:[92]
pushi.e 1
pop.v.i global.interact

:[93]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [97]

:[94]
push.v self.car
conv.v.i
pushenv [96]

:[95]
pushi.e 89
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.vspeed
pushi.e 3
pop.v.i self.hspeed

:[96]
popenv [95]
pushi.e 26
pop.v.i self.con
pushi.e 240
conv.i.d
push.v self.car
conv.v.i
push.v [stacktop]self.hspeed
div.v.d
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[97]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [101]

:[98]
push.v self.car
conv.v.i
pushenv [100]

:[99]
pushi.e 91
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 3
pop.v.i self.vspeed

:[100]
popenv [99]
pushi.e 0
pop.v.i self.carcon
pushi.e 133
pop.v.i self.con
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[101]
push.v self.con
pushi.e 130
cmp.i.v EQ
bf [107]

:[102]
pushi.e 91
conv.i.v
pushi.e -60
conv.i.v
pushi.e 790
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.car
push.v self.car
conv.v.i
pushenv [104]

:[103]
call.i scr_depth(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.vspeed

:[104]
popenv [103]
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 326
pushenv [106]

:[105]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pop.v.i self.cutscene

:[106]
popenv [105]
pushi.e 670
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 131
pop.v.i self.con
pushi.e 200
conv.i.d
push.v self.car
conv.v.i
push.v [stacktop]self.vspeed
div.v.d
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[107]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [109]

:[108]
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 11
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 130
pop.v.i self.con

:[109]
push.v self.con
pushi.e 131
cmp.i.v EQ
bf [111]

:[110]
pushi.e 1
pop.v.i global.interact

:[111]
push.v self.con
pushi.e 132
cmp.i.v EQ
bf [113]

:[112]
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 133
pop.v.i self.con

:[113]
push.v self.con
pushi.e 140
cmp.i.v EQ
bf [129]

:[114]
pushi.e 91
conv.i.v
pushi.e 0
conv.i.v
pushi.e 810
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.car
push.v self.car
conv.v.i
pushenv [116]

:[115]
call.i scr_depth(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.vspeed

:[116]
popenv [115]
pushi.e 84
pushenv [118]

:[117]
call.i instance_destroy(argc=0)
popz.v

:[118]
popenv [117]
pushi.e 83
pushenv [120]

:[119]
call.i instance_destroy(argc=0)
popz.v

:[120]
popenv [119]
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 326
pushenv [122]

:[121]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pop.v.i self.cutscene

:[122]
popenv [121]
pushi.e 660
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 300
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 141
pop.v.i self.con
pushi.e 140
conv.i.d
push.v self.car
conv.v.i
push.v [stacktop]self.vspeed
div.v.d
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i self.carcon
pushi.e 296
conv.i.v
pushi.e 85
conv.i.v
pushi.e 764
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.qc
pushi.e 281
conv.i.v
pushi.e 80
conv.i.v
pushi.e 905
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.undyne
pushi.e 314
conv.i.v
pushi.e 82
conv.i.v
pushi.e 710
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.bear
push.v self.bear
conv.v.i
pushenv [124]

:[123]
call.i scr_depth(argc=0)
popz.v

:[124]
popenv [123]
push.v self.qc
conv.v.i
pushenv [126]

:[125]
call.i scr_depth(argc=0)
popz.v

:[126]
popenv [125]
push.v self.undyne
conv.v.i
pushenv [128]

:[127]
call.i scr_depth(argc=0)
popz.v

:[128]
popenv [127]

:[129]
push.v self.con
pushi.e 134
cmp.i.v EQ
bf [131]

:[130]
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 13
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 140
pop.v.i self.con

:[131]
push.v self.carcon
pushi.e 2
cmp.i.v EQ
bf [139]

:[132]
push.v self.car
conv.v.i
push.v [stacktop]self.y
pushi.e 100
cmp.i.v GTE
bf [138]

:[133]
push.v self.qc
conv.v.i
pushenv [135]

:[134]
pushi.e 297
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[135]
popenv [134]
push.v self.undyne
conv.v.i
pushenv [137]

:[136]
pushi.e 300
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[137]
popenv [136]

:[138]
push.v self.car
conv.v.i
push.v [stacktop]self.x
pushi.e 1000
cmp.i.v GTE
bf [139]

:[139]
push.v self.con
pushi.e 141
cmp.i.v EQ
bf [141]

:[140]
pushi.e 1
pop.v.i global.interact

:[141]
push.v self.con
pushi.e 142
cmp.i.v EQ
bf [145]

:[142]
push.v self.car
conv.v.i
pushenv [144]

:[143]
pushi.e 0
pop.v.i self.vspeed
pushi.e 3
pop.v.i self.hspeed
pushi.e 89
pop.v.i self.sprite_index

:[144]
popenv [143]
pushi.e 143
pop.v.i self.con
pushi.e 260
conv.i.d
push.v self.car
conv.v.i
push.v [stacktop]self.hspeed
div.v.d
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[145]
push.v self.con
pushi.e 144
cmp.i.v EQ
bf [147]

:[146]
pushi.e 0
pop.v.i self.carcon
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 145
pop.v.i self.con

:[147]
push.v self.con
pushi.e 161
cmp.i.v EQ
bf [153]

:[148]
pushi.e 89
conv.i.v
pushi.e 220
conv.i.v
pushi.e 0
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.car
push.v self.car
conv.v.i
pushenv [150]

:[149]
call.i scr_depth(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.hspeed

:[150]
popenv [149]
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 326
pushenv [152]

:[151]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pop.v.i self.cutscene

:[152]
popenv [151]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushbltn.v self.room_height
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 162
pop.v.i self.con
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 240
conv.i.d
push.v self.car
conv.v.i
push.v [stacktop]self.hspeed
div.v.d
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[153]
push.v self.con
pushi.e 146
cmp.i.v EQ
bf [155]

:[154]
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 14
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 161
pop.v.i self.con

:[155]
push.v self.con
pushi.e 162
cmp.i.v EQ
bf [157]

:[156]
pushi.e 1
pop.v.i global.interact

:[157]
push.v self.con
pushi.e 163
cmp.i.v EQ
bf [161]

:[158]
push.v self.car
conv.v.i
pushenv [160]

:[159]
pushi.e -2
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 92
pop.v.i self.sprite_index

:[160]
popenv [159]
pushi.e 164
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[161]
push.v self.con
pushi.e 165
cmp.i.v EQ
bf [165]

:[162]
push.v self.car
conv.v.i
pushenv [164]

:[163]
call.i scr_halt(argc=0)
popz.v

:[164]
popenv [163]
pushi.e 36
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[165]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [169]

:[166]
pushi.e 0
pop.v.i self.v
push.v self.car
conv.v.i
pushenv [168]

:[167]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.image_speed

:[168]
popenv [167]
pushi.e 38
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[169]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [177]

:[170]
pushi.e 100
conv.i.v
push.d -0.334
conv.d.v
pushi.e 1
conv.i.v
call.i scr_pan(argc=3)
popz.v
push.v self.car
conv.v.i
pushenv [172]

:[171]
pushi.e 500
pop.v.i self.depth

:[172]
popenv [171]
pushi.e 834
conv.i.v
push.v self.car
conv.v.i
push.v [stacktop]self.y
push.v self.cty
sub.v.v
push.v self.car
conv.v.i
push.v [stacktop]self.x
push.v self.ctx
sub.v.v
pushi.e 10
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.k
pushi.e 103
conv.i.v
push.v self.car
conv.v.i
push.v [stacktop]self.y
push.v self.cky
sub.v.v
push.v self.car
conv.v.i
push.v [stacktop]self.x
push.v self.ckx
sub.v.v
call.i scr_marker(argc=3)
pop.v.v self.t
push.v self.k
conv.v.i
pushenv [174]

:[173]
push.i 50000
pop.v.i self.depth
pushi.e 1
pop.v.i self.visible
push.d 0.2
pop.v.d self.image_speed
pushi.e 834
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.hspeed

:[174]
popenv [173]
push.v self.t
conv.v.i
pushenv [176]

:[175]
push.d 0.2
pop.v.d self.image_speed
push.i 50000
pop.v.i self.depth
pushi.e 1
pop.v.i self.visible
pushi.e 103
pop.v.i self.sprite_index
pushi.e -1
pop.v.i self.hspeed

:[176]
popenv [175]
pushi.e 40
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[177]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [185]

:[178]
push.v self.car
conv.v.i
pushenv [180]

:[179]
push.i 600000
pop.v.i self.depth

:[180]
popenv [179]
push.v self.k
conv.v.i
pushenv [182]

:[181]
pushi.e 0
pop.v.i self.speed
pushi.e 837
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[182]
popenv [181]
push.v self.t
conv.v.i
pushenv [184]

:[183]
pushi.e 2
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 10000
pop.v.i self.depth
pushi.e 96
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[184]
popenv [183]
pushi.e 42
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[185]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [189]

:[186]
push.v self.t
conv.v.i
pushenv [188]

:[187]
pushi.e 101
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.hspeed

:[188]
popenv [187]
pushi.e 44
pop.v.i self.con
pushi.e 51
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[189]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [195]

:[190]
push.v self.k
conv.v.i
pushenv [192]

:[191]
pushi.e 834
pop.v.i self.sprite_index

:[192]
popenv [191]
push.v self.t
conv.v.i
pushenv [194]

:[193]
pushi.e 0
pop.v.i self.hspeed
pushi.e -2
pop.v.i self.vspeed
pushi.e 98
pop.v.i self.sprite_index

:[194]
popenv [193]
pushi.e 46
pop.v.i self.con
pushi.e 22
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[195]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [199]

:[196]
push.v self.t
conv.v.i
pushenv [198]

:[197]
pushi.e 0
pop.v.i self.speed
pushi.e 103
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[198]
popenv [197]
pushi.e 48
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[199]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [205]

:[200]
push.v self.k
conv.v.i
pushenv [202]

:[201]
pushi.e 0
pop.v.i self.visible

:[202]
popenv [201]
push.v self.t
conv.v.i
pushenv [204]

:[203]
pushi.e 94
pop.v.i self.sprite_index

:[204]
popenv [203]
pushi.e 50
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[205]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [209]

:[206]
push.v self.t
conv.v.i
pushenv [208]

:[207]
pushi.e 1
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.image_speed

:[208]
popenv [207]
pushi.e 52
pop.v.i self.con
pushi.e 44
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[209]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [215]

:[210]
pushi.e 999
conv.i.v
push.d -0.5
conv.d.v
pushi.e 0
conv.i.v
call.i scr_pan(argc=3)
popz.v
push.v self.t
conv.v.i
pushenv [212]

:[211]
push.d -0.25
pop.v.d self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 95
pop.v.i self.sprite_index

:[212]
popenv [211]
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
pushenv [214]

:[213]
push.d 0.03
pop.v.d self.fadespeed

:[214]
popenv [213]
pushi.e 56
pop.v.i self.con
pushi.e 0
pop.v.i self.persistent
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[215]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [217]

:[216]
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[217]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [219]

:[218]
pushi.e 0
push.v self.fade
conv.v.i
pop.v.i [stacktop]self.y

:[219]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [end]

:[220]
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.pf
push.v self.pf
conv.v.i
pushenv [222]

:[221]
push.d 1.2
pop.v.d self.image_alpha

:[222]
popenv [221]
pushi.e 29
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]