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
push.d 0.2
pop.v.d self.image_speed
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.d 0.2
pop.v.d self.image_speed

:[4]
push.s "obj_npc_room_slash_Other_10_gml_11_0"@5905
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_npc_room_slash_Other_10_gml_15_0"@5906
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_16_0"@5907
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[6]
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bf [9]

:[7]
push.s "obj_npc_room_slash_Other_10_gml_21_0"@5908
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [9]

:[8]
pushi.e 455
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 7
pop.v.i global.typer
pushi.e 4
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe

:[9]
pushbltn.v self.room
pushi.e 30
cmp.i.v EQ
bf [11]

:[10]
pushi.e 100
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 4
pop.v.i global.fc

:[11]
pushbltn.v self.room
pushi.e 47
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_npc_room_slash_Other_10_gml_41_0"@5909
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
pushbltn.v self.room
pushi.e 52
cmp.i.v EQ
bf [20]

:[14]
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_npc_room_slash_Other_10_gml_48_0"@5910
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_49_0"@5911
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[16]
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_npc_room_slash_Other_10_gml_53_0"@5912
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_npc_room_slash_Other_10_gml_57_0"@5913
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_58_0"@5914
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[20]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
bf [22]

:[21]
pushi.e 145
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[22]
pushbltn.v self.room
pushi.e 55
cmp.i.v EQ
bf [24]

:[23]
pushi.e 147
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[24]
pushbltn.v self.room
pushi.e 54
cmp.i.v EQ
bf [37]

:[25]
push.v self.y
pushi.e 160
cmp.i.v GTE
bf [36]

:[26]
push.d 0.334
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.normalanim
push.s "obj_npc_room_slash_Other_10_gml_81_0"@5915
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_82_0"@5916
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_83_0"@5917
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_84_0"@5918
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_86_0"@5919
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_87_0"@5920
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [28]

:[27]
push.s "obj_npc_room_slash_Other_10_gml_90_0"@5921
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [31]

:[29]
push.s "obj_npc_room_slash_Other_10_gml_95_0"@5922
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
push.s "obj_npc_room_slash_Other_10_gml_97_0"@5923
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_99_0"@5924
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_101_0"@5925
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [31]

:[30]
push.s "obj_npc_room_slash_Other_10_gml_104_0"@5926
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_106_0"@5927
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_108_0"@5928
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_110_0"@5929
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[31]
pushi.e 6
conv.i.v
call.i scr_itemcheck(argc=1)
conv.v.b
bf [33]

:[32]
pushi.e 465
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[33]
pushi.e -5
pushi.e 253
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e 470
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[35]
b [37]

:[36]
pushi.e 149
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[37]
pushbltn.v self.room
pushi.e 56
cmp.i.v EQ
bf [48]

:[38]
push.s "obj_npc_room_slash_Other_10_gml_137_0"@5930
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_138_0"@5931
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_139_0"@5932
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 37
cmp.i.v LT
bf [40]

:[39]
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_143_0"@5933
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
b [41]

:[40]
push.s "obj_npc_room_slash_Other_10_gml_147_0"@5934
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[41]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [43]

:[42]
push.s "obj_npc_room_slash_Other_10_gml_152_0"@5935
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[43]
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [46]

:[44]
push.s "obj_npc_room_slash_Other_10_gml_157_0"@5936
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
push.s "obj_npc_room_slash_Other_10_gml_159_0"@5937
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [46]

:[45]
push.s "obj_npc_room_slash_Other_10_gml_165_0"@5938
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.x
pushi.e 1600
cmp.i.v GT
bf [48]

:[47]
pushi.e 5
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_npc_room_slash_Other_10_gml_175_0"@5939
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
push.s "obj_npc_room_slash_Other_10_gml_177_0"@5940
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_179_0"@5941
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[48]
pushbltn.v self.room
pushi.e 59
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_npc_room_slash_Other_10_gml_186_0"@5942
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_187_0"@5943
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_188_0"@5944
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[50]
pushbltn.v self.room
pushi.e 60
cmp.i.v EQ
bf [58]

:[51]
push.s "obj_npc_room_slash_Other_10_gml_193_0"@5945
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_194_0"@5946
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_195_0"@5947
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_196_0"@5948
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [54]

:[52]
push.s "obj_npc_room_slash_Other_10_gml_200_0"@5949
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_201_0"@5950
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_202_0"@5951
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [54]

:[53]
push.s "obj_npc_room_slash_Other_10_gml_205_0"@5952
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_206_0"@5953
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[54]
push.v self.y
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [58]

:[55]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [57]

:[56]
push.s "obj_npc_room_slash_Other_10_gml_214_0"@5954
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_215_0"@5955
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_216_0"@5956
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_217_0"@5957
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
b [58]

