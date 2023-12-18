.localvar 0 arguments

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
push.s "main"@1558
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v

:[2]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [20]

:[3]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 157
push.v self.yy
add.v.i
pushi.e 265
push.v self.xx
add.v.i
pushi.e 49
push.v self.yy
add.v.i
pushi.e 54
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 154
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 262
push.v self.d
mul.v.i
push.v self.xx
add.v.v
pushi.e 52
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 57
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_rectangle(argc=5)
popz.v
b [6]

:[5]
pushi.e 157
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 265
push.v self.d
mul.v.i
push.v self.xx
add.v.v
pushi.e 49
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 54
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i scr_darkbox(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 147
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 255
push.v self.d
mul.v.i
push.v self.xx
add.v.v
pushi.e 59
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 64
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[6]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.coord
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[8]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.name
call.i string_hash_to_newline(argc=1)
pushi.e 60
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 160
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_savemenu_slash_Draw_0_gml_29_0"@10045
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.love
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 80
push.v self.yy
add.v.i
pushi.e 76
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v

:[10]
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_savemenu_slash_Draw_0_gml_33_0"@10046
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.level
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 80
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 78
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_text(argc=3)
popz.v

:[12]
push.v self.minutes
call.i string(argc=1)
push.s ":"@1546
add.s.v
push.v self.seconds
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 80
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 210
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.roomname
call.i string_hash_to_newline(argc=1)
pushi.e 100
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 160
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.coord
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.yy
pushi.e 135
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 83
push.v self.d
mul.v.i
add.v.v
pushi.e 0
conv.i.v
push.v self.heartsprite
call.i draw_sprite(argc=4)
popz.v

:[14]
push.v self.coord
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.yy
pushi.e 135
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 173
push.v self.d
mul.v.i
add.v.v
pushi.e 0
conv.i.v
push.v self.heartsprite
call.i draw_sprite(argc=4)
popz.v

:[16]
push.v self.coord
pushi.e 2
cmp.i.v LT
bf [18]

:[17]
push.s "obj_savemenu_slash_Draw_0_gml_47_0"@10047
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 130
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 95
push.v self.d
mul.v.i
add.v.v
call.i draw_text(argc=3)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_48_0"@10048
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 130
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 185
push.v self.d
mul.v.i
add.v.v
call.i draw_text(argc=3)
popz.v
b [19]

:[18]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_52_0"@10049
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 130
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 160
push.v self.d
mul.v.i
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[19]
b [end]

:[20]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 135
push.v self.yy
add.v.i
pushi.e 265
push.v self.xx
add.v.i
pushi.e 49
push.v self.yy
add.v.i
pushi.e 54
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 132
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 262
push.v self.d
mul.v.i
push.v self.xx
add.v.v
pushi.e 52
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 57
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_rectangle(argc=5)
popz.v
b [23]

:[22]
pushi.e 135
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 265
push.v self.d
mul.v.i
push.v self.xx
add.v.v
pushi.e 49
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 54
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i scr_darkbox(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 125
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 255
push.v self.d
mul.v.i
push.v self.xx
add.v.v
pushi.e 59
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 64
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[23]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.coord
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[25]
pushi.e -5
pushi.e 912
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.v self.name
call.i string_hash_to_newline(argc=1)
pushi.e 60
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 70
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_text(argc=3)
popz.v
b [31]

:[27]
pushi.e 7
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
pushi.e 10
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[29]
push.v self.name
call.i string_hash_to_newline(argc=1)
pushi.e 60
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 70
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_text(argc=3)
popz.v
push.s "main"@1558
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v

:[31]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_savemenu_slash_Draw_0_gml_29_0"@10045
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.love
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 60
push.v self.yy
add.v.i
pushi.e 140
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v

:[33]
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_savemenu_slash_Draw_0_gml_33_0"@10046
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.level
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 60
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 175
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_text(argc=3)
popz.v

:[35]
push.v self.minutes
call.i string(argc=1)
push.s ":"@1546
add.s.v
push.v self.seconds
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 60
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 210
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.roomname
call.i string_hash_to_newline(argc=1)
pushi.e 80
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 70
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.coord
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.yy
pushi.e 113
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 71
push.v self.d
mul.v.i
add.v.v
pushi.e 0
conv.i.v
push.v self.heartsprite
call.i draw_sprite(argc=4)
popz.v

:[37]
push.v self.coord
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.v self.yy
pushi.e 113
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 161
push.v self.d
mul.v.i
add.v.v
pushi.e 0
conv.i.v
push.v self.heartsprite
call.i draw_sprite(argc=4)
popz.v

:[39]
push.v self.coord
pushi.e 2
cmp.i.v LT
bf [41]

:[40]
push.s "obj_savemenu_slash_Draw_0_gml_47_0"@10047
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 85
push.v self.d
mul.v.i
add.v.v
call.i draw_text(argc=3)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_48_0"@10048
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 175
push.v self.d
mul.v.i
add.v.v
call.i draw_text(argc=3)
popz.v
b [end]

:[41]
push.s "obj_savemenu_slash_Draw_0_gml_52_0"@10049
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 85
push.v self.d
mul.v.i
add.v.v
call.i draw_text(argc=3)
popz.v

:[end]