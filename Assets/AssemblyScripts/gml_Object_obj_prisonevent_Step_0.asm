.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[1]
pushi.e 331
conv.i.v
pushi.e 360
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.doorblock
push.v self.doorblock
conv.v.i
pushenv [3]

:[2]
pushi.e 2
pop.v.i self.image_xscale

:[3]
popenv [2]
pushi.e 33
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
pushi.e 440
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 326
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.cutscene
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
pushi.e 448
conv.i.v
push.v 326.y
push.v 326.x
call.i scr_dark_marker(argc=3)
pop.v.v self.k
pushi.e 769
conv.i.v
pushi.e 160
conv.i.v
pushi.e 520
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.r
push.v self.r
conv.v.i
pushenv [7]

:[6]
pushi.e 2
pop.v.i self.image_index

:[7]
popenv [6]
pushi.e 231
conv.i.v
pushi.e 280
conv.i.v
pushi.e 640
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.irondoor
push.v self.irondoor
conv.v.i
pushenv [9]

:[8]
call.i scr_depth(argc=0)
popz.v

:[9]
popenv [8]
pushi.e 499
conv.i.v
pushi.e 360
conv.i.v
pushi.e 640
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.diamond
push.v self.diamond
conv.v.i
pushenv [11]

:[10]
pushi.e 100
pop.v.i self.depth

:[11]
popenv [10]
pushi.e 2
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i global.interact

:[14]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [18]

:[15]
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.v self.diamond
conv.v.i
pushenv [17]

:[16]
push.d 0.25
pop.v.d self.image_speed

:[17]
popenv [16]
push.s "obj_prisonevent_slash_Step_0_gml_29_0"@4217
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_30_0"@4218
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_31_0"@4219
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
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
pop.v.v self.d
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side

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
bf [25]

:[22]
push.v self.diamond
conv.v.i
pushenv [24]

:[23]
push.d 0.5
pop.v.d self.image_speed
pushi.e 5
pop.v.i self.vspeed

:[24]
popenv [23]
pushi.e 5
pop.v.i self.con
push.v self.k
conv.v.i
push.v [stacktop]self.x
pop.v.v self.kx
push.v self.k
conv.v.i
push.v [stacktop]self.y
pop.v.v self.ky
push.v self.r
conv.v.i
push.v [stacktop]self.x
pop.v.v self.rx
push.v self.r
conv.v.i
push.v [stacktop]self.y
pop.v.v self.ry
push.d 0.5
pop.v.d self.moveamt
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [32]

:[26]
push.v self.moveamt
push.d 0.1
add.d.v
pop.v.v self.moveamt
push.v self.kx
push.v self.moveamt
call.i random(argc=1)
add.v.v
push.v self.k
conv.v.i
pop.v.v [stacktop]self.x
push.v self.ky
push.v self.moveamt
call.i random(argc=1)
add.v.v
push.v self.k
conv.v.i
pop.v.v [stacktop]self.y
push.v self.rx
push.v self.moveamt
call.i random(argc=1)
add.v.v
push.v self.r
conv.v.i
pop.v.v [stacktop]self.x
push.v self.ry
push.v self.moveamt
call.i random(argc=1)
add.v.v
push.v self.r
conv.v.i
pop.v.v [stacktop]self.y
push.v self.moveamt
pushi.e 3
cmp.i.v GTE
bf [32]

:[27]
push.v self.rx
push.v self.r
conv.v.i
pop.v.v [stacktop]self.x
push.v self.ry
push.v self.r
conv.v.i
pop.v.v [stacktop]self.y
push.v self.kx
push.v self.k
conv.v.i
pop.v.v [stacktop]self.x
push.v self.ky
push.v self.k
conv.v.i
pop.v.v [stacktop]self.y
push.v self.k
conv.v.i
pushenv [29]

:[28]
pushi.e 827
pop.v.i self.sprite_index

:[29]
popenv [28]
push.v self.r
conv.v.i
pushenv [31]

:[30]
pushi.e 204
pop.v.i self.sprite_index

