.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
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
pop.v.i global.fe
pushi.e 0
pop.v.i global.fc
pushi.e 1
pop.v.i global.interact
pushi.e 166
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.charcon

:[4]
popenv [3]
push.s "obj_readable_room1_slash_Other_10_gml_11_0"@5302
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 2
cmp.i.v EQ
bf [29]

:[5]
push.v self.y
pushi.e 150
cmp.i.v LT
bf [7]

:[6]
push.s "obj_readable_room1_slash_Other_10_gml_17_0"@5303
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_18_0"@5304
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [8]

:[7]
push.s "obj_readable_room1_slash_Other_10_gml_22_0"@5305
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
push.v self.x
pushi.e 100
cmp.i.v GT
bf [15]

:[9]
push.s "obj_readable_room1_slash_Other_10_gml_28_0"@5306
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_29_0"@5307
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushglb.v global.filechoice
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_readable_room1_slash_Other_10_gml_30_0"@5308
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[11]
pushglb.v global.filechoice
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_readable_room1_slash_Other_10_gml_33_0"@5309
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_34_0"@5310
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[13]
push.v self.read
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
push.s "obj_readable_room1_slash_Other_10_gml_38_0"@5311
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.x
pushi.e 136
cmp.i.v GT
bf [17]

:[16]
push.s "obj_readable_room1_slash_Other_10_gml_45_0"@5312
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.v self.x
pushi.e 192
cmp.i.v GT
bf [19]

:[18]
push.s "obj_readable_room1_slash_Other_10_gml_50_0"@5313
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [27]

:[20]
push.s "obj_readable_room1_slash_Other_10_gml_55_0"@5314
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 10
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushglb.v global.plot
pushi.e 10
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 402
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[25]
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [27]

:[26]
pushi.e 400
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[27]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [29]

:[28]
push.s "obj_readable_room1_slash_Other_10_gml_71_0"@5315
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[29]
pushbltn.v self.room
pushi.e 3
cmp.i.v EQ
bf [39]

:[30]
push.s "obj_readable_room1_slash_Other_10_gml_79_0"@5316
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.x
pushi.e 120
cmp.i.v GT
bf [32]

:[31]
push.s "obj_readable_room1_slash_Other_10_gml_83_0"@5317
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [34]

:[33]
push.s "obj_readable_room1_slash_Other_10_gml_87_0"@5318
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[34]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [36]

:[35]
push.s "obj_readable_room1_slash_Other_10_gml_91_0"@5319
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[36]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [39]

:[37]
push.s "obj_readable_room1_slash_Other_10_gml_96_0"@5320
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_97_0"@5321
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_98_0"@5322
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_99_0"@5323
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_100_0"@5324
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.read
pushi.e 0
cmp.i.v GT
bf [39]

:[38]
push.s "obj_readable_room1_slash_Other_10_gml_103_0"@5325
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bf [58]

:[40]
push.v self.x
pushi.e 190
cmp.i.v GT
bf [42]

:[41]
push.s "obj_readable_room1_slash_Other_10_gml_113_0"@5326
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [44]

:[43]
push.s "obj_readable_room1_slash_Other_10_gml_118_0"@5327
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [47]

:[45]
push.s "obj_readable_room1_slash_Other_10_gml_123_0"@5328
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [47]

:[46]
push.s "obj_readable_room1_slash_Other_10_gml_126_0"@5329
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[47]
push.v self.x
pushi.e 300
cmp.i.v GT
bf [49]

:[48]
push.s "obj_readable_room1_slash_Other_10_gml_132_0"@5330
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[49]
push.v self.x
pushi.e 340
cmp.i.v GT
bf [52]

:[50]
push.s "obj_readable_room1_slash_Other_10_gml_137_0"@5331
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 262
push.v [array]global.flag
pushi.e 4
cmp.i.v GTE
bf [52]

:[51]
push.s "obj_readable_room1_slash_Other_10_gml_140_0"@5332
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.x
pushi.e 369
cmp.i.v GT
bf [54]

:[53]
push.s "obj_readable_room1_slash_Other_10_gml_146_0"@5333
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.x
pushi.e 440
cmp.i.v GT
bf [56]

:[55]
push.s "obj_readable_room1_slash_Other_10_gml_151_0"@5334
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
push.v self.x
pushi.e 560
cmp.i.v GT
bf [58]

:[57]
push.s "obj_readable_room1_slash_Other_10_gml_157_0"@5335
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
pushbltn.v self.room
pushi.e 6
cmp.i.v EQ
bf [68]

:[59]
push.v self.x
pushi.e 100
cmp.i.v GTE
bf [61]

:[60]
push.s "obj_readable_room1_slash_Other_10_gml_167_0"@5336
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_168_0"@5337
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[61]
push.v self.x
pushi.e 160
cmp.i.v GTE
bf [63]

:[62]
push.v self.x
pushi.e 190
cmp.i.v LTE
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 355
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[66]
push.v self.x
pushi.e 190
cmp.i.v GTE
bf [68]

:[67]
push.s "obj_readable_room1_slash_Other_10_gml_177_0"@5338
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_178_0"@5339
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_179_0"@5340
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[68]
pushbltn.v self.room
pushi.e 29
cmp.i.v EQ
bf [108]

:[69]
push.v self.x
pushi.e 140
cmp.i.v GTE
bf [71]

:[70]
push.v self.x
pushi.e 240
cmp.i.v LT
b [72]

:[71]
push.e 0

:[72]
bf [86]

:[73]
push.v self.tempvar
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_readable_room1_slash_Other_10_gml_190_0"@5341
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[75]
push.v self.tempvar
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_readable_room1_slash_Other_10_gml_191_0"@5342
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[77]
push.v self.tempvar
pushi.e 2
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_readable_room1_slash_Other_10_gml_192_0"@5343
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[79]
push.v self.tempvar
pushi.e 3
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_readable_room1_slash_Other_10_gml_193_0"@5344
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[81]
push.v self.tempvar
pushi.e 4
cmp.i.v GTE
bf [83]

