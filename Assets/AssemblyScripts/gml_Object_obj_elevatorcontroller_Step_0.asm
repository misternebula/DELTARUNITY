.localvar 0 arguments

:[0]
call.i scr_debug(argc=0)
conv.v.b
bf [22]

:[1]
pushi.e 50
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [7]

:[2]
push.v self.mergecon
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.cno
push.v self.cmax
cmp.v.v LT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.mergecon
push.v self.cno
pushi.e 1
add.i.v
pop.v.v self.newcno

:[7]
pushi.e 48
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [16]

:[8]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [16]

:[9]
pushi.e 1
pop.v.i global.interact
push.v self.movecon
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.movecon

:[11]
push.v self.mergecon
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.cno
pushi.e 0
cmp.i.v GT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v self.cno
pushi.e 1
sub.i.v
pop.v.v self.newcno

:[16]
pushi.e 49
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [22]

:[17]
push.v self.movecon
pushi.e 4
cmp.i.v EQ
bf [19]

:[18]
pushi.e 2
pop.v.i self.movecon

:[19]
push.v self.movecon
pushi.e 0
cmp.i.v EQ
bf [22]

:[20]
pushi.e 3
pop.v.i self.movecon
push.v self.cno
pushi.e 0
cmp.i.v GT
bf [22]

:[21]
push.v self.cno
pushi.e 1
sub.i.v
pop.v.v self.newcno

:[22]
push.v self.movecon
pushi.e 1
cmp.i.v EQ
bf [26]

:[23]
pushi.e 326
pushenv [25]

:[24]
pushi.e 1
pop.v.i self.cutscene

:[25]
popenv [24]
pushi.e 14
pop.v.i self.maxrectspeed
pushi.e 0
pop.v.i self.movetimer
pushi.e 2
pop.v.i self.movecon
pushi.e 2
pop.v.i self.doorcon
pushi.e 1
pop.v.i self.charadjustcon
pushi.e 120
pop.v.i self.rectspacing
pushi.e 1
pop.v.i self.shakecon
pushi.e 1
pop.v.i self.rectcon

:[26]
push.v self.movecon
pushi.e 2
cmp.i.v EQ
bf [37]

:[27]
push.v self.movetimer
pushi.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
pushi.e 10
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1
pop.v.i self.mergecon
push.d 0.05
pop.v.d self.mergespeed

:[29]
push.v self.movetimer
pushi.e 30
cmp.i.v EQ
bf [33]

:[30]
push.v self.charadjustcon
pushi.e 2
cmp.i.v GTE
bf [32]

:[31]
pushi.e 3
pop.v.i self.charadjustcon

:[32]
push.v self.newcno
pop.v.v self.cno
pushi.e 1
pop.v.i self.doorcon
pushi.e 3
pop.v.i self.shakecon
pushi.e 3
pop.v.i self.rectcon

:[33]
push.v self.movetimer
pushi.e 40
cmp.i.v GTE
bf [37]

:[34]
pushi.e 0
pop.v.i self.movecon
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e 0
pop.v.i global.interact

:[36]
pushi.e 0
pop.v.i self.charadjustcon

:[37]
push.v self.movecon
pushi.e 3
cmp.i.v EQ
bf [41]

:[38]
pushi.e 326
pushenv [40]

:[39]
pushi.e 1
pop.v.i self.cutscene

:[40]
popenv [39]
pushi.e 2
pop.v.i self.doorcon
pushi.e 10
pop.v.i self.maxrectspeed
pushi.e 0
pop.v.i self.movetimer
pushi.e 4
pop.v.i self.movecon
pushi.e 240
pop.v.i self.rectspacing
pushi.e 1
pop.v.i self.shakecon
pushi.e 1
pop.v.i self.rectcon

:[41]
push.v self.mergecon
pushi.e 1
cmp.i.v EQ
bf [45]

:[42]
pushi.e -1
push.v self.cno
conv.v.i
push.v [array]self.bg_c
pop.v.v self.prev_bg_c
pushi.e -1
push.v self.newcno
conv.v.i
push.v [array]self.bg_c
pop.v.v self.ideal_bg_c
push.v self.movecon
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
push.v self.newcno
pop.v.v self.cno

:[44]
pushi.e 2
pop.v.i self.mergecon
pushi.e 0
pop.v.i self.mergetimer
pushi.e 0
pop.v.i self.merge_amt

