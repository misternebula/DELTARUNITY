.localvar 0 arguments

:[0]
push.s "main"@1558
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
push.v self.BGMADE
pushi.e 1
cmp.i.v EQ
bf [14]

:[1]
push.v self.ANIM_SINER
pushi.e 1
add.i.v
pop.v.v self.ANIM_SINER
push.v self.ANIM_SINER_B
pushi.e 1
add.i.v
pop.v.v self.ANIM_SINER_B
push.v self.BG_SINER
pushi.e 1
add.i.v
pop.v.v self.BG_SINER
push.v self.BG_ALPHA
push.d 0.5
cmp.d.v LT
bf [3]

:[2]
push.v self.BG_ALPHA
push.d 0.04
push.v self.BG_ALPHA
pushi.e 14
conv.i.d
div.d.v
sub.v.d
add.v.v
pop.v.v self.BG_ALPHA

:[3]
push.v self.BG_ALPHA
push.d 0.5
cmp.d.v GT
bf [5]

:[4]
push.d 0.5
pop.v.d self.BG_ALPHA

:[5]
pushi.e 240
pop.v.i self.__WAVEHEIGHT
pushi.e 320
pop.v.i self.__WAVEWIDTH
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
push.v self.__WAVEHEIGHT
pushi.e 50
sub.i.v
cmp.v.v LT
bf [11]

:[7]
push.v self.BGMAGNITUDE
push.v self.i
push.v self.__WAVEHEIGHT
div.v.v
mul.v.v
push.d 1.3
mul.d.v
pop.v.v self.__WAVEMINUS
push.v self.__WAVEMINUS
push.v self.BGMAGNITUDE
cmp.v.v GT
bf [9]

:[8]
pushi.e 0
pop.v.i self.__WAVEMAG
b [10]

:[9]
push.v self.BGMAGNITUDE
push.v self.__WAVEMINUS
sub.v.v
pop.v.v self.__WAVEMAG

:[10]
push.v self.BG_ALPHA
push.d 0.8
mul.d.v
push.v self.image_blend
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -10
push.v self.i
add.v.i
push.v self.BG_ALPHA
pushi.e 20
mul.i.v
sub.v.v
push.v self.i
pushi.e 8
conv.i.d
div.d.v
push.v self.BG_SINER
pushi.e 30
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.__WAVEMAG
mul.v.v
pushi.e 1
conv.i.v
push.v self.__WAVEWIDTH
push.v self.i
pushi.e 0
conv.i.v
pushi.e 1008
conv.i.v
call.i draw_background_part_ext(argc=11)
popz.v
push.v self.BG_ALPHA
push.d 0.8
mul.d.v
push.v self.image_blend
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -10
push.v self.i
add.v.i
push.v self.BG_ALPHA
pushi.e 20
mul.i.v
sub.v.v
push.v self.i
pushi.e 8
conv.i.d
div.d.v
push.v self.BG_SINER
pushi.e 30
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
neg.v
push.v self.__WAVEMAG
mul.v.v
pushi.e 1
conv.i.v
push.v self.__WAVEWIDTH
push.v self.i
pushi.e 0
conv.i.v
pushi.e 1008
conv.i.v
call.i draw_background_part_ext(argc=11)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[11]
push.v self.ANIM_SINER_B
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.6
mul.d.v
push.d 0.25
sub.d.v
pop.v.v self.T_SINER_ADD
push.v self.T_SINER_ADD
pushi.e 0
cmp.i.v GTE
bf [13]

:[12]
push.v self.TRUE_ANIM_SINER
push.v self.T_SINER_ADD
add.v.v
pop.v.v self.TRUE_ANIM_SINER

:[13]
push.v self.BG_ALPHA
push.d 0.46
mul.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 10
push.v self.BG_ALPHA
pushi.e 20
mul.i.v
sub.v.i
push.v self.__WAVEHEIGHT
add.v.v
pushi.e 70
sub.i.v
pushi.e 0
conv.i.v
push.v self.ANIM_SINER
pushi.e 12
conv.i.d
div.d.v
pushi.e 901
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.BG_ALPHA
push.d 0.56
mul.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 10
push.v self.BG_ALPHA
pushi.e 20
mul.i.v
sub.v.i
push.v self.__WAVEHEIGHT
add.v.v
pushi.e 70
sub.i.v
pushi.e 0
conv.i.v
push.v self.ANIM_SINER
pushi.e 12
conv.i.d
div.d.v
push.d 0.4
add.d.v
pushi.e 901
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.BG_ALPHA
push.d 0.7
mul.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 10
push.v self.BG_ALPHA
pushi.e 20
mul.i.v
sub.v.i
push.v self.__WAVEHEIGHT
add.v.v
pushi.e 70
sub.i.v
pushi.e 0
conv.i.v
push.v self.ANIM_SINER
pushi.e 12
conv.i.d
div.d.v
push.d 0.8
add.d.v
pushi.e 901
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[14]
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [99]

