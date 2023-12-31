.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [25]

:[1]
push.v self.textimer
pushi.e 1
add.i.v
pop.v.v self.textimer
push.v self.textimer
pushi.e 6
cmp.i.v EQ
bf [3]

:[2]
pushi.e 41
pop.v.i global.typer
push.s "obj_legend_slash_Draw_0_gml_13_0"@10001
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e -10
push.v self.w
conv.v.i
pop.v.i [stacktop]self.depth

:[3]
push.v self.textimer
pushi.e 220
cmp.i.v EQ
bf [7]

:[4]
pushi.e 6
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
push.s "obj_legend_slash_Draw_0_gml_21_0"@10002
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e -10
push.v self.w
conv.v.i
pop.v.i [stacktop]self.depth
push.s "obj_legend_slash_Draw_0_gml_24_0"@10003
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 160
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e -10
push.v self.w
conv.v.i
pop.v.i [stacktop]self.depth

:[7]
push.v self.textimer
pushi.e 340
cmp.i.v EQ
bf [11]

:[8]
pushi.e 6
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
push.s "obj_legend_slash_Draw_0_gml_32_0"@10004
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e -10
push.v self.w
conv.v.i
pop.v.i [stacktop]self.depth
push.s "obj_legend_slash_Draw_0_gml_35_0"@10005
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 160
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e -10
push.v self.w
conv.v.i
pop.v.i [stacktop]self.depth

:[11]
push.v self.textimer
pushi.e 460
cmp.i.v EQ
bf [15]

:[12]
pushi.e 6
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
push.s "obj_legend_slash_Draw_0_gml_43_0"@10006
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 160
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e -10
push.v self.w
conv.v.i
pop.v.i [stacktop]self.depth

:[15]
pushi.e 48
push.v self.yoff
add.v.i
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
push.v self.ytimer
pushi.e 1
add.i.v
pop.v.v self.ytimer
push.v self.ytimer
pushi.e 4
cmp.i.v GTE
bf [17]

:[16]
push.v self.yoff
pushi.e -260
cmp.i.v GT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 0
pop.v.i self.ytimer
push.v self.yoff
pushi.e 2
sub.i.v
pop.v.v self.yoff

:[20]
push.v self.yoff
pushi.e -260
cmp.i.v LTE
bf [25]

:[21]
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 40
cmp.i.v EQ
bf [23]

:[22]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i audio_pause_sound(argc=1)
popz.v

:[23]
push.v self.contimer
pushi.e 100
cmp.i.v EQ
bf [25]

:[24]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.contimer
pushi.e 1
pop.v.i self.chunkfade
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [30]

:[26]
pushi.e 48
push.v self.yoff
add.v.i
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 40
cmp.i.v EQ
bf [30]

:[27]
pushi.e 6
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]

:[30]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [32]

:[31]
pushi.e 841
pop.v.i self.pic
push.d 19.656
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i audio_sound_set_track_position(argc=2)
popz.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i audio_resume_sound(argc=1)
popz.v
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.chunkfade
pushi.e 40
pop.v.i global.typer
push.s "obj_legend_slash_Draw_0_gml_98_0"@10008
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_legend_slash_Draw_0_gml_99_0"@10009
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[32]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [39]

:[33]
pushi.e 28
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 270
cmp.i.v EQ
bf [37]

:[34]
pushi.e 6
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]
push.s "obj_legend_slash_Draw_0_gml_113_0"@10010
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 160
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[37]
push.v self.contimer
pushi.e 276
cmp.i.v GTE
bf [39]

:[38]
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 0
pop.v.i self.contimer
pushi.e 5
pop.v.i self.con

:[39]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [66]

:[40]
push.v self.contimer
pushi.e 200
cmp.i.v LTE
bf [42]

:[41]
pushi.e 28
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v

:[42]
pushi.e 0
pop.v.i self.con_alph
push.v self.c_chunkamt
push.d 0.05
add.d.v
pop.v.v self.c_chunkamt
push.v self.c_chunkamt
push.d 0.25
cmp.d.v GTE
bf [44]

:[43]
push.d 0.25
pop.v.d self.con_alph

