.localvar 0 arguments
.localvar 1 ch_yoff 2638
.localvar 2 ch_vspace 2639
.localvar 3 ch_i 2640
.localvar 4 ch_y 2641

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
push.v self.tp
push.v self.tpy
sub.v.v
push.v self.yy
add.v.v
pop.v.v self.tpoff
push.v self.bp
neg.v
push.v self.bpy
add.v.v
push.v self.yy
add.v.v
pop.v.v self.bpoff
push.v self.drawchar
pushi.e 1
cmp.i.v EQ
bf [16]

:[1]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 500
add.i.v
push.v self.xx
pushi.e 650
add.i.v
push.v self.yy
pushi.e 480
add.i.v
push.v self.bp
sub.v.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 10
sub.i.v
push.v self.xx
pushi.e 650
add.i.v
push.v self.yy
push.v self.tp
add.v.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
call.i scr_charbox(argc=0)
popz.v
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.deschaver

:[3]
push.v self.deschaver
pushi.e 0
cmp.i.v EQ
bf [16]

:[4]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
push.v self.tp
add.v.v
pushi.e 56
sub.i.v
push.v self.xx
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
push.s "spr_darkmenudesc"@3386
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 806
pushi.e -1
pushi.e 0
pop.v.i [array]self.msprite
pushi.e 805
pushi.e -1
pushi.e 1
pop.v.i [array]self.msprite
pushi.e 807
pushi.e -1
pushi.e 2
pop.v.i [array]self.msprite
pushi.e 808
pushi.e -1
pushi.e 3
pop.v.i [array]self.msprite
pushi.e 804
pushi.e -1
pushi.e 4
pop.v.i [array]self.msprite
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [15]

:[6]
pushi.e 1
pop.v.i self.off
pushi.e -5
pushi.e 0
push.v [array]global.menucoord
push.v self.i
cmp.v.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.off

:[8]
pushglb.v global.menuno
pushi.e 1
sub.i.v
push.v self.i
cmp.v.v EQ
bf [10]

:[9]
pushi.e 2
pop.v.i self.off

:[10]
pushi.e 0
pop.v.i self.spritemx
push.v self.i
pushi.e 2
cmp.i.v GTE
bf [12]

:[11]
pushi.e -100
pop.v.i self.spritemx

:[12]
push.v self.i
pushi.e 2
cmp.i.v NEQ
bf [14]

:[13]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
push.v self.tp
add.v.v
pushi.e 60
sub.i.v
push.v self.xx
pushi.e 120
add.i.v
push.v self.i
pushi.e 100
mul.i.v
add.v.v
push.v self.spritemx
add.v.v
push.v self.off
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.msprite
call.i draw_sprite_ext(argc=9)
popz.v

:[14]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[15]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_47_0"@7057
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushglb.v global.gold
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
push.v self.tp
add.v.v
pushi.e 60
sub.i.v
push.v self.xx
pushi.e 520
add.i.v
call.i draw_text(argc=3)
popz.v

:[16]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [55]

:[17]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 410
add.i.v
push.v self.xx
pushi.e 580
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 420
add.i.v
push.v self.xx
pushi.e 590
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i scr_darkbox(argc=4)
popz.v
pushglb.v global.submenu
pushi.e 30
cmp.i.v GTE
bf [19]

:[18]
pushglb.v global.submenu
pushi.e 33
cmp.i.v LTE
b [20]

:[19]
push.e 0

:[20]
bf [32]

:[21]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_74_0"@7058
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 100
add.i.v
push.v self.xx
pushi.e 270
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
pushi.e 17
push.v [array]global.flag
pushi.e 100
mul.i.v
call.i abs(argc=1)
call.i string(argc=1)
push.s "%"@3588
add.s.v
pop.v.v self.audvol
pushi.e -5
pushi.e 16
push.v [array]global.flag
pushi.e 100
mul.i.v
call.i abs(argc=1)
call.i string(argc=1)
push.s "%"@3588
add.s.v
pop.v.v self.musvol
push.s "obj_darkcontroller_slash_Draw_0_gml_79_0"@7061
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.runoff
pushi.e -5
pushi.e 11
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_darkcontroller_slash_Draw_0_gml_79_1"@7063
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.runoff

:[23]
push.s "obj_darkcontroller_slash_Draw_0_gml_80_0"@7064
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.flashoff
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_darkcontroller_slash_Draw_0_gml_80_1"@7066
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.flashoff

:[25]
push.s "obj_darkcontroller_slash_Draw_0_gml_81_0"@7067
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.shakeoff
pushi.e -5
pushi.e 12
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_darkcontroller_slash_Draw_0_gml_81_1"@7069
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.shakeoff

:[27]
push.s "obj_darkcontroller_slash_Draw_0_gml_82_0"@7070
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.fullscreenoff
call.i window_get_fullscreen(argc=0)
conv.v.b
bf [29]

:[28]
push.s "obj_darkcontroller_slash_Draw_0_gml_82_1"@7073
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.fullscreenoff

:[29]
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 30
push.v [array]global.submenucoord
pushi.e 35
mul.i.v
add.v.v
push.v self.xx
pushi.e 145
add.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.submenu
pushi.e 33
cmp.i.v EQ
bf [31]

:[30]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[31]
push.s "obj_darkcontroller_slash_Draw_0_gml_86_0"@7074
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 150
add.i.v
push.v self.xx
pushi.e 170
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.audvol
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 150
add.i.v
push.v self.xx
pushi.e 430
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_91_0"@7075
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 185
add.i.v
push.v self.xx
pushi.e 170
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_92_0"@7076
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 220
add.i.v
push.v self.xx
pushi.e 170
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.flashoff
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 220
add.i.v
push.v self.xx
pushi.e 430
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_93_0"@7077
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 255
add.i.v
push.v self.xx
pushi.e 170
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.fullscreenoff
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 255
add.i.v
push.v self.xx
pushi.e 430
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_94_0"@7078
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 290
add.i.v
push.v self.xx
pushi.e 170
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.runoff
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 290
add.i.v
push.v self.xx
pushi.e 430
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_95_0"@7079
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 325
add.i.v
push.v self.xx
pushi.e 170
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_96_0"@7080
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 360
add.i.v
push.v self.xx
pushi.e 170
add.i.v
call.i draw_text(argc=3)
popz.v

:[32]
pushglb.v global.submenu
pushi.e 34
cmp.i.v EQ
bf [34]

:[33]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e -5
pushi.e 5
push.v [array]global.input_k
conv.v.i
push.v [array]global.asc_def
push.s "obj_darkcontroller_slash_Draw_0_gml_101_0"@7081
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 150
add.i.v
push.v self.xx
pushi.e 200
add.i.v
call.i draw_text(argc=3)
popz.v

:[34]
pushglb.v global.submenu
pushi.e 35
cmp.i.v EQ
bf [55]