:[57]
push.s "obj_npc_room_slash_Other_10_gml_221_0"@5958
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_222_0"@5959
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_223_0"@5960
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_224_0"@5961
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[58]
pushbltn.v self.room
pushi.e 63
cmp.i.v EQ
bf [65]

:[59]
push.s "obj_npc_room_slash_Other_10_gml_233_0"@5962
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [61]

:[60]
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
b [62]

:[61]
push.e 0

:[62]
bf [65]

:[63]
push.s "obj_npc_room_slash_Other_10_gml_236_0"@5963
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_238_0"@5964
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
push.s "obj_npc_room_slash_Other_10_gml_240_0"@5965
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 5
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_242_0"@5966
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_243_0"@5967
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [65]

:[64]
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_248_0"@5968
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_250_0"@5969
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_252_0"@5970
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_254_0"@5971
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[65]
pushbltn.v self.room
pushi.e 60
cmp.i.v EQ
bf [68]

:[66]
push.s "obj_npc_room_slash_Other_10_gml_262_0"@5972
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_263_0"@5973
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_264_0"@5974
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_265_0"@5975
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [68]

:[67]
push.s "obj_npc_room_slash_Other_10_gml_269_0"@5976
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_270_0"@5977
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[68]
pushbltn.v self.room
pushi.e 71
cmp.i.v EQ
bf [77]

:[69]
push.v self.sprite_index
pushi.e 360
cmp.i.v EQ
bf [73]

:[70]
push.s "obj_npc_room_slash_Other_10_gml_278_0"@5978
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_279_0"@5979
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_280_0"@5980
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [72]

:[71]
push.s "obj_npc_room_slash_Other_10_gml_284_0"@5981
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_285_0"@5982
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_286_0"@5983
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[72]
b [77]

:[73]
push.s "obj_npc_room_slash_Other_10_gml_292_0"@5984
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_293_0"@5985
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_294_0"@5986
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [75]

:[74]
push.s "obj_npc_room_slash_Other_10_gml_297_0"@5987
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_298_0"@5988
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_299_0"@5989
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[75]
pushglb.v global.plot
pushi.e 60
cmp.i.v GTE
bf [77]

:[76]
push.s "obj_npc_room_slash_Other_10_gml_304_0"@5990
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_305_0"@5991
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_306_0"@5992
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[77]
pushbltn.v self.room
pushi.e 73
cmp.i.v EQ
bf [90]

:[78]
push.v self.sprite_index
pushi.e 323
cmp.i.v EQ
bf [83]

:[79]
push.s "obj_npc_room_slash_Other_10_gml_316_0"@5993
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_317_0"@5994
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_318_0"@5995
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_319_0"@5996
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 154
cmp.i.v GTE
bf [81]

:[80]
push.s "obj_npc_room_slash_Other_10_gml_322_0"@5997
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_323_0"@5998
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[81]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [83]

:[82]
push.s "obj_npc_room_slash_Other_10_gml_327_0"@5999
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_328_0"@6000
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[83]
push.v self.sprite_index
pushi.e 360
cmp.i.v EQ
bf [90]

:[84]
push.s "obj_npc_room_slash_Other_10_gml_334_0"@6001
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_335_0"@6002
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_336_0"@6003
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_337_0"@6004
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 251
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_npc_room_slash_Other_10_gml_340_0"@6005
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_341_0"@6006
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_342_0"@6007
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[86]
pushglb.v global.plot
pushi.e 154
cmp.i.v GTE
bf [88]

:[87]
push.s "obj_npc_room_slash_Other_10_gml_346_0"@6008
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_347_0"@6009
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[88]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [90]

:[89]
push.s "obj_npc_room_slash_Other_10_gml_352_0"@6010
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_353_0"@6011
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[90]
pushbltn.v self.room
pushi.e 75
cmp.i.v EQ
bf [94]

:[91]
push.v self.sprite_index
pushi.e 499
cmp.i.v EQ
bf [94]

:[92]
push.s "obj_npc_room_slash_Other_10_gml_365_0"@6012
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_366_0"@6013
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_367_0"@6014
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_368_0"@6015
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [94]

:[93]
push.s "obj_npc_room_slash_Other_10_gml_372_0"@6016
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[94]
pushbltn.v self.room
pushi.e 77
cmp.i.v EQ
bf [113]

:[95]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [111]

:[96]
push.s "obj_npc_room_slash_Other_10_gml_383_0"@6017
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_384_0"@6018
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 108
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
pushi.e -5
pushi.e 233
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
push.s "obj_npc_room_slash_Other_10_gml_388_0"@6019
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_389_0"@6020
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_390_0"@6021
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_391_0"@6022
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[101]
pushi.e -5
pushi.e 108
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
push.s "obj_npc_room_slash_Other_10_gml_397_0"@6023
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_398_0"@6024
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_399_0"@6025
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 233
pop.v.i [array]global.flag