:[44]
push.v self.c_chunkamt
push.d 0.5
cmp.d.v GTE
bf [46]

:[45]
push.d 0.5
pop.v.d self.con_alph

:[46]
push.v self.c_chunkamt
push.d 0.75
cmp.d.v GTE
bf [48]

:[47]
push.d 0.75
pop.v.d self.con_alph

:[48]
push.v self.c_chunkamt
pushi.e 1
cmp.i.v GTE
bf [50]

:[49]
pushi.e 1
pop.v.i self.con_alph

:[50]
push.v self.contimer
pushi.e 200
cmp.i.v LTE
bf [52]

:[51]
push.v self.con_alph
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 28
conv.i.v
pushi.e 60
conv.i.v
pushi.e 1
conv.i.v
push.v self.pic
call.i draw_sprite_ext(argc=9)
popz.v

:[52]
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 120
cmp.i.v EQ
bf [54]

:[53]
pushi.e 1
pop.v.i self.chunkfade

:[54]
push.v self.contimer
pushi.e 130
cmp.i.v EQ
bf [58]

:[55]
pushi.e 6
pushenv [57]

:[56]
call.i instance_destroy(argc=0)
popz.v

:[57]
popenv [56]
push.s "obj_legend_slash_Draw_0_gml_151_0"@10013
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 80
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[58]
push.v self.contimer
pushi.e 210
cmp.i.v EQ
bf [60]

:[59]
pushi.e 0
pop.v.i self.chunkfade
push.d 0.2
pop.v.d self.fadespeed

:[60]
push.v self.contimer
pushi.e 230
cmp.i.v EQ
bf [62]

:[61]
pushi.e 1
pop.v.i self.chunkfade
push.d 0.03
pop.v.d self.fadespeed
push.i 16777215
pop.v.i self.fadecolor

:[62]
push.v self.contimer
pushi.e 275
cmp.i.v EQ
bf [66]

:[63]
pushi.e 6
pushenv [65]

:[64]
call.i instance_destroy(argc=0)
popz.v

:[65]
popenv [64]
push.s "obj_legend_slash_Draw_0_gml_170_0"@10014
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 185
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w
push.d 0.05
pop.v.d self.fadespeed
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i self.chunkfade
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.border
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 842
pop.v.i self.pic

:[66]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [95]

:[67]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.con_alph
push.v self.contimer
pushi.e 276
cmp.i.v GTE
bf [69]

:[68]
push.v self.c_chunkamt
push.d 0.05
add.d.v
pop.v.v self.c_chunkamt

:[69]
push.v self.c_chunkamt
push.d 0.25
cmp.d.v GTE
bf [71]

:[70]
push.d 0.25
pop.v.d self.con_alph

:[71]
push.v self.c_chunkamt
push.d 0.5
cmp.d.v GTE
bf [73]

:[72]
push.d 0.5
pop.v.d self.con_alph

:[73]
push.v self.c_chunkamt
push.d 0.75
cmp.d.v GTE
bf [75]

:[74]
push.d 0.75
pop.v.d self.con_alph

:[75]
push.v self.c_chunkamt
pushi.e 1
cmp.i.v GTE
bf [77]

:[76]
pushi.e 1
pop.v.i self.con_alph

:[77]
push.v self.con_alph
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.pic
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 138
cmp.i.v EQ
bf [81]

:[78]
pushi.e 6
pushenv [80]

:[79]
call.i instance_destroy(argc=0)
popz.v

:[80]
popenv [79]
push.s "obj_legend_slash_Draw_0_gml_205_0"@10015
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 185
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[81]
push.v self.contimer
pushi.e 276
cmp.i.v EQ
bf [85]

:[82]
pushi.e 6
pushenv [84]

:[83]
call.i instance_destroy(argc=0)
popz.v

:[84]
popenv [83]
push.s "obj_legend_slash_Draw_0_gml_212_0"@10016
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 185
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[85]
push.v self.contimer
pushi.e 414
cmp.i.v EQ
bf [89]

:[86]
pushi.e 6
pushenv [88]

:[87]
call.i instance_destroy(argc=0)
popz.v