:[35]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_113_0"@7082
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 100
add.i.v
push.v self.xx
pushi.e 105
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_114_0"@7083
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 100
add.i.v
push.v self.xx
pushi.e 325
add.i.v
call.i draw_text(argc=3)
popz.v
push.v 320.gamepad_active
conv.v.b
bf [37]

:[36]
push.s "obj_darkcontroller_slash_Draw_0_gml_115_0"@7084
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 100
add.i.v
push.v self.xx
pushi.e 435
add.i.v
call.i draw_text(argc=3)
popz.v

:[37]
push.s "obj_darkcontroller_slash_Draw_0_gml_117_0"@7085
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.function
push.s "obj_darkcontroller_slash_Draw_0_gml_118_0"@7087
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.function
push.s "obj_darkcontroller_slash_Draw_0_gml_119_0"@7088
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.function
push.s "obj_darkcontroller_slash_Draw_0_gml_120_0"@7089
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.function
push.s "obj_darkcontroller_slash_Draw_0_gml_121_0"@7090
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.function
push.s "obj_darkcontroller_slash_Draw_0_gml_122_0"@7091
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.function
push.s "obj_darkcontroller_slash_Draw_0_gml_123_0"@7092
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.function
push.s "obj_darkcontroller_slash_Draw_0_gml_124_0"@7093
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.function
push.s "obj_darkcontroller_slash_Draw_0_gml_125_0"@7094
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 8
pop.v.v [array]self.function
push.v self.yy
pushi.e 150
add.i.v
pushi.e -5
pushi.e 35
push.v [array]global.submenucoord
pushi.e 28
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.i

:[38]
push.v self.i
pushi.e 8
cmp.i.v LTE
bf [55]

:[39]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e 35
push.v [array]global.submenucoord
push.v self.i
cmp.v.v EQ
bf [41]

:[40]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[41]
pushi.e -5
pushi.e 35
push.v [array]global.submenucoord
push.v self.i
cmp.v.v EQ
bf [43]

:[42]
push.v self.control_select_con
pushi.e 1
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[46]
push.v self.i
pushi.e 7
cmp.i.v EQ
bf [48]

:[47]
push.v self.control_flash_timer
pushi.e 0
cmp.i.v GT
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
push.v self.control_flash_timer
pushi.e 10
conv.i.d
div.d.v
push.d 0.1
sub.d.v
push.i 65535
conv.i.v
push.i 16776960
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[51]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.function
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 140
add.i.v
push.v self.i
pushi.e 28
mul.i.v
add.v.v
push.v self.xx
pushi.e 105
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 7
cmp.i.v LT
bf [54]

:[52]
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_k
conv.v.i
push.v [array]global.asc_def
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 140
add.i.v
push.v self.i
pushi.e 28
mul.i.v
add.v.v
push.v self.xx
pushi.e 325
add.i.v
call.i draw_text(argc=3)
popz.v
push.v 320.gamepad_active
conv.v.b
bf [54]

:[53]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.input_g
call.i string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 140
add.i.v
push.v self.i
pushi.e 28
mul.i.v
add.v.v
push.v self.xx
pushi.e 495
add.i.v
call.i draw_text(argc=3)
popz.v

:[54]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [38]

:[55]
pushglb.v global.menuno
pushi.e 4
cmp.i.v EQ
bf [135]

:[56]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [58]

:[57]
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 410
add.i.v
push.v self.xx
pushi.e 612
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 420
add.i.v
push.v self.xx
pushi.e 622
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i scr_darkbox(argc=4)
popz.v
b [59]

:[58]
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 410
add.i.v
push.v self.xx
pushi.e 580
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 420
add.i.v
push.v self.xx
pushi.e 590
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i scr_darkbox(argc=4)
popz.v

:[59]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 216
add.i.v
pushi.e 5
add.i.v
push.v self.xx
pushi.e 60
add.i.v
pushi.e 520
add.i.v
push.v self.yy
pushi.e 216
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 220
add.i.v
pushi.e 190
add.i.v
push.v self.xx
pushi.e 294
add.i.v
pushi.e 5
add.i.v
push.v self.yy
pushi.e 220
add.i.v
push.v self.xx
pushi.e 294
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [61]

:[60]
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 216
add.i.v
pushi.e 5
add.i.v
push.v self.xx
pushi.e 60
add.i.v
pushi.e 552
add.i.v
push.v self.yy
pushi.e 216
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[61]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 84
add.i.v
push.v self.xx
pushi.e 124
add.i.v
pushi.e 0
conv.i.v
push.s "spr_dmenu_captions"@3387
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 210
add.i.v
push.v self.xx
pushi.e 124
add.i.v
pushi.e 4
conv.i.v
push.s "spr_dmenu_captions"@3387
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 210
add.i.v
push.v self.xx
pushi.e 380
add.i.v
pushi.e 5
conv.i.v
push.s "spr_dmenu_captions"@3387
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 225
add.i.v
push.v self.xx
pushi.e 340
add.i.v
pushi.e 6
conv.i.v
pushi.e 796
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -5
pushi.e 20
push.v [array]global.submenucoord
pop.v.v self.coord
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
pop.v.v self.charcoord
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [array]global.charname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 105
add.i.v
push.v self.xx
pushi.e 130
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[62]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [66]

:[63]
push.d 0.4
pop.v.d self.chosen
push.v self.i
push.v self.coord
cmp.v.v EQ
bf [65]

:[64]
pushi.e 1
pop.v.i self.chosen

:[65]
push.v self.chosen
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 160
push.v self.yy
add.v.i
pushi.e 90
push.v self.xx
add.v.i
push.v self.i
pushi.e 50
mul.i.v
add.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 809
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [62]

:[66]
pushglb.v global.submenu
pushi.e 20
cmp.i.v EQ
bf [68]

:[67]
pushi.e 141
push.v self.yy
add.v.i
pushi.e 100
push.v self.xx
add.v.i
push.v self.coord
pushi.e 50
mul.i.v
add.v.v
push.v self.menusiner
pushi.e 20
conv.i.d
div.d.v
pushi.e 811
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[68]
push.v self.yy
pushi.e 230
add.i.v
pop.v.v local.ch_yoff
pushi.e 25
pop.v.i local.ch_vspace
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [70]

:[69]
pushi.e 28
pop.v.i local.ch_vspace

:[70]
pushi.e 0
pop.v.i local.ch_i

:[71]
pushloc.v local.ch_i
pushi.e 6
cmp.i.v LT
bf [73]

:[72]
pushloc.v local.ch_yoff
pushloc.v local.ch_i
pushloc.v local.ch_vspace
mul.v.v
add.v.v
pushi.e -7
pushloc.v local.ch_i
conv.v.i
pop.v.v [array]local.ch_y
push.v local.ch_i
push.e 1
add.i.v
pop.v.v local.ch_i
b [71]

