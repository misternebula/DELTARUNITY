.localvar 0 arguments

:[0]
push.v self.songplay
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.s "THE_HOLY.ogg"@6902
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.d 0.9
conv.d.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 3
pop.v.i self.songplay

:[2]
push.v self.songplay
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
call.i snd_free_all(argc=0)
popz.v
pushi.e 2
pop.v.i self.songplay

:[4]
push.v self.songplay
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
pushi.e 326
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
popenv [6]
pushi.e 1
pop.v.i self.songplay

:[8]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.JA_XOFF
pushi.e 1
pop.v.i self.con
pushi.e 220
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index
push.v self.susindex
push.d 0.1
add.d.v
pop.v.v self.susindex
push.v self.susy
pushi.e 1
sub.i.v
pop.v.v self.susy
pushi.e 1
pop.v.i global.interact

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.susindex
push.d 2.1
pop.v.d self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [18]

:[15]
pushi.e 0
pop.v.i self.JA_XOFF
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [17]

:[16]
pushi.e 50
pop.v.i self.JA_XOFF

:[17]
pushi.e 37
pop.v.i global.typer
push.s "obj_fountainkris_slash_Step_0_gml_47_0"@6904
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 80
conv.i.v
pushi.e 100
push.v self.JA_XOFF
add.v.i
call.i instance_create(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[18]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [20]

:[19]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 793
pop.v.i self.sussprite
push.d 3.2
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
push.d 4.2
cmp.d.v EQ
bf [25]

:[24]
push.s "obj_fountainkris_slash_Step_0_gml_64_0"@6905
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_fountainkris_slash_Step_0_gml_65_0"@6906
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_fountainkris_slash_Step_0_gml_66_0"@6907
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_fountainkris_slash_Step_0_gml_67_0"@6908
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 80
conv.i.v
pushi.e 100
push.v self.JA_XOFF
add.v.i
call.i instance_create(argc=3)
popz.v
pushi.e 6
pop.v.i self.con

:[25]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [27]

:[26]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 794
pop.v.i self.sussprite
pushi.e 7
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_fountainkris_slash_Step_0_gml_81_0"@6909
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_fountainkris_slash_Step_0_gml_82_0"@6910
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_fountainkris_slash_Step_0_gml_83_0"@6911
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_fountainkris_slash_Step_0_gml_84_0"@6912
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 80
conv.i.v
pushi.e 100
push.v self.JA_XOFF
add.v.i
call.i instance_create(argc=3)
popz.v
push.d 8.1
pop.v.d self.con

:[32]
push.v self.con
push.d 8.1
cmp.d.v EQ
bf [34]

:[33]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 9
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[37]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [39]

:[38]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index

:[42]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [44]

:[43]
pushi.e 0
pop.v.i self.image_index
push.d 9.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[44]
push.v self.con
push.d 10.1
cmp.d.v EQ
bf [46]

:[45]
pushi.e 42
pop.v.i global.typer
push.s "obj_fountainkris_slash_Step_0_gml_112_0"@6913
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_fountainkris_slash_Step_0_gml_113_0"@6914
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_fountainkris_slash_Step_0_gml_114_0"@6915
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_fountainkris_slash_Step_0_gml_115_0"@6916
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 80
conv.i.v
pushi.e 80
push.v self.JA_XOFF
add.v.i
call.i instance_create(argc=3)
popz.v
pushi.e 12
pop.v.i self.con

:[46]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [48]

:[47]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [49]

:[48]
push.e 0

:[49]
bf [end]

:[50]
call.i snd_free_all(argc=0)
popz.v
pushi.e 1
pop.v.i self.made
pushi.e 159
conv.i.v
push.v self.y
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 13
pop.v.i self.con

:[end]