:[88]
popenv [87]
push.s "obj_legend_slash_Draw_0_gml_219_0"@10017
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 185
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[89]
push.v self.contimer
pushi.e 520
cmp.i.v EQ
bf [91]

:[90]
push.d 0.04
pop.v.d self.fadespeed
pushi.e 0
pop.v.i self.fadecolor
pushi.e 1
pop.v.i self.chunkfade

:[91]
push.v self.contimer
pushi.e 551
cmp.i.v EQ
bf [95]

:[92]
pushi.e 6
pushenv [94]

:[93]
call.i instance_destroy(argc=0)
popz.v

:[94]
popenv [93]
push.s "obj_legend_slash_Draw_0_gml_233_0"@10018
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 185
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 0
pop.v.i self.chunkfade
pushi.e 7
pop.v.i self.con
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 843
pop.v.i self.pic

:[95]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [116]

:[96]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
push.v self.contimer
pushi.e 138
cmp.i.v EQ
bf [100]

:[97]
pushi.e 6
pushenv [99]

:[98]
call.i instance_destroy(argc=0)
popz.v

:[99]
popenv [98]
push.s "obj_legend_slash_Draw_0_gml_253_0"@10019
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 185
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[100]
pushi.e 0
pop.v.i self.con_alph
push.v self.contimer
pushi.e 138
cmp.i.v GTE
bf [102]

:[101]
push.v self.c_chunkamt
push.d 0.05
add.d.v
pop.v.v self.c_chunkamt

:[102]
push.v self.c_chunkamt
push.d 0.25
cmp.d.v GTE
bf [104]

:[103]
push.d 0.25
pop.v.d self.con_alph

:[104]
push.v self.c_chunkamt
push.d 0.5
cmp.d.v GTE
bf [106]

:[105]
push.d 0.5
pop.v.d self.con_alph

:[106]
push.v self.c_chunkamt
push.d 0.75
cmp.d.v GTE
bf [108]

:[107]
push.d 0.75
pop.v.d self.con_alph

:[108]
push.v self.c_chunkamt
pushi.e 1
cmp.i.v GTE
bf [110]

:[109]
pushi.e 1
pop.v.i self.con_alph

:[110]
push.v self.con_alph
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.pic
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 246
cmp.i.v EQ
bf [112]

:[111]
push.d 0.04
pop.v.d self.fadespeed
pushi.e 0
pop.v.i self.fadecolor
pushi.e 1
pop.v.i self.chunkfade

:[112]
push.v self.contimer
pushi.e 277
cmp.i.v GTE
bf [116]

:[113]
pushi.e 6
pushenv [115]

:[114]
call.i instance_destroy(argc=0)
popz.v

:[115]
popenv [114]
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 0
pop.v.i self.chunkfade
pushi.e 8
pop.v.i self.con
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 844
pop.v.i self.pic

:[116]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [154]

:[117]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.con_alph
push.v self.contimer
pushi.e 4
cmp.i.v EQ
bf [121]

:[118]
pushi.e 6
pushenv [120]

:[119]
call.i instance_destroy(argc=0)
popz.v

:[120]
popenv [119]
push.s "obj_legend_slash_Draw_0_gml_301_0"@10020
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 185
conv.i.v
pushi.e 20
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[121]
push.v self.contimer
pushi.e 69
cmp.i.v EQ
bf [123]

:[122]
push.s "obj_legend_slash_Draw_0_gml_309_0"@10021
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 185
conv.i.v
pushi.e 110
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[123]
push.v self.contimer
pushi.e 138
cmp.i.v EQ
bf [125]

:[124]
push.s "obj_legend_slash_Draw_0_gml_317_0"@10022
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 185
conv.i.v
pushi.e 200
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[125]
push.v self.contimer
pushi.e 69
cmp.i.v GTE
bf [127]

:[126]
push.v self.contimer
pushi.e 138
cmp.i.v LTE
b [128]

:[127]
push.e 0

:[128]
bf [139]

:[129]
push.v self.c_chunkamt
push.d 0.05
add.d.v
pop.v.v self.c_chunkamt
push.v self.c_chunkamt
push.d 0.25
cmp.d.v GTE
bf [131]