:[73]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_207_0"@7101
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 0
push.v [array]local.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e -7
pushi.e 0
push.v [array]local.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_208_0"@7103
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 1
push.v [array]local.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 4
conv.i.v
pushi.e -7
pushi.e 1
push.v [array]local.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_209_0"@7104
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 2
push.v [array]local.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e -7
pushi.e 2
push.v [array]local.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_212_0"@7105
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 5
push.v [array]local.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 9
conv.i.v
pushi.e -7
pushi.e 5
push.v [array]local.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_214_0"@7106
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.char_desc
pushi.e 0
pop.v.i self.guts_amount
pushi.e 0
pop.v.i self.fluff_amount
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [81]

:[74]
pushi.e 1
pop.v.i self.guts_amount
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_226_0"@7110
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 4
push.v [array]local.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.dograndom
pushi.e 99
cmp.i.v GTE
bf [76]

:[75]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_231_0"@7111
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]local.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -7
pushi.e 3
push.v [array]local.ch_y
pushi.e 5
add.i.v
push.v self.xx
pushi.e 220
add.i.v
push.v self.threebuffer
neg.v
pushi.e 30
conv.i.d
div.d.v
pushi.e 795
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [77]

:[76]
push.s "obj_darkcontroller_slash_Draw_0_gml_236_0"@7112
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]local.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v

:[77]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_239_0"@7113
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.char_desc
pushglb.v global.plot
pushi.e 30
cmp.i.v GTE
bf [79]

:[78]
push.s "obj_darkcontroller_slash_Draw_0_gml_240_0"@7114
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.char_desc

:[79]
pushi.e -5
pushi.e 252
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_darkcontroller_slash_Draw_0_gml_241_0"@7115
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.char_desc

:[81]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [91]

:[82]
pushi.e 2
pop.v.i self.guts_amount
pushi.e 100
pop.v.i self.rude_amount
pushglb.v global.plot
pushi.e 154
cmp.i.v GTE
bf [84]

:[83]
pushi.e 99
pop.v.i self.rude_amount

:[84]
pushi.e 100
pop.v.i self.crude_amount
pushi.e -5
pushi.e 214
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
pushi.e 101
pop.v.i self.crude_amount

:[86]
push.s "obj_darkcontroller_slash_Draw_0_gml_251_0"@7118
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]local.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 13
conv.i.v
pushi.e -7
pushi.e 3
push.v [array]local.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [88]

:[87]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "obj_darkcontroller_slash_Draw_0_gml_252_0"@7119
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 4
push.v [array]local.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 13
conv.i.v
pushi.e -7
pushi.e 4
push.v [array]local.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v
b [89]

:[88]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.s "obj_darkcontroller_slash_Draw_0_gml_252_0"@7119
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 4
push.v [array]local.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 13
conv.i.v
pushi.e -7
pushi.e 4
push.v [array]local.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v

:[89]
push.v self.rude_amount
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]local.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.crude_amount
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 4
push.v [array]local.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_255_0"@7120
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.char_desc
pushglb.v global.plot
pushi.e 154
cmp.i.v GTE
bf [91]

:[90]
push.s "obj_darkcontroller_slash_Draw_0_gml_256_0"@7121
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.char_desc

:[91]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [103]

:[92]
pushi.e 0
pop.v.i self.guts_amount
pushi.e 1
pop.v.i self.fluff_amount
pushi.e 100
pop.v.i self.kindness_amount
pushi.e 10
pop.v.i self.kind_icon
push.s "obj_darkcontroller_slash_Draw_0_gml_265_0"@7124
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.kind_text
push.v self.dograndom
pushi.e 99
cmp.i.v GTE
bf [94]

:[93]
pushi.e 11
pop.v.i self.kind_icon
push.s "obj_darkcontroller_slash_Draw_0_gml_269_0"@7126
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.kind_text
pushi.e 1
pop.v.i self.kindness_amount

:[94]
push.s "obj_darkcontroller_slash_Draw_0_gml_272_0"@7127
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.char_desc
pushi.e -5
pushi.e 3
push.v [array]global.charweapon
pushi.e 9
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_darkcontroller_slash_Draw_0_gml_275_0"@7128
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.char_desc

:[96]
pushi.e -5
pushi.e 3
push.v [array]global.charweapon
pushi.e 10
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_darkcontroller_slash_Draw_0_gml_279_0"@7129
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.char_desc
push.v self.fluff_amount
pushi.e 1
add.i.v
pop.v.v self.fluff_amount

:[98]
push.v self.kind_text
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]local.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.kind_icon
pushi.e -7
pushi.e 3
push.v [array]local.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v
push.v self.kindness_amount
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]local.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.d 0.8
pop.v.d self.fluff_xscale
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [100]

:[99]
pushi.e 1
pop.v.i self.fluff_xscale

:[100]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.fluff_xscale
push.s "obj_darkcontroller_slash_Draw_0_gml_286_0"@7131
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 4
push.v [array]local.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 12
conv.i.v
pushi.e -7
pushi.e 4
push.v [array]local.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[101]
push.v self.i
push.v self.fluff_amount
cmp.v.v LT
bf [103]

:[102]
pushi.e 12
conv.i.v
pushi.e -7
pushi.e 4
push.v [array]local.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 230
add.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
call.i draw_item_icon(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [101]

:[103]
push.v self.char_desc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 105
add.i.v
push.v self.xx
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
pop.v.i self.guts_xoff
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [105]

:[104]
pushi.e 16
pop.v.i self.guts_xoff

:[105]
pushi.e 0
pop.v.i self.i

:[106]
push.v self.i
push.v self.guts_amount
cmp.v.v LT
bf [108]

:[107]
pushi.e 9
conv.i.v
pushi.e -7
pushi.e 5
push.v [array]local.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 190
add.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.guts_xoff
add.v.v
call.i draw_item_icon(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [106]

:[108]
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.at
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemat
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemat
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemat
add.v.v
pop.v.v self.atsum
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.df
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pop.v.v self.dfsum
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.mag
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemmag
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemmag
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemmag
add.v.v
pop.v.v self.magsum
pushglb.v global.grazeamt
pop.v.v self.grazesum
pushglb.v global.grazesize
pop.v.v self.sizesum
pushi.e 0
pop.v.i self.i

:[109]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [116]

:[110]
pushi.e 0
pop.v.i self.j

:[111]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [115]

:[112]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [114]

:[113]
push.v self.grazesum
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]global.itemgrazeamt
add.v.v
pop.v.v self.grazesum
push.v self.sizesum
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]global.itemgrazesize
add.v.v
pop.v.v self.sizesum

:[114]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [111]

:[115]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [109]

:[116]
push.v self.atsum
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 0
push.v [array]local.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.dfsum
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 1
push.v [array]local.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.magsum
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 2
push.v [array]local.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
pop.v.i self.spell_xoff
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [118]

:[117]
pushi.e -10
pop.v.i self.spell_xoff

:[118]
pushi.e 0
pop.v.i self.i

:[119]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [131]

