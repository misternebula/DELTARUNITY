.localvar 0 arguments

:[0]
push.v self.con
pushi.e 76
cmp.i.v LT
bf [403]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [17]

:[2]
pushi.e 83
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 84
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
call.i snd_free_all(argc=0)
popz.v
push.s "wind.ogg"@6621
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.d 0.7
conv.d.v
push.d 0.5
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 1
pop.v.i self.part
pushi.e 326
pushenv [8]

:[7]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pop.v.i self.cutscene

:[8]
popenv [7]
pushi.e 165
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.visible

:[10]
popenv [9]
pushi.e 1
pop.v.i self.con
pushi.e 829
conv.i.v
pushi.e 200
conv.i.v
pushi.e -20
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.k
pushi.e 183
conv.i.v
pushi.e 180
conv.i.v
pushi.e -75
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
pushi.e 209
conv.i.v
pushi.e 190
conv.i.v
pushi.e -130
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.r
pushi.e 78
pushenv [12]

:[11]
pushi.e 4
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[12]
popenv [11]
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [16]

:[13]
pushi.e 78
pushenv [15]

:[14]
pushi.e 8
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[15]
popenv [14]
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
pushi.e 216
conv.i.v
pushi.e 194
conv.i.v
pushi.e 512
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.l

:[17]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pop.v.i global.interact

:[19]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [24]

:[20]
pushi.e 78
pushenv [22]

:[21]
call.i scr_halt(argc=0)
popz.v

:[22]
popenv [21]
pushi.e 3
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [28]

:[25]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 2
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_72_0"@6622
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[27]
pushi.e 5
pop.v.i self.con

:[28]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [30]

:[29]
call.i d_ex(argc=0)
conv.v.b
not.b
b [31]

:[30]
push.e 0

:[31]
bf [40]

:[32]
pushi.e 763
conv.i.v
pushi.e 120
conv.i.v
pushi.e 820
pushglb.v global.xoff
add.v.i
call.i scr_dark_marker(argc=3)
pop.v.v self.king
push.v self.l
conv.v.i
pushenv [34]

:[33]
pushi.e 5
pop.v.i self.hspeed

:[34]
popenv [33]
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i scr_pan(argc=3)
popz.v

:[36]
push.d 5.1
pop.v.d self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [40]

:[37]
push.v self.l
conv.v.i
pushenv [39]

:[38]
pushi.e 10
pop.v.i self.hspeed

:[39]
popenv [38]
pushi.e 45
conv.i.v
pushi.e 0
conv.i.v
pushi.e 16
conv.i.v
call.i scr_pan(argc=3)
popz.v
push.d 5.1
pop.v.d self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[40]
push.v self.con
push.d 6.1
cmp.d.v EQ
bf [44]

:[41]
push.v self.l
conv.v.i
pushenv [43]

:[42]
pushi.e 0
pop.v.i self.hspeed

:[43]
popenv [42]
pushi.e 6
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[44]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [51]

:[45]
push.v self.l
conv.v.i
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.hspeed

:[47]
popenv [46]
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
pushi.e 3
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_110_0"@6623
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_kingface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_112_0"@6625
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_113_0"@6626
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 4
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_115_0"@6627
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_116_0"@6628
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_117_0"@6629
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_118_0"@6630
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[49]
pushi.e 8
pop.v.i self.con
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushi.e 9
pop.v.i self.con

:[51]
push.v self.con
pushi.e 8
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
bf [58]

:[55]
push.v self.king
conv.v.i
pushenv [57]

:[56]
pushi.e 757
pop.v.i self.sprite_index
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
call.i scr_shakeobj(argc=0)
popz.v

:[57]
popenv [56]
pushi.e 0
pop.v.i global.fc
pushi.e 36
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_137_0"@6632
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
push.s "obj_kingcutscene_slash_Step_0_gml_139_0"@6633
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_140_0"@6634
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_kingface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_142_0"@6635
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 6
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_144_0"@6636
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
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

:[58]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [60]

:[59]
call.i d_ex(argc=0)
conv.v.b
not.b
b [61]

:[60]
push.e 0

:[61]
bf [76]

:[62]
push.v self.king
conv.v.i
pushenv [64]

:[63]
pushi.e 757
pop.v.i self.sprite_index

:[64]
popenv [63]
push.v self.k
conv.v.i
pushenv [66]

:[65]
pushi.e 440
pushglb.v global.xoff
add.v.i
pop.v.v self.x
pushi.e 50
pop.v.i self.y
call.i scr_depth(argc=0)
popz.v

:[66]
popenv [65]
push.v self.s
conv.v.i
pushenv [68]

:[67]
pushi.e 440
pushglb.v global.xoff
add.v.i
pop.v.v self.x
pushi.e 130
pop.v.i self.y
call.i scr_depth(argc=0)
popz.v

:[68]
popenv [67]
push.v self.r
conv.v.i
pushenv [70]

:[69]
pushi.e 440
pushglb.v global.xoff
add.v.i
pop.v.v self.x
pushi.e 210
pop.v.i self.y
call.i scr_depth(argc=0)
popz.v

:[70]
popenv [69]
push.v self.l
conv.v.i
pushenv [72]

:[71]
pushi.e 220
pop.v.i self.sprite_index

:[72]
popenv [71]
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -4
conv.i.v
call.i scr_pan(argc=3)
popz.v

:[74]
pushi.e 10
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e -8
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[76]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [80]

:[77]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_175_0"@6637
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
push.s "obj_kingcutscene_slash_Step_0_gml_177_0"@6638
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[79]
pushi.e 12
pop.v.i self.con

:[80]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [82]

:[81]
call.i d_ex(argc=0)
conv.v.b
not.b
b [83]

:[82]
push.e 0

:[83]
bf [89]

:[84]
push.v self.l
conv.v.i
pushenv [86]

:[85]
pushi.e 216
pop.v.i self.sprite_index

:[86]
popenv [85]
pushi.e 36
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_187_0"@6639
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_189_0"@6640
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [88]

:[87]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[88]
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
push.v self.king
conv.v.i
pushenv [95]

:[94]
pushi.e -2
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.image_speed

:[95]
popenv [94]
pushi.e 14
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[96]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [102]

:[97]
push.v self.l
conv.v.i
pushenv [99]

:[98]
pushi.e 0
pop.v.i self.visible

:[99]
popenv [98]
push.v self.king
conv.v.i
pushenv [101]

:[100]
pushi.e 0
pop.v.i self.hspeed
pushi.e 753
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.2
pop.v.d self.image_speed

:[101]
popenv [100]
pushi.e 16
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[102]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [110]

:[103]
push.v self.s
conv.v.i
pushenv [105]

:[104]
pushi.e 185
pop.v.i self.sprite_index

:[105]
popenv [104]
push.v self.king
conv.v.i
pushenv [107]

:[106]
pushi.e 3
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[107]
popenv [106]
pushi.e 36
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 0
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_223_0"@6641
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_225_0"@6642
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[109]
push.d 17.1
pop.v.d self.con

:[110]
push.v self.con
push.d 17.1
cmp.d.v EQ
bf [112]

:[111]
call.i d_ex(argc=0)
conv.v.b
not.b
b [113]

:[112]
push.e 0

:[113]
bf [117]

:[114]
push.v self.king
conv.v.i
pushenv [116]

:[115]
pushi.e 3
pop.v.i self.image_index
push.d 0.2
pop.v.d self.image_speed

:[116]
popenv [115]
push.d 17.2
pop.v.d self.con

:[117]
push.v self.con
push.d 17.2
cmp.d.v EQ
bf [120]

:[118]
push.v self.king
conv.v.i
push.v [stacktop]self.image_index
pushi.e 5
cmp.i.v GTE
bf [120]

:[119]
pushi.e 5
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_speed
push.d 17.3
pop.v.d self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[120]
push.v self.con
push.d 18.3
cmp.d.v EQ
bf [122]

:[121]
call.i d_ex(argc=0)
conv.v.b
not.b
b [123]

:[122]
push.e 0

:[123]
bf [126]

:[124]
pushi.e 36
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_251_0"@6643
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_252_0"@6644
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_253_0"@6645
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_254_0"@6646
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_255_0"@6647
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "A"@366
conv.s.v
pushi.e 5
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_257_0"@6648
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 19
pop.v.i self.con
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [126]

:[125]
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
pushi.e 19
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
bf [137]

:[130]
call.i snd_free_all(argc=0)
popz.v
pushi.e 34
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.s
conv.v.i
pushenv [132]

:[131]
pushi.e 194
pop.v.i self.sprite_index

:[132]
popenv [131]
push.v self.r
conv.v.i
pushenv [134]

:[133]
pushi.e 496
pop.v.i self.sprite_index

:[134]
popenv [133]
push.v self.king
conv.v.i
pushenv [136]

:[135]
pushi.e 5
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed

:[136]
popenv [135]
pushi.e 20
pop.v.i self.con
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[137]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [141]

:[138]
push.v self.king
conv.v.i
pushenv [140]

:[139]
pushi.e 0
pop.v.i self.image_speed
pushi.e 7
pop.v.i self.image_index

:[140]
popenv [139]
pushi.e 22
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[141]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [147]

:[142]
push.v self.king
conv.v.i
pushenv [144]

:[143]
pushi.e 0
pop.v.i self.image_speed
pushi.e 7
pop.v.i self.image_index

:[144]
popenv [143]
pushi.e 36
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_285_0"@6649
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [146]

:[145]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[146]
pushi.e 24
pop.v.i self.con

:[147]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [149]

:[148]
call.i d_ex(argc=0)
conv.v.b
not.b
b [150]

:[149]
push.e 0

:[150]
bf [156]

:[151]
pushi.e 64
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.r
conv.v.i
pushenv [153]

:[152]
pushi.e 209
pop.v.i self.sprite_index

:[153]
popenv [152]
push.v self.s
conv.v.i
pushenv [155]

:[154]
pushi.e 478
pop.v.i self.sprite_index
pushi.e 8
pop.v.i self.hspeed

:[155]
popenv [154]
pushi.e 25
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[156]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [160]

:[157]
push.v self.s
conv.v.i
pushenv [159]

:[158]
call.i scr_halt(argc=0)
popz.v

:[159]
popenv [158]
pushi.e 27
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[160]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [164]

