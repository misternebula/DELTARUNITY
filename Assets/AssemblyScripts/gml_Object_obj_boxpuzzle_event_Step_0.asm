.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 183
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
push.v 326.x
pushi.e 100
sub.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.sus
pushi.e 209
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
push.v 326.x
pushi.e 50
sub.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.ral
pushi.e 829
conv.i.v
push.v 326.y
push.v 326.x
call.i scr_dark_marker(argc=3)
pop.v.v self.k
pushi.e 165
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 326
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
pushi.e 78
pushenv [7]

:[6]
pushi.e 4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[7]
popenv [6]
pushi.e 2
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i global.interact

:[10]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [16]

:[11]
pushi.e 4
pop.v.i self.con
pushi.e 78
pushenv [13]

:[12]
call.i scr_halt(argc=0)
popz.v

:[13]
popenv [12]
push.v self.k
conv.v.i
push.v [stacktop]self.x
pop.v.v 326.x
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
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 162
conv.i.v
push.v self.ral
conv.v.i
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.ral
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v

:[16]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [18]

:[17]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
push.s "obj_boxpuzzle_event_slash_Step_0_gml_39_0"@5007
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
push.s "obj_boxpuzzle_event_slash_Step_0_gml_41_0"@5008
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_boxpuzzle_event_slash_Step_0_gml_43_0"@5009
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
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

:[18]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [20]

:[19]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [27]

:[22]
push.v self.sus
conv.v.i
pushenv [24]

:[23]
pushi.e 190
pop.v.i self.sprite_index

:[24]
popenv [23]
pushi.e 2
pop.v.i global.facing
push.v self.ral
conv.v.i
pushenv [26]

:[25]
pushi.e 206
pop.v.i self.sprite_index
pushi.e -6
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[26]
popenv [25]
pushi.e 12
pop.v.i self.con

:[27]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [34]

:[28]
pushi.e 2
pop.v.i global.facing
push.v self.ral
conv.v.i
push.v [stacktop]self.y
pushi.e 100
cmp.i.v LTE
bf [34]

:[29]
push.v self.ral
conv.v.i
pushenv [31]

:[30]
call.i scr_halt(argc=0)
popz.v

:[31]
popenv [30]
push.v self.ral
conv.v.i
pushenv [33]

:[32]
pushi.e 204
pop.v.i self.sprite_index

:[33]
popenv [32]
pushi.e 13
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [36]

:[35]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_boxpuzzle_event_slash_Step_0_gml_82_0"@5010
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_83_0"@5011
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_84_0"@5012
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_85_0"@5013
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_boxpuzzle_event_slash_Step_0_gml_87_0"@5014
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 5.5
pop.v.d self.con

:[36]
push.v self.con
push.d 5.5
cmp.d.v EQ
bf [38]

:[37]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [43]

:[40]
pushi.e 1
pop.v.i global.facing
push.v self.sus
conv.v.i
pushenv [42]

:[41]
pushi.e 183
pop.v.i self.sprite_index
pushi.e 12
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[42]
popenv [41]
push.d 6.5
pop.v.d self.con

:[43]
push.v self.con
push.d 6.5
cmp.d.v EQ
bf [46]

:[44]
push.v self.sus
conv.v.i
push.v [stacktop]self.x
pushi.e 480
cmp.i.v GTE
bf [46]

:[45]
pushi.e -12
push.v self.sus
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.sus
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 190
push.v self.sus
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 7.5
pop.v.d self.con

:[46]
push.v self.con
push.d 7.5
cmp.d.v EQ
bf [51]

:[47]
push.v self.sus
conv.v.i
push.v [stacktop]self.y
pushi.e 100
cmp.i.v LTE
bf [51]

:[48]
push.v self.sus
conv.v.i
pushenv [50]

:[49]
call.i scr_halt(argc=0)
popz.v

:[50]
popenv [49]
push.d 8.5
pop.v.d self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[51]
push.v self.con
push.d 9.5
cmp.d.v EQ
bf [55]

:[52]
push.v self.sus
conv.v.i
pushenv [54]

:[53]
pushi.e 187
pop.v.i self.sprite_index

:[54]
popenv [53]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_boxpuzzle_event_slash_Step_0_gml_134_0"@5015
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_boxpuzzle_event_slash_Step_0_gml_136_0"@5016
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
push.s "obj_boxpuzzle_event_slash_Step_0_gml_138_0"@5017
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 5
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_boxpuzzle_event_slash_Step_0_gml_140_0"@5018
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
pushi.e 15
pop.v.i self.con

:[55]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [57]

:[56]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [66]

:[59]
pushi.e 1
pushi.e -5
pushi.e 212
pop.v.i [array]global.flag
pushi.e 219
pushenv [61]

:[60]
pushi.e 0
pop.v.i self.event

:[61]
popenv [60]
pushi.e 83
conv.i.v
push.v self.sus
conv.v.i
push.v [stacktop]self.y
push.v self.sus
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.sus2
pushi.e 83
conv.i.v
push.v self.ral
conv.v.i
push.v [stacktop]self.y
push.v self.ral
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.ral2
push.v self.sus
conv.v.i
pushenv [63]