:[103]
pushi.e -5
pushi.e 108
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [106]

:[104]
pushi.e 9
conv.i.v
call.i scr_weaponcheck_inventory(argc=1)
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
pushi.e -5
pushi.e 3
push.v [array]global.charweapon
pushi.e 9
cmp.i.v NEQ
b [107]

:[106]
push.e 0

:[107]
bf [109]

:[108]
push.s "obj_npc_room_slash_Other_10_gml_406_0"@6026
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_407_0"@6027
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[109]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [111]

:[110]
push.s "obj_npc_room_slash_Other_10_gml_412_0"@6028
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_413_0"@6029
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[111]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [113]

:[112]
push.s "obj_npc_room_slash_Other_10_gml_420_0"@6030
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_421_0"@6031
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[113]
pushbltn.v self.room
pushi.e 81
cmp.i.v EQ
bf [115]

:[114]
push.s "obj_npc_room_slash_Other_10_gml_428_0"@6032
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_429_0"@6033
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 236
pop.v.i [array]global.flag

:[115]
pushbltn.v self.room
pushi.e 80
cmp.i.v EQ
bf [121]

:[116]
push.s "obj_npc_room_slash_Other_10_gml_436_0"@6034
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_437_0"@6035
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [118]

:[117]
push.s "obj_npc_room_slash_Other_10_gml_442_0"@6036
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[118]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [121]

:[119]
push.s "obj_npc_room_slash_Other_10_gml_448_0"@6037
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_449_0"@6038
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [121]

:[120]
push.s "obj_npc_room_slash_Other_10_gml_454_0"@6039
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_455_0"@6040
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_456_0"@6041
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[121]
pushbltn.v self.room
pushi.e 82
cmp.i.v EQ
bf [133]

:[122]
push.v self.x
pushi.e 800
cmp.i.v LT
bf [124]

:[123]
pushi.e 325
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[124]
push.v self.x
pushi.e 800
cmp.i.v GTE
bf [126]

:[125]
push.v self.x
pushi.e 880
cmp.i.v LTE
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
pushi.e 327
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[129]
push.v self.x
pushi.e 920
cmp.i.v GTE
bf [133]

:[130]
pushglb.v global.plot
pushi.e 80
cmp.i.v LT
bf [132]

:[131]
pushi.e 330
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
b [133]

:[132]
push.s "obj_npc_room_slash_Other_10_gml_486_0"@6042
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[133]
pushbltn.v self.room
pushi.e 84
cmp.i.v EQ
bf [136]

:[134]
push.s "obj_npc_room_slash_Other_10_gml_493_0"@6043
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_494_0"@6044
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_495_0"@6045
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [136]

:[135]
push.s "obj_npc_room_slash_Other_10_gml_498_0"@6046
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[136]
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [138]

:[137]
push.s "obj_npc_room_slash_Other_10_gml_504_0"@6047
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_505_0"@6048
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 254
pop.v.i [array]global.flag

:[138]
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
bf [149]

:[139]
push.s "obj_npc_room_slash_Other_10_gml_511_0"@6049
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_512_0"@6050
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_513_0"@6051
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_514_0"@6052
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [141]

:[140]
push.s "obj_npc_room_slash_Other_10_gml_515_0"@6053
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[141]
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
bf [143]

:[142]
push.s "obj_npc_room_slash_Other_10_gml_519_0"@6054
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[143]
push.v self.sprite_index
pushi.e 226
cmp.i.v EQ
bf [146]

:[144]
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_npc_room_slash_Other_10_gml_527_0"@6055
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_529_0"@6056
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_531_0"@6057
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_533_0"@6058
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 7
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_535_0"@6059
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 9
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_537_0"@6060
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_538_0"@6061
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_540_0"@6062
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [146]

:[145]
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_npc_room_slash_Other_10_gml_547_0"@6063
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
push.s "obj_npc_room_slash_Other_10_gml_549_0"@6064
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "A"@366
conv.s.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_551_0"@6065
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_552_0"@6066
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[146]
push.v self.sprite_index
pushi.e 156
cmp.i.v EQ
bf [149]

:[147]
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_npc_room_slash_Other_10_gml_560_0"@6067
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
push.s "obj_npc_room_slash_Other_10_gml_562_0"@6068
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_563_0"@6069
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_564_0"@6070
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_566_0"@6071
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_567_0"@6072
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_568_0"@6073
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_570_0"@6074
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [149]

:[148]
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_npc_room_slash_Other_10_gml_577_0"@6075
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_578_0"@6076
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_580_0"@6077
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[149]
pushbltn.v self.room
pushi.e 97
cmp.i.v EQ
bf [152]