:[45]
push.v self.mergecon
pushi.e 2
cmp.i.v EQ
bf [49]

:[46]
push.v self.merge_amt
push.v self.mergespeed
add.v.v
pop.v.v self.merge_amt
push.v self.merge_amt
pushi.e 1
cmp.i.v GTE
bf [48]

:[47]
pushi.e 1
pop.v.i self.merge_amt
pushi.e 3
pop.v.i self.mergecon

:[48]
push.v self.merge_amt
push.v self.ideal_bg_c
push.v self.prev_bg_c
call.i merge_color(argc=3)
pop.v.v self.cur_bg_c

:[49]
push.v self.mergecon
pushi.e 3
cmp.i.v EQ
bf [51]

:[50]
pushi.e 0
pop.v.i self.mergecon

:[51]
push.v self.shakecon
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
pushi.e 0
pop.v.i self.shakeamt
pushi.e 0
pop.v.i self.shaketimer
pushi.e 2
pop.v.i self.shakecon

:[53]
push.v self.shakecon
pushi.e 2
cmp.i.v EQ
bf [56]

:[54]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
call.i abs(argc=1)
pushi.e 4
cmp.i.v LT
bf [56]

:[55]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
push.v self.dir
push.d 0.5
mul.d.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v

:[56]
push.v self.shakecon
pushi.e 3
cmp.i.v EQ
bf [58]

:[57]
pushi.e 103
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 4
pop.v.i self.shakeamt
pushi.e 4
pop.v.i self.shakecon

:[58]
push.v self.shakecon
pushi.e 4
cmp.i.v EQ
bf [62]

:[59]
push.v self.shakeamt
pushi.e 0
cmp.i.v GTE
bf [61]

:[60]
pushi.e 0
push.v self.shakeamt
call.i random(argc=1)
sub.v.i
push.v self.shakeamt
call.i random(argc=1)
add.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 0
push.v self.shakeamt
call.i random(argc=1)
sub.v.i
push.v self.shakeamt
call.i random(argc=1)
add.v.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v
push.v self.shakeamt
push.d 0.5
sub.d.v
pop.v.v self.shakeamt
b [62]

:[61]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 0
pop.v.i self.shakecon

:[62]
push.v self.rectcon
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
pushi.e 0
pop.v.i self.rectcon
pushi.e 0
pop.v.i self.rectspeed
pushi.e 0
pop.v.i self.rect_alpha
pushi.e 0
pop.v.i self.recty
pushi.e 2
pop.v.i self.rectcon

:[64]
push.v self.rectcon
pushi.e 2
cmp.i.v EQ
bf [77]

:[65]
push.v self.dir
pushi.e 1
cmp.i.v EQ
bf [68]

:[66]
push.v self.rectspeed
push.v self.maxrectspeed
cmp.v.v LT
bf [68]

:[67]
push.v self.rectspeed
pushi.e 1
add.i.v
pop.v.v self.rectspeed

:[68]
push.v self.dir
pushi.e -1
cmp.i.v EQ
bf [71]

:[69]
push.v self.rectspeed
push.v self.maxrectspeed
neg.v
cmp.v.v GT
bf [71]

:[70]
push.v self.rectspeed
pushi.e 1
sub.i.v
pop.v.v self.rectspeed

:[71]
push.v self.rect_alpha
push.d 0.2
cmp.d.v LT
bf [73]

:[72]
push.v self.rect_alpha
push.d 0.02
add.d.v
pop.v.v self.rect_alpha

:[73]
push.v self.recty
push.v self.rectspeed
add.v.v
pop.v.v self.recty
push.v self.recty
push.v self.rectspacing
cmp.v.v GTE
bf [75]

:[74]
push.v self.recty
push.v self.rectspacing
sub.v.v
pop.v.v self.recty

:[75]
push.v self.recty
push.v self.rectspacing
neg.v
cmp.v.v LTE
bf [77]

:[76]
push.v self.recty
push.v self.rectspacing
add.v.v
pop.v.v self.recty

:[77]
push.v self.rectcon
pushi.e 3
cmp.i.v EQ
bf [97]

:[78]
push.v self.rectspeed
pushi.e 6
cmp.i.v GTE
bf [80]

:[79]
pushi.e 6
pop.v.i self.rectspeed