:[161]
push.s "GALLERY.ogg"@6650
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_316_0"@6651
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
call.i scr_noface(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_kingface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_319_0"@6652
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_320_0"@6653
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_321_0"@6654
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [163]

:[162]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[163]
pushi.e 30
pop.v.i self.con

:[164]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [166]

:[165]
call.i d_ex(argc=0)
conv.v.b
not.b
b [167]

:[166]
push.e 0

:[167]
bf [171]

:[168]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.king
conv.v.i
pushenv [170]

:[169]
push.d 0.25
pop.v.d self.image_speed

:[170]
popenv [169]
pushi.e 31
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[171]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [176]

:[172]
push.v self.king
conv.v.i
pushenv [174]

:[173]
pushi.e 9
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[174]
popenv [173]
pushi.e 33
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [176]

:[175]
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[176]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [179]

:[177]
pushi.e 0
pop.v.i global.fc
pushi.e 36
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_348_0"@6655
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_349_0"@6656
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
push.d 34.1
pop.v.d self.con
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [179]

:[178]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[179]
push.v self.con
push.d 34.1
cmp.d.v EQ
bf [181]

:[180]
call.i d_ex(argc=0)
conv.v.b
not.b
b [182]

:[181]
push.e 0

:[182]
bf [184]

:[183]
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 34.2
pop.v.d self.con

:[184]
push.v self.con
push.d 35.2
cmp.d.v EQ
bf [187]

:[185]
push.s "obj_kingcutscene_slash_Step_0_gml_363_0"@6657
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
push.d 35.3
pop.v.d self.con
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [187]

:[186]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[187]
push.v self.con
push.d 35.3
cmp.d.v EQ
bf [189]

:[188]
call.i d_ex(argc=0)
conv.v.b
not.b
b [190]

:[189]
push.e 0

:[190]
bf [193]

:[191]
pushi.e 36
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [193]

:[192]
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[193]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [195]

:[194]
call.i d_ex(argc=0)
conv.v.b
not.b
b [196]

:[195]
push.e 0

:[196]
bf [200]

:[197]
push.v self.s
conv.v.i
pushenv [199]

:[198]
pushi.e 185
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e -2
pop.v.i self.hspeed

:[199]
popenv [198]
pushi.e 38
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[200]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [205]

:[201]
push.v self.s
conv.v.i
pushenv [203]

:[202]
call.i scr_halt(argc=0)
popz.v

:[203]
popenv [202]
push.d 39.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [205]

:[204]
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[205]
push.v self.con
push.d 40.1
cmp.d.v EQ
bf [208]

:[206]
pushi.e 12
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_396_0"@6658
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e 41
pop.v.i self.con
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [208]

:[207]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[208]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [210]

:[209]
call.i d_ex(argc=0)
conv.v.b
not.b
b [211]

:[210]
push.e 0

:[211]
bf [214]

:[212]
push.d 40.2
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [214]

:[213]
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[214]
push.v self.con
push.d 41.2
cmp.d.v EQ
bf [216]

:[215]
call.i d_ex(argc=0)
conv.v.b
not.b
b [217]

:[216]
push.e 0

:[217]
bf [226]

:[218]
push.v self.r
conv.v.i
pushenv [220]

:[219]
pushi.e 773
pop.v.i self.sprite_index

:[220]
popenv [219]
push.v self.s
conv.v.i
pushenv [222]

:[221]
pushi.e 785
pop.v.i self.sprite_index

:[222]
popenv [221]
push.v self.k
conv.v.i
pushenv [224]

:[223]
pushi.e 766
pop.v.i self.sprite_index

:[224]
popenv [223]
pushi.e 42
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [226]

:[225]
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[226]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [230]

:[227]
push.v self.king
conv.v.i
pushenv [229]

:[228]
pushi.e -1
pop.v.i self.hspeed

:[229]
popenv [228]
pushi.e 44
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[230]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [234]

:[231]
push.v self.king
conv.v.i
pushenv [233]

:[232]
pushi.e 0
pop.v.i self.hspeed

:[233]
popenv [232]
pushi.e 46
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[234]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [238]

:[235]
pushi.e 36
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_437_0"@6659
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [237]

:[236]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[237]
pushi.e 48
pop.v.i self.con

:[238]
push.v self.con
pushi.e 48
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
bf [246]

:[242]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.k
pushi.e -1
pushi.e 0
pop.v.v [array]self.c
push.v self.s
pushi.e -1
pushi.e 1
pop.v.v [array]self.c
push.v self.r
pushi.e -1
pushi.e 2
pop.v.v [array]self.c
pushi.e 0
pop.v.i self.i

:[243]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [245]

:[244]
pushi.e 774
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
push.v [stacktop]self.y
pushi.e 50
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
push.v [stacktop]self.x
pushi.e 100
add.i.v
call.i scr_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spadechunk
pushi.e 180
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
conv.v.i
pop.v.d [stacktop]self.friction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [243]

:[245]
pushi.e 49
pop.v.i self.con

:[246]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [252]

:[247]
pushi.e 0
pop.v.i self.i

:[248]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [252]

:[249]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 3
cmp.i.v GTE
bf [251]

:[250]
pushi.e 50
pop.v.i self.con

:[251]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [248]

:[252]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [256]

:[253]
push.s "obj_kingcutscene_slash_Step_0_gml_471_0"@6661
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [255]

:[254]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[255]
pushi.e 51
pop.v.i self.con

:[256]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [258]

:[257]
call.i d_ex(argc=0)
conv.v.b
not.b
b [259]

:[258]
push.e 0

:[259]
bf [263]

:[260]
pushi.e 19
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.king
conv.v.i
pushenv [262]

:[261]
push.d 0.25
pop.v.d self.image_speed
pushi.e 10
pop.v.i self.image_index

:[262]
popenv [261]
pushi.e 16
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 52
pop.v.i self.con

:[263]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [267]

:[264]
push.v self.king
conv.v.i
pushenv [266]

:[265]
pushi.e 0
pop.v.i self.image_speed
pushi.e 13
pop.v.i self.image_index

:[266]
popenv [265]
pushi.e 679
conv.i.v
push.v self.king
conv.v.i
push.v [stacktop]self.y
pushi.e 60
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 660
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.lspade
pushi.e 180
push.v self.lspade
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e -16
push.v self.lspade
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 54
pop.v.i self.con

:[267]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [276]

:[268]
push.v self.lspade
conv.v.i
push.v [stacktop]self.x
push.v self.king
conv.v.i
push.v [stacktop]self.x
pushi.e 70
add.i.v
cmp.v.v LTE
bf [276]

:[269]
pushi.e 91
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 59
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.lspade
conv.v.i
pushenv [271]

:[270]
call.i instance_destroy(argc=0)
popz.v

:[271]
popenv [270]
push.v self.king
conv.v.i
pushenv [273]

:[272]
pushi.e 747
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
call.i scr_shakeobj(argc=0)
popz.v

:[273]
popenv [272]
push.v self.l
conv.v.i
pushenv [275]

:[274]
push.v self.x
pushi.e 24
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 60
sub.i.v
pop.v.v self.y
pushi.e 767
pop.v.i self.sprite_index
pushi.e 10
pop.v.i self.vspeed
pushi.e -4
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.visible

:[275]
popenv [274]
pushi.e 55
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 0
push.v [array]self.spadechunk
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 1
pushi.e -1
pushi.e 1
push.v [array]self.spadechunk
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 1
pushi.e -1
pushi.e 2
push.v [array]self.spadechunk
conv.v.i
pop.v.i [stacktop]self.image_alpha

:[276]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [280]

:[277]
pushi.e 0
pop.v.i self.i

:[278]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [280]

:[279]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.18
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [278]

:[280]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [291]

:[281]
pushi.e 0
pop.v.i self.i

:[282]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [286]

:[283]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
conv.v.i
pushenv [285]

:[284]
call.i instance_destroy(argc=0)
popz.v

:[285]
popenv [284]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [282]

:[286]
push.v self.l
conv.v.i
pushenv [288]

:[287]
pushi.e 0
pop.v.i self.speed

:[288]
popenv [287]
push.s "obj_kingcutscene_slash_Step_0_gml_529_0"@6663
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [290]

:[289]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[290]
pushi.e 57
pop.v.i self.con

:[291]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [293]

:[292]
call.i d_ex(argc=0)
conv.v.b
not.b
b [294]

:[293]
push.e 0

:[294]
bf [306]

:[295]
push.v self.l
conv.v.i
pushenv [297]

:[296]
pushi.e -16
pop.v.i self.hspeed
call.i scr_depth(argc=0)
popz.v

:[297]
popenv [296]
push.v self.r
conv.v.i
pushenv [299]

:[298]
pushi.e 209
pop.v.i self.sprite_index

:[299]
popenv [298]
push.v self.s
conv.v.i
pushenv [301]

:[300]
pushi.e 185
pop.v.i self.sprite_index

:[301]
popenv [300]
push.v self.k
conv.v.i
pushenv [303]

:[302]
pushi.e 829
pop.v.i self.sprite_index

:[303]
popenv [302]
pushi.e 58
pop.v.i self.con
push.s "obj_kingcutscene_slash_Step_0_gml_543_0"@6664
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [305]

:[304]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[305]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[306]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [308]

:[307]
call.i d_ex(argc=0)
conv.v.b
not.b
b [309]

:[308]
push.e 0

:[309]
bf [313]

:[310]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_554_0"@6665
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [312]

:[311]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[312]
pushi.e 60
pop.v.i self.con

:[313]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [315]

:[314]
call.i d_ex(argc=0)
conv.v.b
not.b
b [316]

:[315]
push.e 0

:[316]
bf [324]

:[317]
pushi.e 99
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.k
conv.v.i
pushenv [319]

:[318]
push.d 0.25
conv.d.v
pushi.e 449
conv.i.v
call.i scr_anim(argc=2)
popz.v

:[319]
popenv [318]
push.v self.s
conv.v.i
pushenv [321]

:[320]
push.d 0.25
conv.d.v
pushi.e 475
conv.i.v
call.i scr_anim(argc=2)
popz.v

:[321]
popenv [320]
push.v self.r
conv.v.i
pushenv [323]

:[322]
push.d 0.25
conv.d.v
pushi.e 490
conv.i.v
call.i scr_anim(argc=2)
popz.v

:[323]
popenv [322]
pushi.e 61
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[324]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [328]

:[325]
pushi.e 3
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_573_0"@6667
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [327]

:[326]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[327]
pushi.e 64
pop.v.i self.con

:[328]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [330]

:[329]
call.i d_ex(argc=0)
conv.v.b
not.b
b [331]

:[330]
push.e 0

:[331]
bf [335]

:[332]
push.v self.king
conv.v.i
pushenv [334]

:[333]
pushi.e 1
pop.v.i self.image_index
pushi.e 3
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.friction

:[334]
popenv [333]
pushi.e 65
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[335]
push.v self.con
pushi.e 66
cmp.i.v EQ
bf [341]

:[336]
push.v self.king
conv.v.i
pushenv [338]

:[337]
pushi.e 0
pop.v.i self.hspeed
call.i scr_shakeobj(argc=0)
popz.v

:[338]
popenv [337]
pushi.e 36
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_592_0"@6668
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_593_0"@6669
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_594_0"@6670
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 3
pop.v.s [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [340]

:[339]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[340]
pushi.e 67
pop.v.i self.con

:[341]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [343]

:[342]
call.i d_ex(argc=0)
conv.v.b
not.b
b [344]

:[343]
push.e 0

:[344]
bf [348]

:[345]
push.v self.king
conv.v.i
pushenv [347]

:[346]
pushi.e 758
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed

:[347]
popenv [346]
push.d 66.1
pop.v.d self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[348]
push.v self.con
push.d 67.1
cmp.d.v EQ
bf [352]

:[349]
push.v self.king
conv.v.i
pushenv [351]

:[350]
pushi.e 6
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[351]
popenv [350]
pushi.e 758
conv.i.v
push.v self.king
conv.v.i
push.v [stacktop]self.y
push.v self.king
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.shadowking
pushi.e 0
push.v self.shadowking
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 5
push.v self.shadowking
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.king
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
push.v self.shadowking
conv.v.i
pop.v.v [stacktop]self.depth
push.d 68.2
pop.v.d self.con
call.i snd_free_all(argc=0)
popz.v
pushi.e 18
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[352]
push.v self.con
push.d 68.2
cmp.d.v EQ
bf [356]

:[353]
push.v self.shadowking
conv.v.i
pushenv [355]

:[354]
push.v self.image_alpha
push.d 0.03
sub.d.v
pop.v.v self.image_alpha

:[355]
popenv [354]

:[356]
push.v self.con
push.d 69.2
cmp.d.v EQ
bf [362]

:[357]
pushi.e 235
pop.v.i global.plot
push.v self.shadowking
conv.v.i
pushenv [359]

:[358]
call.i instance_destroy(argc=0)
popz.v

:[359]
popenv [358]
pushi.e 33
pop.v.i global.typer
pushi.e 4
pop.v.i global.fe
pushi.e 20
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_636_0"@6672
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [361]

:[360]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[361]
push.d 68.1
pop.v.d self.con

:[362]
push.v self.con
push.d 68.1
cmp.d.v EQ
bf [364]

:[363]
call.i d_ex(argc=0)
conv.v.b
not.b
b [365]

:[364]
push.e 0

:[365]
bf [367]

:[366]
pushi.e 759
push.v self.king
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.334
push.v self.king
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 69
pop.v.i self.con
pushi.e 60
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[367]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [369]

:[368]
call.i d_ex(argc=0)
conv.v.b
not.b
b [370]

:[369]
push.e 0

:[370]
bf [392]

:[371]
pushi.e 1
pushi.e -5
pushi.e 8
pop.v.i [array]global.tempflag
push.v self.k
conv.v.i
push.v [stacktop]self.x
pop.v.v 326.x
push.v self.k
conv.v.i
push.v [stacktop]self.y
pop.v.v 326.y
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.x
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.y
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.x
push.v self.r
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [373]

:[372]
call.i scr_caterpillar_interpolate(argc=0)
popz.v

:[373]
popenv [372]
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
pushenv [375]

:[374]
call.i scr_caterpillar_interpolate(argc=0)
popz.v

:[375]
popenv [374]
pushi.e 1
conv.i.v
call.i scr_caterpillar_facing(argc=1)
popz.v
pushi.e 326
pushenv [377]

:[376]
pushi.e 1
pop.v.i self.visible
pushi.e 458
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.fun

:[377]
popenv [376]
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [379]

:[378]
pushi.e 1
pop.v.i self.visible
pushi.e 471
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.fun

:[379]
popenv [378]
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
pushenv [381]

:[380]
pushi.e 1
pop.v.i self.visible
pushi.e 482
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.fun

:[381]
popenv [380]
push.v self.k
conv.v.i
pushenv [383]

:[382]
pushi.e 0
pop.v.i self.visible

:[383]
popenv [382]
push.v self.r
conv.v.i
pushenv [385]

:[384]
pushi.e 0
pop.v.i self.visible

:[385]
popenv [384]
push.v self.s
conv.v.i
pushenv [387]

:[386]
pushi.e 0
pop.v.i self.visible

:[387]
popenv [386]
pushi.e 1
pushi.e -5
pushi.e 9
pop.v.i [array]global.flag
push.s "kingboss.ogg"@6673
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.batmusic
pushi.e 40
pop.v.i global.encounterno
pushglb.v global.encounterno
call.i scr_encountersetup(argc=1)
popz.v
pushi.e 3
pop.v.i global.specialbattle
push.v self.king
conv.v.i
push.v [stacktop]self.x
pop.v.v self.remkingx
push.v self.king
conv.v.i
push.v [stacktop]self.y
pop.v.v self.remkingy
pushi.e 164
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 71
pop.v.i self.con
pushi.e 635
push.v self.king
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.king
conv.v.i
pushenv [389]

:[388]
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.monstermakey
pushi.e -5
pushi.e 0
push.v [array]global.monstermakex
call.i scr_move_to_point_over_time(argc=3)
popz.v

:[389]
popenv [388]
push.v self.king
conv.v.i
pushenv [391]

:[390]
pushi.e 1000
pop.v.i self.depth

:[391]
popenv [390]
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.bultimer

:[392]
push.v self.con
pushi.e 72
cmp.i.v EQ
bf [396]

:[393]
push.v self.king
conv.v.i
pushenv [395]

:[394]
pushi.e 0
pop.v.i self.visible

:[395]
popenv [394]
pushi.e 73
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[396]
push.v self.con
pushi.e 74
cmp.i.v EQ
bf [403]

:[397]
pushi.e 187
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [403]

:[398]
push.v self.king
conv.v.i
pushenv [400]

:[399]
pushi.e 1
pop.v.i self.visible

:[400]
popenv [399]
push.v self.remkingx
push.v self.king
conv.v.i
pop.v.v [stacktop]self.remkingx
push.v self.remkingy
push.v self.king
conv.v.i
pop.v.v [stacktop]self.remkingy
push.v self.king
conv.v.i
pushenv [402]

:[401]
pushi.e 10
conv.i.v
push.v self.remkingy
push.v self.remkingx
call.i scr_move_to_point_over_time(argc=3)
popz.v

:[402]
popenv [401]
pushi.e 75
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[403]
push.v self.con
pushi.e 76
cmp.i.v GTE
bf [405]

:[404]
push.v self.con
pushi.e 150
cmp.i.v LT
b [406]

:[405]
push.e 0

:[406]
bf [662]

:[407]
push.v self.con
pushi.e 76
cmp.i.v EQ
bf [409]

:[408]
call.i d_ex(argc=0)
conv.v.b
not.b
b [410]

:[409]
push.e 0

:[410]
bf [429]

:[411]
push.v self.part
pushi.e 0
cmp.i.v EQ
bf [419]

:[412]
pushi.e 360
pushglb.v global.xoff
add.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 458
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.k
pushi.e 471
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
pushi.e 482
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.r
pushi.e 750
conv.i.v
pushi.e 120
conv.i.v
pushi.e 784
pushglb.v global.xoff
add.v.i
call.i scr_dark_marker(argc=3)
pop.v.v self.king
push.v self.k
conv.v.i
pushenv [414]

:[413]
pushi.e 440
pushglb.v global.xoff
add.v.i
pop.v.v self.x
pushi.e 50
pop.v.i self.y
call.i scr_depth(argc=0)
popz.v

:[414]
popenv [413]
push.v self.s
conv.v.i
pushenv [416]

:[415]
pushi.e 440
pushglb.v global.xoff
add.v.i
pop.v.v self.x
pushi.e 130
pop.v.i self.y
call.i scr_depth(argc=0)
popz.v

:[416]
popenv [415]
push.v self.r
conv.v.i
pushenv [418]

:[417]
pushi.e 440
pushglb.v global.xoff
add.v.i
pop.v.v self.x
pushi.e 210
pop.v.i self.y
call.i scr_depth(argc=0)
popz.v

:[418]
popenv [417]
pushi.e 1
pop.v.i self.part
b [428]

:[419]
push.v self.k
conv.v.i
pushenv [421]

:[420]
pushi.e 1
pop.v.i self.visible

:[421]
popenv [420]
push.v self.s
conv.v.i
pushenv [423]

:[422]
pushi.e 1
pop.v.i self.visible

:[423]
popenv [422]
push.v self.r
conv.v.i
pushenv [425]

:[424]
pushi.e 1
pop.v.i self.visible

:[425]
popenv [424]
pushi.e 0
pop.v.i 326.visible
pushi.e 165
pushenv [427]

:[426]
pushi.e 0
pop.v.i self.visible

:[427]
popenv [426]
pushi.e 458
push.v self.k
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 471
push.v self.s
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 482
push.v self.r
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 750
push.v self.king
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[428]
pushi.e 78
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[429]
push.v self.con
pushi.e 79
cmp.i.v EQ
bf [433]

:[430]
pushi.e 20
pop.v.i global.fc
pushi.e 33
pop.v.i global.typer
pushi.e 3
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_762_0"@6676
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_763_0"@6677
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 247
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [432]

:[431]
push.s "obj_kingcutscene_slash_Step_0_gml_766_0"@6678
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_767_0"@6679
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_768_0"@6680
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[432]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 81
pop.v.i self.con

:[433]
push.v self.con
pushi.e 81
cmp.i.v EQ
bf [435]

:[434]
call.i d_ex(argc=0)
conv.v.b
not.b
b [436]

:[435]
push.e 0

:[436]
bf [440]

:[437]
pushi.e 81
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.king
conv.v.i
pushenv [439]

:[438]
push.d 0.1
conv.d.v
pushi.e 750
conv.i.v
call.i scr_anim(argc=2)
popz.v

:[439]
popenv [438]
pushi.e 82
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[440]
push.v self.con
pushi.e 83
cmp.i.v EQ
bf [442]

:[441]
pushi.e 49
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 749
push.v self.king
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 755
conv.i.v
push.v self.king
conv.v.i
push.v [stacktop]self.y
push.v self.king
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.cape
push.d 0.25
push.v self.cape
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 6
push.v self.cape
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -1
push.v self.cape
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 0.2
push.v self.cape
conv.v.i
pop.v.d [stacktop]self.friction
push.d -0.3
push.v self.cape
conv.v.i
pop.v.d [stacktop]self.gravity
push.v self.king
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.cape
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 84
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[442]
push.v self.con
pushi.e 85
cmp.i.v EQ
bf [444]

:[443]
push.s "obj_kingcutscene_slash_Step_0_gml_802_0"@6682
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_803_0"@6683
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_804_0"@6684
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_805_0"@6685
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_806_0"@6686
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_807_0"@6687
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_808_0"@6688
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_809_0"@6689
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 8
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 86
pop.v.i self.con

:[444]
push.v self.con
pushi.e 86
cmp.i.v EQ
bf [446]

:[445]
call.i d_ex(argc=0)
conv.v.b
not.b
b [447]

:[446]
push.e 0

:[447]
bf [451]

:[448]
push.v self.king
conv.v.i
pushenv [450]

:[449]
call.i scr_shakeobj(argc=0)
popz.v
pushi.e 2
pop.v.i self.image_index

:[450]
popenv [449]
pushi.e 89
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 87
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[451]
push.v self.con
pushi.e 88
cmp.i.v EQ
bf [455]

:[452]
push.v self.king
conv.v.i
pushenv [454]

:[453]
pushi.e 2
pop.v.i self.image_index

:[454]
popenv [453]
push.s "obj_kingcutscene_slash_Step_0_gml_826_0"@6690
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_827_0"@6691
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_828_0"@6692
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 3
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 88.1
pop.v.d self.con

:[455]
push.v self.con
push.d 88.1
cmp.d.v EQ
bf [457]

:[456]
call.i d_ex(argc=0)
conv.v.b
not.b
b [458]

:[457]
push.e 0

:[458]
bf [460]

:[459]
push.d 88.2
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[460]
push.v self.con
push.d 89.2
cmp.d.v EQ
bf [462]

:[461]
call.i d_ex(argc=0)
conv.v.b
not.b
b [463]

:[462]
push.e 0

:[463]
bf [467]

:[464]
pushi.e 80
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.r
conv.v.i
pushenv [466]

:[465]
pushi.e 209
pop.v.i self.sprite_index

:[466]
popenv [465]
pushi.e 90
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[467]
push.v self.con
pushi.e 91
cmp.i.v EQ
bf [471]

:[468]
pushi.e 80
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.k
conv.v.i
pushenv [470]

:[469]
pushi.e 829
pop.v.i self.sprite_index

:[470]
popenv [469]
pushi.e 92
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[471]
push.v self.con
pushi.e 93
cmp.i.v EQ
bf [473]

:[472]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_861_0"@6693
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
push.s "obj_kingcutscene_slash_Step_0_gml_863_0"@6694
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
pushi.e 94
pop.v.i self.con

:[473]
push.v self.con
pushi.e 94
cmp.i.v EQ
bf [475]

:[474]
call.i d_ex(argc=0)
conv.v.b
not.b
b [476]

:[475]
push.e 0

:[476]
bf [478]

:[477]
pushi.e 95
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[478]
push.v self.con
pushi.e 96
cmp.i.v EQ
bf [482]

:[479]
pushi.e 80
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.s
conv.v.i
pushenv [481]

:[480]
pushi.e 185
pop.v.i self.sprite_index

:[481]
popenv [480]
pushi.e 97
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[482]
push.v self.con
pushi.e 98
cmp.i.v EQ
bf [490]

:[483]
push.v self.s
conv.v.i
pushenv [485]

:[484]
pushi.e 3
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[485]
popenv [484]
push.v self.k
conv.v.i
pushenv [487]

:[486]
pushi.e 3
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[487]
popenv [486]
push.v self.r
conv.v.i
pushenv [489]

:[488]
pushi.e 4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[489]
popenv [488]
pushi.e 99
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[490]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [498]

:[491]
push.v self.k
conv.v.i
pushenv [493]

:[492]
call.i scr_halt(argc=0)
popz.v

:[493]
popenv [492]
push.v self.s
conv.v.i
pushenv [495]

:[494]
call.i scr_halt(argc=0)
popz.v

:[495]
popenv [494]
push.v self.r
conv.v.i
pushenv [497]

:[496]
call.i scr_halt(argc=0)
popz.v

:[497]
popenv [496]
pushi.e 101
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[498]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [500]

:[499]
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_919_0"@6695
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_920_0"@6696
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_921_0"@6697
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_922_0"@6698
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i scr_kingface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_924_0"@6699
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_925_0"@6700
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
pushi.e 103
pop.v.i self.con

:[500]
push.v self.con
pushi.e 103
cmp.i.v EQ
bf [502]

:[501]
call.i d_ex(argc=0)
conv.v.b
not.b
b [503]

:[502]
push.e 0

:[503]
bf [507]

:[504]
pushi.e 89
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.king
conv.v.i
pushenv [506]

:[505]
call.i scr_shakeobj(argc=0)
popz.v
pushi.e 2
pop.v.i self.image_index

:[506]
popenv [505]
pushi.e 104
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[507]
push.v self.con
pushi.e 105
cmp.i.v EQ
bf [509]

:[508]
pushi.e 1
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_941_0"@6701
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_942_0"@6702
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_943_0"@6703
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
push.s "obj_kingcutscene_slash_Step_0_gml_945_0"@6704
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 5
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 106
pop.v.i self.con

:[509]
push.v self.con
pushi.e 106
cmp.i.v EQ
bf [511]

:[510]
call.i d_ex(argc=0)
conv.v.b
not.b
b [512]

:[511]
push.e 0

:[512]
bf [516]

:[513]
push.v self.king
conv.v.i
push.v [stacktop]self.y
pushi.e 50
add.i.v
push.v self.king
conv.v.i
push.v [stacktop]self.x
pushi.e 90
sub.i.v
push.v self.r
conv.v.i
push.v [stacktop]self.y
push.v self.r
conv.v.i
push.v [stacktop]self.x
call.i point_distance(argc=4)
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.disto
push.v self.king
push.v self.r
conv.v.i
pop.v.v [stacktop]self.king
push.v self.r
conv.v.i
pushenv [515]

:[514]
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
conv.i.v
push.v self.king
conv.v.i
push.v [stacktop]self.y
pushi.e 50
add.i.v
push.v self.king
conv.v.i
push.v [stacktop]self.x
pushi.e 90
sub.i.v
call.i move_towards_point(argc=3)
popz.v

:[515]
popenv [514]
pushi.e 107
pop.v.i self.con
push.v self.disto
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[516]
push.v self.con
pushi.e 108
cmp.i.v EQ
bf [520]

:[517]
push.v self.r
conv.v.i
pushenv [519]

:[518]
call.i scr_halt(argc=0)
popz.v

:[519]
popenv [518]
pushi.e 109
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[520]
push.v self.con
pushi.e 110
cmp.i.v EQ
bf [524]

:[521]
push.v self.r
conv.v.i
pushenv [523]

:[522]
push.d 0.25
conv.d.v
pushi.e 497
conv.i.v
call.i scr_anim(argc=2)
popz.v
push.v self.x
pushi.e 10
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 10
sub.i.v
pop.v.v self.y

:[523]
popenv [522]
pushi.e 52
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 111
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[524]
push.v self.con
pushi.e 112
cmp.i.v EQ
bf [526]

:[525]
pushi.e 87
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 293
conv.i.v
push.v self.king
conv.v.i
push.v [stacktop]self.y
push.v self.king
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.healanim
push.v self.king
push.v self.healanim
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 115
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[526]
push.v self.con
pushi.e 116
cmp.i.v EQ
bf [530]

:[527]
push.v self.r
conv.v.i
pushenv [529]

:[528]
pushi.e 209
pop.v.i self.sprite_index
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y

:[529]
popenv [528]
pushi.e 8
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_994_0"@6707
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_995_0"@6708
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_kingface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_997_0"@6709
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
pushi.e 125
pop.v.i self.con

:[530]
push.v self.con
pushi.e 125
cmp.i.v EQ
bf [532]

:[531]
call.i d_ex(argc=0)
conv.v.b
not.b
b [533]

:[532]
push.e 0

:[533]
bf [545]

:[534]
pushi.e 85
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 19
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.king
conv.v.i
pushenv [536]

:[535]
pushi.e 4
pop.v.i self.image_index

:[536]
popenv [535]
pushi.e 0
pop.v.i self.deathhit0
pushi.e 0
pop.v.i self.deathhit1
pushi.e 0
pop.v.i self.deathhit2
pushi.e 0
pop.v.i self.i

:[537]
push.v self.i
pushi.e 15
cmp.i.v LT
bf [544]

:[538]
pushi.e 774
conv.i.v
pushi.e 500
push.v self.i
pushi.e 30
mul.i.v
add.v.i
push.v self.k
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i scr_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]self.deathwave
pushi.e 774
conv.i.v
pushi.e 500
push.v self.i
pushi.e 30
mul.i.v
add.v.i
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i scr_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]self.deathwave
pushi.e 0
pop.v.i self.j