:[82]
push.s "obj_readable_room1_slash_Other_10_gml_194_0"@5345
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[83]
pushi.e 80
pushenv [85]

:[84]
push.v self.tempvar
pushi.e 1
add.i.v
pop.v.v self.tempvar

:[85]
popenv [84]

:[86]
push.v self.x
pushi.e 240
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_readable_room1_slash_Other_10_gml_199_0"@5346
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
push.v self.x
pushi.e 280
cmp.i.v GTE
bf [90]

:[89]
push.s "obj_readable_room1_slash_Other_10_gml_204_0"@5347
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_205_0"@5348
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_206_0"@5349
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[90]
push.v self.x
pushi.e 140
cmp.i.v LT
bf [92]

:[91]
push.s "obj_readable_room1_slash_Other_10_gml_211_0"@5350
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_212_0"@5351
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[92]
push.v self.x
pushi.e 520
cmp.i.v GTE
bf [100]

:[93]
push.s "obj_readable_room1_slash_Other_10_gml_217_0"@5352
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.s "obj_readable_room1_slash_Other_10_gml_218_0"@5353
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[95]
push.v self.read
pushi.e 2
cmp.i.v GTE
bf [97]

:[96]
push.s "obj_readable_room1_slash_Other_10_gml_219_0"@5354
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[97]
pushglb.v global.plot
pushi.e 10
cmp.i.v LT
bf [100]

:[98]
push.s "obj_readable_room1_slash_Other_10_gml_223_0"@5355
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_225_0"@5356
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [100]

:[99]
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_230_0"@5357
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[100]
push.v self.x
pushi.e 560
cmp.i.v GTE
bf [102]

:[101]
push.s "obj_readable_room1_slash_Other_10_gml_237_0"@5358
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_238_0"@5359
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_239_0"@5360
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[102]
push.v self.x
pushi.e 690
cmp.i.v GTE
bf [104]

:[103]
push.s "obj_readable_room1_slash_Other_10_gml_245_0"@5361
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[104]
push.v self.x
pushi.e 760
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_readable_room1_slash_Other_10_gml_251_0"@5362
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[106]
push.v self.x
pushi.e 780
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_readable_room1_slash_Other_10_gml_255_0"@5363
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[108]
pushbltn.v self.room
pushi.e 30
cmp.i.v EQ
bf [120]

:[109]
push.s "obj_readable_room1_slash_Other_10_gml_264_0"@5364
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_265_0"@5365
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [111]

:[110]
push.s "obj_readable_room1_slash_Other_10_gml_269_0"@5366
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_270_0"@5367
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[111]
push.v self.x
pushi.e 240
cmp.i.v GT
bf [113]

:[112]
pushi.e 1
pop.v.i global.fe
pushi.e 11
pop.v.i global.fc
pushi.e 20
pop.v.i global.typer
push.s "obj_readable_room1_slash_Other_10_gml_278_0"@5368
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_279_0"@5369
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[113]
push.v self.x
pushi.e 200
cmp.i.v LT
bf [116]

:[114]
push.s "obj_readable_room1_slash_Other_10_gml_284_0"@5370
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_285_0"@5371
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [116]

:[115]
push.s "obj_readable_room1_slash_Other_10_gml_289_0"@5372
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_290_0"@5373
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[116]
push.v self.x
pushi.e 150
cmp.i.v LT
bf [118]

:[117]
push.s "obj_readable_room1_slash_Other_10_gml_298_0"@5374
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[118]
push.v self.x
pushi.e 80
cmp.i.v LT
bf [120]

:[119]
push.s "obj_readable_room1_slash_Other_10_gml_304_0"@5375
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_305_0"@5376
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_306_0"@5377
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[120]
pushbltn.v self.room
pushi.e 28
cmp.i.v EQ
bf [140]

:[121]
push.v self.y
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [137]

:[122]
push.v self.x
pushi.e 100
cmp.i.v GTE
bf [124]

:[123]
push.s "obj_readable_room1_slash_Other_10_gml_318_0"@5378
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_319_0"@5379
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[124]
push.v self.x
pushi.e 130
cmp.i.v GTE
bf [126]

:[125]
push.s "obj_readable_room1_slash_Other_10_gml_323_0"@5380
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_324_0"@5381
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[126]
push.v self.x
pushi.e 170
cmp.i.v GTE
bf [128]

:[127]
pushi.e 350
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[128]
push.v self.x
pushi.e 198
cmp.i.v GTE
bf [130]

:[129]
push.s "obj_readable_room1_slash_Other_10_gml_333_0"@5382
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[130]
push.v self.x
pushi.e 204
cmp.i.v GTE
bf [132]

:[131]
push.s "obj_readable_room1_slash_Other_10_gml_338_0"@5383
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_339_0"@5384
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[132]
push.v self.x
pushi.e 230
cmp.i.v GTE
bf [134]

:[133]
push.s "obj_readable_room1_slash_Other_10_gml_343_0"@5385
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[134]
push.v self.x
pushi.e 256
cmp.i.v GTE
bf [136]

:[135]
push.s "obj_readable_room1_slash_Other_10_gml_347_0"@5386
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[136]
b [140]

:[137]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [139]

:[138]
push.s "obj_readable_room1_slash_Other_10_gml_354_0"@5387
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [140]

:[139]
push.s "obj_readable_room1_slash_Other_10_gml_358_0"@5388
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[140]
pushbltn.v self.room
pushi.e 31
cmp.i.v EQ
bf [142]

:[141]
push.s "obj_readable_room1_slash_Other_10_gml_366_0"@5389
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[142]
pushbltn.v self.room
pushi.e 33
cmp.i.v EQ
bf [161]

:[143]
push.v self.x
pushi.e 80
cmp.i.v LT
bf [145]