:[80]
push.v self.rectspeed
pushi.e -6
cmp.i.v LTE
bf [82]

:[81]
pushi.e -6
pop.v.i self.rectspeed

:[82]
push.v self.rectspeed
pushi.e 0
cmp.i.v GT
bf [84]

:[83]
push.v self.rectspeed
push.d 0.5
sub.d.v
pop.v.v self.rectspeed

:[84]
push.v self.rectspeed
pushi.e 0
cmp.i.v LT
bf [86]

:[85]
push.v self.rectspeed
push.d 0.5
add.d.v
pop.v.v self.rectspeed

:[86]
push.v self.rect_alpha
pushi.e 0
cmp.i.v GT
bf [88]

:[87]
push.v self.rect_alpha
push.d 0.02
sub.d.v
pop.v.v self.rect_alpha

:[88]
push.v self.recty
push.v self.rectspeed
add.v.v
pop.v.v self.recty
push.v self.recty
push.v self.rectspacing
cmp.v.v GTE
bf [90]

:[89]
push.v self.recty
push.v self.rectspacing
sub.v.v
pop.v.v self.recty

:[90]
push.v self.recty
push.v self.rectspacing
neg.v
cmp.v.v LTE
bf [92]

:[91]
push.v self.recty
push.v self.rectspacing
add.v.v
pop.v.v self.recty

:[92]
push.v self.rectspeed
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
push.v self.rect_alpha
pushi.e 0
cmp.i.v EQ
b [95]

:[94]
push.e 0

:[95]
bf [97]

:[96]
pushi.e 0
pop.v.i self.rectcon

:[97]
push.v self.doorcon
pushi.e 1
cmp.i.v EQ
bf [100]

:[98]
push.v self.doorx
pushi.e 40
cmp.i.v LTE
bf [100]

:[99]
push.v self.doorx
pushi.e 5
add.i.v
pop.v.v self.doorx

:[100]
push.v self.doorcon
pushi.e 2
cmp.i.v EQ
bf [105]

:[101]
push.v self.doorx
pushi.e 0
cmp.i.v GTE
bf [103]

:[102]
push.v self.doorx
pushi.e 5
sub.i.v
pop.v.v self.doorx

:[103]
push.v self.doorx
pushi.e 0
cmp.i.v LTE
bf [105]

:[104]
pushi.e 0
pop.v.i self.doorx
pushi.e 0
pop.v.i self.doorcon

:[105]
push.v self.charadjustcon
pushi.e 1
cmp.i.v EQ
bf [111]

:[106]
pushi.e 0
pop.v.i self.ccount
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.exist
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.exist
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.charremy
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.charremy
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [108]

:[107]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.exist
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.charremy

:[108]
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [110]

:[109]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.exist
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -1
pushi.e 1
pop.v.v [array]self.charremy

:[110]
pushi.e 2
pop.v.i self.charadjustcon

:[111]
push.v self.charadjustcon
pushi.e 2
cmp.i.v EQ
bf [120]

:[112]
pushi.e 0
pop.v.i self.i

:[113]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [120]

:[114]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.exist
pushi.e 1
cmp.i.v EQ
bf [119]

:[115]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
pushenv [118]

:[116]
push.v self.y
pushi.e 260
cmp.i.v GTE
bf [118]

:[117]
push.v self.y
pushi.e 10
sub.i.v
pop.v.v self.y

:[118]
popenv [116]

:[119]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [113]

:[120]
push.v self.charadjustcon
pushi.e 3
cmp.i.v EQ
bf [138]

:[121]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.ok
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.ok
pushi.e 0
pop.v.i self.i

:[122]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [133]

:[123]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.exist
pushi.e 1
cmp.i.v EQ
bf [131]

:[124]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.charremy
cmp.v.v LT
bf [128]

:[125]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
pushenv [127]

:[126]
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y

:[127]
popenv [126]

:[128]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.charremy
cmp.v.v GTE
bf [130]

:[129]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.ok

:[130]
b [132]

:[131]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.ok

:[132]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [122]

:[133]
pushi.e -1
pushi.e 0
push.v [array]self.ok
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
pushi.e -1
pushi.e 1
push.v [array]self.ok
pushi.e 1
cmp.i.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [138]

:[137]
pushi.e 0
pop.v.i self.charadjustcon