:[150]
pushi.e 31
pop.v.i global.typer
pushi.e 8
pop.v.i global.fe
pushi.e 2
pop.v.i global.fc
push.s "obj_npc_room_slash_Other_10_gml_591_0"@6078
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_593_0"@6079
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [152]

:[151]
push.s "obj_npc_room_slash_Other_10_gml_597_0"@6080
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_599_0"@6081
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[152]
pushbltn.v self.room
pushi.e 105
cmp.i.v EQ
bf [155]

:[153]
push.s "obj_npc_room_slash_Other_10_gml_606_0"@6082
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_607_0"@6083
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [155]

:[154]
push.s "obj_npc_room_slash_Other_10_gml_610_0"@6084
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[155]
pushbltn.v self.room
pushi.e 108
cmp.i.v EQ
bf [174]

:[156]
push.v self.sprite_index
pushi.e 340
cmp.i.v EQ
bf [163]

:[157]
push.s "obj_npc_room_slash_Other_10_gml_618_0"@6085
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.tempvar
pushi.e 1
cmp.i.v EQ
bf [159]

:[158]
push.s "obj_npc_room_slash_Other_10_gml_619_0"@6086
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[159]
push.v self.tempvar
pushi.e 2
cmp.i.v EQ
bf [161]

:[160]
push.s "obj_npc_room_slash_Other_10_gml_620_0"@6087
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[161]
push.v self.tempvar
pushi.e 3
cmp.i.v EQ
bf [163]

:[162]
push.s "obj_npc_room_slash_Other_10_gml_621_0"@6088
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[163]
push.v self.sprite_index
pushi.e 353
cmp.i.v EQ
bf [166]

:[164]
push.s "obj_npc_room_slash_Other_10_gml_626_0"@6089
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_627_0"@6090
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_628_0"@6091
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [166]

:[165]
push.s "obj_npc_room_slash_Other_10_gml_632_0"@6092
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[166]
push.v self.sprite_index
pushi.e 352
cmp.i.v EQ
bf [169]

:[167]
push.s "obj_npc_room_slash_Other_10_gml_638_0"@6093
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_639_0"@6094
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_640_0"@6095
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [169]

:[168]
push.s "obj_npc_room_slash_Other_10_gml_644_0"@6096
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_645_0"@6097
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[169]
push.v self.sprite_index
pushi.e 499
cmp.i.v EQ
bf [172]

:[170]
push.s "obj_npc_room_slash_Other_10_gml_653_0"@6098
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_654_0"@6099
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 40
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [172]

:[171]
push.s "obj_npc_room_slash_Other_10_gml_659_0"@6100
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[172]
push.v self.sprite_index
pushi.e 326
cmp.i.v EQ
bf [174]

:[173]
push.s "obj_npc_room_slash_Other_10_gml_665_0"@6101
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_666_0"@6102
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[174]
pushbltn.v self.room
pushi.e 115
cmp.i.v EQ
bf [193]

:[175]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [177]

:[176]
push.s "obj_npc_room_slash_Other_10_gml_675_0"@6103
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_676_0"@6104
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [193]

:[177]
pushi.e -5
pushi.e 520
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [185]

:[178]
push.s "obj_npc_room_slash_Other_10_gml_682_0"@6105
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 243
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [180]

:[179]
push.s "obj_npc_room_slash_Other_10_gml_685_0"@6106
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
push.s "obj_npc_room_slash_Other_10_gml_687_0"@6107
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_689_0"@6108
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[180]
pushi.e -5
pushi.e 243
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [184]

:[181]
push.s "obj_npc_room_slash_Other_10_gml_694_0"@6109
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_695_0"@6110
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_697_0"@6111
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_699_0"@6112
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_700_0"@6113
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_701_0"@6114
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 13
conv.i.v
call.i scr_itemget(argc=1)
popz.v
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [183]

:[182]
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_706_0"@6115
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_708_0"@6116
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg

:[183]
pushi.e 3
pushi.e -5
pushi.e 243
pop.v.i [array]global.flag

:[184]
b [193]

:[185]
pushi.e -5
pushi.e 243
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [187]

:[186]
push.s "obj_npc_room_slash_Other_10_gml_718_0"@6117
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_719_0"@6118
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[187]
pushi.e -5
pushi.e 243
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [189]

:[188]
push.s "obj_npc_room_slash_Other_10_gml_723_0"@6119
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[189]
pushi.e -5
pushi.e 243
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
push.s "obj_npc_room_slash_Other_10_gml_727_0"@6120
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_728_0"@6121
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_730_0"@6122
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_731_0"@6123
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[191]
pushi.e -5
pushi.e 243
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [193]