:[130]
push.d 0.25
pop.v.d self.con_alph

:[131]
push.v self.c_chunkamt
push.d 0.5
cmp.d.v GTE
bf [133]

:[132]
push.d 0.5
pop.v.d self.con_alph

:[133]
push.v self.c_chunkamt
push.d 0.75
cmp.d.v GTE
bf [135]

:[134]
push.d 0.75
pop.v.d self.con_alph

:[135]
push.v self.c_chunkamt
pushi.e 1
cmp.i.v GTE
bf [137]

:[136]
pushi.e 1
pop.v.i self.con_alph

:[137]
push.v self.c_chunkamt
pushi.e 1
cmp.i.v GT
bf [139]

:[138]
pushi.e 1
pop.v.i self.c_chunkamt

:[139]
push.v self.contimer
pushi.e 138
cmp.i.v GTE
bf [148]

:[140]
pushi.e 1
pop.v.i self.con_alph
push.v self.c_chunkamt
push.d 0.05
add.d.v
pop.v.v self.c_chunkamt
push.v self.c_chunkamt
push.d 1.25
cmp.d.v GTE
bf [142]

:[141]
push.d 1.25
pop.v.d self.con_alph

:[142]
push.v self.c_chunkamt
push.d 1.5
cmp.d.v GTE
bf [144]

:[143]
push.d 1.5
pop.v.d self.con_alph

:[144]
push.v self.c_chunkamt
push.d 1.75
cmp.d.v GTE
bf [146]

:[145]
push.d 1.75
pop.v.d self.con_alph

:[146]
push.v self.c_chunkamt
pushi.e 2
cmp.i.v GTE
bf [148]

:[147]
pushi.e 2
pop.v.i self.con_alph

:[148]
push.v self.con_alph
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.pic
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.con_alph
pushi.e 1
sub.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.pic
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 246
cmp.i.v EQ
bf [150]

:[149]
push.d 0.04
pop.v.d self.fadespeed
pushi.e 0
pop.v.i self.fadecolor
pushi.e 1
pop.v.i self.chunkfade

:[150]
push.v self.contimer
pushi.e 277
cmp.i.v GTE
bf [154]

:[151]
pushi.e 6
pushenv [153]

:[152]
call.i instance_destroy(argc=0)
popz.v

:[153]
popenv [152]
push.s "obj_legend_slash_Draw_0_gml_356_0"@10023
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 185
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 0
pop.v.i self.chunkfade
pushi.e 9
pop.v.i self.con
pushi.e 845
pop.v.i self.pic

:[154]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [181]

:[155]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.con_alph
push.v self.contimer
pushi.e 276
cmp.i.v GTE
bf [157]

:[156]
push.v self.c_chunkamt
push.d 0.05
add.d.v
pop.v.v self.c_chunkamt

:[157]
push.v self.c_chunkamt
push.d 0.25
cmp.d.v GTE
bf [159]

:[158]
push.d 0.25
pop.v.d self.con_alph

:[159]
push.v self.c_chunkamt
push.d 0.5
cmp.d.v GTE
bf [161]

:[160]
push.d 0.5
pop.v.d self.con_alph

:[161]
push.v self.c_chunkamt
push.d 0.75
cmp.d.v GTE
bf [163]

:[162]
push.d 0.75
pop.v.d self.con_alph

:[163]
push.v self.c_chunkamt
pushi.e 1
cmp.i.v GTE
bf [165]

:[164]
pushi.e 1
pop.v.i self.con_alph

:[165]
push.v self.con_alph
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.pic
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 138
cmp.i.v EQ
bf [169]

:[166]
pushi.e 6
pushenv [168]

:[167]
call.i instance_destroy(argc=0)
popz.v

:[168]
popenv [167]
push.s "obj_legend_slash_Draw_0_gml_387_0"@10024
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 185
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[169]
push.v self.contimer
pushi.e 276
cmp.i.v EQ
bf [173]

:[170]
pushi.e 6
pushenv [172]

:[171]
call.i instance_destroy(argc=0)
popz.v

:[172]
popenv [171]
push.s "obj_legend_slash_Draw_0_gml_394_0"@10025
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 185
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[173]
push.v self.contimer
pushi.e 414
cmp.i.v EQ
bf [177]