:[138]
push.v self.con
pushi.e 1
cmp.i.v GTE
bf [end]

:[139]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [150]

:[140]
pushi.e 165
pushenv [142]

:[141]
call.i instance_destroy(argc=0)
popz.v

:[142]
popenv [141]
pushi.e 326
pushenv [144]

:[143]
pushi.e 0
pop.v.i self.visible

:[144]
popenv [143]
pushi.e 1
pop.v.i global.interact
pushi.e 830
conv.i.v
pushi.e 420
conv.i.v
pushi.e 300
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.k
pushi.e 190
conv.i.v
pushi.e 460
conv.i.v
pushi.e 300
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
pushi.e 206
conv.i.v
pushi.e 500
conv.i.v
pushi.e 300
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.r
push.v self.k
pushi.e -1
pushi.e 0
pop.v.v [array]self.cc
push.v self.s
pushi.e -1
pushi.e 1
pop.v.v [array]self.cc
push.v self.r
pushi.e -1
pushi.e 2
pop.v.v [array]self.cc
pushi.e 0
pop.v.i self.i

:[145]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [149]

:[146]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
conv.v.i
pushenv [148]

:[147]
call.i scr_depth(argc=0)
popz.v
pushi.e -4
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[148]
popenv [147]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [145]

:[149]
pushi.e 2
pop.v.i self.con

:[150]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [179]

:[151]
pushi.e 1
pop.v.i global.interact
push.v self.k
conv.v.i
push.v [stacktop]self.y
pushi.e 200
cmp.i.v LTE
bf [155]

:[152]
push.v self.k
conv.v.i
pushenv [154]

:[153]
call.i scr_halt(argc=0)
popz.v
pushi.e 827
pop.v.i self.sprite_index

:[154]
popenv [153]

:[155]
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 200
cmp.i.v LTE
bf [157]

:[156]
push.v self.s
conv.v.i
push.v [stacktop]self.x
push.v self.s
conv.v.i
push.v [stacktop]self.xstart
cmp.v.v EQ
b [158]

:[157]
push.e 0

:[158]
bf [162]

:[159]
push.v self.s
conv.v.i
pushenv [161]

:[160]
call.i scr_halt(argc=0)
popz.v
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x
pushi.e -4
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 180
pop.v.i self.sprite_index

:[161]
popenv [160]

:[162]
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 240
cmp.i.v LTE
bf [166]

:[163]
push.v self.s
conv.v.i
pushenv [165]

:[164]
call.i scr_halt(argc=0)
popz.v
pushi.e 240
pop.v.i self.x
pushi.e 183
pop.v.i self.sprite_index

:[165]
popenv [164]

:[166]
push.v self.r
conv.v.i
push.v [stacktop]self.y
pushi.e 275
cmp.i.v LTE
bf [168]

:[167]
push.v self.r
conv.v.i
push.v [stacktop]self.x
push.v self.r
conv.v.i
push.v [stacktop]self.xstart
cmp.v.v EQ
b [169]

:[168]
push.e 0

:[169]
bf [173]

:[170]
pushi.e 1
pop.v.i self.jup
push.v self.r
conv.v.i
pushenv [172]

:[171]
push.d 1.25
pop.v.d self.hspeed
push.d -2.25
pop.v.d self.vspeed

:[172]
popenv [171]

:[173]
push.v self.jup
pushi.e 1
cmp.i.v EQ
bf [175]

:[174]
push.v self.a_timer
pushi.e 1
add.i.v
pop.v.v self.a_timer

:[175]
push.v self.a_timer
pushi.e 48
cmp.i.v GTE
bf [179]

:[176]
push.v self.r
conv.v.i
pushenv [178]

:[177]
call.i scr_halt(argc=0)
popz.v

:[178]
popenv [177]
pushi.e 3
pop.v.i self.con

:[179]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [187]

:[180]
push.v self.k
conv.v.i
pushenv [182]

:[181]
call.i scr_halt(argc=0)
popz.v

:[182]
popenv [181]
push.v self.r
conv.v.i
pushenv [184]

:[183]
call.i scr_halt(argc=0)
popz.v

:[184]
popenv [183]
push.v self.s
conv.v.i
pushenv [186]

:[185]
call.i scr_halt(argc=0)
popz.v

:[186]
popenv [185]
pushi.e 4
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[187]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [191]