:[31]
popenv [30]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 7
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [38]

:[33]
push.v self.r
conv.v.i
pushenv [35]

:[34]
pushi.e 209
pop.v.i self.sprite_index

:[35]
popenv [34]
push.v self.k
conv.v.i
pushenv [37]

:[36]
pushi.e 831
pop.v.i self.sprite_index

:[37]
popenv [36]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_prisonevent_slash_Step_0_gml_82_0"@4225
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_83_0"@4226
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_84_0"@4227
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_85_0"@4228
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_86_0"@4229
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.d 8.1
pop.v.d self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[38]
push.v self.con
push.d 8.1
cmp.d.v EQ
bf [40]

:[39]
call.i d_ex(argc=0)
conv.v.b
not.b
b [41]

:[40]
push.e 0

:[41]
bf [45]

:[42]
push.v self.r
conv.v.i
pushenv [44]

:[43]
pushi.e 204
pop.v.i self.sprite_index

:[44]
popenv [43]
pushi.e 162
conv.i.v
push.v self.r
conv.v.i
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.exc
push.d 7.2
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[45]
push.v self.con
push.d 8.2
cmp.d.v EQ
bf [51]

:[46]
push.v self.exc
conv.v.i
pushenv [48]

:[47]
call.i instance_destroy(argc=0)
popz.v

:[48]
popenv [47]
push.v self.r
conv.v.i
pushenv [50]

:[49]
pushi.e 209
pop.v.i self.sprite_index

:[50]
popenv [49]
pushi.e 3
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_104_0"@4230
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_105_0"@4231
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_106_0"@4232
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_107_0"@4233
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
pushi.e 9
pop.v.i self.con

:[51]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [53]

:[52]
call.i d_ex(argc=0)
conv.v.b
not.b
b [54]

:[53]
push.e 0

:[54]
bf [64]

:[55]
pushi.e 83
conv.i.v
push.v self.r
conv.v.i
push.v [stacktop]self.y
push.v self.r
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.rnpc
push.v self.rnpc
conv.v.i
pushenv [57]

:[56]
push.v self.y
push.v self.sprite_height
add.v.v
pop.v.v self.y
pushi.e 204
pop.v.i self.sprite_index
pushi.e 204
pop.v.i self.dtsprite
pushi.e 206
pop.v.i self.utsprite
pushi.e 209
pop.v.i self.rtsprite
pushi.e 207
pop.v.i self.ltsprite
call.i scr_depth(argc=0)
popz.v

:[57]
popenv [56]
push.v self.r
conv.v.i
pushenv [59]

:[58]
call.i instance_destroy(argc=0)
popz.v

:[59]
popenv [58]
push.v self.k
conv.v.i
pushenv [61]

:[60]
call.i instance_destroy(argc=0)
popz.v

:[61]
popenv [60]
pushi.e 0
pop.v.i global.facing
pushi.e 326
pushenv [63]

:[62]
pushi.e 1
pop.v.i self.visible

:[63]
popenv [62]
pushi.e 0
pop.v.i global.interact
pushi.e 10
pop.v.i self.con

:[64]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [66]

:[65]
call.i d_ex(argc=0)
conv.v.b
not.b
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushglb.v global.facing
pop.v.v self.remfacing
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.fe
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
push.s "obj_prisonevent_slash_Step_0_gml_140_0"@4236
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_141_0"@4237
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_142_0"@4238
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_143_0"@4239
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_144_0"@4240
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_145_0"@4241
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_prisonevent_slash_Step_0_gml_147_0"@4242
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_148_0"@4243
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
pushi.e 16
pop.v.i self.con

:[69]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [71]

:[70]
push.v self.remfacing
pop.v.v global.facing
pushi.e 1
pop.v.i global.interact

:[71]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [73]

:[72]
call.i d_ex(argc=0)
conv.v.b
not.b
b [74]

:[73]
push.e 0

:[74]
bf [80]

:[75]
pushi.e 496
conv.i.v
push.v self.rnpc
conv.v.i
push.v [stacktop]self.y
push.v self.rnpc
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.r
push.v self.r
conv.v.i
pushenv [77]

