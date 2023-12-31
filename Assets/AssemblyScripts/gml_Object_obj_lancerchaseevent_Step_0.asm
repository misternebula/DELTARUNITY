.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v 326.x
pushi.e 1060
cmp.i.v GTE
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
pushi.e 1
pushi.e -5
pushi.e 7
pop.v.i [array]global.flag
pushi.e 326
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.cutscene

:[7]
popenv [6]
pushi.e 1
pop.v.i global.interact
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [14]

:[9]
pushi.e 1
pop.v.i global.facing
push.v self.susie
conv.v.i
pushenv [11]

:[10]
pushi.e 180
pop.v.i self.sprite_index

:[11]
popenv [10]
push.s "obj_lancerchaseevent_slash_Step_0_gml_16_0"@5253
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerchaseevent_slash_Step_0_gml_17_0"@5254
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 4
pop.v.i self.con
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
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.side

:[13]
popenv [12]

:[14]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [16]

:[15]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [21]

:[18]
pushi.e 711
conv.i.v
pushi.e 370
conv.i.v
pushi.e 1150
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.lancer
pushi.e 2
pop.v.i global.facing
push.v self.susie
conv.v.i
pushenv [20]

:[19]
pushi.e 190
pop.v.i self.sprite_index

:[20]
popenv [19]
pushi.e 40
conv.i.v
pushi.e -8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 5
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [23]

:[22]
pushi.e 7
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [30]

:[24]
push.v self.lancer
conv.v.i
pushenv [26]

:[25]
pushi.e 1
pop.v.i self.image_index

:[26]
popenv [25]
pushi.e 89
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 679
conv.i.v
push.v self.lancer
conv.v.i
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.lancer
conv.v.i
push.v [stacktop]self.x
pushi.e 120
add.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.b
pushi.e 679
conv.i.v
push.v self.lancer
conv.v.i
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.lancer
conv.v.i
push.v [stacktop]self.x
pushi.e 160
sub.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.b
pushi.e 0
pop.v.i self.i

:[27]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [29]

:[28]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.b
conv.v.i
pop.v.i [stacktop]self.image_alpha
push.v self.susie
conv.v.i
push.v [stacktop]self.y
pushi.e 30
add.i.v
push.v self.susie
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.b
conv.v.i
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.b
conv.v.i
push.v [stacktop]self.x
call.i point_direction(argc=4)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.bdir
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bdir
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.b
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bdir
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.b
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e -4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.b
conv.v.i
pop.v.i [stacktop]self.speed
push.d 0.12
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.b
conv.v.i
pop.v.d [stacktop]self.friction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [27]

:[29]
pushi.e 9
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [36]

:[31]
pushi.e -1
pushi.e 0
push.v [array]self.b
conv.v.i
pushenv [33]

:[32]
push.v self.image_alpha
push.d 0.04
add.d.v
pop.v.v self.image_alpha

:[33]
popenv [32]
pushi.e -1
pushi.e 1
push.v [array]self.b
conv.v.i
pushenv [35]

:[34]
push.v self.image_alpha
push.d 0.04
add.d.v
pop.v.v self.image_alpha

:[35]
popenv [34]

:[36]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [48]

:[37]
push.v self.lancer
conv.v.i
pushenv [39]

:[38]
pushi.e 0
pop.v.i self.image_index

:[39]
popenv [38]
pushi.e 85
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.aftercon
pushi.e -1
pushi.e 0
push.v [array]self.b
conv.v.i
pushenv [41]

:[40]
pushi.e 22
pop.v.i self.speed

:[41]
popenv [40]
pushi.e -1
pushi.e 1
push.v [array]self.b
conv.v.i
pushenv [43]

:[42]
pushi.e 22
pop.v.i self.speed

:[43]
popenv [42]
pushi.e -1
pushi.e 0
push.v [array]self.b
conv.v.i
pushenv [45]

:[44]
pushi.e -1
pop.v.i self.friction

:[45]
popenv [44]
pushi.e -1
pushi.e 1
push.v [array]self.b
conv.v.i
pushenv [47]

:[46]
pushi.e -1
pop.v.i self.friction

:[47]
popenv [46]
pushi.e 10
conv.i.v
pushi.e 31
conv.i.v
pushi.e 0
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 11
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[48]
push.v self.aftercon
pushi.e 1
cmp.i.v EQ
bf [54]

:[49]
pushi.e -1
pushi.e 0
push.v [array]self.b
conv.v.i
pushenv [51]

:[50]
call.i scr_afterimage(argc=0)
pop.v.v self.a
push.d 0.6
push.v self.a
conv.v.i
pop.v.d [stacktop]self.image_alpha

:[51]
popenv [50]
pushi.e -1
pushi.e 1
push.v [array]self.b
conv.v.i
pushenv [53]

:[52]
call.i scr_afterimage(argc=0)
pop.v.v self.a
push.d 0.6
push.v self.a
conv.v.i
pop.v.d [stacktop]self.image_alpha

:[53]
popenv [52]

:[54]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [57]

:[55]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushbltn.v self.room_height
pushi.e 480
sub.i.v
cmp.v.v GTE
bf [57]

:[56]
pushbltn.v self.room_height
pushi.e 480
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v

:[57]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [61]

:[58]
push.v self.susie
conv.v.i
pushenv [60]

:[59]
pushi.e 16
pop.v.i self.hspeed
pushi.e 193
pop.v.i self.sprite_index

:[60]
popenv [59]
pushi.e 13
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[61]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [65]

:[62]
push.v self.susie
conv.v.i
pushenv [64]

:[63]
pushi.e 0
pop.v.i self.hspeed

:[64]
popenv [63]
push.d 14.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[65]
push.v self.con
push.d 15.1
cmp.d.v EQ
bf [69]

:[66]
push.v self.susie
conv.v.i
pushenv [68]

:[67]
pushi.e 182
pop.v.i self.sprite_index

:[68]
popenv [67]
pushi.e 5
conv.i.v
pushi.e 326
conv.i.v
call.i scr_pan_to_obj(argc=2)
popz.v
push.d 14.2
pop.v.d self.con
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[69]
push.v self.con
push.d 15.2
cmp.d.v EQ
bf [75]

:[70]
pushi.e 136
pushenv [72]

:[71]
call.i instance_destroy(argc=0)
popz.v

:[72]
popenv [71]
pushi.e 326
pushenv [74]

:[73]
pushi.e 0
pop.v.i self.cutscene

:[74]
popenv [73]
pushi.e 15
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[75]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [77]

:[76]
pushi.e 0
pop.v.i self.aftercon
pushi.e 9
pop.v.i global.fe
push.s "obj_lancerchaseevent_slash_Step_0_gml_137_0"@5258
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
pushi.e 17
pop.v.i self.con

:[77]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [79]

:[78]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [86]

:[81]
push.v self.susie
conv.v.i
pushenv [83]

:[82]
pushi.e 185
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed
pushi.e 14
pop.v.i self.hspeed

:[83]
popenv [82]
pushi.e 0
pop.v.i global.interact
pushi.e 18
pop.v.i self.con
pushi.e 326
pushenv [85]

:[84]
pushi.e 0
pop.v.i self.cutscene
pushi.e 1
pop.v.i self.autorun

:[85]
popenv [84]
push.s "creepychase.ogg"@4850
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
pushi.e 181
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[86]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [end]

:[87]
pushi.e 20
pop.v.i self.con

:[end]