.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
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
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 864
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
pushi.e 1
sub.i.v
pushi.e 2
conv.i.v
pushi.e 52
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 148
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 0
conv.i.v
pushi.e 868
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 3
mul.i.v
pushi.e 1
sub.i.v
pushi.e 2
conv.i.v
pushi.e 42
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 48
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 0
conv.i.v
pushi.e 868
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
pushi.e 62
conv.i.v
pushi.e 72
conv.i.v
pushglb.v global.fe
pushi.e 865
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
pushi.e 56
conv.i.v
pushi.e 200
conv.i.v
push.v self.siner
push.d 3.73
div.d.v
pushi.e 867
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
pushi.e 150
conv.i.v
pushi.e 340
conv.i.v
push.v self.siner
push.d 3.73
div.d.v
pushi.e 866
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
pushi.e 168
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.i
pushi.e 422
conv.i.v
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
pushi.e 869
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.worm_max
cmp.v.v LT
bf [7]

:[2]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.worm_image
push.d 0.2
add.d.v
pop.i.v [array]self.worm_image
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_image
pushi.e 3
cmp.i.v GTE
bf [4]

:[3]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.worm_siner
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_image
pushi.e 3
conv.i.d
div.d.v
add.v.v
pop.i.v [array]self.worm_siner

:[4]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_image
pushi.e 6
cmp.i.v GTE
bf [6]

:[5]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.worm_image
pushi.e 6
sub.i.v
pop.i.v [array]self.worm_image

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_siner
pushi.e 50
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 20
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.complexwormx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_siner
pushi.e 8
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.complexwormy
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
pushi.e 204
push.v self.complexwormy
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_y
add.v.v
pushi.e 530
push.v self.complexwormx
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_image
pushi.e 870
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[7]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 240
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i scr_shopmenu(argc=1)
popz.v
push.v self.menu
pushi.e 3
cmp.i.v LTE
bt [9]

:[8]
push.v self.menu
pushi.e 10
cmp.i.v GTE
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
pushi.e 480
conv.i.v
pushi.e 415
conv.i.v
pushi.e 240
conv.i.v
pushi.e 0
conv.i.v
call.i scr_darkbox_black(argc=4)
popz.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 240
conv.i.v
pushi.e 400
conv.i.v
call.i scr_darkbox_black(argc=4)
popz.v

:[12]
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [14]

:[13]
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 240
conv.i.v
pushi.e 0
conv.i.v
call.i scr_darkbox_black(argc=4)
popz.v

:[14]
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [31]

:[15]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling
pushi.e 0
pop.v.i self.sidemessage
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 4
pop.v.i [array]self.menuc
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [20]

:[16]
pushi.e 6
pop.v.i global.typer
push.s "obj_shop2_slash_Draw_0_gml_70_0"@9409
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mainmessage
pushi.e 0
cmp.i.v EQ
bf [19]

:[17]
push.s "obj_shop2_slash_Draw_0_gml_73_0"@9410
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_shop2_slash_Draw_0_gml_74_0"@9411
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
pushi.e 6
conv.i.v
pushi.e 270
conv.i.v
pushi.e 30
conv.i.v
call.i instance_create(argc=3)
popz.v

:[20]
pushi.e 3
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_82_0"@9412
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 260
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_83_0"@9413
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 300
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_84_0"@9414
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_85_0"@9415
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 380
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 135
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 20
mul.i.v
add.v.i
pushi.e 2
mul.i.v
pushi.e 450
conv.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i button1_p(argc=0)
conv.v.b
bf [31]

:[21]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 1
pop.v.i self.mainmessage
pushi.e 6
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
pop.v.i self.menu

:[25]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 10
pop.v.i self.menu
pushi.e 0
pop.v.i self.sidemessage

:[27]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
pushi.e 3
pop.v.i self.menu

:[29]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [31]

:[30]
pushi.e 2
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[31]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [33]

:[32]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [34]

:[33]
push.e 1

:[34]
bf [120]

:[35]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[36]
push.v self.i
push.v self.itemtotal
cmp.v.v LT
bf [38]