:[76]
call.i scr_depth(argc=0)
popz.v

:[77]
popenv [76]
push.v self.rnpc
conv.v.i
pushenv [79]

:[78]
call.i instance_destroy(argc=0)
popz.v

:[79]
popenv [78]
pushi.e 3
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 162
conv.i.v
push.v self.r
conv.v.i
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.exc
pushi.e 17
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[80]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [86]

:[81]
push.v self.exc
conv.v.i
pushenv [83]

:[82]
call.i instance_destroy(argc=0)
popz.v

:[83]
popenv [82]
push.v self.r
conv.v.i
pushenv [85]

:[84]
pushi.e 207
pop.v.i self.sprite_index

:[85]
popenv [84]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_prisonevent_slash_Step_0_gml_179_0"@4244
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
push.s "obj_prisonevent_slash_Step_0_gml_181_0"@4245
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

:[86]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [88]

:[87]
call.i d_ex(argc=0)
conv.v.b
not.b
b [89]

:[88]
push.e 0

:[89]
bf [95]

:[90]
pushi.e 231
conv.i.v
pushi.e 520
conv.i.v
pushi.e 200
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.irondoor2
push.v self.irondoor2
conv.v.i
pushenv [92]

:[91]
call.i scr_depth(argc=0)
popz.v

:[92]
popenv [91]
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 183
conv.i.v
pushi.e 300
conv.i.v
pushi.e 320
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
push.v self.s
conv.v.i
pushenv [94]

:[93]
call.i scr_depth(argc=0)
popz.v

:[94]
popenv [93]
pushi.e 20
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[95]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [97]

:[96]
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_prisonevent_slash_Step_0_gml_207_0"@4247
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_208_0"@4248
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
push.s "obj_prisonevent_slash_Step_0_gml_210_0"@4249
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 22
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[97]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [99]

:[98]
call.i d_ex(argc=0)
conv.v.b
not.b
b [100]

:[99]
push.e 0

:[100]
bf [104]

:[101]
push.v self.s
conv.v.i
pushenv [103]

:[102]
pushi.e 182
pop.v.i self.sprite_index

:[103]
popenv [102]
pushi.e 70
conv.i.v
pushi.e 0
conv.i.v
pushi.e -4
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 23
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[104]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [108]

:[105]
push.v self.s
conv.v.i
pushenv [107]

:[106]
pushi.e 183
pop.v.i self.sprite_index

:[107]
popenv [106]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_prisonevent_slash_Step_0_gml_229_0"@4250
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_232_0"@4251
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
push.s "obj_prisonevent_slash_Step_0_gml_234_0"@4252
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
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

:[108]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [110]

:[109]
call.i d_ex(argc=0)
conv.v.b
not.b
b [111]

:[110]
push.e 0

:[111]
bf [115]

:[112]
push.v self.s
conv.v.i
pushenv [114]

:[113]
pushi.e 190
pop.v.i self.sprite_index

:[114]
popenv [113]
pushi.e 26
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[115]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [119]

:[116]
push.v self.s
conv.v.i
pushenv [118]

:[117]
pushi.e 183
pop.v.i self.sprite_index

:[118]
popenv [117]
pushi.e 1
pop.v.i global.fc
pushi.e 5
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_prisonevent_slash_Step_0_gml_252_0"@4253
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_253_0"@4254
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_254_0"@4255
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_255_0"@4256
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_prisonevent_slash_Step_0_gml_257_0"@4257
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_prisonevent_slash_Step_0_gml_259_0"@4258
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_260_0"@4259
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_261_0"@4260
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_262_0"@4261
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "6"@2525
conv.s.v
pushi.e 11
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_prisonevent_slash_Step_0_gml_264_0"@4262
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 200
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[119]
push.v self.con
pushi.e 200
cmp.i.v EQ
bf [121]

:[120]
call.i d_ex(argc=0)
conv.v.b
not.b
b [122]

:[121]
push.e 0

:[122]
bf [126]

