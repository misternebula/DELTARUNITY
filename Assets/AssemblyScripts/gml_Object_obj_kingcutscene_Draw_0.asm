.localvar 0 arguments

:[0]
push.v self.fountain_index
push.d 0.1
add.d.v
pop.v.v self.fountain_index
push.v self.image_alpha
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
pushi.e 745
conv.i.v
push.v self.fountain_index
pushi.e 744
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
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
pushi.e 600
conv.i.v
pushi.e 1000
conv.i.v
call.i draw_background_ext(argc=8)
popz.v
call.i scr_debug(argc=0)
conv.v.b
bf [end]

:[1]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.con
pushi.e 9998
cmp.i.v GT
bf [end]

:[2]
push.v self.king
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.s "obj_kingcutscene_slash_Draw_0_gml_15_0"@6872
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.king
conv.v.i
push.v [stacktop]self.x
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
call.i draw_text(argc=3)
popz.v
push.s "obj_kingcutscene_slash_Draw_0_gml_16_0"@6873
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.king
conv.v.i
push.v [stacktop]self.y
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
call.i draw_text(argc=3)
popz.v

:[4]
push.s "obj_kingcutscene_slash_Draw_0_gml_18_0"@6874
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 70
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
call.i draw_text(argc=3)
popz.v
push.s "obj_kingcutscene_slash_Draw_0_gml_19_0"@6875
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 100
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
call.i draw_text(argc=3)
popz.v
push.s "obj_kingcutscene_slash_Draw_0_gml_21_0"@6876
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.con
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 130
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
call.i draw_text(argc=3)
popz.v
push.v self.k
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.s "obj_kingcutscene_slash_Draw_0_gml_25_0"@6877
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.k
conv.v.i
push.v [stacktop]self.x
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 160
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_kingcutscene_slash_Draw_0_gml_26_0"@6878
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.k
conv.v.i
push.v [stacktop]self.y
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 160
add.i.v
call.i draw_text(argc=3)
popz.v

:[6]
push.v self.s
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[7]
push.s "obj_kingcutscene_slash_Draw_0_gml_31_0"@6879
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.s
conv.v.i
push.v [stacktop]self.x
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_kingcutscene_slash_Draw_0_gml_32_0"@6880
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.v self.s
conv.v.i
push.v [stacktop]self.y
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v

:[end]