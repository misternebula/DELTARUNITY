.localvar 0 arguments

:[0]
push.v self.mcon
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 3
pop.v.i self.mcon

:[2]
push.v self.mcon
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "lancer_susie.ogg"@4891
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 2
pop.v.i self.mcon

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[5]
call.i snd_free_all(argc=0)
popz.v
push.d 0.5
pop.v.d self.mm
push.v self.mm
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
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
push.v self.ral
pop.v.v self.r
push.v self.sus
pop.v.v self.s
pushi.e 165
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
popenv [6]
pushi.e 326
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.visible

:[9]
popenv [8]
pushi.e 78
pushenv [11]

:[10]
pushi.e 6
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[11]
popenv [10]
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.mcon

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
bf [20]

:[15]
pushi.e 1
pop.v.i global.facing
pushi.e 4
pop.v.i self.con
pushi.e 78
pushenv [17]

:[16]
call.i scr_halt(argc=0)
popz.v

:[17]
popenv [16]
push.v self.k
conv.v.i
push.v [stacktop]self.x
pop.v.v 326.x
pushi.e 1
pop.v.i 326.visible
push.v self.k
conv.v.i
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[20]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [22]

:[21]
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 5
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_lancerscare2_slash_Step_0_gml_60_0"@4893
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerscare2_slash_Step_0_gml_61_0"@4894
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerscare2_slash_Step_0_gml_62_0"@4895
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
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

:[22]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [24]

:[23]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 211
pop.v.i self.sprite_index
pushi.e 7
pop.v.i self.con
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[27]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [29]

:[28]
pushi.e 220
pop.v.i self.sprite_index
pushi.e 9
pop.v.i self.con
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[29]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [31]

:[30]
pushi.e 1
pop.v.i global.fe
push.s "obj_lancerscare2_slash_Step_0_gml_84_0"@4896
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerscare2_slash_Step_0_gml_85_0"@4897
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerscare2_slash_Step_0_gml_86_0"@4898
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
pushi.e 11
pop.v.i self.con

:[31]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [33]

:[32]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 223
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 228
conv.i.v
push.v self.y
push.v self.x
pushi.e 20
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.bucket
pushi.e -4
push.v self.bucket
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.depth
pushi.e 10
add.i.v
push.v self.bucket
conv.v.i
pop.v.v [stacktop]self.depth
call.i snd_free_all(argc=0)
popz.v
pushi.e 111
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 33
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 227
conv.i.v
pushi.e 0
conv.i.v
pushi.e 200
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.lightning
pushi.e 3
push.v self.lightning
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 12
pop.v.i self.con
pushi.e 0
pop.v.i self.ctimer

:[36]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [49]

:[37]
push.v self.mm
pushi.e 0
cmp.i.v GT
bf [39]

:[38]
push.v self.mm
push.d 0.05
sub.d.v
pop.v.v self.mm
b [40]

:[39]
pushi.e 0
pop.v.i self.mm

:[40]
push.v self.mm
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.v self.lightning
conv.v.i
pushenv [42]

:[41]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[42]
popenv [41]
push.v self.ctimer
pushi.e 1
add.i.v
pop.v.v self.ctimer
push.v self.ctimer
pushi.e 20
cmp.i.v GTE
bf [44]

:[43]
pushi.e 0
push.v self.bucket
conv.v.i
pop.v.i [stacktop]self.hspeed

:[44]
push.v self.ctimer
pushi.e 60
cmp.i.v GTE
bf [46]

:[45]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 220
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 13
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[49]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [51]

:[50]
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 3
pop.v.i global.fe
push.s "obj_lancerscare2_slash_Step_0_gml_137_0"@4901
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
push.s "obj_lancerscare2_slash_Step_0_gml_139_0"@4902
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
push.s "obj_lancerscare2_slash_Step_0_gml_141_0"@4903
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lancerscare2_slash_Step_0_gml_142_0"@4904
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
pushi.e 16
pop.v.i self.con

:[51]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [53]

:[52]
pushi.e 15
pop.v.i self.con
push.s "lancer.ogg"@4596
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong

:[53]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [55]

:[54]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [60]

:[57]
push.v self.sus
conv.v.i
pushenv [59]

:[58]
pushi.e 180
pop.v.i self.sprite_index

:[59]
popenv [58]
pushi.e 17
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[60]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [64]

:[61]
push.v self.sus
conv.v.i
pushenv [63]

:[62]
pushi.e 183
pop.v.i self.sprite_index
pushi.e 6
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[63]
popenv [62]
pushi.e 19
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[64]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [68]

:[65]
push.v self.sus
conv.v.i
pushenv [67]

:[66]
call.i scr_halt(argc=0)
popz.v

:[67]
popenv [66]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
push.s "obj_lancerscare2_slash_Step_0_gml_181_0"@4905
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
push.s "obj_lancerscare2_slash_Step_0_gml_183_0"@4906
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
push.s "obj_lancerscare2_slash_Step_0_gml_185_0"@4907
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lancerscare2_slash_Step_0_gml_186_0"@4908
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lancerscare2_slash_Step_0_gml_187_0"@4909
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_lancerscare2_slash_Step_0_gml_188_0"@4910
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_lancerscare2_slash_Step_0_gml_189_0"@4911
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_191_0"@4912
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_193_0"@4913
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 13
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_195_0"@4914
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_lancerscare2_slash_Step_0_gml_196_0"@4915
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 16
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_198_0"@4916
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 17
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

:[68]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [86]

:[69]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [86]

:[70]
push.v 6.msgno
pushi.e 4
cmp.i.v EQ
bf [74]