:[123]
push.v self.s
conv.v.i
pushenv [125]

:[124]
pushi.e 190
pop.v.i self.sprite_index

:[125]
popenv [124]
pushi.e 1
pop.v.i global.interact
pushi.e 290
pop.v.i global.msc
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 201
pop.v.i self.con
push.v self.tried
pushi.e 1
add.i.v
pop.v.v self.tried

:[126]
push.v self.con
pushi.e 201
cmp.i.v EQ
bf [128]

:[127]
call.i d_ex(argc=0)
conv.v.b
not.b
b [129]

:[128]
push.e 0

:[129]
bf [171]

:[130]
push.v 217.won
pushi.e 0
cmp.i.v EQ
bf [168]

:[131]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
pushi.e 200
pop.v.i self.con
pushi.e 217
pushi.e 0
push.v [array]self.suit
pushi.e 3
cmp.i.v EQ
bf [134]

:[132]
pushi.e 217
pushi.e 1
push.v [array]self.suit
pushi.e 4
cmp.i.v EQ
bf [134]

:[133]
pushi.e 217
pushi.e 2
push.v [array]self.suit
pushi.e 3
cmp.i.v EQ
b [135]

:[134]
push.e 0

:[135]
bf [140]

:[136]
push.v self.wcon
pushi.e 1
cmp.i.v EQ
bf [138]

:[137]
pushi.e 2
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_299_0"@4264
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_300_0"@4265
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_301_0"@4266
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
pushi.e 2
pop.v.i self.wcon

:[138]
push.v self.wcon
pushi.e 0
cmp.i.v EQ
bf [140]

:[139]
pushi.e 2
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_309_0"@4267
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_310_0"@4268
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_311_0"@4269
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
pushi.e 1
pop.v.i self.wcon

:[140]
push.v 217.reset
pushi.e 1
cmp.i.v EQ
bf [142]

:[141]
push.v self.pcon
pushi.e 0
cmp.i.v EQ
b [143]

:[142]
push.e 0

:[143]
bf [145]

:[144]
pushi.e 1
pop.v.i self.pcon
pushi.e 0
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_322_0"@4271
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

:[145]
push.v 217.reset
pushi.e 2
cmp.i.v EQ
bf [147]

:[146]
push.v self.pcon
pushi.e 1
cmp.i.v EQ
b [148]

:[147]
push.e 0

:[148]
bf [150]

:[149]
pushi.e 2
pop.v.i self.pcon
pushi.e 0
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_329_0"@4272
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

:[150]
push.v 217.reset
pushi.e 3
cmp.i.v EQ
bf [152]

:[151]
push.v self.pcon
pushi.e 2
cmp.i.v EQ
b [153]

:[152]
push.e 0

:[153]
bf [155]

:[154]
pushi.e 3
pop.v.i self.pcon
pushi.e 6
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_336_0"@4273
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

:[155]
push.v 217.reset
pushi.e 4
cmp.i.v EQ
bf [157]

:[156]
push.v self.pcon
pushi.e 3
cmp.i.v EQ
b [158]

:[157]
push.e 0

:[158]
bf [160]

:[159]
pushi.e 4
pop.v.i self.pcon
pushi.e 9
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_343_0"@4274
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_344_0"@4275
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_345_0"@4276
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

:[160]
push.v 217.swap
pushi.e 1
cmp.i.v EQ
bf [164]

:[161]
pushi.e 217
pushi.e 0
push.v [array]self.suit
pushi.e 0
cmp.i.v EQ
bf [164]

:[162]
push.v self.scon
pushi.e 0
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
bf [167]

:[166]
pushi.e 1
pop.v.i self.scon
pushi.e 0
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_354_0"@4278
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

:[167]
b [171]

:[168]
push.v self.irondoor2
conv.v.i
pushenv [170]

:[169]
call.i instance_destroy(argc=0)
popz.v

:[170]
popenv [169]
pushi.e 35
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
pushi.e 202
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[171]
push.v self.con
pushi.e 203
cmp.i.v EQ
bf [173]