:[62]
call.i instance_destroy(argc=0)
popz.v

:[63]
popenv [62]
push.v self.ral
conv.v.i
pushenv [65]

:[64]
call.i instance_destroy(argc=0)
popz.v

:[65]
popenv [64]
pushi.e 0
pop.v.i global.interact
pushi.e 20
pop.v.i self.con
pushi.e 1
pop.v.i self.boxcon
pushi.e 1
pop.v.i self.leavecon

:[66]
push.v self.leavecon
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [72]

:[70]
push.v 326.x
pushi.e 70
cmp.i.v LT
bf [72]

:[71]
pushi.e 70
pop.v.i 326.x
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.leavecon
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 7
pop.v.i global.fe
push.s "obj_boxpuzzle_event_slash_Step_0_gml_170_0"@5021
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

:[72]
push.v self.leavecon
pushi.e 2
cmp.i.v EQ
bf [75]

:[73]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
pushi.e 1
pop.v.i self.leavecon
pushi.e 0
pop.v.i global.interact

:[75]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [112]

:[76]
pushi.e 0
pop.v.i self.boxcount
pushi.e 0
pop.v.i self.tilecount
pushi.e 219
pushenv [81]

:[77]
push.v self.sprite_index
pushi.e 367
cmp.i.v EQ
bf [81]

:[78]
pushi.e 51
pushenv [80]

:[79]
push.v self.boxcount
pushi.e 1
add.i.v
pop.v.v self.boxcount

:[80]
popenv [79]

:[81]
popenv [77]
pushi.e 221
pushenv [86]

:[82]
push.v self.sprite_index
pushi.e 242
cmp.i.v EQ
bf [86]

:[83]
pushi.e 51
pushenv [85]

:[84]
push.v self.tilecount
pushi.e 1
add.i.v
pop.v.v self.tilecount

:[85]
popenv [84]

:[86]
popenv [82]
push.v self.boxcount
pushi.e 0
cmp.i.v EQ
bf [89]

:[87]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [89]

:[88]
push.v self.boxon
pushi.e 2
cmp.i.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.boxon
push.s "obj_boxpuzzle_event_slash_Step_0_gml_207_0"@5024
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
push.s "obj_boxpuzzle_event_slash_Step_0_gml_209_0"@5025
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

:[92]
push.v self.boxcount
pushi.e 1
cmp.i.v EQ
bf [95]

:[93]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [95]

:[94]
push.v self.boxon
pushi.e 0
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.boxon
push.s "obj_boxpuzzle_event_slash_Step_0_gml_220_0"@5026
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
push.s "obj_boxpuzzle_event_slash_Step_0_gml_222_0"@5027
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_223_0"@5028
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

:[98]
push.v self.boxcount
pushi.e 2
cmp.i.v GTE
bf [100]

:[99]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [105]

:[102]
pushi.e 1
pop.v.i self.image_index
push.v self.groundblock
conv.v.i
pushenv [104]

:[103]
call.i instance_destroy(argc=0)
popz.v

:[104]
popenv [103]
pushi.e 1
pop.v.i global.interact
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
pushi.e 25
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [112]

:[105]
push.v self.tilecount
pushi.e 2
cmp.i.v EQ
bf [109]

:[106]
push.v self.boxcount
pushi.e 1
cmp.i.v EQ
bf [109]

:[107]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
push.v self.boxcon
pushi.e 1
cmp.i.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.boxcon
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_boxpuzzle_event_slash_Step_0_gml_248_0"@5029
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_249_0"@5030
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_boxpuzzle_event_slash_Step_0_gml_251_0"@5031
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_252_0"@5032
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_boxpuzzle_event_slash_Step_0_gml_254_0"@5033
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_boxpuzzle_event_slash_Step_0_gml_256_0"@5034
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

:[112]
push.v self.boxcon
pushi.e 2
cmp.i.v EQ
bf [115]

:[113]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
bf [115]

:[114]
pushi.e 3
pop.v.i self.boxcon
pushi.e 0
pop.v.i global.interact

:[115]
push.v self.boxon
pushi.e 1
cmp.i.v EQ
bf [118]

:[116]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
bf [118]

:[117]
pushi.e 2
pop.v.i self.boxon
pushi.e 0
pop.v.i global.interact

:[118]
push.v self.boxon
pushi.e 3
cmp.i.v EQ
bf [121]

:[119]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
bf [121]

:[120]
pushi.e 4
pop.v.i self.boxon
pushi.e 0
pop.v.i global.interact

:[121]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [123]

:[122]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_boxpuzzle_event_slash_Step_0_gml_295_0"@5035
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
push.s "obj_boxpuzzle_event_slash_Step_0_gml_297_0"@5036
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_298_0"@5037
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 27
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[123]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [132]

:[124]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
bf [132]