:[192]
pushi.e 425
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[193]
pushbltn.v self.room
pushi.e 117
cmp.i.v EQ
bf [195]

:[194]
push.s "obj_npc_room_slash_Other_10_gml_746_0"@6124
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_747_0"@6125
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[195]
pushbltn.v self.room
pushi.e 119
cmp.i.v EQ
bf [209]

:[196]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [198]

:[197]
push.s "obj_npc_room_slash_Other_10_gml_754_0"@6126
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_755_0"@6127
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [209]

:[198]
pushi.e -5
pushi.e 521
push.v [array]global.flag
pushi.e 2
cmp.i.v LTE
bf [208]

:[199]
pushi.e -5
pushi.e 244
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [206]

:[200]
push.s "obj_npc_room_slash_Other_10_gml_764_0"@6128
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 521
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [205]

:[201]
push.s "obj_npc_room_slash_Other_10_gml_768_0"@6129
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_770_0"@6130
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_771_0"@6131
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_773_0"@6132
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_774_0"@6133
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 43
dup.i 1
push.v [array]global.flag
pushi.e -5
pushi.e 524
push.v [array]global.flag
sub.v.v
pop.i.v [array]global.flag
pushi.e -5
pushi.e 43
push.v [array]global.flag
pushi.e 0
cmp.i.v LT
bf [203]

:[202]
pushi.e 0
pushi.e -5
pushi.e 43
pop.v.i [array]global.flag

:[203]
pushi.e -5
pushi.e 521
push.v [array]global.flag
pushi.e -5
pushi.e 524
push.v [array]global.flag
sub.v.v
pop.v.v self.normal_kills
pushi.e -5
pushi.e 40
dup.i 1
push.v [array]global.flag
push.v self.normal_kills
sub.v.v
pop.i.v [array]global.flag
pushi.e -5
pushi.e 40
push.v [array]global.flag
pushi.e 0
cmp.i.v LT
bf [205]

:[204]
pushi.e 0
pushi.e -5
pushi.e 40
pop.v.i [array]global.flag

:[205]
b [207]

:[206]
push.s "obj_npc_room_slash_Other_10_gml_786_0"@6134
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[207]
pushi.e 1
pushi.e -5
pushi.e 244
pop.v.i [array]global.flag
b [209]

:[208]
push.s "obj_npc_room_slash_Other_10_gml_792_0"@6135
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
push.s "obj_npc_room_slash_Other_10_gml_794_0"@6136
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_796_0"@6137
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_798_0"@6138
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[209]
pushbltn.v self.room
pushi.e 121
cmp.i.v EQ
bf [211]

:[210]
push.s "obj_npc_room_slash_Other_10_gml_806_0"@6139
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_807_0"@6140
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[211]
pushbltn.v self.room
pushi.e 122
cmp.i.v EQ
bf [219]

:[212]
push.s "obj_npc_room_slash_Other_10_gml_812_0"@6141
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_813_0"@6142
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_814_0"@6143
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 522
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [214]

:[213]
push.s "obj_npc_room_slash_Other_10_gml_817_0"@6144
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_818_0"@6145
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[214]
push.v self.x
pushi.e 160
cmp.i.v LT
bf [216]

:[215]
push.s "obj_npc_room_slash_Other_10_gml_823_0"@6146
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[216]
push.v self.x
pushi.e 400
cmp.i.v GT
bf [219]

:[217]
push.s "obj_npc_room_slash_Other_10_gml_827_0"@6147
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_828_0"@6148
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_829_0"@6149
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [219]

:[218]
push.s "obj_npc_room_slash_Other_10_gml_832_0"@6150
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[219]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [240]

:[220]
push.v self.y
pushi.e 300
cmp.i.v LT
bf [229]

:[221]
push.v self.sprite_index
pushi.e 340
cmp.i.v EQ
bf [224]

:[222]
push.s "obj_npc_room_slash_Other_10_gml_844_0"@6151
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.tempvar
pushi.e 1
cmp.i.v EQ
bf [224]

:[223]
push.s "obj_npc_room_slash_Other_10_gml_845_0"@6152
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[224]
push.v self.sprite_index
pushi.e 353
cmp.i.v EQ
bf [226]

:[225]
push.s "obj_npc_room_slash_Other_10_gml_849_0"@6153
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_850_0"@6154
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[226]
push.v self.sprite_index
pushi.e 352
cmp.i.v EQ
bf [228]

:[227]
push.s "obj_npc_room_slash_Other_10_gml_855_0"@6155
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_856_0"@6156
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[228]
b [240]

:[229]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [233]

:[230]
push.s "obj_npc_room_slash_Other_10_gml_865_0"@6157
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_866_0"@6158
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_867_0"@6159
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [232]

