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
push.s "obj_npc_room_animated_slash_Other_10_gml_8_0"@6318
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 34
cmp.i.v EQ
bf [8]

:[3]
push.s "obj_npc_room_animated_slash_Other_10_gml_12_0"@6319
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_13_0"@6320
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_14_0"@6321
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e 6
conv.i.v
call.i scr_get_input_name(argc=1)
add.v.v
push.s "obj_npc_room_animated_slash_Other_10_gml_14_1"@6322
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 97
pushi.e -5
pushi.e 0
pop.v.i [array]global.writersnd
pushi.e 134
pushi.e -5
pushi.e 8
pop.v.i [array]global.writersnd
pushi.e -5
pushi.e 10
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.s "obj_npc_room_animated_slash_Other_10_gml_20_0"@6323
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
pushi.e 85
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
popenv [6]
pushi.e 1
pushi.e -5
pushi.e 10
pop.v.i [array]global.flag

:[8]
pushbltn.v self.room
pushi.e 11
cmp.i.v EQ
bf [18]

:[9]
push.v self.sprite_index
pushi.e 277
cmp.i.v EQ
bf [12]

:[10]
push.s "obj_npc_room_animated_slash_Other_10_gml_31_0"@6324
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_32_0"@6325
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_33_0"@6326
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_34_0"@6327
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_35_0"@6328
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_36_0"@6329
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_37_0"@6330
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_38_0"@6331
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [12]

:[11]
push.s "obj_npc_room_animated_slash_Other_10_gml_42_0"@6332
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_43_0"@6333
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_44_0"@6334
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[12]
push.v self.sprite_index
pushi.e 278
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_npc_room_animated_slash_Other_10_gml_51_0"@6335
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
push.v self.sprite_index
pushi.e 276
cmp.i.v EQ
bf [18]

:[15]
push.s "obj_npc_room_animated_slash_Other_10_gml_56_0"@6336
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_57_0"@6337
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_58_0"@6338
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_59_0"@6339
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_60_0"@6340
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 20
pushenv [17]

:[16]
pushi.e 20
pop.v.i self.con

:[17]
popenv [16]

:[18]
pushbltn.v self.room
pushi.e 22
cmp.i.v EQ
bf [21]

:[19]
push.s "obj_npc_room_animated_slash_Other_10_gml_67_0"@6341
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_68_0"@6342
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_69_0"@6343
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [21]

:[20]
push.s "obj_npc_room_animated_slash_Other_10_gml_72_0"@6344
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[21]
pushbltn.v self.room
pushi.e 122
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_npc_room_animated_slash_Other_10_gml_78_0"@6345
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[23]
pushbltn.v self.room
pushi.e 125
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_npc_room_animated_slash_Other_10_gml_83_0"@6346
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_84_0"@6347
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[25]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_npc_room_animated_slash_Other_10_gml_89_0"@6348
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_90_0"@6349
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[27]
pushbltn.v self.room
pushi.e 56
cmp.i.v EQ
bf [30]

:[28]
push.s "obj_npc_room_animated_slash_Other_10_gml_95_0"@6350
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [30]

:[29]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fe
push.s "obj_npc_room_animated_slash_Other_10_gml_101_0"@6351
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
bf [41]

:[31]
push.v self.y
pushi.e 200
cmp.i.v GTE
bf [37]

:[32]
push.s "obj_npc_room_animated_slash_Other_10_gml_109_0"@6352
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_110_0"@6353
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_111_0"@6354
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [34]

:[33]
push.s "obj_npc_room_animated_slash_Other_10_gml_114_0"@6355
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_115_0"@6356
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_116_0"@6357
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[34]
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
bf [36]

:[35]
push.s "obj_npc_room_animated_slash_Other_10_gml_121_0"@6358
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_122_0"@6359
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[36]
b [41]

:[37]
push.s "obj_npc_room_animated_slash_Other_10_gml_128_0"@6360
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_129_0"@6361
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
push.s "obj_npc_room_animated_slash_Other_10_gml_131_0"@6362
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_132_0"@6363
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_134_0"@6364
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [39]

:[38]
push.s "obj_npc_room_animated_slash_Other_10_gml_137_0"@6365
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
bf [41]

:[40]
push.s "obj_npc_room_animated_slash_Other_10_gml_141_0"@6366
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_142_0"@6367
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[41]
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
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]