:[188]
push.v self.r
conv.v.i
pushenv [190]

:[189]
pushi.e 204
pop.v.i self.sprite_index

:[190]
popenv [189]
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 11
pop.v.i global.fe
push.s "obj_elevatorcontroller_slash_Step_0_gml_353_0"@4123
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
pushi.e 6
pop.v.i self.con

:[191]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [193]

:[192]
call.i d_ex(argc=0)
conv.v.b
not.b
b [194]

:[193]
push.e 0

:[194]
bf [198]

:[195]
push.s "elevator.ogg"@4124
conv.s.v
call.i snd_init(argc=1)
pop.v.v self.ele_noise
push.d 0.1
conv.d.v
push.d 0.6
conv.d.v
push.v self.ele_noise
call.i mus_loop_ext(argc=3)
pop.v.v self.ele_noise_ind
push.v self.r
conv.v.i
pushenv [197]

:[196]
pushi.e 206
pop.v.i self.sprite_index

:[197]
popenv [196]
pushi.e 97
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i self.movecon
pushi.e 2
pop.v.i self.newcno
pushi.e 7
pop.v.i self.con
push.d 0.1
pop.v.d self.pitchcount
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[198]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [200]

:[199]
push.v self.pitchcount
push.d 0.015
add.d.v
pop.v.v self.pitchcount
push.v self.pitchcount
push.v self.ele_noise_ind
call.i snd_pitch(argc=2)
popz.v

:[200]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [204]

:[201]
push.v self.r
conv.v.i
pushenv [203]

:[202]
pushi.e 204
pop.v.i self.sprite_index

:[203]
popenv [202]
push.s "obj_elevatorcontroller_slash_Step_0_gml_384_0"@4128
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
pushi.e 9
pop.v.i self.con

:[204]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [206]

:[205]
call.i d_ex(argc=0)
conv.v.b
not.b
b [207]

:[206]
push.e 0

:[207]
bf [211]

:[208]
push.v self.r
conv.v.i
pushenv [210]

:[209]
pushi.e 2
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[210]
popenv [209]
pushi.e 10
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[211]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [217]

:[212]
push.v self.r
conv.v.i
pushenv [214]

:[213]
call.i scr_halt(argc=0)
popz.v

:[214]
popenv [213]
push.v self.r
conv.v.i
pushenv [216]

:[215]
pushi.e 201
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[216]
popenv [215]
pushi.e 12
pop.v.i self.con
pushi.e 25
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[217]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [221]

:[218]
push.v self.r
conv.v.i
pushenv [220]

:[219]
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_index

:[220]
popenv [219]
pushi.e 15
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[221]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [223]

:[222]
pushi.e 0
pop.v.i global.fe
push.s "obj_elevatorcontroller_slash_Step_0_gml_419_0"@4129
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 17
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[223]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [225]

:[224]
call.i d_ex(argc=0)
conv.v.b
not.b
b [226]

:[225]
push.e 0

:[226]
bf [232]

:[227]
push.v self.s
conv.v.i
pushenv [229]

:[228]
pushi.e -4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[229]
popenv [228]
push.v self.k
conv.v.i
pushenv [231]

:[230]
pushi.e 828
pop.v.i self.sprite_index

:[231]
popenv [230]
pushi.e 25
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 18
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[232]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [236]

:[233]
push.v self.s
conv.v.i
pushenv [235]

:[234]
call.i scr_halt(argc=0)
popz.v
pushi.e 195
pop.v.i self.sprite_index

:[235]
popenv [234]
pushi.e 20
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[236]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [238]

:[237]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.s "obj_elevatorcontroller_slash_Step_0_gml_448_0"@4130
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_449_0"@4131
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "B"@2529
conv.s.v
pushi.e 2
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_elevatorcontroller_slash_Step_0_gml_451_0"@4132
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
push.s "obj_elevatorcontroller_slash_Step_0_gml_453_0"@4133
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_454_0"@4134
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "B"@2529
conv.s.v
pushi.e 7
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_elevatorcontroller_slash_Step_0_gml_456_0"@4135
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 9
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_elevatorcontroller_slash_Step_0_gml_458_0"@4136
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_459_0"@4137
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_460_0"@4138
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
pushi.e 22
pop.v.i self.con

:[238]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [240]