:[231]
push.s "obj_npc_room_slash_Other_10_gml_870_0"@6160
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_871_0"@6161
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[232]
b [240]

:[233]
push.s "obj_npc_room_slash_Other_10_gml_876_0"@6162
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_877_0"@6163
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 295
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [235]

:[234]
push.s "obj_npc_room_slash_Other_10_gml_880_0"@6164
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_882_0"@6165
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_884_0"@6166
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[235]
pushi.e -5
pushi.e 253
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [237]

:[236]
pushi.e -5
pushi.e 295
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [238]

:[237]
push.e 0

:[238]
bf [240]

:[239]
push.s "obj_npc_room_slash_Other_10_gml_888_0"@6167
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_889_0"@6168
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_890_0"@6169
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
push.s "obj_npc_room_slash_Other_10_gml_892_0"@6170
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_894_0"@6171
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_895_0"@6172
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 8
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_897_0"@6173
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_898_0"@6174
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 295
pop.v.i [array]global.flag

:[240]
pushbltn.v self.room
pushi.e 127
cmp.i.v EQ
bf [250]

:[241]
push.v self.x
pushi.e 180
cmp.i.v GT
bf [243]

:[242]
push.s "obj_npc_room_slash_Other_10_gml_913_0"@6175
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[243]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [246]

:[244]
push.s "obj_npc_room_slash_Other_10_gml_917_0"@6176
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_918_0"@6177
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [246]

:[245]
push.s "obj_npc_room_slash_Other_10_gml_919_0"@6178
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[246]
push.v self.x
pushi.e 460
cmp.i.v GT
bf [248]

:[247]
push.s "obj_npc_room_slash_Other_10_gml_923_0"@6179
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_924_0"@6180
conv.s.v
call.i scr_84_get_lang_string(argc=1)
push.s "/"@357
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_925_0"@6181
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[248]
push.v self.x
pushi.e 680
cmp.i.v GT
bf [250]

:[249]
push.s "obj_npc_room_slash_Other_10_gml_930_0"@6182
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_931_0"@6183
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_932_0"@6184
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[250]
pushbltn.v self.room
pushi.e 128
cmp.i.v EQ
bf [277]

:[251]
push.v self.sprite_index
pushi.e 317
cmp.i.v EQ
bf [254]

:[252]
pushi.e 18
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_room_slash_Other_10_gml_944_0"@6185
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_945_0"@6186
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_946_0"@6187
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_947_0"@6188
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [254]

:[253]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_npc_room_slash_Other_10_gml_955_0"@6189
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_rurusface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_957_0"@6191
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_958_0"@6192
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_960_0"@6193
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
call.i scr_rurusface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_962_0"@6194
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_964_0"@6195
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg

:[254]
push.v self.y
pushi.e 160
cmp.i.v LT
bf [274]

:[255]
push.v self.x
pushi.e 398
cmp.i.v EQ
bf [257]

:[256]
push.s "obj_npc_room_slash_Other_10_gml_972_0"@6196
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_973_0"@6197
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_974_0"@6198
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[257]
push.v self.x
pushi.e 522
cmp.i.v EQ
bf [260]

:[258]
push.s "obj_npc_room_slash_Other_10_gml_978_0"@6199
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_979_0"@6200
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [260]

:[259]
push.s "obj_npc_room_slash_Other_10_gml_982_0"@6201
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[260]
push.v self.x
pushi.e 740
cmp.i.v EQ
bf [262]

:[261]
push.s "obj_npc_room_slash_Other_10_gml_988_0"@6202
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[262]
push.v self.x
pushi.e 820
cmp.i.v EQ
bf [264]

:[263]
push.s "obj_npc_room_slash_Other_10_gml_992_0"@6203
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[264]
push.v self.x
pushi.e 940
cmp.i.v EQ
bf [266]

:[265]
push.s "obj_npc_room_slash_Other_10_gml_996_0"@6204
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[266]
push.v self.x
pushi.e 1020
cmp.i.v EQ
bf [268]

:[267]
push.s "obj_npc_room_slash_Other_10_gml_1000_0"@6205
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[268]
push.v self.x
pushi.e 1140
cmp.i.v GT
bf [273]

:[269]
push.s "obj_npc_room_slash_Other_10_gml_1004_0"@6206
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1005_0"@6207
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 216
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [271]

:[270]
push.s "obj_npc_room_slash_Other_10_gml_1008_0"@6208
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[271]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [273]

:[272]
push.s "obj_npc_room_slash_Other_10_gml_1013_0"@6209
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1014_0"@6210
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[273]
b [277]

:[274]
push.v self.x
pushi.e 900
cmp.i.v LT
bf [276]

:[275]
push.s "obj_npc_room_slash_Other_10_gml_1022_0"@6211
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1023_0"@6212
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1024_0"@6213
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
b [277]