:[172]
pushi.e 30
pop.v.i global.typer
pushi.e 2
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
push.s "obj_prisonevent_slash_Step_0_gml_376_0"@4279
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_prisonevent_slash_Step_0_gml_378_0"@4280
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_prisonevent_slash_Step_0_gml_380_0"@4281
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 204
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[173]
push.v self.con
pushi.e 204
cmp.i.v EQ
bf [175]

:[174]
call.i d_ex(argc=0)
conv.v.b
not.b
b [176]

:[175]
push.e 0

:[176]
bf [180]

:[177]
push.v self.s
conv.v.i
pushenv [179]

:[178]
pushi.e 180
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e -6
pop.v.i self.hspeed

:[179]
popenv [178]
pushi.e 205
pop.v.i self.con
pushi.e 16
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[180]
push.v self.con
pushi.e 206
cmp.i.v EQ
bf [184]

:[181]
push.v self.s
conv.v.i
pushenv [183]

:[182]
call.i scr_halt(argc=0)
popz.v
pushi.e 187
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.vspeed

:[183]
popenv [182]
pushi.e 207
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[184]
push.v self.con
pushi.e 208
cmp.i.v EQ
bf [186]

:[185]
pushi.e 60
conv.i.v
pushi.e -2
conv.i.v
pushi.e 6
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 209
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[186]
push.v self.con
pushi.e 210
cmp.i.v EQ
bf [190]

:[187]
push.v self.r
conv.v.i
pushenv [189]

:[188]
pushi.e 204
pop.v.i self.sprite_index

:[189]
popenv [188]
pushi.e 305
pop.v.i global.msc
pushi.e 6
pop.v.i global.fe
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 228
pop.v.i self.con

:[190]
push.v self.con
pushi.e 228
cmp.i.v EQ
bf [192]

:[191]
call.i d_ex(argc=0)
conv.v.b
not.b
b [193]

:[192]
push.e 0

:[193]
bf [197]

:[194]
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
pushenv [196]

:[195]
push.d 0.02
pop.v.d self.fadespeed

:[196]
popenv [195]
pushi.e 229
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[197]
push.v self.con
pushi.e 230
cmp.i.v EQ
bf [199]

:[198]
call.i scr_losechar(argc=0)
popz.v
pushi.e 2
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 0
pop.v.i global.entrance
pushi.e 3
pop.v.i global.interact
pushi.e 152
pop.v.i global.plot
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.pers
pushi.e 106
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 231
pop.v.i self.con

:[199]
push.v self.con
pushi.e 300
cmp.i.v EQ
bf [211]

:[200]
pushi.e 440
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 326
pushenv [202]

:[201]
pushi.e 1
pop.v.i self.cutscene
pushi.e 0
pop.v.i self.visible

:[202]
popenv [201]
pushi.e 680
pop.v.i 326.x
pushi.e 160
pop.v.i 326.y
pushi.e 827
conv.i.v
push.v 326.y
push.v 326.x
call.i scr_dark_marker(argc=3)
pop.v.v self.k
pushi.e 209
conv.i.v
pushi.e 150
conv.i.v
pushi.e 640
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.r
pushi.e 190
conv.i.v
pushi.e 500
conv.i.v
pushi.e 660
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
push.v self.r
conv.v.i
pushenv [204]

:[203]
pushi.e 2
pop.v.i self.image_index

:[204]
popenv [203]
push.v self.r
conv.v.i
pushenv [206]

:[205]
call.i scr_depth(argc=0)
popz.v

:[206]
popenv [205]
push.v self.k
conv.v.i
pushenv [208]

:[207]
call.i scr_depth(argc=0)
popz.v

:[208]
popenv [207]
pushi.e 231
conv.i.v
pushi.e 280
conv.i.v
pushi.e 640
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.irondoor
push.v self.irondoor
conv.v.i
pushenv [210]

:[209]
call.i scr_depth(argc=0)
popz.v

:[210]
popenv [209]
pushi.e 301
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[211]
push.v self.con
pushi.e 301
cmp.i.v EQ
bf [213]