:[174]
pushi.e 6
pushenv [176]

:[175]
call.i instance_destroy(argc=0)
popz.v

:[176]
popenv [175]
push.s "obj_legend_slash_Draw_0_gml_401_0"@10026
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 185
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w
push.d 0.04
pop.v.d self.fadespeed
pushi.e 0
pop.v.i self.fadecolor
pushi.e 1
pop.v.i self.chunkfade

:[177]
push.v self.contimer
pushi.e 552
cmp.i.v GTE
bf [181]

:[178]
pushi.e 0
pop.v.i self.xoff
pushi.e 0
pop.v.i self.yoff
push.d 0.02
pop.v.d self.fadespeed
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 0
pop.v.i self.chunkfade
pushi.e 10
pop.v.i self.con
pushi.e 0
pop.v.i self.c_chunkamt
pushi.e 846
pop.v.i self.pic
pushi.e 1
pop.v.i self.border
pushi.e 0
pop.v.i self.ytimer
pushi.e 0
pop.v.i self.xtimer
pushi.e 6
pushenv [180]

:[179]
call.i instance_destroy(argc=0)
popz.v

:[180]
popenv [179]
push.s "obj_legend_slash_Draw_0_gml_426_0"@10027
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[181]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [223]

:[182]
pushi.e 28
push.v self.yoff
add.v.i
pushi.e 60
push.v self.xoff
add.v.i
pushi.e 0
conv.i.v
push.v self.pic
call.i draw_sprite(argc=4)
popz.v
push.v self.ytimer
pushi.e 1
add.i.v
pop.v.v self.ytimer
push.v self.ytimer
pushi.e 4
cmp.i.v GTE
bf [184]

:[183]
push.v self.yoff
pushi.e -110
cmp.i.v GT
b [185]

:[184]
push.e 0

:[185]
bf [187]

:[186]
pushi.e 0
pop.v.i self.ytimer
push.v self.yoff
pushi.e 2
sub.i.v
pop.v.v self.yoff

:[187]
push.v self.contimer
pushi.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 138
cmp.i.v EQ
bf [191]

:[188]
pushi.e 6
pushenv [190]

:[189]
call.i instance_destroy(argc=0)
popz.v

:[190]
popenv [189]
push.s "obj_legend_slash_Draw_0_gml_451_0"@10028
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 160
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[191]
push.v self.contimer
pushi.e 276
cmp.i.v EQ
bf [195]

:[192]
pushi.e 6
pushenv [194]

:[193]
call.i instance_destroy(argc=0)
popz.v

:[194]
popenv [193]
push.s "obj_legend_slash_Draw_0_gml_459_0"@10029
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 160
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[195]
push.v self.contimer
pushi.e 444
cmp.i.v EQ
bf [199]

:[196]
pushi.e 6
pushenv [198]

:[197]
call.i instance_destroy(argc=0)
popz.v

:[198]
popenv [197]
push.s "obj_legend_slash_Draw_0_gml_466_0"@10030
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[199]
push.v self.contimer
pushi.e 640
cmp.i.v EQ
bf [203]

:[200]
pushi.e 6
pushenv [202]

:[201]
call.i instance_destroy(argc=0)
popz.v

:[202]
popenv [201]
push.s "obj_legend_slash_Draw_0_gml_473_0"@10031
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 160
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.w

:[203]
push.v self.contimer
pushi.e 444
cmp.i.v GTE
bf [209]

:[204]
push.v self.xtimer
pushi.e 1
add.i.v
pop.v.v self.xtimer
push.v self.xoff
pushi.e -60
cmp.i.v GT
bf [206]

:[205]
push.v self.xtimer
pushi.e 4
cmp.i.v GTE
b [207]

:[206]
push.e 0

:[207]
bf [209]

:[208]
pushi.e 0
pop.v.i self.xtimer
push.v self.xoff
pushi.e 2
sub.i.v
pop.v.v self.xoff

:[209]
push.v self.contimer
pushi.e 760
cmp.i.v EQ
bf [211]

:[210]
push.d 0.02
pop.v.d self.fadespeed
pushi.e 1
pop.v.i self.chunkfade