:[276]
push.s "obj_npc_room_slash_Other_10_gml_1028_0"@6214
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[277]
pushbltn.v self.room
pushi.e 20
cmp.i.v EQ
bf [282]

:[278]
pushi.e 55
pop.v.i global.typer
pushi.e 15
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e -5
pushi.e 255
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [280]

:[279]
pushi.e 180
pop.v.i global.msc
b [281]

:[280]
pushi.e 181
pop.v.i global.msc

:[281]
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[282]
pushbltn.v self.room
pushi.e 26
cmp.i.v EQ
bf [285]

:[283]
push.s "obj_npc_room_slash_Other_10_gml_1049_0"@6215
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1050_0"@6216
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [285]

:[284]
push.s "obj_npc_room_slash_Other_10_gml_1054_0"@6217
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1055_0"@6218
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[285]
pushbltn.v self.room
pushi.e 16
cmp.i.v EQ
bf [287]

:[286]
pushi.e 190
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[287]
pushbltn.v self.room
pushi.e 23
cmp.i.v EQ
bf [296]

:[288]
push.s "obj_npc_room_slash_Other_10_gml_1068_0"@6219
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1069_0"@6220
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1070_0"@6221
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1071_0"@6222
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [290]

:[289]
push.s "obj_npc_room_slash_Other_10_gml_1074_0"@6223
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1075_0"@6224
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[290]
push.v self.x
pushi.e 100
cmp.i.v GT
bf [293]

:[291]
push.s "obj_npc_room_slash_Other_10_gml_1081_0"@6225
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1082_0"@6226
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [293]

:[292]
push.s "obj_npc_room_slash_Other_10_gml_1086_0"@6227
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1087_0"@6228
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[293]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [296]

:[294]
push.s "obj_npc_room_slash_Other_10_gml_1097_0"@6229
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1098_0"@6230
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1099_0"@6231
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [296]

:[295]
push.s "obj_npc_room_slash_Other_10_gml_1103_0"@6232
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1104_0"@6233
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[296]
pushbltn.v self.room
pushi.e 22
cmp.i.v EQ
bf [324]

:[297]
push.v self.sprite_index
pushi.e 265
cmp.i.v EQ
bf [300]

:[298]
pushi.e 13
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_room_slash_Other_10_gml_1118_0"@6234
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1119_0"@6235
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1120_0"@6236
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1121_0"@6237
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1122_0"@6238
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1123_0"@6239
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1124_0"@6240
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [300]

:[299]
push.s "obj_npc_room_slash_Other_10_gml_1128_0"@6241
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1129_0"@6242
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1130_0"@6243
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[300]
push.v self.sprite_index
pushi.e 263
cmp.i.v EQ
bf [303]

:[301]
push.s "obj_npc_room_slash_Other_10_gml_1136_0"@6244
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1137_0"@6245
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [303]

:[302]
push.s "obj_npc_room_slash_Other_10_gml_1139_0"@6246
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[303]
push.v self.x
pushi.e 120
cmp.i.v GTE
bf [305]

:[304]
push.v self.x
pushi.e 140
cmp.i.v LTE
b [306]

:[305]
push.e 0

:[306]
bf [310]

:[307]
push.s "obj_npc_room_slash_Other_10_gml_1145_0"@6247
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 261
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [310]

:[308]
push.s "obj_npc_room_slash_Other_10_gml_1151_0"@6248
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1153_0"@6249
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1154_0"@6250
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1155_0"@6251
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1156_0"@6252
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1157_0"@6253
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1158_0"@6254
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1159_0"@6255
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1160_0"@6256
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1161_0"@6257
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1162_0"@6258
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1163_0"@6259
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1164_0"@6260
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1165_0"@6261
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 261
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.noroom
pushi.e 1
conv.i.v
call.i scr_litemget(argc=1)
popz.v
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [310]

:[309]
pushi.e 2
pushi.e -5
pushi.e 261
pop.v.i [array]global.flag
push.s "obj_npc_room_slash_Other_10_gml_1172_0"@6262
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1173_0"@6263
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1174_0"@6264
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg

:[310]
push.v self.x
pushi.e 240
cmp.i.v GT
bf [311]

:[311]
push.v self.y
pushi.e 140
cmp.i.v GT
bf [318]

:[312]
push.v self.x
pushi.e 180
cmp.i.v GT
bf [315]

:[313]
push.s "obj_npc_room_slash_Other_10_gml_1198_0"@6265
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1199_0"@6266
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [315]

:[314]
push.s "obj_npc_room_slash_Other_10_gml_1202_0"@6267
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[315]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [318]

:[316]
push.s "obj_npc_room_slash_Other_10_gml_1212_0"@6268
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1213_0"@6269
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1214_0"@6270
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [318]

