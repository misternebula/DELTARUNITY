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
pushi.e 1
pop.v.i self.nodialogue
pushbltn.v self.room
pop.v.v global.currentroom
pushbltn.v self.room
pushi.e 35
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.nodialogue
push.s "obj_savepoint_slash_Other_10_gml_17_0"@5268
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_18_0"@5269
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[4]
pushbltn.v self.room
pushi.e 40
cmp.i.v EQ
bf [13]

:[5]
pushi.e 0
pop.v.i self.nodialogue
pushi.e -5
pushi.e 1
push.v [array]global.hp
pushi.e -5
pushi.e 1
push.v [array]global.maxhp
cmp.v.v LT
bf [7]

:[6]
push.s "obj_savepoint_slash_Other_10_gml_26_0"@5270
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_27_0"@5271
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_28_0"@5272
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[7]
pushi.e -5
pushi.e 1
push.v [array]global.hp
pushi.e 30
cmp.i.v LT
bf [9]

:[8]
push.s "obj_savepoint_slash_Other_10_gml_33_0"@5273
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_34_0"@5274
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[9]
pushi.e -5
pushi.e 1
push.v [array]global.hp
pushi.e -5
pushi.e 1
push.v [array]global.maxhp
cmp.v.v EQ
bf [11]

:[10]
push.s "obj_savepoint_slash_Other_10_gml_39_0"@5275
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_40_0"@5276
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_41_0"@5277
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[11]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [13]

:[12]
pushi.e 1
pop.v.i self.nodialogue

:[13]
pushbltn.v self.room
pushi.e 45
cmp.i.v EQ
bf [16]

:[14]
pushi.e 0
pop.v.i self.nodialogue
push.s "obj_savepoint_slash_Other_10_gml_51_0"@5278
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_52_0"@5279
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_53_0"@5280
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [16]

:[15]
push.s "obj_savepoint_slash_Other_10_gml_57_0"@5281
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_58_0"@5282
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[16]
pushbltn.v self.room
pushi.e 49
cmp.i.v EQ
bf [19]

:[17]
pushi.e 0
pop.v.i self.nodialogue
push.s "obj_savepoint_slash_Other_10_gml_66_0"@5283
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_67_0"@5284
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 37
cmp.i.v GTE
bf [19]

:[18]
push.s "obj_savepoint_slash_Other_10_gml_71_0"@5285
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_72_0"@5286
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[19]
pushbltn.v self.room
pushi.e 59
cmp.i.v EQ
bf [22]

:[20]
pushi.e 0
pop.v.i self.nodialogue
push.s "obj_savepoint_slash_Other_10_gml_80_0"@5287
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_81_0"@5288
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_savepoint_slash_Other_10_gml_84_0"@5289
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_85_0"@5290
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[22]
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
bf [30]

:[23]
pushi.e 0
pop.v.i self.nodialogue
push.s "obj_savepoint_slash_Other_10_gml_92_0"@5291
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tname
pushi.e -5
pushi.e 214
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_savepoint_slash_Other_10_gml_93_0"@5293
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tname

:[25]
pushi.e -5
pushi.e 214
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_savepoint_slash_Other_10_gml_94_0"@5294
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tname

:[27]
pushi.e -5
pushi.e 214
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_savepoint_slash_Other_10_gml_95_0"@5295
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tname

:[29]
push.v self.tname
push.s "obj_savepoint_slash_Other_10_gml_96_0"@5296
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
pushbltn.v self.room
pushi.e 73
cmp.i.v EQ
bf [32]

:[31]
pushi.e 0
pop.v.i self.nodialogue
push.s "obj_savepoint_slash_Other_10_gml_102_0"@5297
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_103_0"@5298
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[32]
pushbltn.v self.room
pushi.e 82
cmp.i.v EQ
bf [34]

:[33]
pushi.e 0
pop.v.i self.nodialogue
push.s "obj_savepoint_slash_Other_10_gml_110_0"@5299
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_slash_Other_10_gml_111_0"@5300
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[34]
pushi.e 3
pop.v.i self.myinteract
push.v self.nodialogue
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[36]
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked
pushi.e 87
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[37]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [end]

:[38]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.hp
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.maxhp
cmp.v.v LT
bf [40]

:[39]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.maxhp
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.hp

:[40]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [37]

:[end]