:[120]
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spell
pushi.e 0
cmp.i.v GT
bf [130]

:[121]
pushi.e 0
pop.v.i self.g
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spellusable
pushi.e 0
cmp.i.v EQ
bf [123]

:[122]
pushi.e 1
pop.v.i self.g

:[123]
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spellcost
pushglb.v global.tension
cmp.v.v GT
bf [125]

:[124]
pushi.e 1
pop.v.i self.g

:[125]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [127]

:[126]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[127]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [129]

:[128]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[129]
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spellcost
pushglb.v global.maxtension
div.v.v
pushi.e 100
mul.i.v
call.i round(argc=1)
call.i string(argc=1)
push.s "%"@3588
add.s.v
call.i string_hash_to_newline(argc=1)
pushi.e -7
push.v self.i
conv.v.i
push.v [array]local.ch_y
push.v self.xx
pushi.e 340
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spellname
call.i string_hash_to_newline(argc=1)
pushi.e -7
push.v self.i
conv.v.i
push.v [array]local.ch_y
push.v self.xx
pushi.e 410
add.i.v
push.v self.spell_xoff
add.v.v
call.i draw_text(argc=3)
popz.v

:[130]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [119]

:[131]
pushglb.v global.submenu
pushi.e 21
cmp.i.v EQ
bf [133]

:[132]
push.v self.yy
pushi.e 240
add.i.v
pushi.e -5
pushi.e 21
push.v [array]global.submenucoord
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 320
add.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[133]
push.v self.deschaver
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e -5
pushi.e 21
push.v [array]global.submenucoord
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spelldesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[135]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [380]

:[136]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 27
pop.v.i local.ch_vspace
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [138]

:[137]
pushi.e 28
pop.v.i local.ch_vspace
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 410
add.i.v
push.v self.xx
pushi.e 626
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 420
add.i.v
push.v self.xx
pushi.e 636
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i scr_darkbox(argc=4)
popz.v
b [139]

:[138]
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 410
add.i.v
push.v self.xx
pushi.e 580
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 420
add.i.v
push.v self.xx
pushi.e 590
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i scr_darkbox(argc=4)
popz.v

:[139]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 91
add.i.v
pushi.e 135
add.i.v
push.v self.xx
pushi.e 275
add.i.v
push.v self.yy
pushi.e 91
add.i.v
push.v self.xx
pushi.e 270
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 221
add.i.v
pushi.e 5
add.i.v
push.v self.xx
pushi.e 59
add.i.v
pushi.e 523
add.i.v
push.v self.yy
pushi.e 221
add.i.v
push.v self.xx
pushi.e 59
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [141]

:[140]
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 221
add.i.v
pushi.e 5
add.i.v
push.v self.xx
pushi.e 63
add.i.v
pushi.e 565
add.i.v
push.v self.yy
pushi.e 221
add.i.v
push.v self.xx
pushi.e 59
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[141]
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 221
add.i.v
pushi.e 190
add.i.v
push.v self.xx
pushi.e 318
add.i.v
pushi.e 5
add.i.v
push.v self.yy
pushi.e 221
add.i.v
push.v self.xx
pushi.e 318
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 86
add.i.v
push.v self.xx
pushi.e 118
add.i.v
pushi.e 0
conv.i.v
push.s "spr_dmenu_captions"@3387
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 86
add.i.v
push.v self.xx
pushi.e 376
add.i.v
pushi.e 1
conv.i.v
push.s "spr_dmenu_captions"@3387
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
pushi.e 1
cmp.i.v EQ
bt [143]

:[142]
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
pushi.e 2
cmp.i.v EQ
b [144]

:[143]
push.e 1

:[144]
bf [146]

:[145]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 216
add.i.v
push.v self.xx
pushi.e 372
add.i.v
pushi.e 2
conv.i.v
push.s "spr_dmenu_captions"@3387
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
b [147]

:[146]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 216
add.i.v
push.v self.xx
pushi.e 372
add.i.v
pushi.e 3
conv.i.v
push.s "spr_dmenu_captions"@3387
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[147]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 216
add.i.v
push.v self.xx
pushi.e 116
add.i.v
pushi.e 4
conv.i.v
push.s "spr_dmenu_captions"@3387
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -5
pushi.e 10
push.v [array]global.submenucoord
pop.v.v self.coord
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
pop.v.v self.charcoord
push.v self.menusiner
pushi.e 1
add.i.v
pop.v.v self.menusiner
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.charname_xoff
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [149]

:[148]
pushi.e -25
pop.v.i self.charname_xoff

:[149]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [array]global.charname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 107
add.i.v
push.v self.xx
pushi.e 135
add.i.v
push.v self.charname_xoff
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[150]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [154]

:[151]
push.d 0.4
pop.v.d self.chosen
push.v self.i
push.v self.coord
cmp.v.v EQ
bf [153]

:[152]
pushi.e 1
pop.v.i self.chosen

:[153]
push.v self.chosen
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 160
push.v self.yy
add.v.i
pushi.e 90
push.v self.xx
add.v.i
push.v self.i
pushi.e 50
mul.i.v
add.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 809
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [150]

:[154]
pushglb.v global.submenu
pushi.e 10
cmp.i.v EQ
bf [156]

:[155]
pushi.e 142
push.v self.yy
add.v.i
pushi.e 100
push.v self.xx
add.v.i
push.v self.coord
pushi.e 50
mul.i.v
add.v.v
push.v self.menusiner
pushi.e 20
conv.i.d
div.d.v
pushi.e 811
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[156]
pushglb.v global.submenu
pushi.e 11
cmp.i.v NEQ
bf [158]

:[157]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 108
add.i.v
push.v self.xx
pushi.e 302
add.i.v
push.v self.charcoord
pushi.e 1
sub.i.v
pushi.e 797
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 142
add.i.v
push.v self.xx
pushi.e 302
add.i.v
pushi.e 3
conv.i.v
pushi.e 797
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 172
add.i.v
push.v self.xx
pushi.e 302
add.i.v
pushi.e 4
conv.i.v
pushi.e 797
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[158]
pushglb.v global.submenu
pushi.e 11
cmp.i.v EQ
bf [168]

:[159]
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v EQ
bf [161]

:[160]
push.v self.yy
pushi.e 122
add.i.v
push.v self.xx
pushi.e 308
add.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [162]

:[161]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 108
add.i.v
push.v self.xx
pushi.e 302
add.i.v
push.v self.charcoord
pushi.e 1
sub.i.v
pushi.e 797
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[162]
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
pushi.e 1
cmp.i.v EQ
bf [164]

:[163]
push.v self.yy
pushi.e 152
add.i.v
push.v self.xx
pushi.e 308
add.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [165]

:[164]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 142
add.i.v
push.v self.xx
pushi.e 302
add.i.v
pushi.e 3
conv.i.v
pushi.e 797
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[165]
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
pushi.e 2
cmp.i.v EQ
bf [167]