:[16]
pushi.e 0
pop.v.i self.CONT_THIS
push.v self.MENU_NO
pop.v.v self.PREV_MENU
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i self.PREV_MENU

:[18]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [20]

:[19]
pushi.e 3
pop.v.i self.PREV_MENU

:[20]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bf [22]

:[21]
pushi.e 5
pop.v.i self.PREV_MENU

:[22]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
bf [24]

:[23]
pushi.e 5
pop.v.i self.PREV_MENU

:[24]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
push.v self.i
cmp.v.v EQ
bf [26]

:[25]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 1
pop.v.i self.CONT_THIS

:[29]
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
push.v self.i
cmp.v.v EQ
bf [31]

:[30]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 4
pop.v.i self.CONT_THIS

:[34]
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
push.v self.i
cmp.v.v EQ
bf [36]

:[35]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 6
pop.v.i self.CONT_THIS

:[39]
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
push.v self.i
cmp.v.v EQ
bf [41]

:[40]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 7
pop.v.i self.CONT_THIS

:[44]
pushi.e 55
pop.v.i self.BOX_X1
pushi.e 55
push.v self.YL
push.v self.YS
add.v.v
push.v self.i
mul.v.v
add.v.i
pop.v.v self.BOX_Y1
pushi.e 55
push.v self.XL
add.v.i
pop.v.v self.BOX_X2
pushi.e 55
push.v self.YL
push.v self.YS
add.v.v
push.v self.i
mul.v.v
add.v.i
push.v self.YL
add.v.v
pop.v.v self.BOX_Y2
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.BOX_Y2
push.v self.BOX_X2
push.v self.BOX_Y1
push.v self.BOX_X1
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.COL_A
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.PREV_MENU
conv.v.i
push.v [array]self.MENUCOORD
push.v self.i
cmp.v.v EQ
bf [46]

:[45]
push.v self.COL_B
call.i draw_set_color(argc=1)
popz.v

:[46]
push.v self.MENU_NO
pushi.e 3
cmp.i.v EQ
bt [48]

:[47]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
b [49]

:[48]
push.e 1

:[49]
bf [52]

:[50]
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
push.v self.i
cmp.v.v EQ
bf [52]

:[51]
push.v self.COL_PLUS
call.i draw_set_color(argc=1)
popz.v

:[52]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
bf [54]

:[53]
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
push.v self.i
cmp.v.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[57]
pushi.e 1
conv.i.v
push.v self.BOX_Y2
push.v self.BOX_X2
push.v self.BOX_Y1
push.v self.BOX_X1
call.i draw_rectangle(argc=5)
popz.v
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [61]

:[58]
pushi.e 0
pop.v.i self.j

:[59]
push.v self.j
pushi.e 4
cmp.i.v LT
bf [61]

:[60]
pushi.e 1
conv.i.v
push.v self.BOX_Y2
push.d 0.5
push.v self.j
mul.v.d
add.v.v
push.v self.BOX_X2
push.d 0.5
push.v self.j
mul.v.d
add.v.v
push.v self.BOX_Y1
push.d 0.5
push.v self.j
mul.v.d
sub.v.v
push.v self.BOX_X1
push.d 0.5
push.v self.j
mul.v.d
sub.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [59]

:[61]
push.v self.CONT_THIS
pushi.e 4
cmp.i.v LT
bf [69]

:[62]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
push.s "main"@1558
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
b [68]

:[64]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.INITLANG
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
b [68]