:[239]
call.i d_ex(argc=0)
conv.v.b
not.b
b [241]

:[240]
push.e 0

:[241]
bf [243]

:[242]
pushi.e 23
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[243]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [245]

:[244]
pushi.e 0
pop.v.i global.fe
push.s "obj_elevatorcontroller_slash_Step_0_gml_476_0"@4139
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_477_0"@4140
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_elevatorcontroller_slash_Step_0_gml_479_0"@4141
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_elevatorcontroller_slash_Step_0_gml_481_0"@4142
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_elevatorcontroller_slash_Step_0_gml_483_0"@4143
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_484_0"@4144
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_485_0"@4145
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_elevatorcontroller_slash_Step_0_gml_487_0"@4146
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_488_0"@4147
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 25
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[245]
push.v self.con
pushi.e 25
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
bf [250]

:[249]
pushi.e 26
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[250]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [252]

:[251]
push.s "obj_elevatorcontroller_slash_Step_0_gml_503_0"@4148
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_504_0"@4149
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_elevatorcontroller_slash_Step_0_gml_506_0"@4150
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
push.s "obj_elevatorcontroller_slash_Step_0_gml_508_0"@4151
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_509_0"@4152
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 7
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_elevatorcontroller_slash_Step_0_gml_511_0"@4153
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_elevatorcontroller_slash_Step_0_gml_513_0"@4154
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_514_0"@4155
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 12
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_elevatorcontroller_slash_Step_0_gml_516_0"@4156
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 14
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_elevatorcontroller_slash_Step_0_gml_518_0"@4157
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 15
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

:[252]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [254]

:[253]
call.i d_ex(argc=0)
conv.v.b
not.b
b [255]

:[254]
push.e 0

:[255]
bf [257]

:[256]
pushi.e 29
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[257]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [259]

:[258]
pushi.e 2
pop.v.i self.movecon
pushi.e 31
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.v self.ele_noise_ind
call.i snd_volume(argc=3)
popz.v
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[259]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [263]

:[260]
push.v self.pitchcount
push.d 0.1
cmp.d.v GT
bf [262]

:[261]
push.v self.pitchcount
push.d 0.015
sub.d.v
pop.v.v self.pitchcount

:[262]
push.v self.pitchcount
push.v self.ele_noise_ind
call.i snd_pitch(argc=2)
popz.v
pushi.e 1
pop.v.i global.interact

:[263]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [267]

:[264]
push.v self.ele_noise
call.i snd_free(argc=1)
popz.v
push.v self.r
conv.v.i
pushenv [266]

:[265]
push.d -0.25
pop.v.d self.image_speed

:[266]
popenv [265]
pushi.e 33
pop.v.i self.con
pushi.e 7
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[267]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [271]

:[268]
push.v self.r
conv.v.i
pushenv [270]

:[269]
pushi.e 204
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 4
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[270]
popenv [269]
pushi.e 35
pop.v.i self.con

:[271]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [276]

:[272]
push.v self.r
conv.v.i
push.v [stacktop]self.y
pushi.e 270
cmp.i.v GTE
bf [276]

:[273]
push.v self.r
conv.v.i
pushenv [275]

:[274]
pushi.e 0
pop.v.i self.vspeed
pushi.e -6
pop.v.i self.hspeed
pushi.e 207
pop.v.i self.sprite_index

:[275]
popenv [274]
pushi.e 36
pop.v.i self.con

:[276]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [281]

:[277]
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e 300
cmp.i.v LTE
bf [281]

:[278]
push.v self.r
conv.v.i
pushenv [280]

:[279]
call.i scr_halt(argc=0)
popz.v
pushi.e 206
pop.v.i self.sprite_index

:[280]
popenv [279]
pushi.e 37
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[281]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [283]

:[282]
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.s "obj_elevatorcontroller_slash_Step_0_gml_605_0"@4158
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
pop.v.i [stacktop]self.side
pushi.e 39
pop.v.i self.con

:[283]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [285]

:[284]
call.i d_ex(argc=0)
conv.v.b
not.b
b [286]

:[285]
push.e 0

:[286]
bf [294]

:[287]
push.v self.r
conv.v.i
pushenv [289]

