.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[1]
push.v 326.x
pushi.e 140
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
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
pop.v.v self.r
push.v self.r
conv.v.i
pushenv [7]

:[6]
push.v self.rsprite
pop.v.v self.sprite_index
pushi.e 1
pop.v.i self.fun

:[7]
popenv [6]
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
push.s "obj_suitspuzzle_event_slash_Step_0_gml_16_0"@4647
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_suitspuzzle_event_slash_Step_0_gml_18_0"@4648
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
push.s "obj_suitspuzzle_event_slash_Step_0_gml_20_0"@4649
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
pushi.e 2
pop.v.i self.con

:[8]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
call.i d_ex(argc=0)
conv.v.b
not.b
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
pushi.e 162
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.exc
pushi.e 3
pop.v.i self.con
push.v self.s
conv.v.i
pushenv [14]

:[13]
pushi.e 180
pop.v.i self.sprite_index

:[14]
popenv [13]
pushi.e 220
pop.v.i self.sprite_index
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[15]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [17]

:[16]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
push.s "obj_suitspuzzle_event_slash_Step_0_gml_41_0"@4650
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_suitspuzzle_event_slash_Step_0_gml_43_0"@4651
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_suitspuzzle_event_slash_Step_0_gml_45_0"@4652
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
push.s "obj_suitspuzzle_event_slash_Step_0_gml_47_0"@4653
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
push.s "obj_suitspuzzle_event_slash_Step_0_gml_49_0"@4654
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
pushi.e 5
pop.v.i self.con

:[17]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
call.i d_ex(argc=0)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [26]

:[21]
push.v self.r
conv.v.i
pushenv [23]

:[22]
pushi.e 206
pop.v.i self.sprite_index

:[23]
popenv [22]
push.v self.s
conv.v.i
pushenv [25]

:[24]
pushi.e 190
pop.v.i self.sprite_index

:[25]
popenv [24]
pushi.e 214
pop.v.i self.sprite_index
pushi.e 6
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [32]

:[27]
push.v self.r
conv.v.i
pushenv [29]

:[28]
pushi.e 209
pop.v.i self.sprite_index

:[29]
popenv [28]
push.v self.s
conv.v.i
pushenv [31]

:[30]
pushi.e 180
pop.v.i self.sprite_index

:[31]
popenv [30]
pushi.e 220
pop.v.i self.sprite_index
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_suitspuzzle_event_slash_Step_0_gml_71_0"@4655
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
push.s "obj_suitspuzzle_event_slash_Step_0_gml_73_0"@4656
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
push.s "obj_suitspuzzle_event_slash_Step_0_gml_75_0"@4657
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
push.s "obj_suitspuzzle_event_slash_Step_0_gml_77_0"@4658
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_suitspuzzle_event_slash_Step_0_gml_78_0"@4659
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
push.s "obj_suitspuzzle_event_slash_Step_0_gml_80_0"@4660
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_suitspuzzle_event_slash_Step_0_gml_82_0"@4661
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_suitspuzzle_event_slash_Step_0_gml_83_0"@4662
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
pushi.e 8
pop.v.i self.con

:[32]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [34]

:[33]
call.i d_ex(argc=0)
conv.v.b
not.b
b [35]

:[34]
push.e 0

:[35]
bf [45]

:[36]
pushi.e 0
pop.v.i global.facing
push.v self.r
conv.v.i
pushenv [38]

:[37]
pushi.e 0
pop.v.i self.fun

:[38]
popenv [37]
pushi.e 0
pop.v.i self.visible
push.v self.s
conv.v.i
pushenv [40]

:[39]
pushi.e 0
pop.v.i self.visible

:[40]
popenv [39]
pushi.e 83
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.lnpc
push.v self.lnpc
conv.v.i
pushenv [42]

:[41]
pushi.e 211
pop.v.i self.dtsprite
pushi.e 216
pop.v.i self.rtsprite
pushi.e 220
pop.v.i self.ltsprite
pushi.e 214
pop.v.i self.utsprite
push.v self.dtsprite
pop.v.v self.sprite_index
push.v self.y
pushi.e 100
add.i.v
pop.v.v self.y

:[42]
popenv [41]
pushi.e 83
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
push.v self.s
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.snpc
push.v self.snpc
conv.v.i
pushenv [44]

:[43]
pushi.e 188
pop.v.i self.dtsprite
pushi.e 184
pop.v.i self.rtsprite
pushi.e 181
pop.v.i self.ltsprite
pushi.e 192
pop.v.i self.utsprite
push.v self.dtsprite
pop.v.v self.sprite_index
push.v self.y
pushi.e 100
add.i.v
pop.v.v self.y

:[44]
popenv [43]
pushi.e 0
pop.v.i global.interact
pushi.e 9
pop.v.i self.con

:[45]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [48]

:[46]
push.v 326.x
pushi.e 40
cmp.i.v LT
bf [48]

:[47]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [56]

:[50]
pushi.e 1
pop.v.i global.facing
pushi.e 326
pushenv [52]

:[51]
pushi.e 32
pop.v.i self.x

:[52]
popenv [51]
pushi.e 1
pop.v.i global.interact
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_suitspuzzle_event_slash_Step_0_gml_133_0"@4663
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [55]

:[54]
push.s "obj_suitspuzzle_event_slash_Step_0_gml_137_0"@4664
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 10
pop.v.i self.con