:[539]
push.v self.j
pushi.e 2
cmp.i.v LT
bf [543]

:[540]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.deathwave
conv.v.i
pushenv [542]

:[541]
pushi.e -40
pop.v.i self.vspeed
pushi.e 90
pop.v.i self.image_angle

:[542]
popenv [541]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [539]

:[543]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [537]

:[544]
pushi.e 126
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[545]
push.v self.con
pushi.e 126
cmp.i.v EQ
bf [567]

:[546]
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]self.deathwave
conv.v.i
push.v [stacktop]self.y
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 20
add.i.v
cmp.v.v LTE
bf [548]

:[547]
push.v self.deathhit0
pushi.e 0
cmp.i.v EQ
b [549]

:[548]
push.e 0

:[549]
bf [553]

:[550]
push.v self.s
conv.v.i
pushenv [552]

:[551]
pushi.e 778
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.vspeed
pushi.e -1
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.friction
call.i scr_shakeobj(argc=0)
popz.v

:[552]
popenv [551]
pushi.e 1
pop.v.i self.deathhit0
pushi.e 91
conv.i.v
call.i snd_play(argc=1)
popz.v

:[553]
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]self.deathwave
conv.v.i
push.v [stacktop]self.y
push.v self.k
conv.v.i
push.v [stacktop]self.y
pushi.e 20
add.i.v
cmp.v.v LTE
bf [555]

:[554]
push.v self.deathhit1
pushi.e 0
cmp.i.v EQ
b [556]

:[555]
push.e 0

:[556]
bf [560]

:[557]
push.v self.k
conv.v.i
pushenv [559]

:[558]
pushi.e 765
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.hspeed
pushi.e 4
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.friction
call.i scr_shakeobj(argc=0)
popz.v

:[559]
popenv [558]
pushi.e 1
pop.v.i self.deathhit1
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 95
conv.i.v
call.i snd_play(argc=1)
popz.v

:[560]
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]self.deathwave
conv.v.i
push.v [stacktop]self.y
push.v self.r
conv.v.i
push.v [stacktop]self.y
pushi.e 20
add.i.v
cmp.v.v LTE
bf [562]

:[561]
push.v self.deathhit2
pushi.e 0
cmp.i.v EQ
b [563]

:[562]
push.e 0

:[563]
bf [567]

:[564]
push.v self.r
conv.v.i
pushenv [566]

:[565]
pushi.e 769
pop.v.i self.sprite_index
call.i scr_shakeobj(argc=0)
popz.v
pushi.e 2
pop.v.i self.hspeed
pushi.e -6
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.friction

:[566]
popenv [565]
pushi.e 1
pop.v.i self.deathhit2
pushi.e 91
conv.i.v
call.i snd_play(argc=1)
popz.v

:[567]
push.v self.con
pushi.e 127
cmp.i.v EQ
bf [571]

:[568]
pushi.e 80
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.king
conv.v.i
pushenv [570]

:[569]
pushi.e 756
pop.v.i self.sprite_index

:[570]
popenv [569]
pushi.e 128
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[571]
push.v self.con
pushi.e 129
cmp.i.v EQ
bf [573]

:[572]
pushi.e 0
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1067_0"@6714
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 130
pop.v.i self.con

:[573]
push.v self.con
pushi.e 130
cmp.i.v EQ
bf [575]

:[574]
call.i d_ex(argc=0)
conv.v.b
not.b
b [576]

:[575]
push.e 0

:[576]
bf [582]

:[577]
push.s "GALLERY.ogg"@6650
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 89
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.s
conv.v.i
pushenv [579]

:[578]
pushi.e 785
pop.v.i self.sprite_index
call.i scr_shakeobj(argc=0)
popz.v

:[579]
popenv [578]
push.v self.k
conv.v.i
pushenv [581]

:[580]
pushi.e 766
pop.v.i self.sprite_index
call.i scr_shakeobj(argc=0)
popz.v

:[581]
popenv [580]
pushi.e 131
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[582]
push.v self.con
pushi.e 132
cmp.i.v EQ
bf [584]