:[166]
push.v self.yy
pushi.e 182
add.i.v
push.v self.xx
pushi.e 308
add.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [168]

:[167]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 172
add.i.v
push.v self.xx
pushi.e 302
add.i.v
pushi.e 4
conv.i.v
pushi.e 797
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[168]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponname
conv.v.b
not.b
push.s " "@24
cmp.s.b EQ
bf [170]

:[169]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 112
add.i.v
push.v self.xx
pushi.e 365
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponicon
push.v self.yy
pushi.e 118
add.i.v
push.v self.xx
pushi.e 343
add.i.v
call.i draw_item_icon(argc=3)
popz.v
b [171]

:[170]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_423_0"@7140
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 112
add.i.v
push.v self.xx
pushi.e 365
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[171]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [array]global.chararmor1
pushi.e 0
cmp.i.v NEQ
bf [173]

:[172]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1name
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 142
add.i.v
push.v self.xx
pushi.e 365
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1icon
push.v self.yy
pushi.e 148
add.i.v
push.v self.xx
pushi.e 343
add.i.v
call.i draw_item_icon(argc=3)
popz.v
b [174]

:[173]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_435_0"@7141
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 142
add.i.v
push.v self.xx
pushi.e 365
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[174]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [array]global.chararmor2
pushi.e 0
cmp.i.v NEQ
bf [176]

:[175]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2name
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 172
add.i.v
push.v self.xx
pushi.e 365
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2icon
push.v self.yy
pushi.e 178
add.i.v
push.v self.xx
pushi.e 343
add.i.v
call.i draw_item_icon(argc=3)
popz.v
b [177]

:[176]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_447_0"@7142
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 172
add.i.v
push.v self.xx
pushi.e 365
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[177]
pushi.e 0
pop.v.i self.eq_xoff
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [179]

:[178]
pushi.e -6
pop.v.i self.eq_xoff

:[179]
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v EQ
bf [205]

:[180]
pushi.e 0
pop.v.i self.j
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
pop.v.v self.i

:[181]
push.v self.i
pushi.e 6
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
add.v.i
cmp.v.v LT
bf [205]

:[182]
pushi.e 0
pop.v.i self.g
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [184]

:[183]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponchar1
pushi.e 0
cmp.i.v EQ
b [185]

:[184]
push.e 0

:[185]
bf [187]

:[186]
pushi.e 1
pop.v.i self.g

:[187]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [189]

:[188]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponchar2
pushi.e 0
cmp.i.v EQ
b [190]

:[189]
push.e 0

:[190]
bf [192]

:[191]
pushi.e 1
pop.v.i self.g

:[192]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [194]

:[193]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponchar3
pushi.e 0
cmp.i.v EQ
b [195]

:[194]
push.e 0

:[195]
bf [197]

:[196]
pushi.e 1
pop.v.i self.g

:[197]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [199]

:[198]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[199]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [201]

:[200]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[201]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponicon
push.v self.yy
pushi.e 236
add.i.v
push.v self.j
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 364
add.i.v
push.v self.eq_xoff
add.v.v
call.i draw_item_icon(argc=3)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.weapon
pushi.e 0
cmp.i.v NEQ
bf [203]

:[202]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
push.v self.j
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 384
add.i.v
push.v self.eq_xoff
add.v.v
call.i draw_text(argc=3)
popz.v
b [204]

:[203]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "---------"@7144
conv.s.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
push.v self.j
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 384
add.i.v
push.v self.eq_xoff
add.v.v
call.i draw_text(argc=3)
popz.v

:[204]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [181]

:[205]
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
pushi.e 1
cmp.i.v EQ
bt [207]

:[206]
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
pushi.e 2
cmp.i.v EQ
b [208]

:[207]
push.e 1

:[208]
bf [234]

:[209]
pushi.e 0
pop.v.i self.j
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
pop.v.v self.i

:[210]
push.v self.i
pushi.e 6
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
add.v.i
cmp.v.v LT
bf [234]

:[211]
pushi.e 0
pop.v.i self.g
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [213]

:[212]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorchar1
pushi.e 0
cmp.i.v EQ
b [214]

:[213]
push.e 0

:[214]
bf [216]

:[215]
pushi.e 1
pop.v.i self.g

:[216]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [218]

:[217]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorchar2
pushi.e 0
cmp.i.v EQ
b [219]

:[218]
push.e 0

:[219]
bf [221]

:[220]
pushi.e 1
pop.v.i self.g

:[221]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [223]

:[222]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorchar3
pushi.e 0
cmp.i.v EQ
b [224]

:[223]
push.e 0

:[224]
bf [226]

:[225]
pushi.e 1
pop.v.i self.g

:[226]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [228]

:[227]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[228]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [230]

:[229]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[230]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armoricon
push.v self.yy
pushi.e 236
add.i.v
push.v self.j
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 364
add.i.v
push.v self.eq_xoff
add.v.v
call.i draw_item_icon(argc=3)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.armor
pushi.e 0
cmp.i.v NEQ
bf [232]

:[231]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
push.v self.j
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 384
add.i.v
push.v self.eq_xoff
add.v.v
call.i draw_text(argc=3)
popz.v
b [233]

:[232]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "---------"@7144
conv.s.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
push.v self.j
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 384
add.i.v
push.v self.eq_xoff
add.v.v
call.i draw_text(argc=3)
popz.v

:[233]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [210]

:[234]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bt [237]

:[235]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [237]

:[236]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [238]

:[237]
push.e 1

:[238]
bf [259]

:[239]
pushi.e 0
pop.v.i self.scroll_xoff
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [241]

:[240]
pushi.e 54
pop.v.i self.scroll_xoff

:[241]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [243]

:[242]
pushi.e 0
pop.v.i self.pm
b [244]

:[243]
pushi.e 1
pop.v.i self.pm

:[244]
push.v self.yy
pushi.e 240
add.i.v
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
pushi.e -1
push.v self.pm
conv.v.i
push.v [array]self.pagemax
sub.v.v
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 344
add.i.v
push.v self.eq_xoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[245]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [255]

:[246]
pushi.e 0
pop.v.i self.buff
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
push.v self.i
cmp.v.v EQ
bf [248]

:[247]
push.v self.buff
pushi.e 3
add.i.v
pop.v.v self.buff

:[248]
push.v self.pm
pushi.e 0
cmp.i.v EQ
bf [251]

:[249]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.weapon
pushi.e 0
cmp.i.v EQ
bf [251]

:[250]
push.v self.buff
pushi.e 1
sub.i.v
pop.v.v self.buff

:[251]
push.v self.pm
pushi.e 1
cmp.i.v EQ
bf [254]

:[252]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.armor
pushi.e 0
cmp.i.v EQ
bf [254]

:[253]
push.v self.buff
pushi.e 1
sub.i.v
pop.v.v self.buff

