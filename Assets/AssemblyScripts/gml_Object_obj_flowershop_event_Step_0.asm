.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.con
pushi.e 50
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [78]

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i global.interact
push.d 1.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
push.d 1.1
cmp.d.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i global.interact

:[8]
push.v self.con
push.d 2.1
cmp.d.v EQ
bf [12]

:[9]
pushi.e 2
pop.v.i global.facing
pushi.e 839
conv.i.v
push.v 326.y
push.v 326.x
call.i scr_marker(argc=3)
pop.v.v self.k
push.v self.k
conv.v.i
pushenv [11]

:[10]
pushi.e -1
pop.v.i self.vspeed
push.d 0.1
pop.v.d self.image_speed

:[11]
popenv [10]
pushi.e 0
pop.v.i 326.visible
push.d 1.2
pop.v.d self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
push.d 2.2
cmp.d.v EQ
bf [16]

:[13]
push.v self.k
conv.v.i
push.v [stacktop]self.y
pop.v.v 326.y
pushi.e 1
pop.v.i 326.visible
push.v self.k
conv.v.i
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i global.fc
pushi.e 18
pop.v.i global.typer
push.s "obj_flowershop_event_slash_Step_0_gml_44_0"@3915
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowershop_event_slash_Step_0_gml_45_0"@3916
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_flowershop_event_slash_Step_0_gml_46_0"@3917
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_flowershop_event_slash_Step_0_gml_47_0"@3918
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 4
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[18]
push.v self.con
pushi.e 4
cmp.i.v EQ
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
push.d 0.25
pop.v.d self.image_speed
pushi.e 5
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [25]

:[24]
push.d 0.05
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 7
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_flowershop_event_slash_Step_0_gml_69_0"@3919
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

:[27]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [29]

:[28]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 10
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [34]

:[33]
call.i scr_halt(argc=0)
popz.v
pushi.e 273
pop.v.i self.sprite_index
push.d 11.1
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.con
push.d 12.1
cmp.d.v EQ
bf [36]

:[35]
pushi.e 270
pop.v.i self.sprite_index
pushi.e 13
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[36]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [38]

:[37]
pushi.e 10
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 0
pop.v.i global.msc
push.s "obj_flowershop_event_slash_Step_0_gml_100_0"@3920
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
pushi.e 15
pop.v.i self.con

:[38]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [40]

:[39]
call.i d_ex(argc=0)
conv.v.b
not.b
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 162
conv.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.exc
pushi.e 88
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 16
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[43]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [45]

:[44]
pushi.e 4
pop.v.i global.fe
push.s "obj_flowershop_event_slash_Step_0_gml_116_0"@3921
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 18
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[45]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [47]

:[46]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
pushi.e 270
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed
pushi.e 4
pop.v.i self.vspeed
pushi.e 19
pop.v.i self.con

:[50]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [53]

:[51]
push.v self.y
push.v 326.y
pushi.e 26
sub.i.v
cmp.v.v GTE
bf [53]

:[52]
pushi.e 0
pop.v.i self.vspeed
push.v 326.y
pushi.e 26
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i 326.visible
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 271
pop.v.i self.sprite_index
pushi.e 20
pop.v.i self.con
pushi.e 68
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[53]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1
pop.v.i 326.visible
pushi.e 270
pop.v.i self.sprite_index
pushi.e -2
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_index
push.d 21.1
pop.v.d self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[55]
push.v self.con
push.d 22.1
cmp.d.v EQ
bf [57]

:[56]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 22
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[57]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [59]

:[58]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i global.fe
push.s "obj_flowershop_event_slash_Step_0_gml_171_0"@3922
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowershop_event_slash_Step_0_gml_172_0"@3923
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
pushi.e 24
pop.v.i self.con

:[59]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [61]

:[60]
call.i d_ex(argc=0)
conv.v.b
not.b
b [62]

:[61]
push.e 0

:[62]
bf [64]