:[56]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [58]

:[57]
call.i d_ex(argc=0)
conv.v.b
not.b
b [59]

:[58]
push.e 0

:[59]
bf [63]

:[60]
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked
pushi.e 326
pushenv [62]

:[61]
pushi.e 32
pop.v.i self.x

:[62]
popenv [61]
pushi.e 0
pop.v.i global.interact
pushi.e 9
pop.v.i self.con

:[63]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [65]

:[64]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [85]

:[67]
push.v 217.won
pushi.e 1
cmp.i.v EQ
bf [85]

:[68]
pushi.e 1
pop.v.i global.facing
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [70]

:[69]
pushi.e 1
pop.v.i self.fun
push.v self.rsprite
pop.v.v self.sprite_index

:[70]
popenv [69]
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
pushi.e 1
pop.v.i global.interact
push.v self.block
conv.v.i
pushenv [72]

:[71]
call.i instance_destroy(argc=0)
popz.v

:[72]
popenv [71]
pushi.e -1
pushi.e 0
push.v [array]self.spike
conv.v.i
pushenv [74]

:[73]
pushi.e 1
pop.v.i self.image_index

:[74]
popenv [73]
pushi.e -1
pushi.e 1
push.v [array]self.spike
conv.v.i
pushenv [76]

:[75]
pushi.e 1
pop.v.i self.image_index

:[76]
popenv [75]
pushi.e -1
pushi.e 2
push.v [array]self.spike
conv.v.i
pushenv [78]

:[77]
pushi.e 1
pop.v.i self.image_index

:[78]
popenv [77]
pushi.e 11
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
push.v self.s
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1
pop.v.i self.visible
pushi.e 216
pop.v.i self.sprite_index
push.v self.s
conv.v.i
pushenv [80]

:[79]
pushi.e 183
pop.v.i self.sprite_index

:[80]
popenv [79]
push.v self.snpc
conv.v.i
pushenv [82]

:[81]
call.i instance_destroy(argc=0)
popz.v

:[82]
popenv [81]
push.v self.lnpc
conv.v.i
pushenv [84]

:[83]
call.i instance_destroy(argc=0)
popz.v

:[84]
popenv [83]

:[85]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [89]

:[86]
push.v self.s
conv.v.i
pushenv [88]

:[87]
pushi.e 180
pop.v.i self.sprite_index

:[88]
popenv [87]
pushi.e 220
pop.v.i self.sprite_index
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_suitspuzzle_event_slash_Step_0_gml_189_0"@4665
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
pushi.e 13
pop.v.i self.con

:[89]
push.v self.con
pushi.e 13
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
bf [96]

:[93]
pushi.e 2
pop.v.i global.fe
push.v self.s
conv.v.i
pushenv [95]

:[94]
pushi.e 183
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 14
pop.v.i self.hspeed

:[95]
popenv [94]
pushi.e 216
pop.v.i self.sprite_index
pushi.e 14
pop.v.i self.hspeed
push.s "obj_suitspuzzle_event_slash_Step_0_gml_200_0"@4666
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
push.s "obj_suitspuzzle_event_slash_Step_0_gml_202_0"@4667
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
pushi.e 14
pop.v.i self.con

:[96]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [98]

:[97]
call.i d_ex(argc=0)
conv.v.b
not.b
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
pushi.e 15
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[101]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [105]

:[102]
push.v self.s
conv.v.i
pushenv [104]

:[103]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
add.v.v
pop.v.v self.x
pushi.e 180
pop.v.i self.sprite_index
pushi.e -12
pop.v.i self.hspeed

:[104]
popenv [103]
pushi.e -12
pop.v.i self.hspeed
pushi.e 220
pop.v.i self.sprite_index
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
add.v.v
pushi.e 50
add.i.v
pop.v.v self.x
pushi.e 17
pop.v.i self.con

:[105]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [110]

:[106]
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 380
cmp.i.v LTE
bf [110]

:[107]
push.v self.s
conv.v.i
pushenv [109]

:[108]
call.i scr_halt(argc=0)
popz.v

:[109]
popenv [108]
call.i scr_halt(argc=0)
popz.v
pushi.e 18
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[110]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [114]

:[111]
push.v self.s
conv.v.i
pushenv [113]

:[112]
pushi.e 190
pop.v.i self.sprite_index

:[113]
popenv [112]
pushi.e 214
pop.v.i self.sprite_index
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_suitspuzzle_event_slash_Step_0_gml_247_0"@4668
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

:[114]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [116]

:[115]
call.i d_ex(argc=0)
conv.v.b
not.b
b [117]

:[116]
push.e 0

:[117]
bf [123]

:[118]
push.v self.s
conv.v.i
pushenv [120]

:[119]
pushi.e 183
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 12
pop.v.i self.hspeed

:[120]
popenv [119]
pushi.e 216
pop.v.i self.sprite_index
pushi.e 12
pop.v.i self.hspeed
push.v self.easel
conv.v.i
pushenv [122]

:[121]
pushi.e 12
pop.v.i self.hspeed

:[122]
popenv [121]
pushi.e 21
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[123]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [end]

:[124]
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [126]

:[125]
pushi.e 0
pop.v.i self.fun

:[126]
popenv [125]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 72
pop.v.i global.plot
pushi.e 23
pop.v.i self.con

:[end]