:[144]
push.s "obj_readable_room1_slash_Other_10_gml_371_0"@5390
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[145]
push.v self.x
pushi.e 100
cmp.i.v GT
bf [147]

:[146]
push.s "obj_readable_room1_slash_Other_10_gml_372_0"@5391
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[147]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [149]

:[148]
push.v self.y
pushi.e 100
cmp.i.v LT
b [150]

:[149]
push.e 0

:[150]
bf [152]

:[151]
push.s "obj_readable_room1_slash_Other_10_gml_373_0"@5392
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[152]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [154]

:[153]
push.v self.y
pushi.e 100
cmp.i.v GT
b [155]

:[154]
push.e 0

:[155]
bf [157]

:[156]
push.s "obj_readable_room1_slash_Other_10_gml_374_0"@5393
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[157]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [159]

:[158]
push.s "obj_readable_room1_slash_Other_10_gml_375_0"@5394
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[159]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [161]

:[160]
push.s "obj_readable_room1_slash_Other_10_gml_378_0"@5395
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_379_0"@5396
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[161]
pushbltn.v self.room
pushi.e 18
cmp.i.v EQ
bf [166]

:[162]
push.v self.x
pushi.e 160
cmp.i.v LTE
bf [164]

:[163]
push.s "obj_readable_room1_slash_Other_10_gml_388_0"@5397
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_389_0"@5398
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[164]
push.v self.x
pushi.e 160
cmp.i.v GTE
bf [166]

:[165]
pushi.e 360
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[166]
pushbltn.v self.room
pushi.e 36
cmp.i.v EQ
bt [169]

:[167]
pushbltn.v self.room
pushi.e 37
cmp.i.v EQ
bt [169]

:[168]
pushbltn.v self.room
pushi.e 41
cmp.i.v EQ
b [170]

:[169]
push.e 1

:[170]
bf [172]

:[171]
push.s "obj_readable_room1_slash_Other_10_gml_400_0"@5399
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[172]
pushbltn.v self.room
pushi.e 38
cmp.i.v EQ
bf [174]

:[173]
pushi.e 110
pop.v.i global.msc
pushi.e 110
conv.i.v
call.i scr_text(argc=1)
popz.v

:[174]
pushbltn.v self.room
pushi.e 40
cmp.i.v EQ
bf [176]

:[175]
push.s "obj_readable_room1_slash_Other_10_gml_411_0"@5400
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[176]
pushbltn.v self.room
pushi.e 45
cmp.i.v EQ
bf [182]

:[177]
push.s "obj_readable_room1_slash_Other_10_gml_416_0"@5401
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [179]

:[178]
push.s "obj_readable_room1_slash_Other_10_gml_419_0"@5402
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[179]
pushi.e 80
pushenv [181]

:[180]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read

:[181]
popenv [180]

:[182]
pushbltn.v self.room
pushi.e 46
cmp.i.v EQ
bf [185]

:[183]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_429_0"@5403
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_430_0"@5404
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_431_0"@5405
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.read
pushi.e 0
cmp.i.v GT
bf [185]

:[184]
pushi.e 1
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_435_0"@5406
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_436_0"@5407
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[185]
pushbltn.v self.room
pushi.e 44
cmp.i.v EQ
bf [187]

:[186]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_446_0"@5408
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_447_0"@5409
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[187]
pushbltn.v self.room
pushi.e 55
cmp.i.v EQ
bf [189]

:[188]
push.s "obj_readable_room1_slash_Other_10_gml_452_0"@5410
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[189]
pushbltn.v self.room
pushi.e 59
cmp.i.v EQ
bf [191]

:[190]
push.s "obj_readable_room1_slash_Other_10_gml_457_0"@5411
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_458_0"@5412
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[191]
pushbltn.v self.room
pushi.e 69
cmp.i.v EQ
bt [194]

:[192]
pushbltn.v self.room
pushi.e 65
cmp.i.v EQ
bt [194]

:[193]
pushbltn.v self.room
pushi.e 67
cmp.i.v EQ
b [195]

:[194]
push.e 1

:[195]
bf [197]

:[196]
push.s "obj_readable_room1_slash_Other_10_gml_465_0"@5413
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[197]
pushbltn.v self.room
pushi.e 60
cmp.i.v EQ
bf [199]

:[198]
pushi.e 250
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[199]
pushbltn.v self.room
pushi.e 70
cmp.i.v EQ
bf [201]

:[200]
push.s "obj_readable_room1_slash_Other_10_gml_476_0"@5414
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[201]
pushbltn.v self.room
pushi.e 81
cmp.i.v EQ
bf [213]

:[202]
push.s "obj_readable_room1_slash_Other_10_gml_481_0"@5415
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_482_0"@5416
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_483_0"@5417
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [204]

:[203]
push.s "obj_readable_room1_slash_Other_10_gml_486_0"@5418
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[204]
push.v self.y
pushi.e 400
cmp.i.v GTE
bf [213]

:[205]
push.v self.x
pushi.e 600
cmp.i.v LT
bf [209]

:[206]
push.s "obj_readable_room1_slash_Other_10_gml_493_0"@5419
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_494_0"@5420
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_495_0"@5421
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_496_0"@5422
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [208]

:[207]
push.s "obj_readable_room1_slash_Other_10_gml_499_0"@5423
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[208]
b [211]

:[209]
push.s "obj_readable_room1_slash_Other_10_gml_504_0"@5424
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_505_0"@5425
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_506_0"@5426
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.x
pushi.e 1100
cmp.i.v GTE
bf [211]

:[210]
push.s "obj_readable_room1_slash_Other_10_gml_510_0"@5427
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_511_0"@5428
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_512_0"@5429
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[211]
pushglb.v global.plot
pushi.e 75
cmp.i.v GTE
bf [213]

:[212]
pushi.e 999
pop.v.i self.holecon
push.s "obj_readable_room1_slash_Other_10_gml_519_0"@5430
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[213]
pushbltn.v self.room
pushi.e 89
cmp.i.v EQ
bf [235]

