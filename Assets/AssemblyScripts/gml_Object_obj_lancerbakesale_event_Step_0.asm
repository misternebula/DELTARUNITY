.localvar 0 arguments

:[0]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [2]

:[1]
call.i d_ex(argc=0)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [9]

:[4]
push.v self.s
conv.v.i
pushenv [6]

:[5]
pushi.e 183
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed
pushi.e 12
pop.v.i self.hspeed

:[6]
popenv [5]
push.v self.l
conv.v.i
pushenv [8]

:[7]
pushi.e 216
pop.v.i self.sprite_index
pushi.e 12
pop.v.i self.hspeed

:[8]
popenv [7]
pushi.e 11
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i global.interact

:[11]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [17]

:[12]
push.v self.s
conv.v.i
pushenv [14]

:[13]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 140
sub.i.v
pop.v.v self.x
pushi.e 12
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
push.v self.y
pushi.e 90
add.i.v
pop.v.v self.y
pushi.e 183
pop.v.i self.sprite_index
call.i scr_depth(argc=0)
popz.v

:[14]
popenv [13]
push.v self.l
conv.v.i
pushenv [16]

:[15]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 100
sub.i.v
pop.v.v self.x
pushi.e 12
pop.v.i self.hspeed
push.v self.y
pushi.e 90
add.i.v
pop.v.v self.y
pushi.e 216
pop.v.i self.sprite_index
call.i scr_depth(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 15
pop.v.i self.con
pushi.e 29
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [25]

:[18]
push.v self.s
conv.v.i
pushenv [20]

:[19]
call.i scr_halt(argc=0)
popz.v
pushi.e 190
pop.v.i self.sprite_index

:[20]
popenv [19]
push.v self.l
conv.v.i
pushenv [22]

:[21]
call.i scr_halt(argc=0)
popz.v
pushi.e 214
pop.v.i self.sprite_index

:[22]
popenv [21]
pushi.e 3
pop.v.i global.facing
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [24]

:[23]
pushi.e 1
pop.v.i self.fun
push.v self.lsprite
pop.v.v self.sprite_index

:[24]
popenv [23]
pushi.e 26
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [31]

:[26]
push.v self.s
conv.v.i
pushenv [28]

:[27]
pushi.e 183
pop.v.i self.sprite_index

:[28]
popenv [27]
push.v self.l
conv.v.i
pushenv [30]

:[29]
pushi.e 220
pop.v.i self.sprite_index

:[30]
popenv [29]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_lancerbakesale_event_slash_Step_0_gml_80_0"@4178
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerbakesale_event_slash_Step_0_gml_82_0"@4179
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 19
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[31]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [33]

:[32]
call.i d_ex(argc=0)
conv.v.b
not.b
b [34]

:[33]
push.e 0

:[34]
bf [40]

:[35]
push.v self.l
conv.v.i
pushenv [37]

:[36]
pushi.e 214
pop.v.i self.sprite_index

:[37]
popenv [36]
push.v self.s
conv.v.i
pushenv [39]

:[38]
pushi.e 190
pop.v.i self.sprite_index

:[39]
popenv [38]
pushi.e 20
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[40]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [46]

:[41]
push.v self.l
conv.v.i
pushenv [43]

:[42]
pushi.e 220
pop.v.i self.sprite_index

:[43]
popenv [42]
push.v self.s
conv.v.i
pushenv [45]

:[44]
pushi.e 183
pop.v.i self.sprite_index

:[45]
popenv [44]
pushi.e 32
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
push.s "obj_lancerbakesale_event_slash_Step_0_gml_103_0"@4180
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
push.s "obj_lancerbakesale_event_slash_Step_0_gml_105_0"@4181
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lancerbakesale_event_slash_Step_0_gml_106_0"@4182
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
push.s "obj_lancerbakesale_event_slash_Step_0_gml_108_0"@4183
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lancerbakesale_event_slash_Step_0_gml_109_0"@4184
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
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

:[46]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [48]

:[47]
call.i d_ex(argc=0)
conv.v.b
not.b
b [49]

:[48]
push.e 0

:[49]
bf [55]

:[50]
push.v self.s
conv.v.i
pushenv [52]

:[51]
pushi.e 13
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 183
pop.v.i self.sprite_index

:[52]
popenv [51]
push.v self.l
conv.v.i
pushenv [54]

:[53]
pushi.e 13
pop.v.i self.hspeed
pushi.e 216
pop.v.i self.sprite_index

:[54]
popenv [53]
pushi.e 26
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[55]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [61]

:[56]
push.v self.s
conv.v.i
pushenv [58]

:[57]
call.i scr_halt(argc=0)
popz.v
pushi.e 190
pop.v.i self.sprite_index
pushi.e -10
pop.v.i self.vspeed

:[58]
popenv [57]
push.v self.l
conv.v.i
pushenv [60]

:[59]
call.i scr_halt(argc=0)
popz.v
pushi.e 214
pop.v.i self.sprite_index
pushi.e -10
pop.v.i self.vspeed

:[60]
popenv [59]
pushi.e 28
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[61]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [67]

:[62]
push.v self.s
conv.v.i
pushenv [64]

:[63]
call.i scr_halt(argc=0)
popz.v

:[64]
popenv [63]
push.v self.l
conv.v.i
pushenv [66]

:[65]
call.i scr_halt(argc=0)
popz.v

:[66]
popenv [65]
pushi.e 30
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[67]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [73]

:[68]
push.v self.s
conv.v.i
pushenv [70]

:[69]
pushi.e 187
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 12
pop.v.i self.vspeed

:[70]
popenv [69]
push.v self.l
conv.v.i
pushenv [72]

:[71]
pushi.e 211
pop.v.i self.sprite_index
pushi.e 12
pop.v.i self.vspeed

:[72]
popenv [71]
pushi.e 33
pop.v.i self.con
pushi.e 7
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[73]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [79]

:[74]
push.v self.s
conv.v.i
pushenv [76]

:[75]
call.i scr_halt(argc=0)
popz.v

:[76]
popenv [75]
push.v self.l
conv.v.i
pushenv [78]

:[77]
call.i scr_halt(argc=0)
popz.v

:[78]
popenv [77]
pushi.e 35
pop.v.i self.con

:[79]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [81]

:[80]
call.i d_ex(argc=0)
conv.v.b
not.b
b [82]

:[81]
push.e 0

:[82]
bf [96]

:[83]
pushi.e 83
conv.i.v
push.v self.l
conv.v.i
push.v [stacktop]self.y
pushi.e 108
add.i.v
push.v self.l
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.lnpc
push.v self.lnpc
conv.v.i
pushenv [85]

:[84]
pushi.e 0
pop.v.i self.dfacing
pushi.e 211
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.dtsprite
push.v self.sprite_index
pop.v.v self.rtsprite
push.v self.sprite_index
pop.v.v self.ltsprite
push.v self.sprite_index
pop.v.v self.utsprite

:[85]
popenv [84]
pushi.e 83
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 108
add.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.snpc
push.v self.snpc
conv.v.i
pushenv [87]

:[86]
pushi.e 1
pop.v.i self.dfacing
pushi.e 183
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.dtsprite
push.v self.sprite_index
pop.v.v self.rtsprite
push.v self.sprite_index
pop.v.v self.ltsprite
push.v self.sprite_index
pop.v.v self.utsprite

:[87]
popenv [86]
pushi.e 36
pop.v.i self.con
pushglb.v global.plot
pushi.e 80
cmp.i.v LT
bf [89]

:[88]
pushi.e 80
pop.v.i global.plot

:[89]
pushi.e 1
pushi.e -5
pushi.e 238
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [91]

:[90]
pushi.e 0
pop.v.i self.fun

:[91]
popenv [90]
push.v self.s
conv.v.i
pushenv [93]

:[92]
call.i instance_destroy(argc=0)
popz.v

:[93]
popenv [92]
push.v self.l
conv.v.i
pushenv [95]

:[94]
call.i instance_destroy(argc=0)
popz.v

:[95]
popenv [94]

:[96]
push.v self.con
pushi.e 4000
cmp.i.v EQ
bf [102]

:[97]
push.v 326.x
pushbltn.v self.room_width
pushi.e 80
sub.i.v
cmp.v.v GTE
bf [99]

:[98]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
push.v 326.x
pushi.e 10
sub.i.v
pop.v.v 326.x
pushi.e 3
pop.v.i global.facing
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 7
pop.v.i global.fe
push.s "obj_lancerbakesale_event_slash_Step_0_gml_237_0"@4187
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_lancerbakesale_event_slash_Step_0_gml_239_0"@4188
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_lancerbakesale_event_slash_Step_0_gml_241_0"@4189
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
pop.v.i global.interact
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

:[102]
push.v self.con
pushi.e 4002
cmp.i.v EQ
bf [104]

:[103]
call.i d_ex(argc=0)
conv.v.b
not.b
b [105]

:[104]
push.e 0

:[105]
bf [end]

:[106]
pushi.e 4000
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[end]