:[37]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shopitemname
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.i
pushi.e 40
mul.i.v
add.v.i
pushi.e 60
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "$"@2686
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.buyvalue
call.i string(argc=1)
add.v.s
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.i
pushi.e 40
mul.i.v
add.v.i
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [36]

:[38]
push.s "obj_shop2_slash_Draw_0_gml_115_0"@9416
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.itemtotal
pushi.e 40
mul.i.v
add.v.i
pushi.e 60
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.menu
pushi.e 1
cmp.i.v EQ
bf [71]

:[39]
pushi.e 4
pop.v.i self.menumax
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [54]

:[40]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_shop2_slash_Draw_0_gml_124_0"@9417
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [45]

:[43]
push.s "obj_shop2_slash_Draw_0_gml_125_0"@9418
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_shop2_slash_Draw_0_gml_126_0"@9419
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[45]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_shop2_slash_Draw_0_gml_127_0"@9420
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[47]
push.v self.sidemessage
pushi.e 3
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_shop2_slash_Draw_0_gml_128_0"@9421
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[49]
push.v self.sidemessage
pushi.e 4
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_shop2_slash_Draw_0_gml_129_0"@9422
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_shop2_slash_Draw_0_gml_130_0"@9423
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
pushi.e 6
conv.i.v
pushi.e 260
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
popz.v

:[54]
pushi.e 270
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 40
mul.i.v
add.v.i
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i button1_p(argc=0)
conv.v.b
bf [56]

:[55]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [57]

:[56]
push.e 0

:[57]
bf [62]

:[58]
pushi.e 2
pop.v.i self.menu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 6
pushenv [60]

:[59]
call.i instance_destroy(argc=0)
popz.v

:[60]
popenv [59]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
push.v self.menumax
cmp.v.v EQ
bf [62]

:[61]
pushi.e 0
pop.v.i self.menu

:[62]
call.i button2_p(argc=0)
conv.v.b
bf [65]

:[63]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [65]

:[64]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [66]

:[65]
push.e 0

:[66]
bf [70]

:[67]
pushi.e 0
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 220
pop.v.i self.minimenuy
pushi.e 6
pushenv [69]

:[68]
call.i instance_destroy(argc=0)
popz.v

:[69]
popenv [68]

:[70]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.menuc

:[71]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [104]

:[72]
pushi.e 1
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [74]

:[73]
push.s "obj_shop2_slash_Draw_0_gml_144_0"@9424
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 290
conv.i.v
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.buyvalue
call.i string(argc=1)
push.s "obj_shop2_slash_Draw_0_gml_145_0"@9425
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 260
conv.i.v
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
b [75]

:[74]
push.s "obj_shop2_slash_Draw_0_gml_144_0"@9424
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 260
conv.i.v
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.buyvalue
call.i string(argc=1)
push.s "obj_shop2_slash_Draw_0_gml_145_0"@9425
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 290
conv.i.v
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v

:[75]
push.s "obj_shop2_slash_Draw_0_gml_146_0"@9426
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_147_0"@9427
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 370
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 350
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 30
mul.i.v
add.v.i
pushi.e 450
conv.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i button2_p(argc=0)
conv.v.b
bf [77]

:[76]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
pushi.e 1
pop.v.i self.menu
pushi.e 2
pop.v.i self.sidemessage
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[80]
call.i button1_p(argc=0)
conv.v.b
bf [83]

:[81]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [83]

:[82]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [84]

:[83]
push.e 0

:[84]
bf [104]

:[85]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [101]

:[86]
pushi.e 0
pop.v.i self.afford
pushglb.v global.gold
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.buyvalue
cmp.v.v GTE
bf [88]

:[87]
pushi.e 1
pop.v.i self.afford

:[88]
push.v self.afford
pushi.e 1
cmp.i.v EQ
bf [100]

:[89]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "item"@103
cmp.s.v EQ
bf [91]

:[90]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i scr_itemget(argc=1)
popz.v

:[91]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@166
cmp.s.v EQ
bf [93]

:[92]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i scr_weaponget(argc=1)
popz.v

:[93]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@167
cmp.s.v EQ
bf [95]

:[94]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i scr_armorget(argc=1)
popz.v

:[95]
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [97]