:[214]
push.v self.x
pushi.e 340
cmp.i.v LTE
bf [216]

:[215]
push.s "obj_readable_room1_slash_Other_10_gml_530_0"@5431
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_531_0"@5432
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[216]
push.v self.x
pushi.e 600
cmp.i.v GTE
bf [218]

:[217]
push.v self.x
pushi.e 1300
cmp.i.v LTE
b [219]

:[218]
push.e 0

:[219]
bf [233]

:[220]
pushi.e -5
pushi.e 237
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [232]

:[221]
pushi.e 1
pushi.e -5
pushi.e 237
pop.v.i [array]global.flag
pushi.e 103
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_540_0"@5433
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_541_0"@5434
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v 326.becamebattle
pushi.e 0
cmp.i.v EQ
bf [223]

:[222]
push.s "obj_readable_room1_slash_Other_10_gml_544_0"@5436
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_545_0"@5437
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_547_0"@5438
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_548_0"@5439
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[223]
pushi.e 216
pushenv [231]

:[224]
push.v self.tree
conv.v.i
pushenv [226]

:[225]
call.i instance_destroy(argc=0)
popz.v

:[226]
popenv [225]
push.v self.block
conv.v.i
pushenv [228]

:[227]
call.i instance_destroy(argc=0)
popz.v

:[228]
popenv [227]
push.v self.talkto
conv.v.i
pushenv [230]

:[229]
call.i instance_destroy(argc=0)
popz.v

:[230]
popenv [229]

:[231]
popenv [224]
b [233]

:[232]
push.s "obj_readable_room1_slash_Other_10_gml_559_0"@5441
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[233]
push.v self.x
pushi.e 1350
cmp.i.v GTE
bf [235]

:[234]
push.s "obj_readable_room1_slash_Other_10_gml_564_0"@5442
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_565_0"@5443
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[235]
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [239]

:[236]
push.s "obj_readable_room1_slash_Other_10_gml_571_0"@5444
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [238]

:[237]
pushi.e 97
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_575_0"@5445
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v global.gold
pushi.e 40
add.i.v
pop.v.v global.gold

:[238]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read

:[239]
pushbltn.v self.room
pushi.e 105
cmp.i.v EQ
bf [260]

:[240]
pushi.e -5
pushi.e 231
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
push.v self.x
pushi.e 400
cmp.i.v LT
bf [242]

:[241]
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_591_0"@5446
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_593_0"@5447
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[242]
push.v self.x
pushi.e 600
cmp.i.v GTE
bf [244]

:[243]
push.v self.y
pushi.e 200
cmp.i.v LT
b [245]

:[244]
push.e 0

:[245]
bf [248]

:[246]
push.s "obj_readable_room1_slash_Other_10_gml_598_0"@5448
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_599_0"@5449
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [248]

:[247]
push.s "obj_readable_room1_slash_Other_10_gml_602_0"@5450
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[248]
push.v self.x
pushi.e 600
cmp.i.v GTE
bf [250]

:[249]
push.v self.y
pushi.e 200
cmp.i.v GT
b [251]

:[250]
push.e 0

:[251]
bf [256]

:[252]
push.s "obj_readable_room1_slash_Other_10_gml_608_0"@5451
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_609_0"@5452
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [254]

:[253]
push.s "obj_readable_room1_slash_Other_10_gml_610_0"@5453
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[254]
pushglb.v global.plot
pushi.e 155
cmp.i.v GTE
bf [256]

:[255]
push.s "obj_readable_room1_slash_Other_10_gml_613_0"@5454
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[256]
push.v self.x
pushi.e 720
cmp.i.v GTE
bf [260]

:[257]
pushi.e 295
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [260]

:[258]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_626_0"@5455
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_627_0"@5456
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 106
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [260]

:[259]
push.s "obj_readable_room1_slash_Other_10_gml_628_0"@5457
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[260]
pushbltn.v self.room
pushi.e 62
cmp.i.v EQ
bf [262]

:[261]
push.s "obj_readable_room1_slash_Other_10_gml_636_0"@5458
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_637_0"@5459
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[262]
pushbltn.v self.room
pushi.e 87
cmp.i.v EQ
bf [265]

:[263]
pushi.e 2
pop.v.i global.fc
pushi.e 5
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_readable_room1_slash_Other_10_gml_647_0"@5460
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_648_0"@5461
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [265]

:[264]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_readable_room1_slash_Other_10_gml_654_0"@5462
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_656_0"@5463
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_658_0"@5464
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[265]
pushbltn.v self.room
pushi.e 75
cmp.i.v EQ
bf [267]

:[266]
push.s "obj_readable_room1_slash_Other_10_gml_666_0"@5465
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[267]
pushbltn.v self.room
pushi.e 142
cmp.i.v EQ
bf [276]

:[268]
push.v self.y
pushi.e 220
cmp.i.v GTE
bf [273]

:[269]
pushi.e -5
pushi.e 910
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [271]

:[270]
push.s "obj_readable_room1_slash_Other_10_gml_673_0"@5466
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [272]

:[271]
push.s "obj_readable_room1_slash_Other_10_gml_675_0"@5467
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[272]
b [276]

:[273]
pushi.e -5
pushi.e 910
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [275]

:[274]
push.s "obj_readable_room1_slash_Other_10_gml_682_0"@5468
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [276]

:[275]
pushi.e 600
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[276]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [279]

:[277]
push.s "obj_readable_room1_slash_Other_10_gml_695_0"@5469
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.y
pushi.e 260
cmp.i.v GTE
bf [279]

:[278]
push.s "obj_readable_room1_slash_Other_10_gml_698_0"@5470
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[279]
pushbltn.v self.room
pushi.e 111
cmp.i.v EQ
bf [287]

:[280]
pushi.e 1
pop.v.i global.facing
pushi.e 165
pushenv [282]

