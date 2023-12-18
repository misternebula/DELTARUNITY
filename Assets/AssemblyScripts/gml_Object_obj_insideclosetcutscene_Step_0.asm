.localvar 0 arguments

:[0]
push.v self.papeshake
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
pushi.e 7
pushenv [4]

:[2]
push.v self.vspeed
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.xstart
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 10
add.i.v
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.y

:[4]
popenv [2]

:[5]
push.v self.papefall
pushi.e 1
cmp.i.v EQ
bf [11]

:[6]
push.v self.papetimer
pushi.e 1
add.i.v
pop.v.v self.papetimer
push.v self.papetimer
pushi.e 3
cmp.i.v GTE
bf [11]

:[7]
push.v self.papei
push.v self.papeno
cmp.v.v LT
bf [11]

:[8]
pushi.e 143
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 143
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -1
push.v self.papei
conv.v.i
push.v [array]self.pape
conv.v.i
pushenv [10]

:[9]
pushi.e 109
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.image_speed
push.d 0.5
pop.v.d self.gravity

:[10]
popenv [9]
pushi.e 0
pop.v.i self.papetimer
push.v self.papei
pushi.e 1
add.i.v
pop.v.v self.papei

:[11]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v 326.x
pushi.e 70
cmp.i.v LTE
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 71
pop.v.i 326.x
pushi.e 7
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 10
pop.v.i global.typer
pushi.e 1
pop.v.i self.dex
pushi.e 1
pop.v.i global.interact
push.s "obj_insideclosetcutscene_slash_Step_0_gml_45_0"@3634
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

:[16]
push.v self.dex
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.dex

:[21]
push.v self.con
push.d 1.5
cmp.d.v EQ
bf [23]

:[22]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 10
pop.v.i global.typer
push.s "obj_insideclosetcutscene_slash_Step_0_gml_62_0"@3635
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_63_0"@3636
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_64_0"@3637
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
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

:[23]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.hspeed
pushi.e 3
pop.v.i self.con

:[28]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [34]

:[29]
push.v 326.px
pushi.e 3
cmp.i.v GTE
bf [31]

:[30]
push.v 326.px
pop.v.v self.hspeed
b [32]

:[31]
pushi.e 3
pop.v.i self.hspeed

:[32]
push.v self.x
pushi.e 310
cmp.i.v GTE
bf [34]

:[33]
call.i scr_halt(argc=0)
popz.v
pushi.e 176
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.con

:[34]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [37]

:[35]
push.v 326.x
pushi.e 270
cmp.i.v GTE
bf [37]

:[36]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 169
pop.v.i self.sprite_index
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 10
pop.v.i global.typer
push.s "obj_insideclosetcutscene_slash_Step_0_gml_97_0"@3641
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_98_0"@3642
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[40]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [42]

:[41]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 173
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.hspeed
pushi.e 6
pop.v.i self.con

:[45]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [51]

:[46]
push.v 326.px
pushi.e 3
cmp.i.v GTE
bf [48]

:[47]
push.v 326.px
pop.v.v self.hspeed
b [49]

:[48]
pushi.e 3
pop.v.i self.hspeed

:[49]
push.v self.x
pushi.e 490
cmp.i.v GTE
bf [51]

:[50]
call.i scr_halt(argc=0)
popz.v
pushi.e 173
pop.v.i self.sprite_index
pushi.e 7
pop.v.i self.con

:[51]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [54]

:[52]
push.v 326.x
pushi.e 450
cmp.i.v GTE
bf [54]

:[53]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 169
pop.v.i self.sprite_index
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 10
pop.v.i global.typer
push.s "obj_insideclosetcutscene_slash_Step_0_gml_134_0"@3643
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_135_0"@3644
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_136_0"@3645
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 8
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[57]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [59]

:[58]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 173
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.hspeed
pushi.e 9
pop.v.i self.con

:[62]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [68]

:[63]
push.v 326.px
pushi.e 3
cmp.i.v GTE
bf [65]

:[64]
push.v 326.px
pop.v.v self.hspeed
b [66]

:[65]
pushi.e 3
pop.v.i self.hspeed

:[66]
push.v self.x
pushi.e 670
cmp.i.v GTE
bf [68]

:[67]
call.i scr_halt(argc=0)
popz.v
pushi.e 173
pop.v.i self.sprite_index
pushi.e 10
pop.v.i self.con

:[68]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [71]

:[69]
push.v 326.x
pushi.e 630
cmp.i.v GTE
bf [71]

:[70]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
pushi.e 169
pop.v.i self.sprite_index
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 10
pop.v.i global.typer
push.s "obj_insideclosetcutscene_slash_Step_0_gml_180_0"@3646
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_181_0"@3647
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_182_0"@3648
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_183_0"@3649
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_184_0"@3650
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_185_0"@3651
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_186_0"@3652
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_187_0"@3653
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 15
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[74]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [76]

:[75]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [81]

:[78]
pushi.e 326
pushenv [80]

:[79]
push.v self.x
pushi.e 140
sub.i.v
pop.v.v self.x
pushi.e 1
pop.v.i self.fun
pushi.e 836
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e -3
pop.v.i self.hspeed

