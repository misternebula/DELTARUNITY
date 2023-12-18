.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 280
cmp.i.v GTE
bf [3]

:[2]
push.v 326.y
pushi.e 535
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
pushi.e 816
conv.i.v
pushi.e 602
conv.i.v
pushi.e 873
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.darksus
push.d 0.2
push.v self.darksus
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.darksus
conv.v.i
pushenv [7]

:[6]
call.i scr_depth(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 720
conv.i.v
pushi.e 1116
conv.i.v
pushi.e 602
conv.i.v
pushi.e 873
conv.i.v
call.i point_distance(argc=4)
pushi.e 15
conv.i.d
div.d.v
pop.v.v self.suspeed
push.v self.suspeed
push.v self.darksus
conv.v.i
pop.v.v [stacktop]self.speed
pushi.e 720
conv.i.v
pushi.e 1116
conv.i.v
push.v self.darksus
conv.v.i
push.v [stacktop]self.y
push.v self.darksus
conv.v.i
push.v [stacktop]self.x
call.i point_direction(argc=4)
push.v self.darksus
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 2
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [12]

:[9]
push.v self.darksus
conv.v.i
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
pushi.e 4
pop.v.i self.con

:[12]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [15]

:[13]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 540
cmp.i.v GTE
bf [15]

:[14]
push.v 326.y
pushi.e 535
cmp.i.v GT
b [16]

:[15]
push.e 0

:[16]
bf [20]

:[17]
pushi.e 816
conv.i.v
pushi.e 720
conv.i.v
pushi.e 1116
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.darksus2
push.d 0.2
push.v self.darksus2
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.darksus2
conv.v.i
pushenv [19]

:[18]
call.i scr_depth(argc=0)
popz.v

:[19]
popenv [18]
pushi.e 643
conv.i.v
pushi.e 1348
conv.i.v
pushi.e 720
conv.i.v
pushi.e 1116
conv.i.v
call.i point_distance(argc=4)
pushi.e 15
conv.i.d
div.d.v
pop.v.v self.suspeed
push.v self.suspeed
push.v self.darksus2
conv.v.i
pop.v.v [stacktop]self.speed
pushi.e 643
conv.i.v
pushi.e 1348
conv.i.v
push.v self.darksus2
conv.v.i
push.v [stacktop]self.y
push.v self.darksus2
conv.v.i
push.v [stacktop]self.x
call.i point_direction(argc=4)
push.v self.darksus2
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 5
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[20]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [24]

:[21]
push.v self.darksus
conv.v.i
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
pushi.e 6
pop.v.i self.con

:[24]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [28]

:[25]
push.v self.s
conv.v.i
pushenv [27]

:[26]
pushi.e 0
pop.v.i self.hspeed

:[27]
popenv [26]
pushi.e 12
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i global.fc
pushi.e 7
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_dustpile_susie_slash_Step_0_gml_57_0"@6592
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
pushi.e 14
pop.v.i self.con

:[30]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [32]

:[31]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 15
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[35]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [37]

:[36]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[37]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [41]

:[38]
push.v self.s
conv.v.i
pushenv [40]

:[39]
pushi.e 180
pop.v.i self.sprite_index

:[40]
popenv [39]
pushi.e 6
pop.v.i global.fe
push.s "obj_dustpile_susie_slash_Step_0_gml_78_0"@6593
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dustpile_susie_slash_Step_0_gml_79_0"@6594
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dustpile_susie_slash_Step_0_gml_80_0"@6595
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dustpile_susie_slash_Step_0_gml_81_0"@6596
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dustpile_susie_slash_Step_0_gml_82_0"@6597
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
pushi.e 17
pop.v.i self.con

:[41]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [43]

:[42]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [48]

:[45]
push.v self.s
conv.v.i
pushenv [47]

:[46]
pushi.e 183
pop.v.i self.sprite_index

:[47]
popenv [46]
pushi.e 18
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[48]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [52]

:[49]
push.v self.s
conv.v.i
pushenv [51]

:[50]
pushi.e 190
pop.v.i self.sprite_index

:[51]
popenv [50]
pushi.e 20
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[52]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [54]

:[53]
pushi.e 6
pop.v.i global.fe
push.s "obj_dustpile_susie_slash_Step_0_gml_104_0"@6598
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
pushi.e 22
pop.v.i self.con

:[54]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [56]

:[55]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
pushi.e 23
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[59]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [63]

:[60]
push.v self.s
conv.v.i
pushenv [62]

:[61]
pushi.e 180
pop.v.i self.sprite_index

:[62]
popenv [61]
pushi.e 7
pop.v.i global.fe
push.s "obj_dustpile_susie_slash_Step_0_gml_119_0"@6599
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

:[63]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [65]

:[64]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [70]

:[67]
push.v self.s
conv.v.i
pushenv [69]

:[68]
pushi.e -4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[69]
popenv [68]
pushi.e 26
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[70]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [72]

:[71]
push.v self.s
conv.v.i
push.v [stacktop]self.x
pop.v.v self.thisremx
push.v self.s
conv.v.i
push.v [stacktop]self.y
pop.v.v self.thisremy
push.v self.partysus
conv.v.i
push.v [stacktop]self.y
push.v self.partysus
conv.v.i
push.v [stacktop]self.x
push.v self.s
conv.v.i
push.v [stacktop]self.y
push.v self.s
conv.v.i
push.v [stacktop]self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
push.v self.s
conv.v.i
pop.v.v [stacktop]self.speed
push.v self.partysus
conv.v.i
push.v [stacktop]self.y
push.v self.partysus
conv.v.i
push.v [stacktop]self.x
push.v self.s
conv.v.i
push.v [stacktop]self.y
push.v self.s
conv.v.i
push.v [stacktop]self.x
call.i point_direction(argc=4)
push.v self.s
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 28
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[72]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [78]

:[73]
push.v self.s
conv.v.i
pushenv [75]

:[74]
call.i instance_destroy(argc=0)
popz.v

:[75]
popenv [74]
push.v self.partysus
conv.v.i
pushenv [77]

:[76]
pushi.e 1
pop.v.i self.visible

:[77]
popenv [76]
pushi.e 30
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[78]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [80]

:[79]
pushi.e 1
pop.v.i global.fe
push.s "obj_dustpile_susie_slash_Step_0_gml_156_0"@6602
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i scr_getchar(argc=1)
popz.v
pushi.e 32
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[80]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [82]

:[81]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
push.v self.y
pushi.e 200
sub.i.v
pop.v.v self.y
pushi.e 33
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.speedtimer

:[85]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [87]

:[86]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [96]

:[89]
push.v self.speedtimer
pushi.e 1
add.i.v
pop.v.v self.speedtimer
push.v 326.x
pushi.e 560
cmp.i.v LT
bf [91]

:[90]
pushi.e 2
pushi.e -5
pushi.e 202
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 34
pop.v.i self.con
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.s "obj_dustpile_susie_slash_Step_0_gml_182_0"@6604
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

:[91]
push.v 326.x
pushi.e 1760
cmp.i.v GT
bf [96]

:[92]
pushi.e 1
pop.v.i global.interact
pushi.e 35
pop.v.i self.con
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.v self.speedtimer
pushi.e 80
cmp.i.v LT
bf [94]

:[93]
pushi.e 1
pushi.e -5
pushi.e 202
pop.v.i [array]global.flag
push.s "obj_dustpile_susie_slash_Step_0_gml_197_0"@6605
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [95]

:[94]
push.s "obj_dustpile_susie_slash_Step_0_gml_201_0"@6606
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[95]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[96]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [98]

:[97]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [105]

:[100]
push.v self.partysus
conv.v.i
pushenv [102]

:[101]
pushi.e 0
pop.v.i self.visible

:[102]
popenv [101]
pushi.e 183
conv.i.v
push.v self.partysus
conv.v.i
push.v [stacktop]self.y
push.v self.partysus
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.news
push.v self.news
conv.v.i
pushenv [104]

:[103]
pushi.e 14
conv.i.v
pushi.e 660
conv.i.v
pushi.e 940
conv.i.v
call.i move_towards_point(argc=3)
popz.v
push.d 0.334
pop.v.d self.image_speed

:[104]
popenv [103]
pushi.e 39
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[105]
push.v self.con
pushi.e 35
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
bf [114]

:[109]
push.v self.partysus
conv.v.i
pushenv [111]

:[110]
pushi.e 0
pop.v.i self.visible

:[111]
popenv [110]
pushi.e 183
conv.i.v
push.v self.partysus
conv.v.i
push.v [stacktop]self.y
push.v self.partysus
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.news
push.v self.news
conv.v.i
pushenv [113]

:[112]
pushi.e 14
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[113]
popenv [112]
pushi.e 39
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[114]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [end]

:[115]
call.i scr_losechar(argc=0)
popz.v
pushi.e 0
pop.v.i global.facing
pushglb.v global.plot
pushi.e 14
cmp.i.v LT
bf [117]

:[116]
pushi.e 14
pop.v.i global.plot

:[117]
pushi.e 0
pop.v.i global.interact
push.v self.news
conv.v.i
pushenv [119]

:[118]
call.i instance_destroy(argc=0)
popz.v

:[119]
popenv [118]
pushi.e 41
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]