:[583]
pushi.e 9
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_1090_0"@6715
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e 133
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[584]
push.v self.con
pushi.e 133
cmp.i.v EQ
bf [586]

:[585]
call.i d_ex(argc=0)
conv.v.b
not.b
b [587]

:[586]
push.e 0

:[587]
bf [596]

:[588]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 134
pop.v.i self.con
pushi.e 774
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 50
add.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 200
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.spadechunk2
pushi.e 180
push.v self.spadechunk2
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 0
push.v self.spadechunk2
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 2
push.v self.spadechunk2
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.spadechunk2
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 0
pop.v.i self.i

:[589]
push.v self.i
pushi.e 15
cmp.i.v LT
bf [596]

:[590]
pushi.e 0
pop.v.i self.j

:[591]
push.v self.j
pushi.e 2
cmp.i.v LT
bf [595]

:[592]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.deathwave
conv.v.i
pushenv [594]

:[593]
call.i instance_destroy(argc=0)
popz.v

:[594]
popenv [593]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [591]

:[595]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [589]

:[596]
push.v self.con
pushi.e 134
cmp.i.v EQ
bf [599]

:[597]
push.v self.spadechunk2
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.spadechunk2
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 2
cmp.i.v GTE
bf [599]

:[598]
pushi.e 135
pop.v.i self.con

:[599]
push.v self.con
pushi.e 135
cmp.i.v EQ
bf [601]

:[600]
pushi.e 33
pop.v.i global.typer
pushi.e 20
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1137_0"@6717
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 136
pop.v.i self.con

:[601]
push.v self.con
pushi.e 136
cmp.i.v EQ
bf [603]

:[602]
call.i d_ex(argc=0)
conv.v.b
not.b
b [604]

:[603]
push.e 0

:[604]
bf [608]

:[605]
pushi.e 19
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 90
add.i.v
push.v self.spadechunk2
conv.v.i
push.v [stacktop]self.x
sub.v.v
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.hdisto
push.v self.hdisto
pushi.e 7
add.i.v
push.v self.spadechunk2
conv.v.i
pop.v.v [stacktop]self.hspeed
pushi.e -1
push.v self.spadechunk2
conv.v.i
pop.v.i [stacktop]self.friction
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 60
add.i.v
push.v self.k
conv.v.i
push.v [stacktop]self.y
push.v self.k
conv.v.i
push.v [stacktop]self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.disto
push.v self.s
push.v self.k
conv.v.i
pop.v.v [stacktop]self.s
push.v self.disto
push.v self.k
conv.v.i
pop.v.v [stacktop]self.disto
push.v self.k
conv.v.i
pushenv [607]

:[606]
push.d 0.5
conv.d.v
pushi.e 459
conv.i.v
call.i scr_anim(argc=2)
popz.v
push.v self.disto
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 60
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[607]
popenv [606]
pushi.e 137
pop.v.i self.con
push.v self.disto
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[608]
push.v self.con
pushi.e 138
cmp.i.v EQ
bf [614]

:[609]
pushi.e 14
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.k
conv.v.i
pushenv [611]

:[610]
call.i scr_halt(argc=0)
popz.v
call.i scr_shakeobj(argc=0)
popz.v

:[611]
popenv [610]
push.v self.spadechunk2
conv.v.i
pushenv [613]

:[612]
call.i instance_destroy(argc=0)
popz.v

:[613]
popenv [612]
pushi.e 139
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[614]
push.v self.con
pushi.e 140
cmp.i.v EQ
bf [616]

:[615]
pushi.e 9
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_1176_0"@6719
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 141
pop.v.i self.con

:[616]
push.v self.con
pushi.e 141
cmp.i.v EQ
bf [618]

:[617]
call.i d_ex(argc=0)
conv.v.b
not.b
b [619]

:[618]
push.e 0

:[619]
bf [626]

:[620]
pushi.e 85
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 19
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.deathhit0
pushi.e 0
pop.v.i self.deathhit1
pushi.e 0
pop.v.i self.i

:[621]
push.v self.i
pushi.e 15
cmp.i.v LT
bf [625]

:[622]
pushi.e 774
conv.i.v
pushi.e -30
push.v self.i
pushi.e 30
mul.i.v
sub.v.i
push.v self.k
conv.v.i
push.v [stacktop]self.x
call.i scr_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]self.deathwave
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]self.deathwave
conv.v.i
pushenv [624]

:[623]
pushi.e 40
pop.v.i self.vspeed
pushi.e 270
pop.v.i self.image_angle

:[624]
popenv [623]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [621]

:[625]
pushi.e 142
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[626]
push.v self.con
pushi.e 142
cmp.i.v EQ
bf [641]

:[627]
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]self.deathwave
conv.v.i
push.v [stacktop]self.y
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 20
add.i.v
cmp.v.v GTE
bf [629]

:[628]
push.v self.deathhit0
pushi.e 0
cmp.i.v EQ
b [630]

:[629]
push.e 0

:[630]
bf [634]

:[631]
pushi.e 91
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.s
conv.v.i
pushenv [633]

:[632]
pushi.e 778
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.friction
call.i scr_shakeobj(argc=0)
popz.v

:[633]
popenv [632]
pushi.e 1
pop.v.i self.deathhit0

:[634]
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]self.deathwave
conv.v.i
push.v [stacktop]self.y
push.v self.k
conv.v.i
push.v [stacktop]self.y
pushi.e 20
add.i.v
cmp.v.v GTE
bf [636]

:[635]
push.v self.deathhit1
pushi.e 0
cmp.i.v EQ
b [637]

:[636]
push.e 0

:[637]
bf [641]

:[638]
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 91
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 95
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.k
conv.v.i
pushenv [640]

:[639]
pushi.e 766
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.hspeed
pushi.e 2
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.friction
call.i scr_shakeobj(argc=0)
popz.v

:[640]
popenv [639]
pushi.e 1
pop.v.i self.deathhit1

:[641]
push.v self.con
pushi.e 143
cmp.i.v EQ
bf [643]

:[642]
pushi.e 0
pop.v.i global.fe
pushi.e 33
pop.v.i global.typer
pushi.e 20
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_1227_0"@6720
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
push.d 143.1
pop.v.d self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[643]
push.v self.con
push.d 143.1
cmp.d.v EQ
bf [645]

:[644]
call.i d_ex(argc=0)
conv.v.b
not.b
b [646]

:[645]
push.e 0

:[646]
bf [648]

:[647]
pushi.e 19
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 774
conv.i.v
pushi.e -30
conv.i.v
push.v self.k
conv.v.i
push.v [stacktop]self.x
pushi.e 30
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.spadechunk3
pushi.e 30
push.v self.spadechunk3
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 270
push.v self.spadechunk3
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 0
pop.v.i self.deathhit1
pushi.e 144
pop.v.i self.con

:[648]
push.v self.con
pushi.e 144
cmp.i.v EQ
bf [656]

:[649]
push.v self.spadechunk3
conv.v.i
push.v [stacktop]self.y
push.v self.k
conv.v.i
push.v [stacktop]self.y
pushi.e 20
add.i.v
cmp.v.v GTE
bf [651]

:[650]
push.v self.deathhit1
pushi.e 0
cmp.i.v EQ
b [652]

:[651]
push.e 0

:[652]
bf [656]

:[653]
pushi.e 95
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.k
conv.v.i
pushenv [655]

:[654]
pushi.e 765
pop.v.i self.sprite_index
pushi.e -16
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.friction
call.i scr_shakeobj(argc=0)
popz.v

:[655]
popenv [654]
pushi.e 1
pop.v.i self.deathhit1
pushi.e 145
pop.v.i self.con

:[656]
push.v self.con
pushi.e 145
cmp.i.v EQ
bf [662]

:[657]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
cmp.i.v GT
bf [660]

:[658]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
push.v self.k
conv.v.i
push.v [stacktop]self.hspeed
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
cmp.i.v LTE
bf [660]

:[659]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v

:[660]
push.v self.k
conv.v.i
push.v [stacktop]self.hspeed
call.i abs(argc=1)
push.d 0.2
cmp.d.v LT
bf [662]

:[661]
pushi.e 150
pop.v.i self.con

:[662]
push.v self.con
pushi.e 150
cmp.i.v GTE
bf [664]

:[663]
push.v self.con
pushi.e 250
cmp.i.v LT
b [665]

:[664]
push.e 0

:[665]
bf [1027]

:[666]
push.v self.con
pushi.e 150
cmp.i.v EQ
bf [679]

:[667]
push.v self.part
pushi.e 0
cmp.i.v EQ
bf [669]

:[668]
pushi.e 765
conv.i.v
pushi.e 180
conv.i.v
pushi.e 266
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.k
pushi.e 1
pop.v.i self.part
b [678]

:[669]
push.v self.king
conv.v.i
pushenv [671]

:[670]
call.i instance_destroy(argc=0)
popz.v

:[671]
popenv [670]
push.v self.s
conv.v.i
pushenv [673]

:[672]
call.i instance_destroy(argc=0)
popz.v

:[673]
popenv [672]
push.v self.r
conv.v.i
pushenv [675]

:[674]
call.i instance_destroy(argc=0)
popz.v

:[675]
popenv [674]
pushi.e 78
pushenv [677]

:[676]
call.i instance_destroy(argc=0)
popz.v

:[677]
popenv [676]
pushi.e 765
conv.i.v
pushi.e 180
conv.i.v
pushi.e 266
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.k

:[678]
pushi.e 151
pop.v.i self.con
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[679]
push.v self.con
pushi.e 152
cmp.i.v EQ
bf [681]

:[680]
pushi.e 756
conv.i.v
push.v self.k
conv.v.i
push.v [stacktop]self.y
pushi.e 80
sub.i.v
pushi.e 640
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.king
pushi.e 0
pop.v.i self.siner
pushi.e 153
pop.v.i self.con

:[681]
push.v self.con
pushi.e 153
cmp.i.v EQ
bf [689]

:[682]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
call.i abs(argc=1)
pop.v.v self.sinup
push.v self.sinup
pushi.e 1
cmp.i.v GTE
bf [684]

:[683]
pushi.e 1
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_index
b [685]

:[684]
pushi.e 0
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_index

:[685]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.sinup
sub.v.v
pop.i.v [stacktop]self.x
push.v self.king
conv.v.i
push.v [stacktop]self.x
push.v self.k
conv.v.i
push.v [stacktop]self.x
pushi.e 47
add.i.v
cmp.v.v LTE
bf [689]

:[686]
push.v self.k
conv.v.i
push.v [stacktop]self.x
pushi.e 46
add.i.v
push.v self.king
conv.v.i
pop.v.v [stacktop]self.x
push.v self.king
conv.v.i
pushenv [688]

:[687]
call.i scr_halt(argc=0)
popz.v

:[688]
popenv [687]
pushi.e 154
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[689]
push.v self.con
pushi.e 155
cmp.i.v EQ
bf [691]

:[690]
pushi.e 5
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1324_0"@6723
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1325_0"@6724
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1326_0"@6725
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1327_0"@6726
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1328_0"@6727
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 5
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 156
pop.v.i self.con

:[691]
push.v self.con
pushi.e 156
cmp.i.v EQ
bf [693]

:[692]
call.i d_ex(argc=0)
conv.v.b
not.b
b [694]

:[693]
push.e 0

:[694]
bf [698]

:[695]
pushi.e 0
push.v self.k
conv.v.i
pop.v.i [stacktop]self.visible
push.v self.king
conv.v.i
pushenv [697]

:[696]
pushi.e 751
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index

:[697]
popenv [696]
pushi.e 157
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[698]
push.v self.con
pushi.e 158
cmp.i.v EQ
bf [700]

:[699]
pushi.e 1
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1345_0"@6728
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1346_0"@6729
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 159
pop.v.i self.con
pushi.e 0
pop.v.i self.grabsounded

:[700]
push.v self.con
pushi.e 159
cmp.i.v EQ
bf [702]

:[701]
call.i d_ex(argc=0)
conv.v.b
not.b
b [703]

:[702]
push.e 0

:[703]
bf [708]

:[704]
push.v self.grabsounded
pushi.e 0
cmp.i.v EQ
bf [706]

:[705]
pushi.e 34
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.grabsounded

:[706]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.image_index
push.d 0.25
add.d.v
pop.i.v [stacktop]self.image_index
push.v self.king
conv.v.i
push.v [stacktop]self.image_index
pushi.e 4
cmp.i.v GTE
bf [708]

:[707]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 774
conv.i.v
pushi.e 100
conv.i.v
push.v self.k
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.spadechunk4
pushi.e 0
push.v self.spadechunk4
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e -2
push.v self.spadechunk4
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 0.1
push.v self.spadechunk4
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 270
push.v self.spadechunk4
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 160
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[708]
push.v self.con
pushi.e 160
cmp.i.v EQ
bf [710]

:[709]
push.v self.spadechunk4
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha

:[710]
push.v self.con
pushi.e 161
cmp.i.v EQ
bf [712]

:[711]
pushi.e 4
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1379_0"@6732
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 162
pop.v.i self.con

:[712]
push.v self.con
pushi.e 162
cmp.i.v EQ
bf [714]

:[713]
call.i d_ex(argc=0)
conv.v.b
not.b
b [715]

:[714]
push.e 0

:[715]
bf [719]

:[716]
call.i snd_free_all(argc=0)
popz.v
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 91
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
pushi.e 77
conv.i.v
push.v self.king
conv.v.i
push.v [stacktop]self.y
pushi.e 80
add.i.v
push.v self.king
conv.v.i
push.v [stacktop]self.x
pushi.e 52
add.i.v
call.i instance_create(argc=3)
pop.v.v self.hitanim
pushi.e -100
push.v self.hitanim
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 411
push.v self.hitanim
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.hitanim
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.hitanim
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.d 0.5
push.v self.hitanim
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.spadechunk4
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 764
conv.i.v
push.v self.king
conv.v.i
push.v [stacktop]self.y
pushi.e 34
add.i.v
push.v self.king
conv.v.i
push.v [stacktop]self.x
pushi.e 30
sub.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.k2
pushi.e 1
push.v self.k2
conv.v.i
pop.v.i [stacktop]self.gravity
pushi.e -2
push.v self.k2
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.king
conv.v.i
pushenv [718]

:[717]
call.i scr_shakeobj(argc=0)
popz.v
pushi.e 5
pop.v.i self.image_index

:[718]
popenv [717]
pushi.e 163
pop.v.i self.con

:[719]
push.v self.con
pushi.e 163
cmp.i.v EQ
bf [724]

:[720]
push.v self.spadechunk4
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.2
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.k2
conv.v.i
push.v [stacktop]self.y
push.v self.king
conv.v.i
push.v [stacktop]self.y
pushi.e 80
add.i.v
cmp.v.v GTE
bf [724]

