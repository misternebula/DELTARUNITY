.localvar 0 arguments

:[0]
push.v self.logocon
pushi.e 0
cmp.i.v GT
bf [7]

:[1]
push.i 8388608
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.logoalpha
push.d 1.5
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
push.v self.hh
add.v.v
pushi.e 20
sub.i.v
push.v self.xx
push.v self.ww
add.v.v
pushi.e 40
sub.i.v
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 40
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.logoalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 20
add.i.v
push.v self.xx
pushi.e 40
add.i.v
push.v self.logoalpha
pushi.e 20
mul.i.v
add.v.v
pushi.e 0
conv.i.v
push.s "spr_thrashlogo"@3391
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.logocon
pushi.e 1
cmp.i.v EQ
bf [4]

:[2]
push.v self.logoalpha
push.d 0.05
add.d.v
pop.v.v self.logoalpha
push.v self.logoalpha
pushi.e 1
cmp.i.v GTE
bf [4]

:[3]
pushi.e 2
pop.v.i self.logocon

:[4]
push.v self.logocon
pushi.e 3
cmp.i.v EQ
bf [7]

:[5]
push.v self.logoalpha
push.d 0.05
sub.d.v
pop.v.v self.logoalpha
push.v self.logoalpha
pushi.e 0
cmp.i.v LTE
bf [7]

:[6]
pushi.e 4
pop.v.i self.logocon

:[7]
push.v self.introtimer
pushi.e 0
cmp.i.v GTE
bf [9]

:[8]
push.v self.introtimer
pushi.e 200
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [28]

:[11]
pushi.e 0
pop.v.i self.presented_xoff
pushi.e 0
pop.v.i self.madeup_xoff
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [13]

:[12]
pushi.e -26
pop.v.i self.presented_xoff

:[13]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [15]

:[14]
pushi.e -6
pop.v.i self.madeup_xoff

:[15]
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.introtimer
pushi.e 50
cmp.i.v GTE
bf [17]

:[16]
push.v self.introtimer
pushi.e 70
cmp.i.v LTE
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.v self.textalpha1
push.d 0.05
add.d.v
pop.v.v self.textalpha1

:[20]
push.v self.introtimer
pushi.e 110
cmp.i.v GTE
bf [22]

:[21]
push.v self.introtimer
pushi.e 130
cmp.i.v LTE
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.v self.textalpha2
push.d 0.05
add.d.v
pop.v.v self.textalpha2

:[25]
push.v self.introtimer
pushi.e 180
cmp.i.v GTE
bf [27]

:[26]
push.v self.textalpha1
push.d 0.05
sub.d.v
pop.v.v self.textalpha1
push.v self.textalpha2
push.d 0.05
sub.d.v
pop.v.v self.textalpha2

:[27]
push.v self.textalpha1
call.i draw_set_alpha(argc=1)
popz.v
push.s "obj_thrashcontroller_slash_Draw_0_gml_39_0"@4571
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 160
add.i.v
push.v self.xx
push.v self.presented_xoff
add.v.v
pushi.e 100
add.i.v
push.v self.textalpha1
pushi.e 20
mul.i.v
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.textalpha2
call.i draw_set_alpha(argc=1)
popz.v
push.s "obj_thrashcontroller_slash_Draw_0_gml_41_0"@4572
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 260
add.i.v
push.v self.xx
pushi.e 100
add.i.v
push.v self.madeup_xoff
add.v.v
push.v self.textalpha2
pushi.e 20
mul.i.v
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[28]
push.v self.con
pushi.e 1
cmp.i.v GTE
bf [end]

:[29]
pushi.e 0
pop.v.i self.i

:[30]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [35]

:[31]
push.v self.logoalpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.statcolor
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 120
add.i.v
pushi.e 24
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 440
add.i.v
push.v self.i
push.s "spr_thrashstats"@3392
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
pop.v.i self.j

:[32]
push.v self.j
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stat
cmp.v.v LT
bf [34]

:[33]
push.v self.logoalpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.statcolor
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 120
add.i.v
pushi.e 24
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 510
add.i.v
push.v self.j
pushi.e 20
mul.i.v
add.v.v
push.v self.i
pushi.e 734
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [32]

:[34]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [30]

:[35]
push.v self.menu
pushi.e 0
cmp.i.v GTE
bf [37]

:[36]
push.v self.menu
pushi.e 3
cmp.i.v LTE
b [38]

:[37]
push.e 0

:[38]
bf [81]

:[39]
pushi.e 0
pop.v.i self.colorbar_xoff
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [41]

:[40]
pushi.e 22
pop.v.i self.colorbar_xoff

:[41]
pushi.e 0
pop.v.i self.left_xoff
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [43]

:[42]
pushi.e -26
pop.v.i self.left_xoff

:[43]
pushi.e 0
pop.v.i self.colorname_xoff
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [45]

:[44]
pushi.e 86
push.v self.left_xoff
sub.v.i
pop.v.v self.colorname_xoff

:[45]
pushi.e 0
pop.v.i self.i

:[46]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [73]

:[47]
pushi.e 0
pop.v.i self.j

:[48]
push.v self.j
pushi.e 2
cmp.i.v LT
bf [72]

:[49]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.menucoord1y
push.v self.i
cmp.v.v EQ
bf [51]

:[50]
push.v self.menucoord1x
push.v self.j
cmp.v.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.yy
pushi.e 310
add.i.v
push.v self.i
pushi.e 36
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
push.v self.left_xoff
add.v.v
pushi.e 200
push.v self.colorname_xoff
add.v.i
push.v self.j
mul.v.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[54]
push.v self.j
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e -5
pushi.e 220
push.v self.i
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 0
cmp.i.v LT
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[59]
push.v self.i
pushi.e 3
cmp.i.v EQ
bf [66]