:[254]
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 263
add.i.v
push.v self.i
pushi.e 10
mul.i.v
add.v.v
push.v self.buff
add.v.v
push.v self.xx
pushi.e 558
add.i.v
push.v self.buff
add.v.v
push.v self.scroll_xoff
add.v.v
push.v self.yy
pushi.e 260
add.i.v
push.v self.i
pushi.e 10
mul.i.v
add.v.v
push.v self.buff
sub.v.v
push.v self.xx
pushi.e 555
add.i.v
push.v self.buff
sub.v.v
push.v self.scroll_xoff
add.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [245]

:[255]
pushi.e -1
push.v self.pm
conv.v.i
push.v [array]self.pagemax
pushi.e 0
cmp.i.v GT
bf [257]

:[256]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 250
add.i.v
push.v self.cur_jewel
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
sub.v.v
push.v self.xx
pushi.e 551
add.i.v
push.v self.scroll_xoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 370
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[257]
pushi.e 5
pushi.e -1
push.v self.pm
conv.v.i
push.v [array]self.pagemax
add.v.i
pushi.e 11
cmp.i.v LT
bf [259]

:[258]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 385
add.i.v
push.v self.cur_jewel
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.xx
pushi.e 551
add.i.v
push.v self.scroll_xoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 370
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[259]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 11
cmp.i.v EQ
bf [266]

:[260]
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v EQ
bf [262]

:[261]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweapondesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[262]
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
pushi.e 1
cmp.i.v EQ
bf [264]

:[263]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1desc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[264]
pushi.e -5
pushi.e 11
push.v [array]global.submenucoord
pushi.e 2
cmp.i.v EQ
bf [266]

:[265]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2desc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[266]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [268]

:[267]
pushi.e -1
pushi.e -5
pushi.e 12
push.v [array]global.submenucoord
conv.v.i
push.v [array]self.weapondesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[268]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [270]

:[269]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [271]

:[270]
push.e 1

:[271]
bf [273]

:[272]
pushi.e -1
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
conv.v.i
push.v [array]self.armordesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[273]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_556_0"@7147
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 236
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_557_0"@7148
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 4
conv.i.v
push.v self.yy
pushi.e 236
add.i.v
pushloc.v local.ch_vspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_558_0"@7149
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 5
conv.i.v
push.v self.yy
pushi.e 236
add.i.v
pushloc.v local.ch_vspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.at
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemat
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemat
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemat
add.v.v
pop.v.v self.atsum
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.df
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pop.v.v self.dfsum
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.mag
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemmag
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemmag
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemmag
add.v.v
pop.v.v self.magsum
pushglb.v global.grazeamt
pop.v.v self.grazesum
pushglb.v global.grazesize
pop.v.v self.sizesum
pushi.e 0
pop.v.i self.i

:[274]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [281]

:[275]
pushi.e 0
pop.v.i self.j

:[276]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [280]

:[277]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [279]

:[278]
push.v self.grazesum
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]global.itemgrazeamt
add.v.v
pop.v.v self.grazesum
push.v self.sizesum
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]global.itemgrazesize
add.v.v
pop.v.v self.sizesum

:[279]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [276]

:[280]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [274]

:[281]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bt [284]

:[282]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [284]

:[283]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [285]

:[284]
push.e 1

:[285]
bf [374]

:[286]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]global.submenucoord
pop.v.v self.cur
pushi.e 0
pop.v.i self.g
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [302]

:[287]
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [289]

:[288]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponchar1
pushi.e 0
cmp.i.v EQ
b [290]

:[289]
push.e 0

:[290]
bf [292]

:[291]
pushi.e 1
pop.v.i self.g

:[292]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [294]

:[293]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponchar2
pushi.e 0
cmp.i.v EQ
b [295]

:[294]
push.e 0

:[295]
bf [297]

:[296]
pushi.e 1
pop.v.i self.g

:[297]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [299]

:[298]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponchar3
pushi.e 0
cmp.i.v EQ
b [300]

:[299]
push.e 0

:[300]
bf [302]

:[301]
pushi.e 1
pop.v.i self.g

:[302]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [304]

:[303]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [305]

:[304]
push.e 1

:[305]
bf [321]

:[306]
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [308]

:[307]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorchar1
pushi.e 0
cmp.i.v EQ
b [309]

:[308]
push.e 0

:[309]
bf [311]

:[310]
pushi.e 1
pop.v.i self.g

:[311]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [313]

:[312]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorchar2
pushi.e 0
cmp.i.v EQ
b [314]

:[313]
push.e 0

:[314]
bf [316]

:[315]
pushi.e 1
pop.v.i self.g

:[316]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [318]

:[317]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorchar3
pushi.e 0
cmp.i.v EQ
b [319]

:[318]
push.e 0

:[319]
bf [321]

:[320]
pushi.e 1
pop.v.i self.g

:[321]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponability
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilitytext
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1ability
pushi.e -1
pushi.e 1
pop.v.v [array]self._abilitytext
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2ability
pushi.e -1
pushi.e 2
pop.v.v [array]self._abilitytext
push.i 4210752
pushi.e -1
pushi.e 0
pop.v.i [array]self._abilitycolor
push.i 4210752
pushi.e -1
pushi.e 1
pop.v.i [array]self._abilitycolor
push.i 4210752
pushi.e -1
pushi.e 2
pop.v.i [array]self._abilitycolor
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponabilityicon
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilityicon
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1abilityicon
pushi.e -1
pushi.e 1
pop.v.v [array]self._abilityicon
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2abilityicon
pushi.e -1
pushi.e 2
pop.v.v [array]self._abilityicon
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [323]

:[322]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
b [324]

:[323]
push.e 0

:[324]
bf [344]

:[325]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponat
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemat
sub.v.v
pop.v.v self.atup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weapondf
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemdf
sub.v.v
pop.v.v self.dfup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponmag
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemmag
sub.v.v
pop.v.v self.magup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponstyle
pop.v.v self.styleup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weapongrazeamt
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemgrazeamt
sub.v.v
pop.v.v self.grazeup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weapongrazesize
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemgrazesize
sub.v.v
pop.v.v self.sizeup
push.i 16777215
pushi.e -1
pushi.e 0
pop.v.i [array]self._abilitycolor
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponabilityicon
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilityicon
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponability
pushi.e -1
pushi.e 0
push.v [array]self._abilitytext
cmp.v.v NEQ
bf [328]

:[326]
push.i 65535
pushi.e -1
pushi.e 0
pop.v.i [array]self._abilitycolor
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponability
push.s " "@24
cmp.s.v EQ
bf [328]

:[327]
pushi.e 255
pushi.e -1
pushi.e 0
pop.v.i [array]self._abilitycolor

:[328]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponability
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilitytext
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.atup
pushi.e 0
cmp.i.v GT
bf [330]

:[329]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[330]
push.v self.atup
pushi.e 0
cmp.i.v LT
bf [332]