:[721]
push.v self.k2
conv.v.i
push.v [stacktop]self.x
push.v self.k
conv.v.i
pop.v.v [stacktop]self.x
push.v self.k2
conv.v.i
pushenv [723]

:[722]
call.i instance_destroy(argc=0)
popz.v

:[723]
popenv [722]
pushi.e 1
push.v self.k
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 164
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[724]
push.v self.con
pushi.e 165
cmp.i.v EQ
bf [726]

:[725]
pushi.e 775
conv.i.v
push.v self.king
conv.v.i
push.v [stacktop]self.y
pushi.e 76
add.i.v
pushi.e 640
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 166
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[726]
push.v self.con
pushi.e 167
cmp.i.v EQ
bf [728]

:[727]
pushi.e 168
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[728]
push.v self.con
pushi.e 169
cmp.i.v EQ
bf [730]

:[729]
push.s "wind.ogg"@6621
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.d 0.7
conv.d.v
push.d 0.5
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 1
pushi.e -5
pushi.e 29
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 2
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1442_0"@6735
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1443_0"@6736
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 170
pop.v.i self.con

:[730]
push.v self.con
pushi.e 170
cmp.i.v EQ
bf [732]

:[731]
call.i d_ex(argc=0)
conv.v.b
not.b
b [733]

:[732]
push.e 0

:[733]
bf [737]

:[734]
pushi.e 80
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.king
conv.v.i
pushenv [736]

:[735]
pushi.e 760
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.hspeed
push.d 0.5
pop.v.d self.friction
pushi.e 0
pop.v.i self.image_index

:[736]
popenv [735]
pushi.e 171
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[737]
push.v self.con
pushi.e 172
cmp.i.v EQ
bf [741]

:[738]
pushi.e 20
pop.v.i global.fc
pushi.e 33
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1470_0"@6737
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1471_0"@6738
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1472_0"@6739
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1473_0"@6740
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1474_0"@6741
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1475_0"@6742
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1476_0"@6743
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 7
pop.v.s [array]global.msg
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [740]

:[739]
push.s "obj_kingcutscene_slash_Step_0_gml_1480_0"@6744
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1481_0"@6745
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 3
pop.v.s [array]global.msg

:[740]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 173
pop.v.i self.con

:[741]
push.v self.con
pushi.e 173
cmp.i.v EQ
bf [743]

:[742]
call.i d_ex(argc=0)
conv.v.b
not.b
b [744]

:[743]
push.e 0

:[744]
bf [746]

:[745]
pushi.e 174
pop.v.i self.con
pushi.e 7
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[746]
push.v self.con
pushi.e 175
cmp.i.v EQ
bf [750]

:[747]
push.v self.s
conv.v.i
pushenv [749]

:[748]
call.i scr_halt(argc=0)
popz.v

:[749]
popenv [748]
pushi.e 176
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[750]
push.v self.con
pushi.e 177
cmp.i.v EQ
bf [752]

:[751]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 2
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1513_0"@6746
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 178
pop.v.i self.con
pushi.e 0
pop.v.i self.siner
push.v self.king
conv.v.i
push.v [stacktop]self.x
pop.v.v self.kingxnow

:[752]
push.v self.con
pushi.e 178
cmp.i.v EQ
bf [754]

:[753]
call.i d_ex(argc=0)
conv.v.b
not.b
b [755]

:[754]
push.e 0

:[755]
bf [763]

:[756]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
call.i abs(argc=1)
pop.v.v self.sinup
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.sinup
add.v.v
pop.i.v [stacktop]self.x
push.v self.sinup
push.d 1.5
cmp.d.v GTE
bf [758]

:[757]
pushi.e 1
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_index
b [759]

:[758]
pushi.e 0
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_index

:[759]
push.v self.king
conv.v.i
push.v [stacktop]self.x
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 240
sub.i.v
cmp.v.v GTE
bf [763]

:[760]
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 240
sub.i.v
push.v self.king
conv.v.i
pop.v.v [stacktop]self.x
push.v self.king
conv.v.i
pushenv [762]

:[761]
call.i scr_halt(argc=0)
popz.v

:[762]
popenv [761]
pushi.e 179
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[763]
push.v self.con
pushi.e 180
cmp.i.v EQ
bf [767]

:[764]
push.v self.king
conv.v.i
pushenv [766]

:[765]
pushi.e 0
pop.v.i self.image_index

:[766]
popenv [765]
pushi.e 181
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[767]
push.v self.con
pushi.e 182
cmp.i.v EQ
bf [771]

:[768]
pushi.e 33
pop.v.i global.typer
pushi.e 5
pop.v.i global.fe
pushi.e 20
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_1550_0"@6748
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1551_0"@6749
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [770]

:[769]
push.s "obj_kingcutscene_slash_Step_0_gml_1555_0"@6750
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1556_0"@6751
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg

:[770]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 183
pop.v.i self.con
pushi.e 0
pop.v.i self.siner
push.v self.king
conv.v.i
push.v [stacktop]self.x
pop.v.v self.kx

:[771]
push.v self.con
pushi.e 183
cmp.i.v EQ
bf [773]

:[772]
call.i d_ex(argc=0)
conv.v.b
not.b
b [774]

:[773]
push.e 0

:[774]
bf [780]

:[775]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
call.i abs(argc=1)
pop.v.v self.sinup
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.sinup
add.v.v
pop.i.v [stacktop]self.x
push.v self.sinup
pushi.e 1
cmp.i.v GTE
bf [777]

:[776]
pushi.e 1
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_index
b [778]

:[777]
pushi.e 0
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_index

:[778]
push.v self.king
conv.v.i
push.v [stacktop]self.x
push.v self.kx
pushi.e 80
add.i.v
cmp.v.v GTE
bf [780]

:[779]
pushi.e 187
pop.v.i self.con

:[780]
push.v self.con
pushi.e 187
cmp.i.v EQ
bf [786]

:[781]
push.v self.s
conv.v.i
pushenv [783]

:[782]
call.i scr_halt(argc=0)
popz.v

:[783]
popenv [782]
push.v self.king
conv.v.i
pushenv [785]

:[784]
call.i scr_halt(argc=0)
popz.v

:[785]
popenv [784]
pushi.e 188
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[786]
push.v self.con
pushi.e 189
cmp.i.v EQ
bf [790]

:[787]
pushi.e 0
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1590_0"@6752
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1591_0"@6753
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [789]

:[788]
push.s "obj_kingcutscene_slash_Step_0_gml_1594_0"@6754
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1595_0"@6755
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg

:[789]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 190
pop.v.i self.con

:[790]
push.v self.con
pushi.e 190
cmp.i.v EQ
bf [792]

:[791]
call.i d_ex(argc=0)
conv.v.b
not.b
b [793]

:[792]
push.e 0

:[793]
bf [799]

:[794]
pushi.e 4
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1605_0"@6756
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1607_0"@6757
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
call.i scr_kingface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1609_0"@6758
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 5
pop.v.s [array]global.msg
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [796]

:[795]
push.s "obj_kingcutscene_slash_Step_0_gml_1613_0"@6759
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg

:[796]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 191
pop.v.i self.con
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 774
conv.i.v
push.v self.k
conv.v.i
push.v [stacktop]self.y
pushi.e 100
sub.i.v
push.v self.k
conv.v.i
push.v [stacktop]self.x
pushi.e 30
add.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.spadechunkf
pushi.e 774
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 100
sub.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 70
add.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.spadechunkf
pushi.e 0
pop.v.i self.i

:[797]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [799]

:[798]
pushi.e 270
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e -4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 0.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
conv.v.i
pop.v.d [stacktop]self.friction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [797]

:[799]
push.v self.con
pushi.e 191
cmp.i.v EQ
bf [810]

:[800]
pushi.e 0
pop.v.i self.i

:[801]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [805]

:[802]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 3
cmp.i.v GTE
bf [804]

:[803]
pushi.e 192
pop.v.i self.con

:[804]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [801]

:[805]
push.v self.con
pushi.e 192
cmp.i.v EQ
bf [807]

:[806]
push.v self.type
pushi.e 1
cmp.i.v EQ
b [808]

:[807]
push.e 0

:[808]
bf [810]

:[809]
pushi.e 240
pop.v.i self.con

:[810]
push.v self.con
pushi.e 192
cmp.i.v EQ
bf [812]

:[811]
call.i d_ex(argc=0)
conv.v.b
not.b
b [813]

:[812]
push.e 0

:[813]
bf [819]

:[814]
call.i snd_free_all(argc=0)
popz.v
push.v self.king
conv.v.i
pushenv [816]

:[815]
pushi.e 762
pop.v.i self.sprite_index

:[816]
popenv [815]
push.v self.king
conv.v.i
pushenv [818]

:[817]
call.i scr_oflash(argc=0)
pop.v.v self.o
push.i 16711680
push.v self.o
conv.v.i
pop.v.i [stacktop]self.flashcolor

:[818]
popenv [817]
pushi.e 18
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 193
pop.v.i self.con
pushi.e 0
pop.v.i self.spadetimer
pushi.e 1
pushi.e -1
pushi.e 0
push.v [array]self.spadechunkf
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 1
pushi.e -1
pushi.e 1
push.v [array]self.spadechunkf
conv.v.i
pop.v.i [stacktop]self.image_alpha

:[819]
push.v self.con
pushi.e 193
cmp.i.v EQ
bf [829]

:[820]
push.v self.spadetimer
pushi.e 1
add.i.v
pop.v.v self.spadetimer
pushi.e 0
pop.v.i self.i

:[821]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [823]

:[822]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [821]

:[823]
push.v self.spadetimer
pushi.e 60
cmp.i.v GTE
bf [829]

:[824]
pushi.e -1
pushi.e 0
push.v [array]self.spadechunkf
conv.v.i
pushenv [826]

:[825]
call.i instance_destroy(argc=0)
popz.v

:[826]
popenv [825]
pushi.e -1
pushi.e 1
push.v [array]self.spadechunkf
conv.v.i
pushenv [828]

:[827]
call.i instance_destroy(argc=0)
popz.v

:[828]
popenv [827]
pushi.e 194
pop.v.i self.con

:[829]
push.v self.con
pushi.e 194
cmp.i.v EQ
bf [831]

:[830]
pushi.e 6
pop.v.i global.fe
pushi.e 33
pop.v.i global.typer
pushi.e 20
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_1678_0"@6763
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1679_0"@6764
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1680_0"@6765
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 3
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 195
pop.v.i self.con

:[831]
push.v self.con
pushi.e 195
cmp.i.v EQ
bf [833]

:[832]
call.i d_ex(argc=0)
conv.v.b
not.b
b [834]

:[833]
push.e 0

:[834]
bf [838]

:[835]
push.v self.king
conv.v.i
pushenv [837]

:[836]
pushi.e 1
pop.v.i self.image_index
call.i scr_shakeobj(argc=0)
popz.v
pushi.e -4
pop.v.i self.hspeed
push.d 0.5
pop.v.d self.friction

:[837]
popenv [836]
pushi.e 1
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1690_0"@6766
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1691_0"@6767
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 196
pop.v.i self.con

:[838]
push.v self.con
pushi.e 196
cmp.i.v EQ
bf [840]

:[839]
call.i d_ex(argc=0)
conv.v.b
not.b
b [841]

:[840]
push.e 0

:[841]
bf [845]

:[842]
push.v self.king
conv.v.i
pushenv [844]

:[843]
pushi.e 2
pop.v.i self.image_index

:[844]
popenv [843]
pushi.e 36
pop.v.i global.typer
pushi.e 8
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1702_0"@6768
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 197
pop.v.i self.con

:[845]
push.v self.con
pushi.e 197
cmp.i.v EQ
bf [847]

:[846]
call.i d_ex(argc=0)
conv.v.b
not.b
b [848]

:[847]
push.e 0

:[848]
bf [854]

:[849]
pushi.e 201
pop.v.i self.con
push.v self.king
conv.v.i
pushenv [851]

:[850]
pushi.e 761
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed

:[851]
popenv [850]
push.v self.s
conv.v.i
pushenv [853]

:[852]
push.v self.x
pushi.e 60
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 10
sub.i.v
pop.v.v self.y
pushi.e 781
pop.v.i self.sprite_index

:[853]
popenv [852]

:[854]
push.v self.con
pushi.e 200
cmp.i.v EQ
bf [862]

:[855]
pushi.e 761
conv.i.v
pushi.e 100
conv.i.v
pushi.e 480
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.king
push.v self.king
conv.v.i
pushenv [857]

:[856]
call.i scr_depth(argc=0)
popz.v

:[857]
popenv [856]
pushi.e 765
conv.i.v
pushi.e 180
conv.i.v
pushi.e 262
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.k
push.v self.k
conv.v.i
pushenv [859]

:[858]
call.i scr_depth(argc=0)
popz.v

:[859]
popenv [858]
pushi.e 781
conv.i.v
pushi.e 166
conv.i.v
pushi.e 700
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
push.v self.s
conv.v.i
pushenv [861]

:[860]
call.i scr_depth(argc=0)
popz.v

:[861]
popenv [860]
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 201
pop.v.i self.con

:[862]
push.v self.con
pushi.e 201
cmp.i.v EQ
bf [870]

:[863]
push.v self.s
conv.v.i
pushenv [865]

:[864]
pushi.e -13
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed
call.i scr_depth(argc=0)
popz.v

:[865]
popenv [864]
push.v self.k
conv.v.i
pushenv [867]

:[866]
call.i scr_depth(argc=0)
popz.v

:[867]
popenv [866]
push.v self.king
conv.v.i
pushenv [869]

:[868]
pushi.e -8
pop.v.i self.vspeed
push.d 0.8
pop.v.d self.friction
push.i 800000
pop.v.i self.depth

:[869]
popenv [868]
pushi.e 28
conv.i.v
pushi.e 0
conv.i.v
pushi.e -7
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 202
pop.v.i self.con
pushi.e 0
pop.v.i self.blend
pushi.e 28
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[870]
push.v self.con
pushi.e 202
cmp.i.v EQ
bf [872]

:[871]
push.v self.blend
push.d 0.02
add.d.v
pop.v.v self.blend
push.v self.blend
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
push.v self.king
conv.v.i
pop.v.v [stacktop]self.image_blend

:[872]
push.v self.con
pushi.e 203
cmp.i.v EQ
bf [878]

:[873]
push.v self.r
conv.v.i
pushenv [875]

:[874]
call.i instance_destroy(argc=0)
popz.v

:[875]
popenv [874]
push.v self.s
conv.v.i
pushenv [877]

:[876]
call.i scr_halt(argc=0)
popz.v

:[877]
popenv [876]
pushi.e 204
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[878]
push.v self.con
pushi.e 205
cmp.i.v EQ
bf [882]

:[879]
push.v self.k
conv.v.i
pushenv [881]

:[880]
pushi.e 766
pop.v.i self.sprite_index