:[281]
push.v self.rsprite
pop.v.v self.sprite_index

:[282]
popenv [281]
pushi.e 35
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 405
pop.v.i global.msc
pushi.e 5
conv.i.v
call.i scr_keyitemcheck(argc=1)
pushi.e 1
cmp.i.v EQ
bf [284]

:[283]
pushi.e 410
pop.v.i global.msc

:[284]
pushi.e -5
pushi.e 241
push.v [array]global.flag
pushi.e 5
cmp.i.v GTE
bf [286]

:[285]
pushi.e 415
pop.v.i global.msc

:[286]
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[287]
pushbltn.v self.room
pushi.e 114
cmp.i.v EQ
bf [298]

:[288]
push.v self.x
pushi.e 500
cmp.i.v LT
bf [290]

:[289]
push.s "obj_readable_room1_slash_Other_10_gml_721_0"@5471
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[290]
push.v self.x
pushi.e 1300
cmp.i.v LT
bf [292]

:[291]
push.v self.x
pushi.e 500
cmp.i.v GT
b [293]

:[292]
push.e 0

:[293]
bf [296]

:[294]
push.s "obj_readable_room1_slash_Other_10_gml_726_0"@5472
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_727_0"@5473
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 240
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [296]

:[295]
push.s "obj_readable_room1_slash_Other_10_gml_730_0"@5474
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_731_0"@5475
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[296]
push.v self.x
pushi.e 1300
cmp.i.v GT
bf [298]

:[297]
push.s "obj_readable_room1_slash_Other_10_gml_738_0"@5476
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_739_0"@5477
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[298]
pushbltn.v self.room
pushi.e 115
cmp.i.v EQ
bf [301]

:[299]
push.s "obj_readable_room1_slash_Other_10_gml_746_0"@5478
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.y
pushi.e 130
cmp.i.v LT
bf [301]

:[300]
push.s "obj_readable_room1_slash_Other_10_gml_749_0"@5479
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[301]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bf [304]

:[302]
push.s "obj_readable_room1_slash_Other_10_gml_755_0"@5480
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.y
pushi.e 250
cmp.i.v LT
bf [304]

:[303]
push.s "obj_readable_room1_slash_Other_10_gml_758_0"@5481
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[304]
pushbltn.v self.room
pushi.e 117
cmp.i.v EQ
bf [307]

:[305]
pushi.e 18
pop.v.i global.fc
push.s "obj_readable_room1_slash_Other_10_gml_766_0"@5482
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_767_0"@5483
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_768_0"@5484
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [307]

:[306]
push.s "obj_readable_room1_slash_Other_10_gml_772_0"@5485
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_773_0"@5486
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_774_0"@5487
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_775_0"@5488
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[307]
pushbltn.v self.room
pushi.e 121
cmp.i.v EQ
bf [310]

:[308]
pushi.e 18
pop.v.i global.fc
push.s "obj_readable_room1_slash_Other_10_gml_782_0"@5489
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_783_0"@5490
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_784_0"@5491
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [310]

:[309]
push.s "obj_readable_room1_slash_Other_10_gml_788_0"@5492
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_789_0"@5493
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[310]
pushbltn.v self.room
pushi.e 125
cmp.i.v EQ
bf [313]

:[311]
push.s "obj_readable_room1_slash_Other_10_gml_796_0"@5494
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [313]

:[312]
push.s "obj_readable_room1_slash_Other_10_gml_799_0"@5495
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[313]
pushbltn.v self.room
pushi.e 119
cmp.i.v EQ
bf [326]

:[314]
push.s "obj_readable_room1_slash_Other_10_gml_805_0"@5496
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_806_0"@5497
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [319]

:[315]
pushi.e 80
pushenv [318]

:[316]
pushi.e -5
pushi.e 252
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [318]

:[317]
push.v self.tempvar
pushi.e 1
add.i.v
pop.v.v self.tempvar

:[318]
popenv [316]

:[319]
push.v self.tempvar
pushi.e 4
cmp.i.v EQ
bf [321]

:[320]
pushi.e -5
pushi.e 252
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [322]

:[321]
push.e 0

:[322]
bf [326]

:[323]
push.s "obj_readable_room1_slash_Other_10_gml_815_0"@5498
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_816_0"@5499
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 252
pop.v.i [array]global.flag
pushi.e 80
pushenv [325]

:[324]
pushi.e 99
pop.v.i self.tempvar

:[325]
popenv [324]

:[326]
pushbltn.v self.room
pushi.e 122
cmp.i.v EQ
bf [333]

:[327]
push.s "obj_readable_room1_slash_Other_10_gml_824_0"@5500
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [333]

:[328]
push.v self.y
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [332]

:[329]
push.s "obj_readable_room1_slash_Other_10_gml_829_0"@5501
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [331]

:[330]
push.s "obj_readable_room1_slash_Other_10_gml_832_0"@5502
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_833_0"@5503
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[331]
b [333]

:[332]
push.s "obj_readable_room1_slash_Other_10_gml_838_0"@5504
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[333]
pushbltn.v self.room
pushi.e 124
cmp.i.v EQ
bf [359]

:[334]
push.v self.y
pushi.e 220
cmp.i.v LTE
bf [350]

:[335]
push.v self.x
pushi.e 200
cmp.i.v LT
bf [337]

:[336]
push.s "obj_readable_room1_slash_Other_10_gml_849_0"@5505
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[337]
push.v self.x
pushi.e 300
cmp.i.v GT
bf [339]

:[338]
push.v self.x
pushi.e 350
cmp.i.v LT
b [340]

:[339]
push.e 0

:[340]
bf [342]

:[341]
push.s "obj_readable_room1_slash_Other_10_gml_853_0"@5506
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[342]
push.v self.x
pushi.e 350
cmp.i.v GT
bf [344]

:[343]
push.v self.x
pushi.e 400
cmp.i.v LT
b [345]

:[344]
push.e 0