:[71]
push.v self.sus
conv.v.i
pushenv [73]

:[72]
pushi.e 187
pop.v.i self.sprite_index

:[73]
popenv [72]

:[74]
push.v 6.msgno
pushi.e 5
cmp.i.v EQ
bf [78]

:[75]
push.v self.sus
conv.v.i
pushenv [77]

:[76]
pushi.e 183
pop.v.i self.sprite_index

:[77]
popenv [76]

:[78]
push.v 6.msgno
pushi.e 6
cmp.i.v EQ
bf [82]

:[79]
push.v self.sus
conv.v.i
pushenv [81]

:[80]
pushi.e 187
pop.v.i self.sprite_index

:[81]
popenv [80]

:[82]
push.v 6.msgno
pushi.e 8
cmp.i.v EQ
bf [86]

:[83]
push.v self.sus
conv.v.i
pushenv [85]

:[84]
pushi.e 183
pop.v.i self.sprite_index

:[85]
popenv [84]

:[86]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [88]

:[87]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [93]

:[90]
push.v self.sus
conv.v.i
pushenv [92]

:[91]
pushi.e 187
pop.v.i self.sprite_index

:[92]
popenv [91]
pushi.e 26
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[93]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [97]

:[94]
push.v self.sus
conv.v.i
pushenv [96]

:[95]
pushi.e 183
pop.v.i self.sprite_index

:[96]
popenv [95]
pushi.e 0
pop.v.i global.fe
push.s "obj_lancerscare2_slash_Step_0_gml_226_0"@4917
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
push.s "obj_lancerscare2_slash_Step_0_gml_228_0"@4918
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lancerscare2_slash_Step_0_gml_229_0"@4919
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lancerscare2_slash_Step_0_gml_231_0"@4920
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 60
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
pushi.e 60
cmp.i.v EQ
bf [99]

:[98]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushi.e 61
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[102]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [104]

:[103]
pushi.e 6
pop.v.i global.fe
push.s "obj_lancerscare2_slash_Step_0_gml_245_0"@4921
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerscare2_slash_Step_0_gml_246_0"@4922
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
push.s "obj_lancerscare2_slash_Step_0_gml_248_0"@4923
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
push.s "obj_lancerscare2_slash_Step_0_gml_250_0"@4924
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerscare2_slash_Step_0_gml_252_0"@4925
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 63
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[104]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [106]

:[105]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
bf [109]

:[108]
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fd
pushi.e 64
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[109]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [111]

:[110]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.bucket
conv.v.i
push.v [stacktop]self.x
pushi.e 50
sub.i.v
pop.v.v 326.x
push.v self.bucket
conv.v.i
push.v [stacktop]self.x
pushi.e 100
sub.i.v
push.v self.r
conv.v.i
pop.v.v [stacktop]self.x
push.v self.bucket
conv.v.i
push.v [stacktop]self.x
pushi.e 150
sub.i.v
push.v self.s
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 66
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[111]
push.v self.con
pushi.e 66
cmp.i.v EQ
bf [115]

:[112]
push.v self.fd
conv.v.i
pushenv [114]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[114]
popenv [113]
pushi.e 138
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fi
pushi.e 67
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[115]
push.v self.con
pushi.e 68
cmp.i.v EQ
bf [117]

:[116]
pushi.e 0
pop.v.i global.fe
pushi.e 175
pop.v.i global.msc
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
pushi.e 28
pop.v.i self.con

:[117]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [119]

:[118]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [120]

:[119]
push.e 0

:[120]
bf [124]

:[121]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v
pushi.e 16
pop.v.i self.hspeed
push.d 0.5
pop.v.d self.image_speed
push.v self.bucket
conv.v.i
pushenv [123]

:[122]
pushi.e 16
pop.v.i self.hspeed

:[123]
popenv [122]
pushi.e 111
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 223
pop.v.i self.sprite_index
pushi.e 36
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[124]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [126]

:[125]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_free(argc=1)
popz.v
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.s "obj_lancerscare2_slash_Step_0_gml_311_0"@4928
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 31
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[126]
push.v self.con
pushi.e 31
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
bf [133]

:[130]
push.v self.sus
conv.v.i
pushenv [132]

:[131]
pushi.e 180
pop.v.i self.sprite_index
pushi.e -6
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[132]
popenv [131]
pushi.e 32
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[133]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [137]

:[134]
push.v self.sus
conv.v.i
pushenv [136]

:[135]
pushi.e 183
pop.v.i self.sprite_index
call.i scr_halt(argc=0)
popz.v

:[136]
popenv [135]
pushi.e 34
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[137]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [139]

:[138]
pushi.e 1
pop.v.i global.fe
push.s "obj_lancerscare2_slash_Step_0_gml_343_0"@4929
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
pushi.e 37
pop.v.i self.con

:[139]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [141]

:[140]
call.i d_ex(argc=0)
conv.v.b
not.b
b [142]

:[141]
push.e 0

:[142]
bf [end]

:[143]
pushi.e 75
pushenv [145]

:[144]
pushi.e 1
pop.v.i self.visible

:[145]
popenv [144]
push.v self.sus
pop.v.v self.s
push.v self.ral
pop.v.v self.r
call.i snd_free_all(argc=0)
popz.v
call.i scr_unmarkify_caterpillar(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i scr_caterpillar_facing(argc=1)
popz.v
pushi.e 1
pop.v.i global.facing
pushi.e 38
pop.v.i self.con
call.i scr_tempsave(argc=0)
popz.v
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v
pushglb.v global.plot
pushi.e 55
cmp.i.v LTE
bf [end]

:[146]
pushi.e 55
pop.v.i global.plot

:[end]