:[211]
push.v self.contimer
pushi.e 880
cmp.i.v EQ
bf [213]

:[212]
push.v self.skipped
pushi.e 0
cmp.i.v EQ
b [214]

:[213]
push.e 0

:[214]
bf [216]

:[215]
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i snd_free(argc=1)
popz.v
pushi.e 0
pushi.e -5
pushi.e 6
pop.v.i [array]global.flag
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.f
push.d 0.02
push.v self.f
conv.v.i
pop.v.d [stacktop]self.fadespeed

:[216]
push.v self.contimer
pushi.e 960
cmp.i.v EQ
bf [218]

:[217]
push.v self.skipped
pushi.e 0
cmp.i.v EQ
b [219]

:[218]
push.e 0

:[219]
bf [223]

:[220]
pushglb.v global.plot
pushi.e 20
cmp.i.v EQ
bf [222]

:[221]
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 46
conv.i.v
call.i room_goto(argc=1)
popz.v
b [223]

:[222]
pushi.e 137
conv.i.v
call.i room_goto(argc=1)
popz.v

:[223]
push.v self.border
pushi.e 1
cmp.i.v EQ
bf [225]

:[224]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 27
conv.i.v
pushi.e 330
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 300
conv.i.v
pushi.e 59
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 300
conv.i.v
pushi.e 260
conv.i.v
pushi.e -10
conv.i.v
pushi.e 400
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 138
conv.i.v
pushi.e 330
conv.i.v
pushi.e 400
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[225]
push.v self.chunkfade
pushi.e 0
cmp.i.v EQ
bf [227]

:[226]
push.v self.chunkamt
pushi.e 0
cmp.i.v GT
b [228]

:[227]
push.e 0

:[228]
bf [230]

:[229]
push.v self.chunkamt
push.v self.fadespeed
sub.v.v
pop.v.v self.chunkamt

:[230]
push.v self.chunkfade
pushi.e 1
cmp.i.v EQ
bf [232]

:[231]
push.v self.chunkamt
pushi.e 1
cmp.i.v LT
b [233]

:[232]
push.e 0

:[233]
bf [235]

:[234]
push.v self.chunkamt
push.v self.fadespeed
add.v.v
pop.v.v self.chunkamt

:[235]
push.v self.fadecolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.alph
push.v self.chunkamt
push.d 0.25
cmp.d.v GTE
bf [237]

:[236]
push.d 0.25
pop.v.d self.alph

:[237]
push.v self.chunkamt
push.d 0.5
cmp.d.v GTE
bf [239]

:[238]
push.d 0.5
pop.v.d self.alph

:[239]
push.v self.chunkamt
push.d 0.75
cmp.d.v GTE
bf [241]

:[240]
push.d 0.75
pop.v.d self.alph

:[241]
push.v self.chunkamt
pushi.e 1
cmp.i.v GTE
bf [243]

:[242]
pushi.e 1
pop.v.i self.alph

:[243]
push.v self.alph
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 330
conv.i.v
pushi.e 330
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.ingame
pushi.e 0
cmp.i.v EQ
bf [end]

:[244]
call.i button1_p(argc=0)
conv.v.b
bf [246]

:[245]
push.v self.skipped
pushi.e 0
cmp.i.v EQ
b [247]

:[246]
push.e 0

:[247]
bf [249]

:[248]
pushi.e 1
pop.v.i self.skipped
pushi.e 0
pop.v.i self.skiptimer
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.f
push.d 0.08
push.v self.f
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v

:[249]
push.v self.skipped
pushi.e 1
cmp.i.v EQ
bf [251]

:[250]
push.v self.skiptimer
pushi.e 1
add.i.v
pop.v.v self.skiptimer

:[251]
push.v self.skiptimer
pushi.e 19
cmp.i.v EQ
bf [253]

:[252]
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i snd_free(argc=1)
popz.v
pushi.e 0
pushi.e -5
pushi.e 6
pop.v.i [array]global.flag

:[253]
push.v self.skiptimer
pushi.e 20
cmp.i.v EQ
bf [end]

:[254]
pushi.e 137
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]