:[80]
popenv [79]
push.v self.x
pushi.e 140
sub.i.v
pop.v.v self.x
pushi.e -3
pop.v.i self.hspeed
pushi.e 169
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 16
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[81]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [87]

:[82]
push.s " "@24
conv.s.v
call.i scr_windowcaption(argc=1)
popz.v
pushi.e 170
pop.v.i self.sprite_index
call.i scr_halt(argc=0)
popz.v
pushi.e 326
pushenv [84]

:[83]
call.i scr_halt(argc=0)
popz.v

:[84]
popenv [83]
push.i 1000000
conv.i.v
call.i tile_layer_hide(argc=1)
popz.v
call.i snd_free_all(argc=0)
popz.v
pushi.e 7
pushenv [86]

:[85]
push.i 8421504
pop.v.i self.image_blend

:[86]
popenv [85]
pushi.e 33
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 18
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[87]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [89]

:[88]
pushi.e 0
pop.v.i global.fe
push.s "obj_insideclosetcutscene_slash_Step_0_gml_237_0"@3657
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
pushi.e 51
pop.v.i self.con

:[89]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [91]

:[90]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [92]

:[91]
push.e 0

:[92]
bf [94]

:[93]
push.v self.x
pop.v.v self.remxx
pushi.e -5
pop.v.i self.hspeed
push.d 0.5
pop.v.d self.image_speed
pushi.e 52
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[94]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [98]

:[95]
call.i scr_halt(argc=0)
popz.v
push.v self.x
pop.v.v self.remsx
push.v self.y
pop.v.v self.remsy
pushi.e 326
pushenv [97]

:[96]
push.v self.x
pop.v.v self.remsx
push.v self.y
pop.v.v self.remsy

:[97]
popenv [96]
pushi.e 9
pop.v.i global.fe
push.s "obj_insideclosetcutscene_slash_Step_0_gml_266_0"@3662
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_267_0"@3663
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
pushi.e 54
pop.v.i self.con

:[98]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [100]

:[99]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
pushi.e 142
conv.i.v
call.i snd_loop(argc=1)
pop.v.v self.pape_sfx
pushi.e 1
pop.v.i self.papeshake
pushi.e 55
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[103]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [105]

:[104]
pushi.e 0
pop.v.i global.fe
push.s "obj_insideclosetcutscene_slash_Step_0_gml_284_0"@3666
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
pushi.e 57
pop.v.i self.con

:[105]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [107]

:[106]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [108]

:[107]
push.e 0

:[108]
bf [110]

:[109]
push.d 0.2
pop.v.d self.image_speed
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 58
pop.v.i self.con

:[110]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [112]

:[111]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x

:[112]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [114]

:[113]
call.i scr_halt(argc=0)
popz.v
pushi.e 60
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[114]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [116]

:[115]
push.s "obj_insideclosetcutscene_slash_Step_0_gml_312_0"@3667
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_insideclosetcutscene_slash_Step_0_gml_313_0"@3668
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
pushi.e 62
pop.v.i self.con

:[116]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [118]

:[117]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [119]

:[118]
push.e 0

:[119]
bf [123]

:[120]
push.v self.pape_sfx
call.i snd_stop(argc=1)
popz.v
pushi.e 1
pop.v.i self.papefall
pushi.e 69
pop.v.i self.con
pushi.e 326
pushenv [122]

:[121]
push.d 0.8
pop.v.d self.hspeed
push.d 0.1
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.cutscene

:[122]
popenv [121]
push.d 0.8
pop.v.d self.hspeed
push.d 0.1
pop.v.d self.image_speed
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[123]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [125]

:[124]
push.v self.con
pushi.e 70
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [132]

:[127]
pushi.e 0
pop.v.i self.hspeed
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 326
pushenv [129]

:[128]
pushi.e 0
pop.v.i self.visible

:[129]
popenv [128]
pushi.e 838
conv.i.v
push.v 326.y
push.v 326.x
call.i scr_marker(argc=3)
pop.v.v self.k
push.v self.k
conv.v.i
pushenv [131]

:[130]
pushi.e 1
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.gravity

:[131]
popenv [130]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.gravity
pushi.e 167
pop.v.i self.sprite_index
pushi.e 40
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 21
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[132]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [134]

:[133]
pushi.e 139
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 5
pop.v.i self.rate
push.d 1.8
pop.v.d self.rate_alpha
pushi.e 1
pop.v.i self.bgdraw
pushi.e 23
pop.v.i self.con
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[134]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [136]

:[135]
pushi.e 140
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 25
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[136]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [138]

:[137]
push.s "ocean.ogg"@3673
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.d 0.9
conv.d.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 0
conv.i.v
push.d 0.2
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_volume(argc=3)
popz.v
pushi.e 200
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_volume(argc=3)
popz.v
pushi.e 29
pop.v.i self.con
pushi.e 260
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[138]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [140]

:[139]
pushi.e 10
pop.v.i global.plot
call.i scr_become_dark(argc=0)
popz.v
pushi.e 34
conv.i.v
call.i room_goto(argc=1)
popz.v

:[140]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [end]

:[141]
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i snd_free(argc=1)
popz.v
pushi.e 31
pop.v.i self.con

:[end]