:[345]
bf [347]

:[346]
pushi.e 430
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[347]
push.v self.x
pushi.e 400
cmp.i.v GTE
bf [349]

:[348]
push.s "obj_readable_room1_slash_Other_10_gml_862_0"@5507
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[349]
b [359]

:[350]
push.v self.x
pushi.e 200
cmp.i.v LT
bf [352]

:[351]
push.s "obj_readable_room1_slash_Other_10_gml_869_0"@5508
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_870_0"@5509
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[352]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [354]

:[353]
push.v self.x
pushi.e 320
cmp.i.v LT
b [355]

:[354]
push.e 0

:[355]
bf [357]

:[356]
push.s "obj_readable_room1_slash_Other_10_gml_874_0"@5510
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[357]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [359]

:[358]
push.s "obj_readable_room1_slash_Other_10_gml_878_0"@5511
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[359]
pushbltn.v self.room
pushi.e 109
cmp.i.v EQ
bf [361]

:[360]
pushi.e 435
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[361]
pushbltn.v self.room
pushi.e 110
cmp.i.v EQ
bf [363]

:[362]
pushi.e 440
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[363]
pushbltn.v self.room
pushi.e 106
cmp.i.v EQ
bf [371]

:[364]
push.s "obj_readable_room1_slash_Other_10_gml_898_0"@5512
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_899_0"@5513
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.x
pushi.e 560
cmp.i.v GTE
bf [371]

:[365]
push.s "obj_readable_room1_slash_Other_10_gml_902_0"@5514
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [367]

:[366]
pushi.e 3
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
b [368]

:[367]
push.e 0

:[368]
bf [371]

:[369]
pushi.e 0
pop.v.i global.fe
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
push.s "obj_readable_room1_slash_Other_10_gml_908_0"@5515
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_909_0"@5516
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_911_0"@5517
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_912_0"@5518
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_914_0"@5519
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_916_0"@5520
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_917_0"@5521
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [371]

:[370]
push.s "obj_readable_room1_slash_Other_10_gml_920_0"@5522
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_922_0"@5523
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[371]
pushbltn.v self.room
pushi.e 20
cmp.i.v EQ
bf [398]

:[372]
push.v self.x
pushi.e 75
cmp.i.v LTE
bf [374]

:[373]
push.v self.y
pushi.e 160
cmp.i.v LT
b [375]

:[374]
push.e 0

:[375]
bf [378]

:[376]
push.s "obj_readable_room1_slash_Other_10_gml_932_0"@5524
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_934_0"@5525
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_935_0"@5526
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_936_0"@5527
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_937_0"@5528
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [378]

:[377]
push.s "obj_readable_room1_slash_Other_10_gml_940_0"@5529
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[378]
push.v self.x
pushi.e 75
cmp.i.v LTE
bf [380]

:[379]
push.v self.y
pushi.e 160
cmp.i.v GT
b [381]

:[380]
push.e 0

:[381]
bf [385]

:[382]
pushi.e -5
pushi.e 255
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [384]

:[383]
pushi.e 55
pop.v.i global.typer
pushi.e 15
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_952_0"@5530
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_953_0"@5531
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [385]

:[384]
push.s "obj_readable_room1_slash_Other_10_gml_957_0"@5532
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_959_0"@5533
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[385]
push.v self.x
pushi.e 95
cmp.i.v GTE
bf [387]

:[386]
push.v self.x
pushi.e 105
cmp.i.v LTE
b [388]

:[387]
push.e 0

:[388]
bf [391]

:[389]
push.s "obj_readable_room1_slash_Other_10_gml_969_0"@5534
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_971_0"@5535
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [391]

:[390]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_975_0"@5536
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_976_0"@5537
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[391]
push.v self.x
pushi.e 205
cmp.i.v EQ
bf [394]

:[392]
push.s "obj_readable_room1_slash_Other_10_gml_982_0"@5538
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_984_0"@5539
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_985_0"@5540
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_986_0"@5541
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [394]

:[393]
push.s "obj_readable_room1_slash_Other_10_gml_989_0"@5542
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_991_0"@5543
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_992_0"@5544
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[394]
push.v self.x
pushi.e 215
cmp.i.v GT
bf [396]

:[395]
push.s "obj_readable_room1_slash_Other_10_gml_999_0"@5545
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1001_0"@5546
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1002_0"@5547
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1003_0"@5548
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[396]
push.v self.x
pushi.e 230
cmp.i.v GT
bf [398]

:[397]
push.s "obj_readable_room1_slash_Other_10_gml_1011_0"@5549
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[398]
pushbltn.v self.room
pushi.e 19
cmp.i.v EQ
bf [400]

:[399]
push.s "obj_readable_room1_slash_Other_10_gml_1017_0"@5550
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[400]
pushbltn.v self.room
pushi.e 21
cmp.i.v EQ
bf [414]

:[401]
push.v self.y
pushi.e 160
cmp.i.v GTE
bf [408]

:[402]
push.s "obj_readable_room1_slash_Other_10_gml_1024_0"@5551
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.tempvar
pushi.e 1
cmp.i.v GTE
bf [404]

:[403]
push.s "obj_readable_room1_slash_Other_10_gml_1027_0"@5552
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1028_0"@5553
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[404]
pushi.e 80
pushenv [407]

:[405]
push.v self.y
pushi.e 160
cmp.i.v GTE
bf [407]

:[406]
push.v self.tempvar
pushi.e 1
add.i.v
pop.v.v self.tempvar

:[407]
popenv [405]
b [414]

:[408]
push.v self.x
pushi.e 140
cmp.i.v LTE
bf [410]

:[409]
push.s "obj_readable_room1_slash_Other_10_gml_1041_0"@5554
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1042_0"@5555
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[410]
push.v self.x
pushi.e 150
cmp.i.v GTE
bf [412]

:[411]
push.s "obj_readable_room1_slash_Other_10_gml_1046_0"@5556
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1047_0"@5557
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[412]
push.v self.x
pushi.e 200
cmp.i.v GTE
bf [414]