:[881]
popenv [880]
pushi.e 3
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_1760_0"@6769
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 206
pop.v.i self.con

:[882]
push.v self.con
pushi.e 206
cmp.i.v EQ
bf [884]

:[883]
call.i d_ex(argc=0)
conv.v.b
not.b
b [885]

:[884]
push.e 0

:[885]
bf [889]

:[886]
pushi.e 207
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 640
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.r
push.v self.r
conv.v.i
pushenv [888]

:[887]
pushi.e -6
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[888]
popenv [887]
push.v self.s
conv.v.i
push.v [stacktop]self.depth
pushi.e 1000
sub.i.v
push.v self.r
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 207
pop.v.i self.con
pushi.e 36
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[889]
push.v self.con
pushi.e 208
cmp.i.v EQ
bf [897]

:[890]
push.v self.r
conv.v.i
pushenv [892]

:[891]
call.i scr_halt(argc=0)
popz.v

:[892]
popenv [891]
push.v self.s
conv.v.i
pushenv [894]

:[893]
pushi.e 782
pop.v.i self.sprite_index

:[894]
popenv [893]
push.v self.k
conv.v.i
pushenv [896]

:[895]
pushi.e 829
pop.v.i self.sprite_index

:[896]
popenv [895]
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_1785_0"@6770
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1786_0"@6771
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1788_0"@6772
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1789_0"@6773
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
pushi.e 209
pop.v.i self.con

:[897]
push.v self.con
pushi.e 209
cmp.i.v EQ
bf [899]

:[898]
call.i d_ex(argc=0)
conv.v.b
not.b
b [900]

:[899]
push.e 0

:[900]
bf [904]

:[901]
push.v self.r
conv.v.i
pushenv [903]

:[902]
pushi.e 209
pop.v.i self.sprite_index

:[903]
popenv [902]
pushi.e 210
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[904]
push.v self.con
pushi.e 211
cmp.i.v EQ
bf [906]

:[905]
pushi.e 2
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_1806_0"@6774
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1807_0"@6775
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1808_0"@6776
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1809_0"@6777
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1810_0"@6778
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
pushi.e 212
pop.v.i self.con

:[906]
push.v self.con
pushi.e 212
cmp.i.v EQ
bf [908]

:[907]
call.i d_ex(argc=0)
conv.v.b
not.b
b [909]

:[908]
push.e 0

:[909]
bf [914]

:[910]
push.v self.s
conv.v.i
pushenv [911]

:[911]
popenv [911]
push.v self.r
conv.v.i
pushenv [913]

:[912]
pushi.e 207
pop.v.i self.sprite_index

:[913]
popenv [912]
pushi.e 213
pop.v.i self.con
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[914]
push.v self.con
pushi.e 214
cmp.i.v EQ
bf [918]

:[915]
push.v self.s
conv.v.i
pushenv [917]

:[916]
call.i scr_halt(argc=0)
popz.v

:[917]
popenv [916]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 3
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1828_0"@6779
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1829_0"@6780
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1830_0"@6781
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "%"@3588
pushi.e -5
pushi.e 3
pop.v.s [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 215
pop.v.i self.con

:[918]
push.v self.con
pushi.e 215
cmp.i.v EQ
bf [920]

:[919]
call.i d_ex(argc=0)
conv.v.b
not.b
b [921]

:[920]
push.e 0

:[921]
bf [925]

:[922]
push.v self.s
conv.v.i
pushenv [924]

:[923]
pushi.e 780
pop.v.i self.sprite_index

:[924]
popenv [923]
pushi.e 216
pop.v.i self.con

:[925]
push.v self.con
pushi.e 216
cmp.i.v EQ
bf [927]

:[926]
call.i d_ex(argc=0)
conv.v.b
not.b
b [928]

:[927]
push.e 0

:[928]
bf [936]

:[929]
push.v self.k
conv.v.i
pushenv [931]

:[930]
pushi.e 831
pop.v.i self.sprite_index

:[931]
popenv [930]
push.v self.l
conv.v.i
pushenv [933]

:[932]
call.i instance_destroy(argc=0)
popz.v

:[933]
popenv [932]
pushi.e 216
conv.i.v
push.v self.k
conv.v.i
push.v [stacktop]self.y
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 80
sub.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.l
push.v self.l
conv.v.i
pushenv [935]

:[934]
pushi.e 8
pop.v.i self.hspeed

:[935]
popenv [934]
pushi.e 217
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[936]
push.v self.con
pushi.e 218
cmp.i.v EQ
bf [940]

:[937]
push.v self.l
conv.v.i
pushenv [939]

:[938]
call.i scr_halt(argc=0)
popz.v

:[939]
popenv [938]
pushi.e 2
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1856_0"@6782
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
push.s "obj_kingcutscene_slash_Step_0_gml_1858_0"@6783
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1860_0"@6784
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1861_0"@6785
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1863_0"@6786
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1864_0"@6787
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1865_0"@6788
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 10
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1867_0"@6789
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 219
pop.v.i self.con

:[940]
push.v self.con
pushi.e 219
cmp.i.v EQ
bf [942]

:[941]
call.i d_ex(argc=0)
conv.v.b
not.b
b [943]

:[942]
push.e 0

:[943]
bf [953]

:[944]
pushi.e 117
conv.i.v
call.i snd_loop(argc=1)
pop.v.v self.screen_noise
push.v self.l
conv.v.i
pushenv [946]

:[945]
pushi.e 767
pop.v.i self.sprite_index

:[946]
popenv [945]
push.v self.s
conv.v.i
pushenv [948]

:[947]
pushi.e 193
pop.v.i self.sprite_index

:[948]
popenv [947]
push.v self.r
conv.v.i
pushenv [950]

:[949]
pushi.e 496
pop.v.i self.sprite_index

:[950]
popenv [949]
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shake
push.v self.shake
conv.v.i
pushenv [952]

:[951]
pushi.e 1
pop.v.i self.permashake
pushi.e 2
pop.v.i self.shakex
pushi.e 2
pop.v.i self.shakey

:[952]
popenv [951]
pushi.e 220
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[953]
push.v self.con
pushi.e 221
cmp.i.v EQ
bf [963]

:[954]
push.v self.shake
conv.v.i
pushenv [956]

:[955]
pushi.e 0
pop.v.i self.permashake

:[956]
popenv [955]
push.v self.screen_noise
call.i snd_stop(argc=1)
popz.v
push.v self.l
conv.v.i
pushenv [958]

:[957]
pushi.e 768
pop.v.i self.sprite_index

:[958]
popenv [957]
push.v self.s
conv.v.i
pushenv [960]

:[959]
pushi.e 781
pop.v.i self.sprite_index

:[960]
popenv [959]
push.v self.r
conv.v.i
pushenv [962]

:[961]
pushi.e 207
pop.v.i self.sprite_index

:[962]
popenv [961]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1896_0"@6791
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1898_0"@6792
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1899_0"@6793
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1900_0"@6794
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1901_0"@6795
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1902_0"@6796
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
pushi.e 222
pop.v.i self.con

:[963]
push.v self.con
pushi.e 222
cmp.i.v EQ
bf [965]

:[964]
call.i d_ex(argc=0)
conv.v.b
not.b
b [966]

:[965]
push.e 0

:[966]
bf [970]

:[967]
push.v self.l
conv.v.i
pushenv [969]

:[968]
pushi.e 767
pop.v.i self.sprite_index

:[969]
popenv [968]
pushi.e 4
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1911_0"@6797
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1913_0"@6798
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
pushi.e 223
pop.v.i self.con

:[970]
push.v self.con
pushi.e 223
cmp.i.v EQ
bf [972]

:[971]
call.i d_ex(argc=0)
conv.v.b
not.b
b [973]

:[972]
push.e 0

:[973]
bf [979]

:[974]
push.v self.l
conv.v.i
pushenv [976]

:[975]
pushi.e 768
pop.v.i self.sprite_index

:[976]
popenv [975]
push.v self.r
conv.v.i
pushenv [978]

:[977]
pushi.e 204
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.vspeed

:[978]
popenv [977]
push.d 222.1
pop.v.d self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[979]
push.v self.con
push.d 223.1
cmp.d.v EQ
bf [983]

:[980]
push.v self.r
conv.v.i
pushenv [982]

:[981]
pushi.e 207
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.vspeed
pushi.e -6
pop.v.i self.hspeed

:[982]
popenv [981]
push.d 222.2
pop.v.d self.con
pushi.e 35
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[983]
push.v self.con
push.d 223.2
cmp.d.v EQ
bf [991]

:[984]
push.v self.r
conv.v.i
pushenv [986]

:[985]
pushi.e 206
pop.v.i self.sprite_index
pushi.e -3
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed

:[986]
popenv [985]
push.v self.k
conv.v.i
pushenv [988]

:[987]
pushi.e 3
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[988]
popenv [987]
push.v self.s
conv.v.i
pushenv [990]

:[989]
pushi.e 3
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[990]
popenv [989]
pushi.e 224
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[991]
push.v self.con
pushi.e 225
cmp.i.v EQ
bf [1001]

:[992]
push.v self.k
conv.v.i
pushenv [994]

:[993]
call.i scr_halt(argc=0)
popz.v

:[994]
popenv [993]
push.v self.s
conv.v.i
pushenv [996]

:[995]
call.i scr_halt(argc=0)
popz.v

:[996]
popenv [995]
push.v self.r
conv.v.i
pushenv [998]

:[997]
call.i scr_halt(argc=0)
popz.v

:[998]
popenv [997]
push.v self.r
conv.v.i
pushenv [1000]

:[999]
pushi.e 209
pop.v.i self.sprite_index

:[1000]
popenv [999]
pushi.e 226
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1001]
push.v self.con
pushi.e 227
cmp.i.v EQ
bf [1003]

:[1002]
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 1
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1957_0"@6799
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1958_0"@6800
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
pushi.e 268
pop.v.i self.con

:[1003]
push.v self.con
pushi.e 240
cmp.i.v EQ
bf [1005]

:[1004]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1006]

:[1005]
push.e 0

:[1006]
bf [1008]

:[1007]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1973_0"@6801
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1974_0"@6802
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
pushi.e 241
pop.v.i self.con

:[1008]
push.v self.con
pushi.e 241
cmp.i.v EQ
bf [1010]

:[1009]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1011]

:[1010]
push.e 0

:[1011]
bf [1019]

:[1012]
call.i snd_free_all(argc=0)
popz.v
push.v self.s
conv.v.i
pushenv [1014]

:[1013]
push.v self.x
pushi.e 60
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 10
sub.i.v
pop.v.v self.y
pushi.e 780
pop.v.i self.sprite_index

:[1014]
popenv [1013]
push.v self.king
conv.v.i
pushenv [1016]

:[1015]
pushi.e 754
pop.v.i self.sprite_index

:[1016]
popenv [1015]
pushi.e 0
push.v self.king
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.king
conv.v.i
pop.v.i [stacktop]self.siner
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shake
push.v self.shake
conv.v.i
pushenv [1018]

:[1017]
pushi.e 1
pop.v.i self.permashake
pushi.e 2
pop.v.i self.shakex
pushi.e 2
pop.v.i self.shakey

:[1018]
popenv [1017]
pushi.e 117
conv.i.v
call.i snd_loop(argc=1)
pop.v.v self.rumble
pushi.e 242
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1019]
push.v self.con
pushi.e 242
cmp.i.v EQ
bf [1025]

:[1020]
pushi.e -1
pushi.e 0
push.v [array]self.spadechunkf
conv.v.i
pushenv [1022]

:[1021]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[1022]
popenv [1021]
pushi.e -1
pushi.e 1
push.v [array]self.spadechunkf
conv.v.i
pushenv [1024]

:[1023]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[1024]
popenv [1023]

:[1025]
push.v self.con
pushi.e 243
cmp.i.v EQ
bf [1027]

:[1026]
pushi.e 250
pop.v.i self.con

:[1027]
push.v self.con
pushi.e 250
cmp.i.v GTE
bf [1029]

:[1028]
push.v self.con
pushi.e 265
cmp.i.v LTE
b [1030]

:[1029]
push.e 0

:[1030]
bf [1117]

:[1031]
push.v self.con
pushi.e 250
cmp.i.v EQ
bf [1049]

:[1032]
push.v self.part
pushi.e 0
cmp.i.v EQ
bf [1036]

:[1033]
pushi.e 765
conv.i.v
pushi.e 180
conv.i.v
pushi.e 266
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.k
push.v self.k
conv.v.i
pushenv [1035]

:[1034]
push.i 800000
pop.v.i self.depth

:[1035]
popenv [1034]
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 749
conv.i.v
pushi.e 100
conv.i.v
pushi.e 439
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.king
pushi.e 0
push.v self.king
conv.v.i
pop.v.i [stacktop]self.siner
pushi.e 1
pop.v.i self.part

:[1036]
push.v self.k
conv.v.i
pushenv [1038]

:[1037]
push.i 800000
pop.v.i self.depth

:[1038]
popenv [1037]
pushi.e 8
pop.v.i self.xmake
pushi.e 4
pop.v.i self.ymake
pushi.e 0
pop.v.i self.i

:[1039]
push.v self.i
push.v self.xmake
cmp.v.v LT
bf [1046]

:[1040]
pushi.e 0
pop.v.i self.j

:[1041]
push.v self.j
push.v self.ymake
cmp.v.v LT
bf [1045]

:[1042]
pushi.e 745
conv.i.v
pushi.e 230
push.v self.j
pushi.e 30
mul.i.v
add.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 180
sub.i.v
push.v self.i
pushi.e 90
mul.i.v
sub.v.v
call.i scr_dark_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.cwp
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.cwp
conv.v.i
pushenv [1044]

:[1043]
pushi.e 0
pop.v.i self.siner
pushi.e 12
pop.v.i self.hspeed
call.i scr_depth(argc=0)
popz.v

:[1044]
popenv [1043]
push.v self.i
push.v self.j
pushi.e 2
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.cwp
conv.v.i
pop.v.v [stacktop]self.siner
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [1041]

:[1045]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1039]

:[1046]
pushi.e 216
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 180
sub.i.v
pushi.e 280
sub.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.l
push.v self.l
conv.v.i
pushenv [1048]

:[1047]
pushi.e 12
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.siner

:[1048]
popenv [1047]
pushi.e 1
pop.v.i self.crowdshift
pushi.e 251
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.lifttimer
pushi.e 0
pop.v.i self.liftking

:[1049]
push.v self.crowdshift
pushi.e 1
cmp.i.v EQ
bf [1061]

:[1050]
pushi.e 0
pop.v.i self.i

:[1051]
push.v self.i
push.v self.xmake
cmp.v.v LT
bf [1058]

:[1052]
pushi.e 0
pop.v.i self.j