:[288]
pushi.e 204
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[289]
popenv [288]
pushi.e 0
pop.v.i global.interact
pushi.e 40
pop.v.i self.con
push.v self.k
conv.v.i
push.v [stacktop]self.x
pop.v.v self.kremx
push.v self.k
conv.v.i
push.v [stacktop]self.y
pop.v.v self.kremy
pushi.e 25
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.k
conv.v.i
pushenv [291]

:[290]
call.i instance_destroy(argc=0)
popz.v

:[291]
popenv [290]
push.v self.kremx
pop.v.v 326.x
push.v self.kremy
pop.v.v 326.y
pushi.e 0
pop.v.i global.facing
pushi.e 326
pushenv [293]

:[292]
pushi.e 1
pop.v.i self.visible

:[293]
popenv [292]
pushi.e 0
pop.v.i self.movecounter

:[294]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [302]

:[295]
push.v 326.x
push.v self.kremx
cmp.v.v NEQ
bt [297]

:[296]
push.v 326.y
push.v self.kremy
cmp.v.v NEQ
b [298]

:[297]
push.e 1

:[298]
bf [300]

:[299]
push.v self.movecounter
pushi.e 1
add.i.v
pop.v.v self.movecounter

:[300]
push.v self.movecounter
pushi.e 3
cmp.i.v GTE
bf [302]

:[301]
pushi.e 41
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.s "obj_elevatorcontroller_slash_Step_0_gml_644_0"@4162
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

:[302]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [304]

:[303]
call.i d_ex(argc=0)
conv.v.b
not.b
b [305]

:[304]
push.e 0

:[305]
bf [309]

:[306]
push.v self.s
conv.v.i
pushenv [308]

:[307]
pushi.e 185
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.hspeed

:[308]
popenv [307]
pushi.e 3
pop.v.i global.facing
pushi.e 43
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[309]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [313]

:[310]
push.v self.s
conv.v.i
pushenv [312]

:[311]
call.i scr_halt(argc=0)
popz.v

:[312]
popenv [311]
pushi.e 45
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[313]
push.v self.con
pushi.e 46
cmp.i.v EQ
bf [315]

:[314]
push.s "obj_elevatorcontroller_slash_Step_0_gml_674_0"@4163
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_675_0"@4164
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_676_0"@4165
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_677_0"@4166
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 47
pop.v.i self.con

:[315]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [317]

:[316]
call.i d_ex(argc=0)
conv.v.b
not.b
b [318]

:[317]
push.e 0

:[318]
bf [322]

:[319]
push.v self.s
conv.v.i
pushenv [321]

:[320]
pushi.e 190
pop.v.i self.sprite_index

:[321]
popenv [320]
pushi.e 48
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[322]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [324]

:[323]
push.s "obj_elevatorcontroller_slash_Step_0_gml_691_0"@4167
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
pushi.e 50
pop.v.i self.con

:[324]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [326]

:[325]
call.i d_ex(argc=0)
conv.v.b
not.b
b [327]

:[326]
push.e 0

:[327]
bf [331]

:[328]
push.v self.s
conv.v.i
pushenv [330]

:[329]
pushi.e 182
pop.v.i self.sprite_index

:[330]
popenv [329]
pushi.e 51
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[331]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [335]

:[332]
push.v self.s
conv.v.i
pushenv [334]

:[333]
pushi.e 183
pop.v.i self.sprite_index

:[334]
popenv [333]
pushi.e 1
pop.v.i global.fe
push.s "obj_elevatorcontroller_slash_Step_0_gml_709_0"@4168
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_710_0"@4169
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
pushi.e 53
pop.v.i self.con

:[335]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [337]

:[336]
call.i d_ex(argc=0)
conv.v.b
not.b
b [338]

:[337]
push.e 0

:[338]
bf [342]

:[339]
push.v self.s
conv.v.i
pushenv [341]

:[340]
pushi.e 187
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[341]
popenv [340]
pushi.e 54
pop.v.i self.con

:[342]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [347]

:[343]
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 260
cmp.i.v GTE
bf [347]

:[344]
pushi.e 0
pop.v.i global.facing
push.v self.s
conv.v.i
pushenv [346]

:[345]
call.i scr_halt(argc=0)
popz.v
pushi.e 4
pop.v.i self.hspeed
pushi.e 183
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[346]
popenv [345]
pushi.e 55
pop.v.i self.con

:[347]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [352]

:[348]
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 300
cmp.i.v GTE
bf [352]