:[212]
pushi.e 1
pop.v.i global.interact

:[213]
push.v self.con
pushi.e 302
cmp.i.v EQ
bf [215]

:[214]
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_481_0"@4284
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
pushi.e 303
pop.v.i self.con

:[215]
push.v self.con
pushi.e 303
cmp.i.v EQ
bf [217]

:[216]
call.i d_ex(argc=0)
conv.v.b
not.b
b [218]

:[217]
push.e 0

:[218]
bf [226]

:[219]
push.v self.irondoor
conv.v.i
pushenv [221]

:[220]
call.i instance_destroy(argc=0)
popz.v

:[221]
popenv [220]
pushi.e 33
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.r
conv.v.i
pushenv [223]

:[222]
pushi.e 204
pop.v.i self.sprite_index

:[223]
popenv [222]
push.v self.k
conv.v.i
pushenv [225]

:[224]
pushi.e 827
pop.v.i self.sprite_index

:[225]
popenv [224]
pushi.e 162
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.exc
pushi.e 304
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[226]
push.v self.con
pushi.e 305
cmp.i.v EQ
bf [232]

:[227]
push.v self.exc
conv.v.i
pushenv [229]

:[228]
call.i instance_destroy(argc=0)
popz.v

:[229]
popenv [228]
push.v self.s
conv.v.i
pushenv [231]

:[230]
pushi.e -6
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[231]
popenv [230]
pushi.e 306
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[232]
push.v self.con
pushi.e 307
cmp.i.v EQ
bf [236]

:[233]
push.v self.s
conv.v.i
pushenv [235]

:[234]
call.i scr_halt(argc=0)
popz.v

:[235]
popenv [234]
pushi.e 308
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[236]
push.v self.con
pushi.e 309
cmp.i.v EQ
bf [238]

:[237]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_prisonevent_slash_Step_0_gml_521_0"@4285
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_prisonevent_slash_Step_0_gml_523_0"@4286
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_prisonevent_slash_Step_0_gml_524_0"@4287
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
push.s "obj_prisonevent_slash_Step_0_gml_526_0"@4288
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
pop.v.v self.d
pushi.e 310
pop.v.i self.con

:[238]
push.v self.con
pushi.e 310
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
bf [245]

:[242]
push.v self.s
conv.v.i
pushenv [244]

:[243]
pushi.e 189
pop.v.i self.sprite_index

:[244]
popenv [243]
pushi.e 311
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[245]
push.v self.con
pushi.e 312
cmp.i.v EQ
bf [247]

:[246]
pushi.e 0
pop.v.i global.fc
pushi.e 6
pop.v.i global.typer
push.s "obj_prisonevent_slash_Step_0_gml_543_0"@4289
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
pushi.e 313
pop.v.i self.con

:[247]
push.v self.con
pushi.e 313
cmp.i.v EQ
bf [249]

:[248]
call.i d_ex(argc=0)
conv.v.b
not.b
b [250]

:[249]
push.e 0

:[250]
bf [258]

:[251]
push.v self.s
conv.v.i
pushenv [253]

:[252]
push.d 0.25
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.vspeed

:[253]
popenv [252]
push.v self.r
conv.v.i
pushenv [255]

:[254]
push.d 0.25
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.vspeed

:[255]
popenv [254]
push.v self.k
conv.v.i
pushenv [257]

:[256]
push.d 0.25
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.vspeed

:[257]
popenv [256]
pushi.e 314
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[258]
push.v self.con
pushi.e 315
cmp.i.v EQ
bf [260]

:[259]
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 316
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[260]
push.v self.con
pushi.e 317
cmp.i.v EQ
bf [end]

:[261]
pushi.e 156
pop.v.i global.plot
call.i scr_losechar(argc=0)
popz.v
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 2
conv.i.v
call.i scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i scr_getchar(argc=1)
popz.v
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.charauto
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.charauto
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.charauto
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.charauto
pushi.e 318
pop.v.i self.con
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.i global.entrance
pushi.e 3
pop.v.i global.interact
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 106
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]