:[60]
pushi.e -5
pushi.e 220
push.v [array]global.flag
pushi.e 0
cmp.i.v LT
bt [63]

:[61]
pushi.e -5
pushi.e 221
push.v [array]global.flag
pushi.e 0
cmp.i.v LT
bt [63]

:[62]
pushi.e -5
pushi.e 222
push.v [array]global.flag
pushi.e 0
cmp.i.v LT
b [64]

:[63]
push.e 1

:[64]
bf [66]

:[65]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[66]
push.v self.j
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
push.v self.menu
push.v self.i
pushi.e 1
add.i.v
cmp.v.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[71]
pushi.e -1
push.v self.j
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]self.menutext1
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 300
add.i.v
push.v self.i
pushi.e 36
mul.i.v
add.v.v
push.v self.xx
push.v self.left_xoff
add.v.v
pushi.e 100
add.i.v
push.v self.colorname_xoff
pushi.e 200
add.i.v
push.v self.j
mul.v.v
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [48]

:[72]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [46]

:[73]
pushi.e 0
pop.v.i self.j

:[74]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [81]

:[75]
pushi.e 0
pop.v.i self.i

:[76]
push.v self.i
pushi.e 32
cmp.i.v LT
bf [78]

:[77]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.precolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 330
add.i.v
push.v self.j
pushi.e 36
mul.i.v
add.v.v
push.v self.xx
pushi.e 463
add.i.v
push.v self.i
pushi.e 3
mul.i.v
add.v.v
push.v self.colorbar_xoff
add.v.v
push.v self.yy
pushi.e 310
add.i.v
push.v self.j
pushi.e 36
mul.i.v
add.v.v
push.v self.xx
pushi.e 460
add.i.v
push.v self.i
pushi.e 3
mul.i.v
add.v.v
push.v self.colorbar_xoff
add.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [76]

:[78]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.menu
push.v self.j
pushi.e 1
add.i.v
cmp.v.v NEQ
bf [80]

:[79]
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
push.v self.yy
pushi.e 330
add.i.v
push.v self.j
pushi.e 36
mul.i.v
add.v.v
push.v self.xx
pushi.e 556
add.i.v
push.v self.colorbar_xoff
add.v.v
push.v self.yy
pushi.e 310
add.i.v
push.v self.j
pushi.e 36
mul.i.v
add.v.v
push.v self.xx
pushi.e 460
add.i.v
push.v self.colorbar_xoff
add.v.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[80]
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 315
add.i.v
push.v self.j
pushi.e 36
mul.i.v
add.v.v
push.v self.xx
pushi.e 463
add.i.v
pushi.e -5
pushi.e 223
push.v self.j
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 3
mul.i.v
add.v.v
push.v self.colorbar_xoff
add.v.v
push.v self.yy
pushi.e 305
add.i.v
push.v self.j
pushi.e 36
mul.i.v
add.v.v
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 223
push.v self.j
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 3
mul.i.v
add.v.v
push.v self.colorbar_xoff
add.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [74]

:[81]
push.v self.menu
pushi.e 4
cmp.i.v GTE
bf [83]

:[82]
push.v self.menu
pushi.e 6
cmp.i.v LTE
b [84]

:[83]
push.e 0

:[84]
bf [90]

:[85]
pushi.e 0
pop.v.i self.i

:[86]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [90]

:[87]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.menu
pushi.e 4
sub.i.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e -5
pushi.e 216
push.v self.menu
add.v.i
conv.v.i
push.v [array]global.flag
conv.v.i
chkindex.e
add.i.i
push.v [array]self.assetdesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 300
add.i.v
push.v self.xx
pushi.e 360
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.menu
pushi.e 4
sub.i.v
conv.v.i
push.v [array]self.menucoord2
push.v self.i
cmp.v.v EQ
bf [89]

:[88]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.yy
pushi.e 310
add.i.v
push.v self.i
pushi.e 36
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

:[89]
pushi.e -1
push.v self.menu
pushi.e 4
sub.i.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]self.menutext2
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 300
add.i.v
push.v self.i
pushi.e 36
mul.i.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [86]

:[90]
push.v self.menu
pushi.e 7
cmp.i.v EQ
bf [end]

:[91]
pushi.e 0
pop.v.i self.yoroshii_xoff
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [93]

:[92]
pushi.e -50
pop.v.i self.yoroshii_xoff

:[93]
push.s "obj_thrashcontroller_slash_Draw_0_gml_155_0"@4577
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.endtext
pushi.e -5
pushi.e 220
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [96]

:[94]
pushi.e -5
pushi.e 221
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [96]

:[95]
pushi.e -5
pushi.e 222
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
push.s "obj_thrashcontroller_slash_Draw_0_gml_158_0"@4579
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.endtext

:[99]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.endtext
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 300
add.i.v
push.v self.xx
pushi.e 180
add.i.v
push.v self.yoroshii_xoff
add.v.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.endcoord
pushi.e 0
cmp.i.v EQ
bf [101]

:[100]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.yy
pushi.e 400
add.i.v
push.v self.xx
pushi.e 220
add.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[101]
push.s "obj_thrashcontroller_slash_Draw_0_gml_171_0"@4580
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 390
add.i.v
push.v self.xx
pushi.e 240
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.endcoord
pushi.e 1
cmp.i.v EQ
bf [103]

:[102]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.yy
pushi.e 400
add.i.v
push.v self.xx
pushi.e 360
add.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[103]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_thrashcontroller_slash_Draw_0_gml_180_0"@4581
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 390
add.i.v
push.v self.xx
pushi.e 380
add.i.v
call.i draw_text(argc=3)
popz.v

:[end]