:[349]
push.v self.s
conv.v.i
pushenv [351]

:[350]
call.i scr_halt(argc=0)
popz.v
pushi.e 3
pop.v.i self.vspeed
pushi.e 189
pop.v.i self.sprite_index
push.d 0.125
pop.v.d self.image_speed

:[351]
popenv [350]
pushi.e 56
pop.v.i self.con

:[352]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [357]

:[353]
call.i snd_free_all(argc=0)
popz.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 320
cmp.i.v GTE
bf [357]

:[354]
push.v self.s
conv.v.i
pushenv [356]

:[355]
call.i scr_halt(argc=0)
popz.v

:[356]
popenv [355]
pushi.e 57
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[357]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [359]

:[358]
push.s "charjoined.ogg"@4170
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 0
pop.v.i global.fe
push.s "obj_elevatorcontroller_slash_Step_0_gml_774_0"@4171
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_elevatorcontroller_slash_Step_0_gml_775_0"@4172
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
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 59
pop.v.i self.con

:[359]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [361]

:[360]
call.i d_ex(argc=0)
conv.v.b
not.b
b [362]

:[361]
push.e 0

:[362]
bf [366]

:[363]
push.v self.s
conv.v.i
pushenv [365]

:[364]
pushi.e 6
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[365]
popenv [364]
pushi.e 60
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[366]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [368]

:[367]
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_play(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_volume(argc=3)
popz.v
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_elevatorcontroller_slash_Step_0_gml_798_0"@4173
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
pop.v.i [stacktop]self.side
pushi.e 62
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[368]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [376]

:[369]
pushglb.v global.plot
pushi.e 165
cmp.i.v LT
bf [371]

:[370]
pushi.e 165
pop.v.i global.plot

:[371]
pushi.e 5
pushenv [373]

:[372]
call.i instance_destroy(argc=0)
popz.v

:[373]
popenv [372]
pushi.e 6
pushenv [375]

:[374]
call.i instance_destroy(argc=0)
popz.v

:[375]
popenv [374]
call.i snd_free_all(argc=0)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 1
pushi.e -5
pushi.e 239
pop.v.i [array]global.flag
pushi.e 64
pop.v.i self.con

:[376]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [380]

:[377]
pushi.e 1
pop.v.i global.interact
push.v self.movecon
pushi.e 0
cmp.i.v EQ
bf [379]

:[378]
pushi.e 1
pop.v.i self.movecon

:[379]
pushi.e 101
pop.v.i self.con
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "elevator.ogg"@4124
conv.s.v
call.i snd_init(argc=1)
pop.v.v self.ele_noise
push.d 0.5
conv.d.v
push.d 0.7
conv.d.v
push.v self.ele_noise
call.i mus_loop_ext(argc=3)
pop.v.v self.ele_noise_ind
push.d 0.5
pop.v.d self.pitchcount
push.d 0.7
pop.v.d self.volcount
pushi.e 0
pop.v.i self.pitchtimer
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[380]
push.v self.con
pushi.e 101
cmp.i.v EQ
bf [388]

:[381]
pushi.e 1
pop.v.i global.interact
push.v self.pitchtimer
pushi.e 1
add.i.v
pop.v.v self.pitchtimer
push.v self.pitchtimer
pushi.e 10
cmp.i.v LT
bf [383]

:[382]
push.v self.pitchcount
push.d 0.04
add.d.v
pop.v.v self.pitchcount

:[383]
push.v self.pitchtimer
pushi.e 30
cmp.i.v GTE
bf [387]

:[384]
push.v self.pitchcount
pushi.e 0
cmp.i.v GT
bf [386]

:[385]
push.v self.pitchcount
push.d 0.08
sub.d.v
pop.v.v self.pitchcount

:[386]
push.v self.volcount
push.d 0.05
sub.d.v
pop.v.v self.volcount

:[387]
push.v self.pitchcount
push.v self.ele_noise_ind
call.i snd_pitch(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v self.volcount
push.v self.ele_noise_ind
call.i snd_volume(argc=3)
popz.v

:[388]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [end]

:[389]
push.v self.ele_noise
call.i snd_free(argc=1)
popz.v
pushi.e 0
pop.v.i self.con
push.v self.cno
pushi.e -5
pushi.e 239
pop.v.v [array]global.flag
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[end]