:[317]
push.s "obj_npc_room_slash_Other_10_gml_1217_0"@6271
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[318]
push.v self.sprite_index
pushi.e 260
cmp.i.v EQ
bf [321]

:[319]
push.s "obj_npc_room_slash_Other_10_gml_1226_0"@6272
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1227_0"@6273
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [321]

:[320]
push.s "obj_npc_room_slash_Other_10_gml_1231_0"@6274
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[321]
push.v self.sprite_index
pushi.e 258
cmp.i.v EQ
bf [324]

:[322]
push.s "obj_npc_room_slash_Other_10_gml_1237_0"@6275
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1238_0"@6276
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1239_0"@6277
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [324]

:[323]
push.s "obj_npc_room_slash_Other_10_gml_1243_0"@6278
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[324]
pushbltn.v self.room
pushi.e 13
cmp.i.v EQ
bf [329]

:[325]
push.v self.sprite_index
pushi.e 307
cmp.i.v EQ
bf [327]

:[326]
push.s "obj_npc_room_slash_Other_10_gml_1255_0"@6279
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1256_0"@6280
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[327]
push.v self.sprite_index
pushi.e 308
cmp.i.v EQ
bf [329]

:[328]
push.s "obj_npc_room_slash_Other_10_gml_1260_0"@6281
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1261_0"@6282
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1262_0"@6283
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[329]
pushbltn.v self.room
pushi.e 11
cmp.i.v EQ
bf [337]

:[330]
push.v self.sprite_index
pushi.e 280
cmp.i.v EQ
bf [332]

:[331]
pushi.e 340
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[332]
push.v self.sprite_index
pushi.e 153
cmp.i.v EQ
bf [335]

:[333]
push.s "obj_npc_room_slash_Other_10_gml_1276_0"@6284
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1277_0"@6285
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1278_0"@6286
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1279_0"@6287
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1280_0"@6288
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1281_0"@6289
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1282_0"@6290
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1283_0"@6291
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [335]

:[334]
push.s "obj_npc_room_slash_Other_10_gml_1287_0"@6292
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1288_0"@6293
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1289_0"@6294
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[335]
push.v self.sprite_index
pushi.e 149
cmp.i.v EQ
bf [337]

:[336]
push.s "obj_npc_room_slash_Other_10_gml_1295_0"@6295
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1296_0"@6296
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1297_0"@6297
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1298_0"@6298
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[337]
pushbltn.v self.room
pushi.e 9
cmp.i.v EQ
bf [346]

:[338]
push.v self.sprite_index
pushi.e 288
cmp.i.v EQ
bf [340]

:[339]
pushi.e 16
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushi.e 215
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[340]
push.v self.sprite_index
pushi.e 286
cmp.i.v EQ
bf [344]

:[341]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [343]

:[342]
push.s "obj_npc_room_slash_Other_10_gml_1316_0"@6299
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1317_0"@6300
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1318_0"@6301
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1319_0"@6302
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
b [344]

:[343]
push.s "obj_npc_room_slash_Other_10_gml_1323_0"@6303
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1324_0"@6304
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1325_0"@6305
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1326_0"@6306
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[344]
push.v self.sprite_index
pushi.e 287
cmp.i.v EQ
bf [346]

:[345]
pushi.e 17
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushi.e 220
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[346]
pushbltn.v self.room
pushi.e 15
cmp.i.v EQ
bf [348]

:[347]
pushi.e 345
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[348]
pushbltn.v self.room
pushi.e 18
cmp.i.v EQ
bf [353]

:[349]
push.s "obj_npc_room_slash_Other_10_gml_1348_0"@6307
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1349_0"@6308
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [351]

:[350]
push.s "obj_npc_room_slash_Other_10_gml_1353_0"@6309
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1354_0"@6310
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1355_0"@6311
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[351]
push.v self.tempvar
pushi.e 1
cmp.i.v GTE
bf [353]

:[352]
push.s "obj_npc_room_slash_Other_10_gml_1361_0"@6312
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1362_0"@6313
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[353]
pushbltn.v self.room
pushi.e 10
cmp.i.v EQ
bf [358]

:[354]
push.v self.sprite_index
pushi.e 310
cmp.i.v EQ
bf [356]

:[355]
push.s "obj_npc_room_slash_Other_10_gml_1371_0"@6314
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1372_0"@6315
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[356]
push.v self.sprite_index
pushi.e 311
cmp.i.v EQ
bf [358]

:[357]
push.s "obj_npc_room_slash_Other_10_gml_1376_0"@6316
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_slash_Other_10_gml_1377_0"@6317
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[358]
push.v self.image_speed
pop.v.v self.remanimspeed
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