:[63]
pushi.e 273
pop.v.i self.sprite_index
pushi.e 25
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[64]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [66]

:[65]
pushi.e 275
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e -3
pop.v.i self.vspeed
pushi.e 27
pop.v.i self.con

:[66]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [69]

:[67]
push.v self.y
pushi.e 27
cmp.i.v LTE
bf [69]

:[68]
pushi.e 27
pop.v.i self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 28
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[69]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [71]

:[70]
pushi.e 273
pop.v.i self.sprite_index
pushi.e 30
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[71]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [73]

:[72]
pushi.e 270
pop.v.i self.sprite_index
pushi.e 1
pop.v.i global.fe
push.s "obj_flowershop_event_slash_Step_0_gml_216_0"@3924
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowershop_event_slash_Step_0_gml_217_0"@3925
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
pushi.e 32
pop.v.i self.con

:[73]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [75]

:[74]
call.i d_ex(argc=0)
conv.v.b
not.b
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.visible
pushi.e 83
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.asg
pushi.e 50
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 262
pop.v.i [array]global.flag

:[78]
push.v self.con
pushi.e 50
cmp.i.v GTE
bf [118]

:[79]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [87]

:[80]
push.v 326.y
pushi.e 180
cmp.i.v GTE
bf [82]

:[81]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [87]

:[84]
pushi.e 83
pushenv [86]

:[85]
call.i instance_destroy(argc=0)
popz.v

:[86]
popenv [85]
pushi.e 270
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i global.interact
pushi.e 180
pop.v.i 326.y
push.d 50.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 162
conv.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.exc
pushi.e 88
conv.i.v
call.i snd_play(argc=1)
popz.v

:[87]
push.v self.con
push.d 51.1
cmp.d.v EQ
bf [89]

:[88]
pushi.e 2
pop.v.i global.facing
pushi.e 18
pop.v.i global.typer
pushi.e 10
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
push.s "obj_flowershop_event_slash_Step_0_gml_260_0"@3927
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 52
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[89]
push.v self.con
pushi.e 52
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
pushi.e 53
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[94]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [96]

:[95]
pushi.e 270
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.vspeed
pushi.e 55
pop.v.i self.con

:[96]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [99]

:[97]
push.v self.y
push.v 326.y
pushi.e 34
sub.i.v
cmp.v.v GTE
bf [99]

:[98]
pushi.e 0
pop.v.i self.vspeed
push.v 326.y
pushi.e 34
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 57
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[99]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [101]

:[100]
pushi.e 6
pop.v.i global.fe
push.s "obj_flowershop_event_slash_Step_0_gml_297_0"@3928
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
call.i scr_noface(argc=1)
popz.v
pushi.e 97
pushi.e -5
pushi.e 0
pop.v.i [array]global.writersnd
push.s "obj_flowershop_event_slash_Step_0_gml_300_0"@3929
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
pushi.e -5
pushi.e 262
pop.v.i [array]global.flag
pushi.e 4
conv.i.v
call.i scr_litemget(argc=1)
popz.v
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

:[101]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [103]

:[102]
call.i d_ex(argc=0)
conv.v.b
not.b
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e -3
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 60
pop.v.i self.con

:[106]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [108]

:[107]
push.v self.y
push.v self.ystart
cmp.v.v LTE
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
push.v self.ystart
pop.v.v self.y
call.i scr_halt(argc=0)
popz.v
pushi.e 61
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[111]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [113]

:[112]
pushi.e 18
pop.v.i global.typer
pushi.e 10
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_flowershop_event_slash_Step_0_gml_327_0"@3930
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
pushi.e 63
pop.v.i self.con

:[113]
push.v self.con
pushi.e 63
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
bf [118]

:[117]
pushi.e 83
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.asg
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.visible
pushi.e 70
pop.v.i self.con

:[118]
pushi.e 326
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[119]
push.v 326.x
pushi.e -5
pushi.e 264
pop.v.v [array]global.flag

:[end]