:[1053]
push.v self.j
push.v self.ymake
cmp.v.v LT
bf [1057]

:[1054]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.cwp
conv.v.i
pushenv [1056]

:[1055]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 2
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.i
pop.v.v self.image_xscale
pushi.e 2
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.i
pop.v.v self.image_yscale

:[1056]
popenv [1055]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [1053]

:[1057]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1051]

:[1058]
push.v self.l
conv.v.i
pushenv [1060]

:[1059]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.y

:[1060]
popenv [1059]

:[1061]
push.v self.liftking
pushi.e 1
cmp.i.v EQ
bf [1065]

:[1062]
push.v self.king
conv.v.i
pushenv [1064]

:[1063]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.y

:[1064]
popenv [1063]

:[1065]
push.v self.con
pushi.e 251
cmp.i.v EQ
bf [1079]

:[1066]
push.v self.lifttimer
pushi.e 1
add.i.v
pop.v.v self.lifttimer
push.v self.lifttimer
pushi.e 18
cmp.i.v EQ
bt [1068]

:[1067]
push.v self.lifttimer
pushi.e 35
cmp.i.v EQ
b [1069]

:[1068]
push.e 1

:[1069]
bf [1071]

:[1070]
pushi.e 25
conv.i.v
call.i snd_play(argc=1)
popz.v

:[1071]
push.v self.lifttimer
pushi.e 18
cmp.i.v GTE
bf [1075]

:[1072]
push.v self.k
conv.v.i
pushenv [1074]

:[1073]
pushi.e 766
pop.v.i self.sprite_index
push.v self.x
pushi.e 12
add.i.v
pop.v.v self.x

:[1074]
popenv [1073]

:[1075]
push.v self.lifttimer
pushi.e 35
cmp.i.v GTE
bf [1079]

:[1076]
push.v self.king
conv.v.i
pushenv [1078]

:[1077]
pushi.e -8
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.friction
pushi.e 748
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[1078]
popenv [1077]
pushi.e 1
pop.v.i self.liftking

:[1079]
push.v self.con
pushi.e 252
cmp.i.v EQ
bf [1093]

:[1080]
push.s "lancer.ogg"@4596
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 140
pushenv [1082]

:[1081]
pushi.e 0
pop.v.i self.permashake

:[1082]
popenv [1081]
pushi.e 117
conv.i.v
call.i snd_stop(argc=1)
popz.v
push.v self.l
conv.v.i
pushenv [1084]

:[1083]
call.i scr_halt(argc=0)
popz.v

:[1084]
popenv [1083]
pushi.e 0
pop.v.i self.i

:[1085]
push.v self.i
push.v self.xmake
cmp.v.v LT
bf [1092]

:[1086]
pushi.e 0
pop.v.i self.j

:[1087]
push.v self.j
push.v self.ymake
cmp.v.v LT
bf [1091]

:[1088]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.cwp
conv.v.i
pushenv [1090]

:[1089]
call.i scr_halt(argc=0)
popz.v

:[1090]
popenv [1089]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [1087]

:[1091]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1085]

:[1092]
pushi.e 253
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1093]
push.v self.con
pushi.e 254
cmp.i.v EQ
bf [1095]

:[1094]
pushi.e 33
pop.v.i global.typer
pushi.e 20
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2116_0"@6810
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2117_0"@6811
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2119_0"@6812
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2120_0"@6813
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2121_0"@6814
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2122_0"@6815
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2123_0"@6816
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2124_0"@6817
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2125_0"@6818
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 10
conv.i.v
call.i scr_kingface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2127_0"@6819
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2128_0"@6820
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2130_0"@6821
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2131_0"@6822
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 255
pop.v.i self.con

:[1095]
push.v self.con
pushi.e 255
cmp.i.v EQ
bf [1097]

:[1096]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1098]

:[1097]
push.e 0

:[1098]
bf [1112]

:[1099]
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v
push.v self.king
conv.v.i
pushenv [1101]

:[1100]
pushi.e -12
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.friction

:[1101]
popenv [1100]
push.v self.l
conv.v.i
pushenv [1103]

:[1102]
pushi.e -12
pop.v.i self.hspeed

:[1103]
popenv [1102]
pushi.e 0
pop.v.i self.i

:[1104]
push.v self.i
push.v self.xmake
cmp.v.v LT
bf [1111]

:[1105]
pushi.e 0
pop.v.i self.j

:[1106]
push.v self.j
push.v self.ymake
cmp.v.v LT
bf [1110]

:[1107]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.cwp
conv.v.i
pushenv [1109]

:[1108]
pushi.e -12
pop.v.i self.hspeed

:[1109]
popenv [1108]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [1106]

:[1110]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1104]

:[1111]
pushi.e 256
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 20
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 33
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_2155_0"@6823
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

:[1112]
push.v self.con
pushi.e 257
cmp.i.v EQ
bf [1114]

:[1113]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1115]

:[1114]
push.e 0

:[1115]
bf [1117]

:[1116]
call.i snd_free_all(argc=0)
popz.v
pushi.e 350
pop.v.i self.con

:[1117]
push.v self.con
pushi.e 265
cmp.i.v GTE
bf [1119]

:[1118]
push.v self.con
pushi.e 320
cmp.i.v LT
b [1120]

:[1119]
push.e 0

:[1120]
bf [1271]

:[1121]
push.v self.con
pushi.e 268
cmp.i.v EQ
bf [1123]

:[1122]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1124]

:[1123]
push.e 0

:[1124]
bf [1128]

:[1125]
push.v self.s
conv.v.i
pushenv [1127]

:[1126]
pushi.e 783
pop.v.i self.sprite_index

:[1127]
popenv [1126]
pushi.e 269
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1128]
push.v self.con
pushi.e 270
cmp.i.v EQ
bf [1130]

:[1129]
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_2182_0"@6824
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
pushi.e 275
pop.v.i self.con

:[1130]
push.v self.con
pushi.e 275
cmp.i.v EQ
bf [1132]

:[1131]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1133]

:[1132]
push.e 0

:[1133]
bf [1143]

:[1134]
push.v self.s
conv.v.i
pushenv [1136]

:[1135]
pushi.e 780
pop.v.i self.sprite_index

:[1136]
popenv [1135]
push.v self.l
conv.v.i
pushenv [1138]

:[1137]
pushi.e 8
pop.v.i self.hspeed
pushi.e 216
pop.v.i self.sprite_index

:[1138]
popenv [1137]
push.v self.r
conv.v.i
pushenv [1140]

:[1139]
pushi.e 207
pop.v.i self.sprite_index

:[1140]
popenv [1139]
push.v self.k
conv.v.i
pushenv [1142]

:[1141]
pushi.e 831
pop.v.i self.sprite_index

:[1142]
popenv [1141]
pushi.e 276
pop.v.i self.con
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1143]
push.v self.con
pushi.e 277
cmp.i.v EQ
bf [1145]

:[1144]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1146]

:[1145]
push.e 0

:[1146]
bf [1150]

:[1147]
push.v self.l
conv.v.i
pushenv [1149]

:[1148]
call.i scr_halt(argc=0)
popz.v

:[1149]
popenv [1148]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2205_0"@6825
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2206_0"@6826
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2208_0"@6827
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
push.s "obj_kingcutscene_slash_Step_0_gml_2210_0"@6828
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
pushi.e 280
pop.v.i self.con

:[1150]
push.v self.con
pushi.e 280
cmp.i.v EQ
bf [1152]

:[1151]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1153]

:[1152]
push.e 0

:[1153]
bf [1159]

:[1154]
push.v self.s
conv.v.i
pushenv [1156]

:[1155]
pushi.e 197
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed

:[1156]
popenv [1155]
push.v self.l
conv.v.i
pushenv [1158]

:[1157]
pushi.e 225
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed

:[1158]
popenv [1157]
pushi.e 111
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.ll
pushi.e 39
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.sl
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
push.v self.ll
call.i snd_volume(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
push.v self.sl
call.i snd_volume(argc=3)
popz.v
pushi.e 281
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1159]
push.v self.con
pushi.e 282
cmp.i.v EQ
bf [1165]

:[1160]
push.v self.s
conv.v.i
pushenv [1162]

:[1161]
call.i scr_halt(argc=0)
popz.v
pushi.e 199
pop.v.i self.sprite_index

:[1162]
popenv [1161]
push.v self.l
conv.v.i
pushenv [1164]

:[1163]
call.i scr_halt(argc=0)
popz.v
pushi.e 220
pop.v.i self.sprite_index

:[1164]
popenv [1163]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2235_0"@6829
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
push.s "obj_kingcutscene_slash_Step_0_gml_2237_0"@6830
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
pushi.e 283
pop.v.i self.con

:[1165]
push.v self.con
pushi.e 283
cmp.i.v EQ
bf [1167]

:[1166]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1168]

:[1167]
push.e 0

:[1168]
bf [1178]

:[1169]
push.v self.l
conv.v.i
pushenv [1171]

:[1170]
pushi.e -8
pop.v.i self.hspeed

:[1171]
popenv [1170]
push.v self.k
conv.v.i
pushenv [1173]

:[1172]
pushi.e 6
pop.v.i self.hspeed
pushi.e 829
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[1173]
popenv [1172]
push.v self.s
conv.v.i
pushenv [1175]

:[1174]
pushi.e 6
pop.v.i self.hspeed
pushi.e 782
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[1175]
popenv [1174]
push.v self.r
conv.v.i
pushenv [1177]

:[1176]
push.d 5.5
pop.v.d self.hspeed
pushi.e 209
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[1177]
popenv [1176]
pushi.e 160
conv.i.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 284
pop.v.i self.con
pushi.e 160
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1178]
push.v self.con
pushi.e 285
cmp.i.v EQ
bf [1186]

:[1179]
push.v self.r
conv.v.i
pushenv [1181]

:[1180]
call.i scr_halt(argc=0)
popz.v

:[1181]
popenv [1180]
push.v self.s
conv.v.i
pushenv [1183]

:[1182]
call.i scr_halt(argc=0)
popz.v
pushi.e 781
pop.v.i self.sprite_index

:[1183]
popenv [1182]
push.v self.k
conv.v.i
pushenv [1185]

:[1184]
call.i scr_halt(argc=0)
popz.v
pushi.e 831
pop.v.i self.sprite_index

:[1185]
popenv [1184]
pushi.e 2
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_2262_0"@6831
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2263_0"@6832
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
pushi.e 286
pop.v.i self.con

:[1186]
push.v self.con
pushi.e 286
cmp.i.v EQ
bf [1188]

:[1187]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1189]

:[1188]
push.e 0

:[1189]
bf [1193]

:[1190]
push.v self.r
conv.v.i
pushenv [1192]

:[1191]
pushi.e 770
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed

:[1192]
popenv [1191]
pushi.e 0
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_2272_0"@6833
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2273_0"@6834
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
pushi.e 287
pop.v.i self.con
pushi.e 0
pop.v.i self.rtimer

:[1193]
push.v self.con
pushi.e 287
cmp.i.v EQ
bf [1195]

:[1194]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1196]

:[1195]
push.e 0

:[1196]
bf [1200]

:[1197]
push.v self.r
conv.v.i
pushenv [1199]

:[1198]
pushi.e 771
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[1199]
popenv [1198]
pushi.e 288
pop.v.i self.con

:[1200]
push.v self.con
pushi.e 288
cmp.i.v EQ
bf [1205]

:[1201]
push.v self.rtimer
push.d 0.1
add.d.v
pop.v.v self.rtimer
push.v self.r
conv.v.i
pushenv [1203]

:[1202]
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index

:[1203]
popenv [1202]
push.v self.rtimer
pushi.e 2
cmp.i.v GTE
bf [1205]

:[1204]
pushi.e 289
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1205]
push.v self.con
pushi.e 290
cmp.i.v EQ
bf [1207]

:[1206]
push.s "obj_kingcutscene_slash_Step_0_gml_2294_0"@6836
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2295_0"@6837
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2297_0"@6838
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2298_0"@6839
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2299_0"@6840
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2300_0"@6841
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
pushi.e 291
pop.v.i self.con
pushi.e 0
pop.v.i self.hatsounded

:[1207]
push.v self.con
pushi.e 291
cmp.i.v EQ
bf [1209]

:[1208]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1210]

:[1209]
push.e 0

:[1210]
bf [1219]

:[1211]
push.v self.hatsounded
pushi.e 0
cmp.i.v EQ
bf [1213]

:[1212]
pushi.e 25
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.hatsounded

:[1213]
push.v self.r
conv.v.i
pushenv [1215]

:[1214]
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index

:[1215]
popenv [1214]
push.v self.rtimer
push.d 0.1
add.d.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 6
cmp.i.v GTE
bf [1219]

:[1216]
pushi.e 292
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.s
conv.v.i
pushenv [1218]

:[1217]
pushi.e 193
pop.v.i self.sprite_index
call.i scr_shakeobj(argc=0)
popz.v

:[1218]
popenv [1217]

:[1219]
push.v self.con
pushi.e 293
cmp.i.v EQ
bf [1221]

:[1220]
pushi.e 2
pushi.e -5
pushi.e 30
pop.v.i [array]global.flag
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 1
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2320_0"@6843
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
pushi.e 294
pop.v.i self.con

:[1221]
push.v self.con
pushi.e 294
cmp.i.v EQ
bf [1223]

:[1222]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1224]

:[1223]
push.e 0

:[1224]
bf [1229]

:[1225]
push.v self.r
conv.v.i
pushenv [1227]

:[1226]
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index

:[1227]
popenv [1226]
push.v self.rtimer
push.d 0.1
add.d.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 11
cmp.i.v GTE
bf [1229]

:[1228]
pushi.e 295
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1229]
push.v self.con
pushi.e 296
cmp.i.v EQ
bf [1231]

:[1230]
pushi.e 0
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2335_0"@6844
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2336_0"@6845
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
pushi.e 297
pop.v.i self.con

:[1231]
push.v self.con
pushi.e 297
cmp.i.v EQ
bf [1233]

:[1232]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1234]

:[1233]
push.e 0

:[1234]
bf [1236]

:[1235]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2347_0"@6846
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2348_0"@6847
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
pushi.e 298
pop.v.i self.con

:[1236]
push.v self.con
pushi.e 298
cmp.i.v EQ
bf [1238]

:[1237]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1239]

:[1238]
push.e 0

:[1239]
bf [1249]

:[1240]
push.v self.k
conv.v.i
pushenv [1242]

:[1241]
pushi.e 829
pop.v.i self.sprite_index

:[1242]
popenv [1241]
push.v self.s
conv.v.i
pushenv [1244]

:[1243]
pushi.e 782
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index
pushi.e 6
pop.v.i self.hspeed

:[1244]
popenv [1243]
pushglb.v global.plot
pushi.e 240
cmp.i.v GTE
bf [1248]