:[413]
push.s "obj_readable_room1_slash_Other_10_gml_1051_0"@5558
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1052_0"@5559
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[414]
pushbltn.v self.room
pushi.e 26
cmp.i.v EQ
bf [430]

:[415]
push.v self.x
pushi.e 80
cmp.i.v LT
bf [418]

:[416]
push.s "obj_readable_room1_slash_Other_10_gml_1063_0"@5560
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1064_0"@5561
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.y
pushi.e 80
cmp.i.v GT
bf [418]

:[417]
push.s "obj_readable_room1_slash_Other_10_gml_1069_0"@5562
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1070_0"@5563
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1071_0"@5564
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1072_0"@5565
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[418]
push.v self.x
pushi.e 70
cmp.i.v GT
bf [421]

:[419]
push.s "obj_readable_room1_slash_Other_10_gml_1080_0"@5566
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1081_0"@5567
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.y
pushi.e 80
cmp.i.v GT
bf [421]

:[420]
push.s "obj_readable_room1_slash_Other_10_gml_1085_0"@5568
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1086_0"@5569
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[421]
push.v self.x
pushi.e 110
cmp.i.v GT
bf [424]

:[422]
push.s "obj_readable_room1_slash_Other_10_gml_1093_0"@5570
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1094_0"@5571
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1095_0"@5572
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1096_0"@5573
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1097_0"@5574
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1098_0"@5575
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [424]

:[423]
push.s "obj_readable_room1_slash_Other_10_gml_1102_0"@5576
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1103_0"@5577
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1104_0"@5578
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1105_0"@5579
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[424]
push.v self.x
pushi.e 150
cmp.i.v GT
bf [426]

:[425]
push.s "obj_readable_room1_slash_Other_10_gml_1111_0"@5580
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1112_0"@5581
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[426]
push.v self.x
pushi.e 190
cmp.i.v GT
bf [428]

:[427]
push.s "obj_readable_room1_slash_Other_10_gml_1117_0"@5582
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1118_0"@5583
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1119_0"@5584
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[428]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [430]

:[429]
pushi.e 185
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[430]
pushbltn.v self.room
pushi.e 16
cmp.i.v EQ
bf [437]

:[431]
push.s "obj_readable_room1_slash_Other_10_gml_1134_0"@5585
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.x
pushi.e 150
cmp.i.v GTE
bf [433]

:[432]
push.s "obj_readable_room1_slash_Other_10_gml_1137_0"@5586
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[433]
push.v self.x
pushi.e 200
cmp.i.v GTE
bf [435]

:[434]
push.s "obj_readable_room1_slash_Other_10_gml_1141_0"@5587
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[435]
push.v self.x
pushi.e 290
cmp.i.v GTE
bf [437]

:[436]
push.s "obj_readable_room1_slash_Other_10_gml_1145_0"@5588
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[437]
pushbltn.v self.room
pushi.e 23
cmp.i.v EQ
bf [444]

:[438]
push.v self.x
pushi.e 180
cmp.i.v GTE
bf [440]

:[439]
push.s "obj_readable_room1_slash_Other_10_gml_1158_0"@5589
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[440]
push.v self.x
pushi.e 240
cmp.i.v GTE
bf [442]

:[441]
push.s "obj_readable_room1_slash_Other_10_gml_1163_0"@5590
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[442]
push.v self.y
pushi.e 160
cmp.i.v GTE
bf [444]

:[443]
push.s "obj_readable_room1_slash_Other_10_gml_1166_0"@5591
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[444]
pushbltn.v self.room
pushi.e 10
cmp.i.v EQ
bf [446]

:[445]
pushi.e 192
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[446]
pushbltn.v self.room
pushi.e 22
cmp.i.v EQ
bf [448]

:[447]
push.s "obj_readable_room1_slash_Other_10_gml_1178_0"@5592
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[448]
pushbltn.v self.room
pushi.e 24
cmp.i.v EQ
bf [461]

:[449]
push.v self.y
pushi.e 100
cmp.i.v GT
bf [456]

:[450]
push.v self.x
pushi.e 100
cmp.i.v LT
bf [452]

:[451]
push.s "obj_readable_room1_slash_Other_10_gml_1185_0"@5593
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[452]
push.v self.x
pushi.e 70
cmp.i.v LT
bf [454]

:[453]
push.s "obj_readable_room1_slash_Other_10_gml_1186_0"@5594
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[454]
push.v self.x
pushi.e 50
cmp.i.v LT
bf [456]

:[455]
push.s "obj_readable_room1_slash_Other_10_gml_1187_0"@5595
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[456]
push.v self.y
pushi.e 80
cmp.i.v LT
bf [461]

:[457]
push.v self.x
pushi.e 140
cmp.i.v EQ
bf [459]

:[458]
push.s "obj_readable_room1_slash_Other_10_gml_1192_0"@5596
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[459]
push.v self.x
pushi.e 140
cmp.i.v NEQ
bf [461]

:[460]
push.s "obj_readable_room1_slash_Other_10_gml_1193_0"@5597
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[461]
pushbltn.v self.room
pushi.e 25
cmp.i.v EQ
bf [480]

:[462]
push.v self.y
pushi.e 50
cmp.i.v LT
bf [464]

:[463]
push.s "obj_readable_room1_slash_Other_10_gml_1202_0"@5598
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[464]
push.v self.y
pushi.e 60
cmp.i.v GT
bf [471]

:[465]
push.s "obj_readable_room1_slash_Other_10_gml_1206_0"@5599
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.x
pushi.e 60
cmp.i.v GTE
bf [467]

:[466]
push.s "obj_readable_room1_slash_Other_10_gml_1207_0"@5600
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[467]
push.v self.x
pushi.e 180
cmp.i.v GTE
bf [469]