:[96]
push.v global.gold
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.buyvalue
sub.v.v
pop.v.v global.gold
pushi.e 1
pop.v.i self.sidemessage
pushi.e 33
conv.i.v
call.i snd_play(argc=1)
popz.v

:[97]
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
pushi.e 4
pop.v.i self.sidemessage

:[99]
b [101]

:[100]
pushi.e 3
pop.v.i self.sidemessage

:[101]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [103]

:[102]
pushi.e 2
pop.v.i self.sidemessage

:[103]
pushi.e 1
pop.v.i self.menu

:[104]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v NEQ
bf [116]

:[105]
push.v self.minimenuy
pushi.e 20
cmp.i.v LTE
bf [107]

:[106]
pushi.e 20
pop.v.i self.minimenuy

:[107]
push.v self.minimenuy
pushi.e 20
cmp.i.v GT
bf [109]

:[108]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[109]
push.v self.minimenuy
pushi.e 50
cmp.i.v GT
bf [111]

:[110]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[111]
push.v self.minimenuy
pushi.e 100
cmp.i.v GT
bf [113]

:[112]
push.v self.minimenuy
pushi.e 8
sub.i.v
pop.v.v self.minimenuy

:[113]
push.v self.minimenuy
pushi.e 150
cmp.i.v GT
bf [115]

:[114]
push.v self.minimenuy
pushi.e 10
sub.i.v
pop.v.v self.minimenuy

:[115]
b [118]

:[116]
push.v self.minimenuy
pushi.e 200
cmp.i.v LT
bf [118]

:[117]
push.v self.minimenuy
pushi.e 40
add.i.v
pop.v.v self.minimenuy

:[118]
push.v self.minimenuy
pushi.e 200
cmp.i.v GTE
bf [120]

:[119]
pushi.e 200
pop.v.i self.minimenuy

:[120]
push.v self.menu
pushi.e 3
cmp.i.v EQ
bf [141]

:[121]
pushi.e 4
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_194_0"@9428
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 260
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_195_0"@9429
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 300
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_196_0"@9430
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_197_0"@9431
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 380
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_198_0"@9432
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 420
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [123]

:[122]
push.s "obj_shop2_slash_Draw_0_gml_202_0"@9433
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 260
conv.i.v
pushi.e 440
conv.i.v
call.i instance_create(argc=3)
popz.v

:[123]
pushi.e 270
pushi.e -1
pushi.e 3
push.v [array]self.menuc
pushi.e 40
mul.i.v
add.v.i
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i button1_p(argc=0)
conv.v.b
bf [125]

:[124]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [126]

:[125]
push.e 0

:[126]
bf [133]

:[127]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 6
pushenv [129]

:[128]
call.i instance_destroy(argc=0)
popz.v

:[129]
popenv [128]
pushi.e -1
pushi.e 3
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [131]

:[130]
pushi.e -1
pushi.e 3
push.v [array]self.menuc
pushi.e 3
add.i.v
pop.v.v self.sell
pushi.e 4
pop.v.i self.menu
b [132]

:[131]
pushi.e 0
pop.v.i self.menu

:[132]
b [141]

:[133]
call.i button2_p(argc=0)
conv.v.b
bf [136]

:[134]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [136]

:[135]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [137]

:[136]
push.e 0

:[137]
bf [141]

:[138]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.menu
pushi.e 6
pushenv [140]

:[139]
call.i instance_destroy(argc=0)
popz.v

:[140]
popenv [139]

:[141]
push.v self.menu
pushi.e 10
cmp.i.v EQ
bf [182]

:[142]
pushi.e 0
pushi.e -1
pushi.e 11
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 12
pop.v.i [array]self.menuc
pushi.e 0
pushi.e -1
pushi.e 13
pop.v.i [array]self.menuc
pushi.e 3
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_236_0"@9434
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 260
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_237_0"@9435
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 300
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_238_0"@9436
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_239_0"@9437
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 380
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [150]

:[143]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [145]

:[144]
push.s "obj_shop2_slash_Draw_0_gml_243_0"@9438
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[145]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [147]

:[146]
push.s "obj_shop2_slash_Draw_0_gml_244_0"@9439
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[147]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [149]