:[1245]
push.v self.s
conv.v.i
pushenv [1247]

:[1246]
pushi.e 0
pop.v.i self.hspeed

:[1247]
popenv [1246]

:[1248]
pushi.e 299
pop.v.i self.con
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1249]
push.v self.con
pushi.e 300
cmp.i.v EQ
bf [1253]

:[1250]
push.v self.s
conv.v.i
pushenv [1252]

:[1251]
call.i scr_halt(argc=0)
popz.v

:[1252]
popenv [1251]
pushi.e 301
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1253]
push.v self.con
pushi.e 302
cmp.i.v EQ
bf [1255]

:[1254]
pushi.e 2
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2372_0"@6848
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

:[1255]
push.v self.con
pushi.e 303
cmp.i.v EQ
bf [1257]

:[1256]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1258]

:[1257]
push.e 0

:[1258]
bf [1267]

:[1259]
push.v self.s
conv.v.i
pushenv [1261]

:[1260]
push.d 0.2
pop.v.d self.image_speed
pushi.e 4
pop.v.i self.hspeed

:[1261]
popenv [1260]
push.v self.k
conv.v.i
pushenv [1263]

:[1262]
push.d 0.2
pop.v.d self.image_speed
pushi.e 4
pop.v.i self.hspeed

:[1263]
popenv [1262]
pushi.e 304
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
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
pushenv [1265]

:[1264]
push.d 0.01
pop.v.d self.fadespeed

:[1265]
popenv [1264]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [1267]

:[1266]
pushi.e 999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_pan(argc=3)
popz.v

:[1267]
push.v self.con
pushi.e 305
cmp.i.v EQ
bf [1271]

:[1268]
call.i scr_losechar(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i scr_getchar(argc=1)
popz.v
pushi.e 3
pop.v.i global.interact
pushi.e 1
pop.v.i global.entrance
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [1270]

:[1269]
pushi.e 240
pop.v.i global.plot
pushi.e 1
pushi.e -5
pushi.e 248
pop.v.i [array]global.flag

:[1270]
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i room_goto_next(argc=0)
popz.v

:[1271]
push.v self.con
pushi.e 350
cmp.i.v GTE
bf [1273]

:[1272]
push.v self.con
pushi.e 700
cmp.i.v LT
b [1274]

:[1273]
push.e 0

:[1274]
bf [1407]

:[1275]
push.v self.con
pushi.e 350
cmp.i.v EQ
bf [1277]

:[1276]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1278]

:[1277]
push.e 0

:[1278]
bf [1294]

:[1279]
push.v self.part
pushi.e 0
cmp.i.v EQ
bf [1285]

:[1280]
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 766
conv.i.v
pushi.e 180
conv.i.v
pushi.e 598
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.k
pushi.e 781
conv.i.v
pushi.e 166
conv.i.v
pushi.e 700
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
push.v self.k
conv.v.i
pushenv [1282]

:[1281]
push.i 800000
pop.v.i self.depth

:[1282]
popenv [1281]
push.v self.s
conv.v.i
pushenv [1284]

:[1283]
call.i scr_depth(argc=0)
popz.v

:[1284]
popenv [1283]

:[1285]
push.v self.k
conv.v.i
pushenv [1287]

:[1286]
call.i scr_depth(argc=0)
popz.v

:[1287]
popenv [1286]
push.v self.s
conv.v.i
pushenv [1289]

:[1288]
call.i scr_depth(argc=0)
popz.v

:[1289]
popenv [1288]
push.v self.r
conv.v.i
pushenv [1291]

:[1290]
call.i instance_destroy(argc=0)
popz.v

:[1291]
popenv [1290]
push.v self.s
conv.v.i
pushenv [1293]

:[1292]
pushi.e -6
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[1293]
popenv [1292]
pushi.e 351
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1294]
push.v self.con
pushi.e 352
cmp.i.v EQ
bf [1298]

:[1295]
push.v self.s
conv.v.i
pushenv [1297]

:[1296]
call.i scr_halt(argc=0)
popz.v

:[1297]
popenv [1296]
pushi.e 3
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_2435_0"@6849
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
pushi.e 353
pop.v.i self.con

:[1298]
push.v self.con
pushi.e 353
cmp.i.v EQ
bf [1300]

:[1299]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1301]

:[1300]
push.e 0

:[1301]
bf [1309]

:[1302]
push.v self.k
conv.v.i
pushenv [1304]

:[1303]
pushi.e 829
pop.v.i self.sprite_index

:[1304]
popenv [1303]
push.v self.s
conv.v.i
pushenv [1306]

:[1305]
pushi.e 782
pop.v.i self.sprite_index

:[1306]
popenv [1305]
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 207
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 800
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.r
push.v self.r
conv.v.i
pushenv [1308]

:[1307]
pushi.e -4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[1308]
popenv [1307]
pushi.e 354
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1309]
push.v self.con
pushi.e 355
cmp.i.v EQ
bf [1313]

:[1310]
push.v self.r
conv.v.i
pushenv [1312]

:[1311]
call.i scr_halt(argc=0)
popz.v

:[1312]
popenv [1311]
pushi.e 356
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1313]
push.v self.con
pushi.e 357
cmp.i.v EQ
bf [1315]

:[1314]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_2463_0"@6850
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2464_0"@6851
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2466_0"@6852
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
pushi.e 358
pop.v.i self.con

:[1315]
push.v self.con
pushi.e 358
cmp.i.v EQ
bf [1317]

:[1316]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1318]

:[1317]
push.e 0

:[1318]
bf [1322]

:[1319]
push.v self.r
conv.v.i
pushenv [1321]

:[1320]
pushi.e 209
pop.v.i self.sprite_index

:[1321]
popenv [1320]
pushi.e 359
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1322]
push.v self.con
pushi.e 360
cmp.i.v EQ
bf [1324]

:[1323]
pushi.e 4
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_2484_0"@6853
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2485_0"@6854
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2486_0"@6855
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2487_0"@6856
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2488_0"@6857
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
pushi.e 361
pop.v.i self.con

:[1324]
push.v self.con
pushi.e 361
cmp.i.v EQ
bf [1326]

:[1325]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1327]

:[1326]
push.e 0

:[1327]
bf [1332]

:[1328]
push.v self.s
conv.v.i
pushenv [1329]

:[1329]
popenv [1329]
push.v self.r
conv.v.i
pushenv [1331]

:[1330]
pushi.e 207
pop.v.i self.sprite_index

:[1331]
popenv [1330]
pushi.e 362
pop.v.i self.con
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1332]
push.v self.con
pushi.e 363
cmp.i.v EQ
bf [1336]

:[1333]
push.v self.s
conv.v.i
pushenv [1335]

:[1334]
call.i scr_halt(argc=0)
popz.v

:[1335]
popenv [1334]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2506_0"@6858
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2507_0"@6859
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2508_0"@6860
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
pushi.e 364
pop.v.i self.con

:[1336]
push.v self.con
pushi.e 364
cmp.i.v EQ
bf [1338]

:[1337]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1339]

:[1338]
push.e 0

:[1339]
bf [1343]

:[1340]
push.v self.s
conv.v.i
pushenv [1342]

:[1341]
pushi.e 783
pop.v.i self.sprite_index

:[1342]
popenv [1341]
push.s "obj_kingcutscene_slash_Step_0_gml_2516_0"@6861
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 365
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[1343]
push.v self.con
pushi.e 365
cmp.i.v EQ
bf [1345]

:[1344]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1346]

:[1345]
push.e 0

:[1346]
bf [1352]

:[1347]
push.v self.s
conv.v.i
pushenv [1349]

:[1348]
pushi.e 784
pop.v.i self.sprite_index

:[1349]
popenv [1348]
push.v self.r
conv.v.i
pushenv [1351]

:[1350]
pushi.e 772
pop.v.i self.sprite_index

:[1351]
popenv [1350]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2528_0"@6862
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2529_0"@6863
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2531_0"@6864
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
pushi.e 366
pop.v.i self.con

:[1352]
push.v self.con
pushi.e 366
cmp.i.v EQ
bf [1354]

:[1353]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1355]

:[1354]
push.e 0

:[1355]
bf [1359]

:[1356]
push.v self.r
conv.v.i
pushenv [1358]

:[1357]
pushi.e 204
pop.v.i self.sprite_index

:[1358]
popenv [1357]
pushi.e 367
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1359]
push.v self.con
pushi.e 368
cmp.i.v EQ
bf [1363]

:[1360]
push.v self.r
conv.v.i
pushenv [1362]

:[1361]
pushi.e 207
pop.v.i self.sprite_index

:[1362]
popenv [1361]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2549_0"@6865
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2550_0"@6866
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
push.s "obj_kingcutscene_slash_Step_0_gml_2552_0"@6867
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2553_0"@6868
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
pushi.e 369
pop.v.i self.con

:[1363]
push.v self.con
pushi.e 369
cmp.i.v EQ
bf [1365]

:[1364]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1366]

:[1365]
push.e 0

:[1366]
bf [1376]

:[1367]
push.v self.r
conv.v.i
pushenv [1369]

:[1368]
pushi.e -1
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 204
pop.v.i self.sprite_index

:[1369]
popenv [1368]
push.v self.s
conv.v.i
pushenv [1371]

:[1370]
pushi.e 5
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[1371]
popenv [1370]
push.v self.k
conv.v.i
pushenv [1373]

:[1372]
pushi.e 5
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[1373]
popenv [1372]
push.v self.r
conv.v.i
pushenv [1375]

:[1374]
push.i 900000
pop.v.i self.depth

:[1375]
popenv [1374]
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 370
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1376]
push.v self.con
pushi.e 371
cmp.i.v EQ
bf [1386]

:[1377]
push.v self.r
conv.v.i
pushenv [1379]

:[1378]
call.i scr_halt(argc=0)
popz.v

:[1379]
popenv [1378]
push.v self.s
conv.v.i
pushenv [1381]

:[1380]
call.i scr_halt(argc=0)
popz.v

:[1381]
popenv [1380]
push.v self.k
conv.v.i
pushenv [1383]

:[1382]
call.i scr_halt(argc=0)
popz.v

:[1383]
popenv [1382]
push.v self.r
conv.v.i
pushenv [1385]

:[1384]
pushi.e 209
pop.v.i self.sprite_index

:[1385]
popenv [1384]
pushi.e 372
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1386]
push.v self.con
pushi.e 373
cmp.i.v EQ
bf [1392]

:[1387]
push.v self.s
conv.v.i
pushenv [1389]

:[1388]
pushi.e 781
pop.v.i self.sprite_index

:[1389]
popenv [1388]
push.v self.k
conv.v.i
pushenv [1391]

:[1390]
pushi.e 831
pop.v.i self.sprite_index

:[1391]
popenv [1390]
pushi.e 1
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2584_0"@6869
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2585_0"@6870
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
pushi.e 374
pop.v.i self.con

:[1392]
push.v self.con
pushi.e 374
cmp.i.v EQ
bf [1394]

:[1393]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1395]

:[1394]
push.e 0

:[1395]
bf [1401]

:[1396]
push.v self.k
conv.v.i
pushenv [1398]

:[1397]
pushi.e 829
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.hspeed

:[1398]
popenv [1397]
push.v self.s
conv.v.i
pushenv [1400]

:[1399]
pushi.e 784
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.hspeed

:[1400]
popenv [1399]
pushi.e 999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_pan(argc=3)
popz.v
pushi.e 375
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1401]
push.v self.con
pushi.e 376
cmp.i.v EQ
bf [1405]

:[1402]
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
pushenv [1404]

:[1403]
push.d 0.02
pop.v.d self.fadespeed

:[1404]
popenv [1403]
pushi.e 377
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1405]
push.v self.con
pushi.e 378
cmp.i.v EQ
bf [1407]

:[1406]
call.i scr_losechar(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i scr_getchar(argc=1)
popz.v
pushi.e 240
pop.v.i global.plot
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
call.i room_goto_next(argc=0)
popz.v

:[1407]
push.v self.con
pushi.e 700
cmp.i.v GTE
bf [end]

:[1408]
push.v self.con
pushi.e 700
cmp.i.v EQ
bf [1412]

:[1409]
pushglb.v global.plot
pushi.e 243
cmp.i.v GTE
bf [1412]

:[1410]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [1412]

:[1411]
push.v 326.x
pushi.e 1900
cmp.i.v GTE
b [1413]

:[1412]
push.e 0

:[1413]
bf [1427]

:[1414]
pushi.e 1
pop.v.i global.interact
pushi.e 701
pop.v.i self.con
pushi.e 165
pushenv [1416]

:[1415]
pushi.e 0
pop.v.i self.visible

:[1416]
popenv [1415]
pushi.e 326
pushenv [1418]

:[1417]
pushi.e 0
pop.v.i self.visible

:[1418]
popenv [1417]
pushi.e 83
pushenv [1420]

:[1419]
pushi.e 0
pop.v.i self.visible

:[1420]
popenv [1419]
pushi.e 199
conv.i.v
push.v 165.y
push.v 165.x
call.i scr_dark_marker(argc=3)
pop.v.v self.s
push.v self.s
conv.v.i
pushenv [1422]

:[1421]
call.i scr_depth(argc=0)
popz.v

:[1422]
popenv [1421]
pushi.e 831
conv.i.v
push.v 326.y
push.v 326.x
call.i scr_dark_marker(argc=3)
pop.v.v self.k
push.v self.k
conv.v.i
pushenv [1424]

:[1423]
call.i scr_depth(argc=0)
popz.v

:[1424]
popenv [1423]
pushi.e 209
conv.i.v
push.v 83.y
push.v 83.x
call.i scr_dark_marker(argc=3)
pop.v.v self.r
push.v self.r
conv.v.i
pushenv [1426]

:[1425]
call.i scr_depth(argc=0)
popz.v

:[1426]
popenv [1425]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2648_0"@6871
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[1427]
push.v self.con
pushi.e 701
cmp.i.v EQ
bf [1429]

:[1428]
call.i d_ex(argc=0)
conv.v.b
not.b
b [1430]

:[1429]
push.e 0

:[1430]
bf [1434]

:[1431]
push.v self.r
conv.v.i
pushenv [1433]

:[1432]
pushi.e 204
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.vspeed

:[1433]
popenv [1432]
pushi.e 702
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1434]
push.v self.con
pushi.e 703
cmp.i.v EQ
bf [1438]

:[1435]
push.v self.r
conv.v.i
pushenv [1437]

:[1436]
call.i scr_halt(argc=0)
popz.v

:[1437]
popenv [1436]
pushi.e 704
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[1438]
push.v self.con
pushi.e 705
cmp.i.v EQ
bf [end]

:[1439]
pushi.e 244
pop.v.i global.plot
call.i snd_free_all(argc=0)
popz.v
pushi.e 286
pop.v.i self.con

:[end]