:[468]
push.s "obj_readable_room1_slash_Other_10_gml_1209_0"@5601
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[469]
push.v self.x
pushi.e 260
cmp.i.v GTE
bf [471]

:[470]
push.s "obj_readable_room1_slash_Other_10_gml_1212_0"@5602
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[471]
push.v self.y
pushi.e 120
cmp.i.v GT
bf [478]

:[472]
push.v self.x
pushi.e 160
cmp.i.v LT
bf [474]

:[473]
push.s "obj_readable_room1_slash_Other_10_gml_1219_0"@5603
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1220_0"@5604
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1221_0"@5605
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
b [478]

:[474]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [476]

:[475]
push.s "obj_readable_room1_slash_Other_10_gml_1227_0"@5606
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i scr_asgface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1229_0"@5607
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1230_0"@5608
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1231_0"@5609
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[476]
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [478]

:[477]
push.s "obj_readable_room1_slash_Other_10_gml_1235_0"@5610
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[478]
push.v self.x
pushi.e 225
cmp.i.v EQ
bf [480]

:[479]
pushi.e 210
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[480]
pushbltn.v self.room
pushi.e 27
cmp.i.v EQ
bf [485]

:[481]
push.v self.x
pushi.e 130
cmp.i.v LTE
bf [483]

:[482]
push.s "obj_readable_room1_slash_Other_10_gml_1250_0"@5611
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [485]

:[483]
push.s "obj_readable_room1_slash_Other_10_gml_1254_0"@5612
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.y
pushi.e 100
cmp.i.v LTE
bf [485]

:[484]
push.s "obj_readable_room1_slash_Other_10_gml_1257_0"@5613
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[485]
pushbltn.v self.room
pushi.e 13
cmp.i.v EQ
bf [497]

:[486]
push.v self.x
pushi.e 100
cmp.i.v LTE
bf [488]

:[487]
push.s "obj_readable_room1_slash_Other_10_gml_1266_0"@5614
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1267_0"@5615
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[488]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [490]

:[489]
push.v self.x
pushi.e 300
cmp.i.v LT
b [491]

:[490]
push.e 0

:[491]
bf [497]

:[492]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [496]

:[493]
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1274_0"@5616
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1275_0"@5617
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1276_0"@5618
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 20
pushenv [495]

:[494]
pushi.e 50
pop.v.i self.con

:[495]
popenv [494]
b [497]

:[496]
push.s "obj_readable_room1_slash_Other_10_gml_1281_0"@5619
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[497]
pushbltn.v self.room
pushi.e 11
cmp.i.v EQ
bf [511]

:[498]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [500]

:[499]
push.s "obj_readable_room1_slash_Other_10_gml_1291_0"@5620
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1292_0"@5621
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[500]
push.v self.x
pushi.e 300
cmp.i.v GTE
bf [502]

:[501]
push.s "obj_readable_room1_slash_Other_10_gml_1296_0"@5622
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1297_0"@5623
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[502]
push.v self.x
pushi.e 360
cmp.i.v GTE
bf [504]

:[503]
push.s "obj_readable_room1_slash_Other_10_gml_1301_0"@5624
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[504]
push.v self.x
pushi.e 1240
cmp.i.v GTE
bf [511]

:[505]
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1307_0"@5625
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1308_0"@5626
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1309_0"@5627
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.x
pushi.e 1500
cmp.i.v GTE
bf [507]

:[506]
push.s "obj_readable_room1_slash_Other_10_gml_1312_0"@5628
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1313_0"@5629
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1314_0"@5630
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[507]
push.v self.x
pushi.e 1640
cmp.i.v GTE
bf [509]

:[508]
push.s "obj_readable_room1_slash_Other_10_gml_1319_0"@5631
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1320_0"@5632
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[509]
push.v self.x
pushi.e 1860
cmp.i.v GTE
bf [511]

:[510]
push.s "obj_readable_room1_slash_Other_10_gml_1324_0"@5633
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1325_0"@5634
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1326_0"@5635
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[511]
pushbltn.v self.room
pushi.e 9
cmp.i.v EQ
bf [531]

:[512]
push.v self.x
pushi.e 250
cmp.i.v LTE
bf [514]

:[513]
push.s "obj_readable_room1_slash_Other_10_gml_1338_0"@5636
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[514]
push.v self.x
pushi.e 500
cmp.i.v GTE
bf [516]

:[515]
push.v self.x
pushi.e 570
cmp.i.v LTE
b [517]

:[516]
push.e 0

:[517]
bf [519]

:[518]
pushi.e 16
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_1345_0"@5637
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1346_0"@5638
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[519]
push.v self.x
pushi.e 580
cmp.i.v GTE
bf [521]

:[520]
push.s "obj_readable_room1_slash_Other_10_gml_1350_0"@5639
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1351_0"@5640
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[521]
push.v self.x
pushi.e 650
cmp.i.v GTE
bf [523]

:[522]
push.s "obj_readable_room1_slash_Other_10_gml_1355_0"@5641
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1356_0"@5642
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[523]
push.v self.x
pushi.e 800
cmp.i.v GTE
bf [525]

:[524]
push.s "obj_readable_room1_slash_Other_10_gml_1360_0"@5643
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[525]
push.v self.x
pushi.e 1090
cmp.i.v GTE
bf [527]

:[526]
push.v self.x
pushi.e 1130
cmp.i.v LTE
b [528]

:[527]
push.e 0

:[528]
bf [531]

:[529]
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1365_0"@5644
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1366_0"@5645
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1367_0"@5646
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [531]

:[530]
push.s "obj_readable_room1_slash_Other_10_gml_1371_0"@5647
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1372_0"@5648
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1373_0"@5649
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_slash_Other_10_gml_1374_0"@5650
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[531]
pushbltn.v self.room
pushi.e 17
cmp.i.v EQ
bf [533]

:[532]
push.s "obj_readable_room1_slash_Other_10_gml_1383_0"@5651
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[533]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read

:[end]