:[125]
pushi.e 2
pop.v.i global.facing
pushi.e 209
conv.i.v
push.v self.ral2
conv.v.i
push.v [stacktop]self.y
push.v self.ral2
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.ral3
pushi.e 180
conv.i.v
push.v self.sus2
conv.v.i
push.v [stacktop]self.y
push.v self.sus2
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.sus3
push.v self.ral2
conv.v.i
pushenv [127]

:[126]
call.i instance_destroy(argc=0)
popz.v

:[127]
popenv [126]
push.v self.sus2
conv.v.i
pushenv [129]

:[128]
call.i instance_destroy(argc=0)
popz.v

:[129]
popenv [128]
push.v self.sus3
conv.v.i
pushenv [131]

:[130]
call.i scr_depth(argc=0)
popz.v
pushi.e -8
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[131]
popenv [130]
pushi.e 28
pop.v.i self.con

:[132]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [140]

:[133]
pushi.e 1
pop.v.i global.interact
push.v self.sus3
conv.v.i
push.v [stacktop]self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 20
sub.i.v
cmp.v.v LTE
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
push.v self.sus3
conv.v.i
pushenv [139]

:[138]
push.d 0.334
pop.v.d self.image_speed
pushi.e -8
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 190
pop.v.i self.sprite_index

:[139]
popenv [138]
pushi.e 29
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[140]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [144]

:[141]
push.v self.ral3
conv.v.i
pushenv [143]

:[142]
pushi.e 204
pop.v.i self.sprite_index

:[143]
popenv [142]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
push.s "obj_boxpuzzle_event_slash_Step_0_gml_347_0"@5040
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
pop.v.v self.dl
pushi.e 1
push.v self.dl
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 31
pop.v.i self.con

:[144]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [149]

:[145]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
bf [149]

:[146]
push.v self.ral3
conv.v.i
pushenv [148]

:[147]
call.i scr_depth(argc=0)
popz.v
pushi.e 209
pop.v.i self.sprite_index
pushi.e 6
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[148]
popenv [147]
pushi.e 32
pop.v.i self.con

:[149]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [154]

:[150]
push.v self.ral3
conv.v.i
push.v [stacktop]self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 20
sub.i.v
cmp.v.v GTE
bf [154]

:[151]
push.v self.ral3
conv.v.i
pushenv [153]

:[152]
pushi.e -6
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 206
pop.v.i self.sprite_index

:[153]
popenv [152]
pushi.e 33
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[154]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [160]

:[155]
pushi.e 219
pushenv [157]

:[156]
pushi.e 1
pop.v.i self.event

:[157]
popenv [156]
pushi.e 35
pop.v.i self.con
call.i scr_tempsave(argc=0)
popz.v
pushglb.v global.plot
pushi.e 50
cmp.i.v LT
bf [159]

:[158]
pushi.e 50
pop.v.i global.plot

:[159]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.leavecon

:[160]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [163]

:[161]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
bf [163]

:[162]
pushi.e 51
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[163]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [173]

:[164]
pushi.e 84
conv.i.v
pushi.e 200
conv.i.v
pushi.e 290
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 84
conv.i.v
pushi.e 370
conv.i.v
pushi.e 460
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 209
conv.i.v
push.v self.ral2
conv.v.i
push.v [stacktop]self.y
push.v self.ral2
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.ral3
push.v self.ral3
conv.v.i
pushenv [166]

:[165]
call.i scr_depth(argc=0)
popz.v

:[166]
popenv [165]
push.v self.ral2
conv.v.i
pushenv [168]

:[167]
call.i instance_destroy(argc=0)
popz.v

:[168]
popenv [167]
pushi.e 187
conv.i.v
push.v self.sus2
conv.v.i
push.v [stacktop]self.y
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 22
sub.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.sus3
push.v self.sus3
conv.v.i
pushenv [170]

:[169]
call.i scr_depth(argc=0)
popz.v

:[170]
popenv [169]
push.v self.sus2
conv.v.i
pushenv [172]

:[171]
call.i instance_destroy(argc=0)
popz.v

:[172]
popenv [171]
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 53
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[173]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [181]

:[174]
pushi.e 2
pop.v.i self.image_index
push.v self.groundblock
conv.v.i
pushenv [176]

:[175]
call.i instance_destroy(argc=0)
popz.v

:[176]
popenv [175]
pushi.e 219
pushenv [178]

:[177]
call.i instance_destroy(argc=0)
popz.v

:[178]
popenv [177]
push.v self.fade
conv.v.i
pushenv [180]

:[179]
call.i instance_destroy(argc=0)
popz.v

:[180]
popenv [179]
pushi.e 2
pop.v.i global.facing
pushi.e 138
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 55
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[181]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [end]

:[182]
push.s "obj_boxpuzzle_event_slash_Step_0_gml_437_0"@5041
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
pop.v.v self.dl
pushi.e 1
push.v self.dl
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 1
pop.v.i global.interact
pushi.e 28
pop.v.i self.con

:[end]