:[331]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[332]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [334]

:[333]
push.v self.atsum
push.v self.atup
add.v.v
call.i string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
b [335]

:[334]
push.v self.atsum
push.v self.atup
add.v.v
call.i string(argc=1)
push.s "obj_darkcontroller_slash_Draw_0_gml_643_0"@7160
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
push.v self.atup
call.i string(argc=1)
add.v.v
push.s ")"@3428
add.s.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v

:[335]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.dfup
pushi.e 0
cmp.i.v GT
bf [337]

:[336]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[337]
push.v self.dfup
pushi.e 0
cmp.i.v LT
bf [339]

:[338]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[339]
push.v self.dfsum
push.v self.dfup
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.magup
pushi.e 0
cmp.i.v GT
bf [341]

:[340]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[341]
push.v self.magup
pushi.e 0
cmp.i.v LT
bf [343]

:[342]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[343]
push.v self.magsum
push.v self.magup
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v

:[344]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [365]

:[345]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [347]

:[346]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [348]

:[347]
push.e 1

:[348]
bf [365]

:[349]
pushglb.v global.submenu
pushi.e 12
sub.i.v
pop.v.v self.arno
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorat
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.arno
conv.v.i
chkindex.e
add.i.i
push.v [array]global.itemat
sub.v.v
pop.v.v self.atup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armordf
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.arno
conv.v.i
chkindex.e
add.i.i
push.v [array]global.itemdf
sub.v.v
pop.v.v self.dfup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armormag
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.arno
conv.v.i
chkindex.e
add.i.i
push.v [array]global.itemmag
sub.v.v
pop.v.v self.magup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorgrazeamt
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.arno
conv.v.i
chkindex.e
add.i.i
push.v [array]global.itemgrazeamt
sub.v.v
pop.v.v self.grazeup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorgrazesize
pushi.e -5
push.v self.charcoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.arno
conv.v.i
chkindex.e
add.i.i
push.v [array]global.itemgrazesize
sub.v.v
pop.v.v self.sizeup
push.i 16777215
pushi.e -1
push.v self.arno
conv.v.i
pop.v.i [array]self._abilitycolor
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorabilityicon
pushi.e -1
push.v self.arno
conv.v.i
pop.v.v [array]self._abilityicon
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorability
pushi.e -1
push.v self.arno
conv.v.i
push.v [array]self._abilitytext
cmp.v.v NEQ
bf [352]

:[350]
push.i 65535
pushi.e -1
push.v self.arno
conv.v.i
pop.v.i [array]self._abilitycolor
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorability
push.s " "@24
cmp.s.v EQ
bf [352]

:[351]
pushi.e 255
pushi.e -1
push.v self.arno
conv.v.i
pop.v.i [array]self._abilitycolor

:[352]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorability
pushi.e -1
push.v self.arno
conv.v.i
pop.v.v [array]self._abilitytext
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.atup
pushi.e 0
cmp.i.v GT
bf [354]

:[353]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[354]
push.v self.atup
pushi.e 0
cmp.i.v LT
bf [356]

:[355]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[356]
push.v self.atsum
push.v self.atup
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.dfup
pushi.e 0
cmp.i.v GT
bf [358]

:[357]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[358]
push.v self.dfup
pushi.e 0
cmp.i.v LT
bf [360]

:[359]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[360]
push.v self.dfsum
push.v self.dfup
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.magup
pushi.e 0
cmp.i.v GT
bf [362]

:[361]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[362]
push.v self.magup
pushi.e 0
cmp.i.v LT
bf [364]

:[363]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[364]
push.v self.magsum
push.v self.magup
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v

:[365]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [367]

:[366]
push.v self.atsum
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.dfsum
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.magsum
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v

:[367]
pushi.e 0
pop.v.i self.i

:[368]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [373]

:[369]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitytext
push.s " "@24
cmp.s.v EQ
bf [371]

:[370]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitycolor
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_736_0"@7162
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
push.v self.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
b [372]

:[371]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitycolor
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitytext
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
push.v self.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilityicon
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
push.v self.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
pushi.e 8
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v

:[372]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [368]

:[373]
b [380]

:[374]
push.v self.atsum
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.dfsum
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.magsum
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponability
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilitytext
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1ability
pushi.e -1
pushi.e 1
pop.v.v [array]self._abilitytext
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2ability
pushi.e -1
pushi.e 2
pop.v.v [array]self._abilitytext
push.i 16777215
pushi.e -1
pushi.e 0
pop.v.i [array]self._abilitycolor
push.i 16777215
pushi.e -1
pushi.e 1
pop.v.i [array]self._abilitycolor
push.i 16777215
pushi.e -1
pushi.e 2
pop.v.i [array]self._abilitycolor
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponabilityicon
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilityicon
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1abilityicon
pushi.e -1
pushi.e 1
pop.v.v [array]self._abilityicon
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2abilityicon
pushi.e -1
pushi.e 2
pop.v.v [array]self._abilityicon
pushi.e 0
pop.v.i self.i

:[375]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [380]

:[376]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitytext
push.s " "@24
cmp.s.v EQ
bf [378]

:[377]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_773_0"@7163
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
push.v self.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
b [379]

:[378]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitycolor
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitytext
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
push.v self.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilityicon
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
push.v self.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
pushi.e 8
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i draw_item_icon(argc=3)
popz.v

:[379]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [375]

:[380]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [end]

:[381]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [383]

:[382]
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 360
add.i.v
push.v self.xx
pushi.e 594
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 46
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 370
add.i.v
push.v self.xx
pushi.e 604
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 36
add.i.v
call.i scr_darkbox(argc=4)
popz.v
b [384]

:[383]
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 360
add.i.v
push.v self.xx
pushi.e 570
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 70
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 370
add.i.v
push.v self.xx
pushi.e 580
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i scr_darkbox(argc=4)
popz.v

:[384]
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
call.i scr_itemname(argc=0)
popz.v
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [400]

:[385]
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [387]

:[386]
push.v self.yy
pushi.e 120
add.i.v
push.v self.xx
pushi.e 134
add.i.v
pushi.e 120
pushi.e -5
pushi.e 1
push.v [array]global.submenucoord
mul.v.i
add.v.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[387]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [391]

:[388]
pushi.e -5
pushi.e 1
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v EQ
bf [390]

:[389]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [391]

:[390]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[391]
push.s "obj_darkcontroller_slash_Draw_0_gml_807_0"@7164
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 158
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [395]

:[392]
pushi.e -5
pushi.e 1
push.v [array]global.submenucoord
pushi.e 1
cmp.i.v EQ
bf [394]

:[393]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [395]

:[394]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[395]
push.s "obj_darkcontroller_slash_Draw_0_gml_809_0"@7165
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 278
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [399]

:[396]
pushi.e -5
pushi.e 1
push.v [array]global.submenucoord
pushi.e 2
cmp.i.v EQ
bf [398]

:[397]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [399]