:[148]
push.s "obj_shop2_slash_Draw_0_gml_245_0"@9440
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[149]
pushi.e 6
conv.i.v
pushi.e 260
conv.i.v
pushi.e 460
conv.i.v
call.i instance_create(argc=3)
popz.v

:[150]
pushi.e 270
pushi.e -1
pushi.e 10
push.v [array]self.menuc
pushi.e 40
mul.i.v
add.v.i
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i button1_p(argc=0)
conv.v.b
bf [152]

:[151]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [153]

:[152]
push.e 0

:[153]
bf [174]

:[154]
pushi.e 0
pop.v.i self.pagemax
pushi.e 0
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.onebuffer
pushi.e 6
pushenv [156]

:[155]
call.i instance_destroy(argc=0)
popz.v

:[156]
popenv [155]
pushi.e 1
pop.v.i self.can
pushi.e -1
pushi.e 10
push.v [array]self.menuc
pushi.e 11
add.i.v
pop.v.v self.idealmenu
push.v self.idealmenu
pushi.e 11
cmp.i.v EQ
bf [160]

:[157]
pushi.e 0
conv.i.v
call.i scr_itemcheck(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [159]

:[158]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[159]
call.i scr_iteminfo_all(argc=0)
popz.v

:[160]
push.v self.idealmenu
pushi.e 12
cmp.i.v EQ
bf [164]

:[161]
pushi.e 0
conv.i.v
call.i scr_weaponcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [163]

:[162]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[163]
call.i scr_weaponinfo_all(argc=0)
popz.v

:[164]
push.v self.idealmenu
pushi.e 13
cmp.i.v EQ
bf [168]

:[165]
pushi.e 0
conv.i.v
call.i scr_armorcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [167]

:[166]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[167]
call.i scr_armorinfo_all(argc=0)
popz.v

:[168]
pushi.e -1
pushi.e 10
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [172]

:[169]
push.v self.can
pushi.e 1
cmp.i.v EQ
bf [171]

:[170]
pushi.e -1
pushi.e 10
push.v [array]self.menuc
pushi.e 11
add.i.v
pop.v.v self.menu

:[171]
pushi.e 0
pop.v.i self.sidemessage1
b [173]

:[172]
pushi.e 0
pop.v.i self.menu

:[173]
pushi.e 0
pop.v.i self.submenu
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.submenuc

:[174]
call.i button2_p(argc=0)
conv.v.b
bf [177]

:[175]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [177]

:[176]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [178]

:[177]
push.e 0

:[178]
bf [182]

:[179]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.menu
pushi.e 6
pushenv [181]

:[180]
call.i instance_destroy(argc=0)
popz.v

:[181]
popenv [180]

:[182]
push.v self.menu
pushi.e 11
cmp.i.v EQ
bt [185]

:[183]
push.v self.menu
pushi.e 12
cmp.i.v EQ
bt [185]

:[184]
push.v self.menu
pushi.e 13
cmp.i.v EQ
b [186]

:[185]
push.e 1

:[186]
bf [212]

:[187]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [212]

:[188]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [190]

:[189]
push.v self.menu
pushi.e 11
cmp.i.v EQ
b [191]

:[190]
push.e 0

:[191]
bf [193]

:[192]
push.s "obj_shop2_slash_Draw_0_gml_305_0"@9441
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[193]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [195]

:[194]
push.v self.menu
pushi.e 12
cmp.i.v EQ
b [196]

:[195]
push.e 0

:[196]
bf [198]

:[197]
push.s "obj_shop2_slash_Draw_0_gml_306_0"@9442
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[198]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [200]

:[199]
push.v self.menu
pushi.e 13
cmp.i.v EQ
b [201]

:[200]
push.e 0

:[201]
bf [203]

:[202]
push.s "obj_shop2_slash_Draw_0_gml_307_0"@9443
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[203]
push.v self.sidemessage2
pushi.e 1
cmp.i.v EQ
bf [205]

:[204]
push.s "obj_shop2_slash_Draw_0_gml_308_0"@9444
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[205]
push.v self.sidemessage2
pushi.e 2
cmp.i.v EQ
bf [207]

:[206]
push.s "obj_shop2_slash_Draw_0_gml_309_0"@9445
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[207]
push.v self.sidemessage2
pushi.e 3
cmp.i.v EQ
bf [209]

:[208]
push.s "obj_shop2_slash_Draw_0_gml_310_0"@9446
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[209]
push.v self.sidemessage2
pushi.e 4
cmp.i.v EQ
bf [211]

:[210]
push.s "obj_shop2_slash_Draw_0_gml_311_0"@9447
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[211]
pushi.e 6
conv.i.v
pushi.e 260
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
popz.v

:[212]
pushi.e 4
conv.i.v
call.i scr_shopmenu(argc=1)
popz.v
push.v self.menu
pushi.e 15
cmp.i.v EQ
bt [215]

:[213]
push.v self.menu
pushi.e 16
cmp.i.v EQ
bt [215]

:[214]
push.v self.menu
pushi.e 17
cmp.i.v EQ
b [216]

:[215]
push.e 1

:[216]
bf [221]

:[217]
pushi.e 1
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [219]

:[218]
push.s "obj_shop2_slash_Draw_0_gml_323_0"@9448
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 290
conv.i.v
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.sellvalue
call.i string(argc=1)
push.s "obj_shop2_slash_Draw_0_gml_324_0"@9449
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 260
conv.i.v
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
b [220]

:[219]
push.s "obj_shop2_slash_Draw_0_gml_323_0"@9448
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 260
conv.i.v
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.sellvalue
call.i string(argc=1)
push.s "obj_shop2_slash_Draw_0_gml_324_0"@9449
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 290
conv.i.v
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v

:[220]
push.s "obj_shop2_slash_Draw_0_gml_325_0"@9450
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_326_0"@9451
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 370
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 350
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 30
mul.i.v
add.v.i
pushi.e 450
conv.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[221]
pushi.e 5
conv.i.v
call.i scr_shopmenu(argc=1)
popz.v
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [258]

:[222]
push.v self.sell
pushi.e 0
cmp.i.v EQ
bf [224]

:[223]
pushi.e 0
pop.v.i self.menu

:[224]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [226]

:[225]
push.v self.selling
pushi.e 0
cmp.i.v EQ
b [227]

:[226]
push.e 0

:[227]
bf [245]

:[228]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bf [229]

:[229]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [232]

:[230]
push.s "obj_shop2_slash_Draw_0_gml_353_0"@9452
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [232]

:[231]
push.s "obj_shop2_slash_Draw_0_gml_354_0"@9453
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[232]
push.v self.sell
pushi.e 3
cmp.i.v EQ
bf [235]

:[233]
push.s "obj_shop2_slash_Draw_0_gml_358_0"@9454
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_359_0"@9455
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_360_0"@9456
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_361_0"@9457
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [235]

:[234]
push.s "obj_shop2_slash_Draw_0_gml_364_0"@9458
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[235]
push.v self.sell
pushi.e 4
cmp.i.v EQ
bf [238]

:[236]
push.s "obj_shop2_slash_Draw_0_gml_371_0"@9459
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_372_0"@9460
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_373_0"@9461
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_374_0"@9462
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [238]

:[237]
push.s "obj_shop2_slash_Draw_0_gml_378_0"@9463
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_379_0"@9464
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_380_0"@9465
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[238]
push.v self.sell
pushi.e 5
cmp.i.v EQ
bf [241]

:[239]
push.s "obj_shop2_slash_Draw_0_gml_386_0"@9466
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_387_0"@9467
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_388_0"@9468
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_389_0"@9469
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [241]

:[240]
push.s "obj_shop2_slash_Draw_0_gml_392_0"@9470
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_393_0"@9471
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_394_0"@9472
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_395_0"@9473
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_396_0"@9474
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[241]
push.v self.sell
pushi.e 6
cmp.i.v EQ
bf [244]

:[242]
push.s "obj_shop2_slash_Draw_0_gml_402_0"@9475
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_403_0"@9476
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_404_0"@9477
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_405_0"@9478
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_406_0"@9479
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_407_0"@9480
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_408_0"@9481
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [244]

:[243]
push.s "obj_shop2_slash_Draw_0_gml_413_0"@9482
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_414_0"@9483
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_415_0"@9484
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_shop2_slash_Draw_0_gml_416_0"@9485
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[244]
pushi.e 6
conv.i.v
pushi.e 270
conv.i.v
pushi.e 30
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.selling

:[245]
push.v self.selling
pushi.e 1
cmp.i.v EQ
bf [247]

:[246]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [248]

:[247]
push.e 0

:[248]
bf [258]

:[249]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [251]

:[250]
pushi.e 2
pop.v.i self.selling
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [258]

:[251]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bt [253]

:[252]
push.v self.sell
pushi.e 7
cmp.i.v EQ
b [254]

:[253]
push.e 1

:[254]
bf [256]

:[255]
pushi.e 0
pop.v.i self.menu
b [257]

:[256]
pushi.e 3
pop.v.i self.menu

:[257]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling

:[258]
call.i down_p(argc=0)
conv.v.b
bf [266]

:[259]
push.v self.menu
pushi.e 11
cmp.i.v NEQ
bf [262]

:[260]
push.v self.menu
pushi.e 12
cmp.i.v NEQ
bf [262]

:[261]
push.v self.menu
pushi.e 13
cmp.i.v NEQ
b [263]

:[262]
push.e 0

:[263]
bf [266]

:[264]
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
add.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.menumax
cmp.v.v GT
bf [266]

:[265]
pushi.e 0
pushi.e -1
push.v self.menu
conv.v.i
pop.v.i [array]self.menuc

:[266]
call.i up_p(argc=0)
conv.v.b
bf [274]

:[267]
push.v self.menu
pushi.e 11
cmp.i.v NEQ
bf [270]

:[268]
push.v self.menu
pushi.e 12
cmp.i.v NEQ
bf [270]

:[269]
push.v self.menu
pushi.e 13
cmp.i.v NEQ
b [271]

:[270]
push.e 0

:[271]
bf [274]

:[272]
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
sub.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 0
cmp.i.v LT
bf [274]

:[273]
push.v self.menumax
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[274]
push.v self.menu
pushi.e 4
cmp.i.v LT
bt [276]

:[275]
push.v self.menu
pushi.e 10
cmp.i.v GTE
b [277]

:[276]
push.e 1

:[277]
bf [296]

:[278]
pushglb.v global.gold
call.i string(argc=1)
push.s "$"@2686
add.s.v
call.i string_hash_to_newline(argc=1)
pushi.e 420
conv.i.v
pushi.e 440
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [280]

:[279]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [281]

:[280]
push.e 1

:[281]
bf [296]

:[282]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v LT
bf [296]

:[283]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "item"@103
cmp.s.v EQ
bf [285]

:[284]
pushi.e 0
conv.i.v
call.i scr_itemcheck(argc=1)
popz.v

:[285]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@167
cmp.s.v EQ
bf [287]

:[286]
pushi.e 0
conv.i.v
call.i scr_armorcheck_inventory(argc=1)
popz.v

:[287]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@166
cmp.s.v EQ
bf [289]

:[288]
pushi.e 0
conv.i.v
call.i scr_weaponcheck_inventory(argc=1)
popz.v

:[289]
push.s "dotumche"@1564
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
push.v self.itemcount
pushi.e 10
cmp.i.v LT
bf [291]

:[290]
push.s "0"@2521
push.v self.itemcount
call.i string(argc=1)
add.v.s
pop.v.v self.roomstring
b [292]

:[291]
push.v self.itemcount
call.i string(argc=1)
pop.v.v self.roomstring

:[292]
push.v self.itemcount
pushi.e 0
cmp.i.v GT
bf [294]

:[293]
push.s "obj_shop2_slash_Draw_0_gml_478_0"@9486
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.roomstring
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 430
conv.i.v
pushi.e 520
conv.i.v
call.i draw_text(argc=3)
popz.v

:[294]
push.v self.itemcount
pushi.e 0
cmp.i.v EQ
bf [296]

:[295]
push.s "obj_shop2_slash_Draw_0_gml_481_0"@9487
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 430
conv.i.v
pushi.e 520
conv.i.v
call.i draw_text(argc=3)
popz.v

:[296]
push.v self.onebuffer
pushi.e 1
sub.i.v
pop.v.v self.onebuffer
push.v self.twobuffer
pushi.e 1
sub.i.v
pop.v.v self.twobuffer

:[end]