:[66]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.INITLANG
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
pushi.e 7
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[68]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.NAME
push.v self.BOX_Y1
pushi.e 5
add.i.v
push.v self.BOX_X1
pushi.e 25
add.i.v
call.i draw_text_shadow(argc=3)
popz.v
push.s "main"@1558
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_STRING
push.v self.BOX_Y1
pushi.e 5
add.i.v
push.v self.BOX_X1
pushi.e 180
add.i.v
call.i draw_text_shadow(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[69]
push.v self.CONT_THIS
pushi.e 1
cmp.i.v GTE
bf [97]

:[70]
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [81]

:[71]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bf [74]

:[72]
push.s " "@24
pop.v.s self.SELTEXT_C
push.s "DEVICE_MENU_slash_Draw_0_gml_116_0"@9804
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_A
push.s "DEVICE_MENU_slash_Draw_0_gml_116_1"@9806
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_B
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
push.s "DEVICE_MENU_slash_Draw_0_gml_117_0"@9808
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_A
push.s "DEVICE_MENU_slash_Draw_0_gml_117_1"@9809
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_B

:[74]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [76]

:[75]
push.s "DEVICE_MENU_slash_Draw_0_gml_119_0"@9810
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_A
push.s "DEVICE_MENU_slash_Draw_0_gml_119_1"@9811
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_B
push.s "DEVICE_MENU_slash_Draw_0_gml_119_2"@9812
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_C

:[76]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bf [78]

:[77]
push.s "DEVICE_MENU_slash_Draw_0_gml_120_0"@9813
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_A
push.s "DEVICE_MENU_slash_Draw_0_gml_120_1"@9814
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_B
push.s "DEVICE_MENU_slash_Draw_0_gml_120_2"@9815
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_C

:[78]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
bf [80]

:[79]
push.s "DEVICE_MENU_slash_Draw_0_gml_121_0"@9816
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_A
push.s "DEVICE_MENU_slash_Draw_0_gml_121_1"@9817
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_B
push.s "DEVICE_MENU_slash_Draw_0_gml_121_2"@9818
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_C

:[80]
b [90]

:[81]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bf [84]

:[82]
push.s " "@24
pop.v.s self.SELTEXT_C
push.s "DEVICE_MENU_slash_Draw_0_gml_128_0"@9819
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_A
push.s "DEVICE_MENU_slash_Draw_0_gml_128_1"@9820
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_B
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [84]

:[83]
push.s "DEVICE_MENU_slash_Draw_0_gml_129_0"@9821
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_A
push.s "DEVICE_MENU_slash_Draw_0_gml_129_1"@9822
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_B

:[84]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [86]

:[85]
push.s "DEVICE_MENU_slash_Draw_0_gml_131_0"@9823
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_A
push.s "DEVICE_MENU_slash_Draw_0_gml_131_1"@9824
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_B
push.s "DEVICE_MENU_slash_Draw_0_gml_131_2"@9825
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_C

:[86]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bf [88]

:[87]
push.s "DEVICE_MENU_slash_Draw_0_gml_132_0"@9826
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_A
push.s "DEVICE_MENU_slash_Draw_0_gml_132_1"@9827
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_B
push.s "DEVICE_MENU_slash_Draw_0_gml_132_2"@9828
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_C

:[88]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
bf [90]

:[89]
push.s "DEVICE_MENU_slash_Draw_0_gml_133_0"@9829
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_A
push.s "DEVICE_MENU_slash_Draw_0_gml_133_1"@9830
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_B
push.s "DEVICE_MENU_slash_Draw_0_gml_133_2"@9831
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.SELTEXT_C

:[90]
push.v self.COL_B
call.i draw_set_color(argc=1)
popz.v
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
bf [92]

:[91]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[92]
push.v self.SELTEXT_C
push.v self.BOX_Y1
pushi.e 5
add.i.v
push.v self.BOX_X1
pushi.e 25
add.i.v
call.i draw_text_shadow(argc=3)
popz.v
push.v self.COL_A
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
push.v self.COL_B
call.i draw_set_color(argc=1)
popz.v
pushi.e 75
pop.v.i self.HEARTX
pushi.e 81
push.v self.YL
push.v self.YS
add.v.v
pushi.e -1
push.v self.PREV_MENU
conv.v.i
push.v [array]self.MENUCOORD
mul.v.v
add.v.i
pop.v.v self.HEARTY

:[94]
push.v self.SELTEXT_A
push.v self.BOX_Y1
pushi.e 22
add.i.v
push.v self.BOX_X1
pushi.e 35
add.i.v
call.i draw_text_shadow(argc=3)
popz.v
push.v self.COL_A
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
push.v self.COL_B
call.i draw_set_color(argc=1)
popz.v
pushi.e 165
pop.v.i self.HEARTX
pushi.e 81
push.v self.YL
push.v self.YS
add.v.v
pushi.e -1
push.v self.PREV_MENU
conv.v.i
push.v [array]self.MENUCOORD
mul.v.v
add.v.i
pop.v.v self.HEARTY

:[96]
push.v self.SELTEXT_B
push.v self.BOX_Y1
pushi.e 22
add.i.v
push.v self.BOX_X1
pushi.e 125
add.i.v
call.i draw_text_shadow(argc=3)
popz.v
b [98]

:[97]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.PLACE
push.v self.BOX_Y1
pushi.e 22
add.i.v
push.v self.BOX_X1
pushi.e 25
add.i.v
call.i draw_text_shadow(argc=3)
popz.v

:[98]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[99]
push.v self.MENU_NO
pushi.e 0
cmp.i.v GTE
bf [180]

:[100]
push.v self.MENU_NO
pushi.e 0
cmp.i.v EQ
bt [104]

:[101]
push.v self.MENU_NO
pushi.e 2
cmp.i.v EQ
bt [104]

:[102]
push.v self.MENU_NO
pushi.e 3
cmp.i.v EQ
bt [104]

:[103]
push.v self.MENU_NO
pushi.e 5
cmp.i.v EQ
b [105]

:[104]
push.e 1

:[105]
bf [117]

:[106]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 0
cmp.i.v GTE
bf [108]

:[107]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 2
cmp.i.v LTE
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
pushi.e 65
pop.v.i self.HEARTX
pushi.e 72
push.v self.YL
push.v self.YS
add.v.v
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
mul.v.v
add.v.i
pop.v.v self.HEARTY

:[111]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v EQ
bf [113]

:[112]
pushi.e 65
pop.v.i self.HEARTX
pushi.e 195
pop.v.i self.HEARTY

:[113]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 4
cmp.i.v EQ
bf [115]

:[114]
pushi.e 115
pop.v.i self.HEARTX
pushi.e 195
pop.v.i self.HEARTY

:[115]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v EQ
bf [117]

:[116]
pushi.e 175
pop.v.i self.HEARTX
pushi.e 195
pop.v.i self.HEARTY

:[117]
push.v self.MENU_NO
pushi.e 2
cmp.i.v GTE
bf [123]

:[118]
push.s "DEVICE_MENU_slash_Draw_0_gml_189_0"@9832
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.CANCELTEXT
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [120]

:[119]
push.s "DEVICE_MENU_slash_Draw_0_gml_190_0"@9834
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.CANCELTEXT

:[120]
push.v self.COL_A
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.PREV_MENU
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v EQ
bf [122]

:[121]
push.v self.COL_B
call.i draw_set_color(argc=1)
popz.v

:[122]
push.v self.CANCELTEXT
pushi.e 190
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text_shadow(argc=3)
popz.v

:[123]
push.v self.MENU_NO
pushi.e 0
cmp.i.v EQ
bt [125]

:[124]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
b [126]

:[125]
push.e 1

:[126]
bf [142]

:[127]
push.s "DEVICE_MENU_slash_Draw_0_gml_199_0"@9835
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.COPYTEXT
push.s "DEVICE_MENU_slash_Draw_0_gml_200_0"@9837
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.ERASETEXT
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [131]

:[128]
push.s "ENGLISH"@9839
pop.v.s self.LANGUAGETEXT
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
push.s "English"@9841
pop.v.s self.LANGUAGETEXT

:[130]
b [133]

:[131]
push.s "JAPANESE"@9842
pop.v.s self.LANGUAGETEXT
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [133]

:[132]
push.s "Japanese"@9843
pop.v.s self.LANGUAGETEXT

:[133]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
push.s "DEVICE_MENU_slash_Draw_0_gml_201_0"@9844
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.COPYTEXT
push.s "DEVICE_MENU_slash_Draw_0_gml_201_1"@9845
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.ERASETEXT

:[135]
push.v self.COL_A
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v EQ
bf [137]

:[136]
push.v self.COL_B
call.i draw_set_color(argc=1)
popz.v

:[137]
push.v self.COPYTEXT
pushi.e 190
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text_shadow(argc=3)
popz.v
push.v self.COL_A
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 4
cmp.i.v EQ
bf [139]

:[138]
push.v self.COL_B
call.i draw_set_color(argc=1)
popz.v

:[139]
push.v self.ERASETEXT
pushi.e 190
conv.i.v
pushi.e 130
conv.i.v
call.i draw_text_shadow(argc=3)
popz.v
push.v self.COL_A
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v EQ
bf [141]

:[140]
push.v self.COL_B
call.i draw_set_color(argc=1)
popz.v

:[141]
push.v self.LANGUAGETEXT
pushi.e 190
conv.i.v
pushi.e 190
conv.i.v
call.i draw_text_shadow(argc=3)
popz.v

:[142]
push.v self.MESSAGETIMER
pushi.e 0
cmp.i.v LTE
bf [179]

:[143]
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [161]

:[144]
push.v self.MENU_NO
pushi.e 0
cmp.i.v EQ
bt [146]

:[145]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
b [147]

:[146]
push.e 1

:[147]
bf [149]

:[148]
push.s " "@24
pop.v.s self.TEMPCOMMENT

:[149]
push.v self.MENU_NO
pushi.e 2
cmp.i.v EQ
bf [151]

:[150]
push.s "DEVICE_MENU_slash_Draw_0_gml_216_0"@9846
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[151]
push.v self.MENU_NO
pushi.e 3
cmp.i.v EQ
bf [153]

:[152]
push.s "DEVICE_MENU_slash_Draw_0_gml_217_0"@9847
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[153]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [155]

:[154]
push.s "DEVICE_MENU_slash_Draw_0_gml_218_0"@9848
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[155]
push.v self.MENU_NO
pushi.e 5
cmp.i.v EQ
bt [158]

:[156]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bt [158]

:[157]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
b [159]

:[158]
push.e 1

:[159]
bf [161]

:[160]
push.s "DEVICE_MENU_slash_Draw_0_gml_219_0"@9849
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[161]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [179]

:[162]
push.v self.MENU_NO
pushi.e 0
cmp.i.v EQ
bt [164]

:[163]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
b [165]

:[164]
push.e 1

:[165]
bf [167]

:[166]
push.s "DEVICE_MENU_slash_Draw_0_gml_223_0"@9850
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[167]
push.v self.MENU_NO
pushi.e 2
cmp.i.v EQ
bf [169]

:[168]
push.s "DEVICE_MENU_slash_Draw_0_gml_224_0"@9851
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[169]
push.v self.MENU_NO
pushi.e 3
cmp.i.v EQ
bf [171]

:[170]
push.s "DEVICE_MENU_slash_Draw_0_gml_225_0"@9852
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[171]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [173]

:[172]
push.s "DEVICE_MENU_slash_Draw_0_gml_226_0"@9853
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[173]
push.v self.MENU_NO
pushi.e 5
cmp.i.v EQ
bt [176]

:[174]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bt [176]

:[175]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
b [177]

:[176]
push.e 1

:[177]
bf [179]

:[178]
push.s "DEVICE_MENU_slash_Draw_0_gml_227_0"@9854
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.TEMPCOMMENT

:[179]
push.v self.COL_B
call.i draw_set_color(argc=1)
popz.v
push.v self.TEMPCOMMENT
pushi.e 30
conv.i.v
pushi.e 40
conv.i.v
call.i draw_text_shadow(argc=3)
popz.v
push.v self.MESSAGETIMER
pushi.e 1
sub.i.v
pop.v.v self.MESSAGETIMER

:[180]
push.v self.HEARTX
push.v self.HEARTXCUR
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [182]

:[181]
push.v self.HEARTX
pop.v.v self.HEARTXCUR

:[182]
push.v self.HEARTY
push.v self.HEARTYCUR
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [184]

:[183]
push.v self.HEARTY
pop.v.v self.HEARTYCUR

:[184]
push.v self.HEARTXCUR
push.v self.HEARTX
push.v self.HEARTXCUR
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.HEARTXCUR
push.v self.HEARTYCUR
push.v self.HEARTY
push.v self.HEARTYCUR
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.HEARTYCUR
push.v self.HEARTYCUR
push.v self.HEARTXCUR
pushi.e 0
conv.i.v
pushi.e 910
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]