:[398]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[399]
push.s "obj_darkcontroller_slash_Draw_0_gml_811_0"@7166
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 398
add.i.v
call.i draw_text(argc=3)
popz.v
b [415]

:[400]
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [402]

:[401]
push.v self.yy
pushi.e 120
add.i.v
push.v self.xx
pushi.e 155
add.i.v
pushi.e 120
pushi.e -5
pushi.e 1
push.v [array]global.submenucoord
mul.v.i
add.v.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[402]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [406]

:[403]
pushi.e -5
pushi.e 1
push.v [array]global.submenucoord
pushi.e 0
cmp.i.v EQ
bf [405]

:[404]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [406]

:[405]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[406]
push.s "obj_darkcontroller_slash_Draw_0_gml_807_0"@7164
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 180
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [410]

:[407]
pushi.e -5
pushi.e 1
push.v [array]global.submenucoord
pushi.e 1
cmp.i.v EQ
bf [409]

:[408]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [410]

:[409]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[410]
push.s "obj_darkcontroller_slash_Draw_0_gml_809_0"@7165
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 300
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [414]

:[411]
pushi.e -5
pushi.e 1
push.v [array]global.submenucoord
pushi.e 2
cmp.i.v EQ
bf [413]

:[412]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [414]

:[413]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[414]
push.s "obj_darkcontroller_slash_Draw_0_gml_811_0"@7166
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 420
add.i.v
call.i draw_text(argc=3)
popz.v

:[415]
pushglb.v global.submenu
pushi.e 2
cmp.i.v GTE
bf [418]

:[416]
pushglb.v global.submenu
pushi.e 6
cmp.i.v LTE
bf [418]

:[417]
pushglb.v global.submenu
pushi.e 4
cmp.i.v NEQ
b [419]

:[418]
push.e 0

:[419]
bf [446]

:[420]
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 30
mul.i.v
pushi.e 162
add.i.v
push.v self.yy
add.v.v
pop.v.v self.yheart
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [431]

:[421]
pushi.e 72
push.v self.xx
add.v.i
pop.v.v self.xheart
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [427]

:[422]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [427]

:[423]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [427]

:[424]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [427]

:[425]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [427]

:[426]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [428]

:[427]
push.e 1

:[428]
bf [430]

:[429]
pushi.e 334
push.v self.xx
add.v.i
pop.v.v self.xheart

:[430]
b [440]

:[431]
pushi.e 120
push.v self.xx
add.v.i
pop.v.v self.xheart
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [437]

:[432]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [437]

:[433]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [437]

:[434]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [437]

:[435]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [437]

:[436]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [438]

:[437]
push.e 1

:[438]
bf [440]

:[439]
pushi.e 330
push.v self.xx
add.v.i
pop.v.v self.xheart

:[440]
pushglb.v global.submenu
pushi.e 2
cmp.i.v EQ
bt [442]

:[441]
pushglb.v global.submenu
pushi.e 3
cmp.i.v EQ
b [443]

:[442]
push.e 1

:[443]
bf [445]

:[444]
push.v self.yheart
push.v self.xheart
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[445]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
conv.v.i
push.v [array]self.itemdesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[446]
pushglb.v global.submenu
pushi.e 7
cmp.i.v EQ
bf [450]

:[447]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [449]

:[448]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.itemname
push.s "obj_darkcontroller_slash_Draw_0_gml_829_0"@7169
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
add.v.v
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v
b [450]

:[449]
push.s "obj_darkcontroller_slash_Draw_0_gml_829_0"@7169
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]global.submenucoord
conv.v.i
push.v [array]global.itemname
add.v.v
push.s "?"@1544
add.s.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[450]
pushi.e -5
pushi.e 1
push.v [array]global.submenucoord
pushi.e 2
cmp.i.v NEQ
bf [469]

:[451]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [461]

:[452]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[453]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [455]

:[454]
pushi.e -5
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]global.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 94
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 358
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [453]

:[455]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [457]

:[456]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[457]
pushi.e 0
pop.v.i self.i

:[458]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [460]

:[459]
pushi.e -5
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]global.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 92
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 356
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [458]

:[460]
b [469]

:[461]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[462]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [464]

:[463]
pushi.e -5
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]global.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 148
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 358
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [462]

:[464]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [466]

:[465]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[466]
pushi.e 0
pop.v.i self.i

:[467]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [469]

:[468]
pushi.e -5
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]global.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 146
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 356
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [467]

:[469]
pushi.e -5
pushi.e 1
push.v [array]global.submenucoord
pushi.e 2
cmp.i.v EQ
bf [end]

:[470]
call.i scr_keyiteminfo_all(argc=0)
popz.v
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [488]

:[471]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[472]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [474]

:[473]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 94
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 358
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [472]

:[474]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [476]

:[475]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[476]
pushi.e 0
pop.v.i self.i

:[477]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [487]

:[478]
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [482]

:[479]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemusable
pushi.e 1
cmp.i.v EQ
bf [481]

:[480]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [482]

:[481]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[482]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 92
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [486]

:[483]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitemusable
pushi.e 1
cmp.i.v EQ
bf [485]

:[484]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [486]

:[485]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[486]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 356
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [477]

:[487]
b [504]

:[488]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[489]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [491]

:[490]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 148
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 358
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [489]

:[491]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [493]

:[492]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[493]
pushi.e 0
pop.v.i self.i

:[494]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [504]

:[495]
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [499]

:[496]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemusable
pushi.e 1
cmp.i.v EQ
bf [498]

:[497]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [499]

:[498]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[499]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 146
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [503]

:[500]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitemusable
pushi.e 1
cmp.i.v EQ
bf [502]

:[501]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [503]

:[502]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[503]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 356
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [494]

:[504]
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [end]

:[505]
pushi.e -5
pushi.e 4
push.v [array]global.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 30
mul.i.v
pushi.e 162
add.i.v
push.v self.yy
add.v.v
pop.v.v self.yheart
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [516]

:[506]
pushi.e 72
push.v self.xx
add.v.i
pop.v.v self.xheart
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [512]

:[507]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [512]

:[508]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [512]

:[509]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [512]

:[510]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [512]

:[511]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [513]

:[512]
push.e 1

:[513]
bf [515]

:[514]
pushi.e 334
push.v self.xx
add.v.i
pop.v.v self.xheart

:[515]
b [525]

:[516]
pushi.e 120
push.v self.xx
add.v.i
pop.v.v self.xheart
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [522]

:[517]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [522]

:[518]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [522]

:[519]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [522]

:[520]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [522]

:[521]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [523]

:[522]
push.e 1

:[523]
bf [525]

:[524]
pushi.e 330
push.v self.xx
add.v.i
pop.v.v self.xheart

:[525]
push.v self.yheart
push.v self.xheart
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e -5
pushi.e 4
push.v [array]global.submenucoord
conv.v.i
push.v [array]self.keyitemdesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[end]