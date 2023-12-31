.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 6
pop.v.i global.typer

:[2]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
push.s "obj_npc_sign_slash_Other_10_gml_8_0"@6407
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 51
cmp.i.v EQ
bf [7]

:[3]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [5]

:[4]
push.s "obj_npc_sign_slash_Other_10_gml_12_0"@6408
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [7]

:[6]
push.s "obj_npc_sign_slash_Other_10_gml_13_0"@6409
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
pushbltn.v self.room
pushi.e 52
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_npc_sign_slash_Other_10_gml_30_0"@6410
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_npc_sign_slash_Other_10_gml_41_0"@6411
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_sign_slash_Other_10_gml_42_0"@6412
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e 6
conv.i.v
call.i scr_get_input_name(argc=1)
add.v.v
push.s "obj_npc_sign_slash_Other_10_gml_42_1"@6413
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_sign_slash_Other_10_gml_43_0"@6414
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[11]
pushbltn.v self.room
pushi.e 56
cmp.i.v EQ
bf [28]

:[12]
push.v self.y
pushi.e 80
cmp.i.v GT
bf [14]

:[13]
push.s "obj_npc_sign_slash_Other_10_gml_49_0"@6415
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
push.v self.y
pushi.e 200
cmp.i.v GT
bf [16]

:[15]
push.s "obj_npc_sign_slash_Other_10_gml_52_0"@6416
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_sign_slash_Other_10_gml_53_0"@6417
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[16]
push.v self.y
pushi.e 640
cmp.i.v GT
bf [18]

:[17]
push.s "obj_npc_sign_slash_Other_10_gml_55_0"@6418
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
push.v self.y
pushi.e 1000
cmp.i.v GT
bf [20]

:[19]
push.v self.x
pushi.e 1000
cmp.i.v GT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.s "obj_npc_sign_slash_Other_10_gml_56_0"@6419
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[23]
push.v self.y
pushi.e 1000
cmp.i.v GT
bf [25]

:[24]
push.v self.x
pushi.e 600
cmp.i.v LT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.s "obj_npc_sign_slash_Other_10_gml_57_0"@6420
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
pushbltn.v self.room
pushi.e 58
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_npc_sign_slash_Other_10_gml_63_0"@6421
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
pushbltn.v self.room
pushi.e 61
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_npc_sign_slash_Other_10_gml_68_0"@6422
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_sign_slash_Other_10_gml_69_0"@6423
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[32]
pushbltn.v self.room
pushi.e 60
cmp.i.v EQ
bf [34]

:[33]
push.s "obj_npc_sign_slash_Other_10_gml_74_0"@6424
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_sign_slash_Other_10_gml_75_0"@6425
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[34]
pushbltn.v self.room
pushi.e 64
cmp.i.v EQ
bf [37]

:[35]
push.s "obj_npc_sign_slash_Other_10_gml_80_0"@6426
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_sign_slash_Other_10_gml_81_0"@6427
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [37]

:[36]
push.s "obj_npc_sign_slash_Other_10_gml_84_0"@6428
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
pushbltn.v self.room
pushi.e 78
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_npc_sign_slash_Other_10_gml_90_0"@6429
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_sign_slash_Other_10_gml_91_0"@6430
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[39]
pushbltn.v self.room
pushi.e 87
cmp.i.v EQ
bf [40]

:[40]
pushbltn.v self.room
pushi.e 105
cmp.i.v EQ
bf [42]

:[41]
pushi.e -5
pushi.e 231
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 300
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[42]
pushbltn.v self.room
pushi.e 108
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_npc_sign_slash_Other_10_gml_161_0"@6431
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_sign_slash_Other_10_gml_162_0"@6432
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[44]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [49]

:[45]
push.v self.sprite_index
pushi.e 351
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_npc_sign_slash_Other_10_gml_169_0"@6433
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[47]
push.v self.sprite_index
pushi.e 350
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_npc_sign_slash_Other_10_gml_173_0"@6434
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[49]
pushbltn.v self.room
pushi.e 25
cmp.i.v EQ
bf [51]

:[50]
push.v self.colortxt
push.s "obj_npc_sign_slash_Other_10_gml_179_0"@6435
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
pushbltn.v self.room
pushi.e 9
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_npc_sign_slash_Other_10_gml_184_0"@6436
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_sign_slash_Other_10_gml_185_0"@6437
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[53]
pushbltn.v self.room
pushi.e 10
cmp.i.v EQ
bf [55]

:[54]
pushi.e 192
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[55]
pushbltn.v self.room
pushi.e 7
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_npc_sign_slash_Other_10_gml_196_0"@6438
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
pushi.e 3
pop.v.i self.myinteract
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]