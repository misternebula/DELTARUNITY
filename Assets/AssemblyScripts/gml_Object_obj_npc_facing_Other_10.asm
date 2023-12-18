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
push.d 0.1
pop.v.d self.image_speed

:[4]
push.s "obj_npc_facing_slash_Other_10_gml_10_0"@5658
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 30
cmp.i.v EQ
bf [42]

:[5]
push.v self.utsprite
pushi.e 130
cmp.i.v EQ
bf [11]

:[6]
pushi.e 100
pop.v.i global.msc
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
pushi.e 102
pop.v.i global.msc

:[8]
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 0
pop.v.i global.fe
pushi.e 3
pop.v.i global.fc
pushi.e 12
pop.v.i global.typer
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [11]

:[9]
push.s "obj_npc_facing_slash_Other_10_gml_29_0"@5659
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_30_0"@5660
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_31_0"@5661
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [11]

:[10]
pushi.e 23
pop.v.i global.typer
pushi.e 3
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_37_0"@5662
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.utsprite
pushi.e 134
cmp.i.v EQ
bf [17]

:[12]
pushi.e 12
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 13
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_48_0"@5663
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_49_0"@5664
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_50_0"@5665
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_51_0"@5666
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_52_0"@5667
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_53_0"@5668
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
push.s "obj_npc_facing_slash_Other_10_gml_57_0"@5669
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_58_0"@5670
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[14]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [17]

:[15]
pushi.e 3
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_65_0"@5671
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_66_0"@5672
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_67_0"@5673
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.s "obj_npc_facing_slash_Other_10_gml_71_0"@5674
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.v self.utsprite
pushi.e 148
cmp.i.v EQ
bf [23]

:[18]
push.s "obj_npc_facing_slash_Other_10_gml_81_0"@5675
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_82_0"@5676
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_83_0"@5677
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_84_0"@5678
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
push.s "obj_npc_facing_slash_Other_10_gml_88_0"@5679
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_89_0"@5680
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_90_0"@5681
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[20]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [23]

:[21]
push.s "obj_npc_facing_slash_Other_10_gml_96_0"@5682
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_97_0"@5683
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_98_0"@5684
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_99_0"@5685
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_100_0"@5686
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
push.s "obj_npc_facing_slash_Other_10_gml_104_0"@5687
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[23]
push.v self.utsprite
pushi.e 152
cmp.i.v EQ
bf [29]

:[24]
push.s "obj_npc_facing_slash_Other_10_gml_114_0"@5688
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_115_0"@5689
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_116_0"@5690
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [26]

:[25]
push.s "obj_npc_facing_slash_Other_10_gml_120_0"@5691
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [29]

:[27]
push.s "obj_npc_facing_slash_Other_10_gml_126_0"@5692
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_127_0"@5693
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_128_0"@5694
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [29]

:[28]
push.s "obj_npc_facing_slash_Other_10_gml_132_0"@5695
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[29]
push.v self.utsprite
pushi.e 139
cmp.i.v EQ
bf [32]

:[30]
pushi.e 13
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_145_0"@5696
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_146_0"@5697
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [32]

:[31]
push.s "obj_npc_facing_slash_Other_10_gml_150_0"@5698
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_151_0"@5699
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[32]
push.v self.utsprite
pushi.e 140
cmp.i.v EQ
bf [37]

:[33]
pushi.e 14
pop.v.i global.fc
push.s "obj_npc_facing_slash_Other_10_gml_159_0"@5700
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_160_0"@5701
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_161_0"@5702
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_162_0"@5703
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [35]

:[34]
push.s "obj_npc_facing_slash_Other_10_gml_166_0"@5704
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_167_0"@5705
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[35]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [37]

:[36]
push.s "obj_npc_facing_slash_Other_10_gml_174_0"@5706
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_175_0"@5707
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[37]
push.v self.utsprite
pushi.e 120
cmp.i.v EQ
bf [42]

:[38]
pushi.e 11
pop.v.i global.fc
pushi.e 20
pop.v.i global.typer
pushi.e 3
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_185_0"@5708
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_186_0"@5709
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_187_0"@5710
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_188_0"@5711
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [40]

:[39]
pushi.e 7
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_192_0"@5712
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [42]

:[41]
pushi.e 5
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_198_0"@5713
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
pushbltn.v self.room
pushi.e 52
cmp.i.v EQ
bf [49]

:[43]
pushi.e 5
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_210_0"@5714
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_211_0"@5715
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "A"@366
conv.s.v
pushi.e 2
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_213_0"@5716
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_215_0"@5717
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_216_0"@5718
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 7
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_218_0"@5719
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
push.s "obj_npc_facing_slash_Other_10_gml_220_0"@5720
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_221_0"@5721
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 12
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_223_0"@5722
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e -5
pushi.e 210
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
pushi.e 2
pop.v.i global.fc
pushi.e 11
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_230_0"@5723
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_231_0"@5724
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_233_0"@5725
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[45]
pushi.e -5
pushi.e 210
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_npc_facing_slash_Other_10_gml_239_0"@5726
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
push.s "obj_npc_facing_slash_Other_10_gml_241_0"@5727
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_243_0"@5728
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_244_0"@5729
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "A"@366
conv.s.v
pushi.e 6
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_246_0"@5730
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[47]
pushi.e -5
pushi.e 210
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
pushi.e 1
pushi.e -5
pushi.e 210
pop.v.i [array]global.flag

:[49]
pushbltn.v self.room
pushi.e 62
cmp.i.v EQ
bf [57]

:[50]
push.s "obj_npc_facing_slash_Other_10_gml_257_0"@5731
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [55]

:[51]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e -5
pushi.e 212
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [54]

:[52]
pushi.e 4
conv.i.v
call.i scr_get_input_name(argc=1)
pop.v.v self.input_name
push.s "obj_npc_facing_slash_Other_10_gml_269_0"@5732
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.input_name
push.s "obj_npc_facing_slash_Other_10_gml_270_0"@5733
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.v self.input_name
push.s "obj_npc_facing_slash_Other_10_gml_272_0"@5734
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [54]

:[53]
push.v self.input_name
push.s "obj_npc_facing_slash_Other_10_gml_276_0"@5735
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_278_0"@5736
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[54]
b [57]

:[55]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e -5
pushi.e 212
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_npc_facing_slash_Other_10_gml_295_0"@5737
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_296_0"@5738
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[57]
pushbltn.v self.room
pushi.e 105
cmp.i.v EQ
bf [79]

:[58]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_307_0"@5739
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_308_0"@5740
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [60]

:[59]
push.s "obj_npc_facing_slash_Other_10_gml_312_0"@5741
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
pushi.e -5
pushi.e 231
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [79]

:[61]
pushi.e 0
pop.v.i self.shack
pushi.e 0
pop.v.i self.moss
pushi.e -5
pushi.e 1
push.v [array]global.chararmor1
pushi.e 5
cmp.i.v EQ
bt [63]

:[62]
pushi.e -5
pushi.e 1
push.v [array]global.chararmor2
conv.v.b
b [64]

:[63]
push.e 1

:[64]
bf [66]

:[65]
pushi.e 1
pop.v.i self.shack

:[66]
pushi.e -5
pushi.e 106
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1
pop.v.i self.moss

:[68]
pushi.e 34
pushenv [70]

:[69]
pushi.e 15
pop.v.i self.con

:[70]
popenv [69]
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_323_0"@5744
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_324_0"@5745
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.moss
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
push.s "obj_npc_facing_slash_Other_10_gml_328_0"@5746
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_329_0"@5747
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_330_0"@5748
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_331_0"@5749
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[72]
push.v self.shack
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.s "obj_npc_facing_slash_Other_10_gml_337_0"@5750
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_338_0"@5751
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_339_0"@5752
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_340_0"@5753
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_341_0"@5754
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[74]
push.v self.moss
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
push.v self.shack
pushi.e 1
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
push.s "obj_npc_facing_slash_Other_10_gml_348_0"@5755
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_349_0"@5756
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_350_0"@5757
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_351_0"@5758
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_352_0"@5759
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[79]
pushbltn.v self.room
pushi.e 75
cmp.i.v EQ
bf [84]

:[80]
pushi.e -5
pushi.e 232
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [82]

:[81]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 255
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
b [84]

:[82]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_375_0"@5760
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_376_0"@5761
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_377_0"@5762
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_379_0"@5763
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_381_0"@5764
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_382_0"@5765
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
push.s "obj_npc_facing_slash_Other_10_gml_384_0"@5766
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.v self.x
pushi.e 1160
cmp.i.v GTE
bf [84]

:[83]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_392_0"@5767
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
push.s "obj_npc_facing_slash_Other_10_gml_394_0"@5768
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[84]
pushbltn.v self.room
pushi.e 78
cmp.i.v EQ
bf [91]

:[85]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_406_0"@5769
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
push.s "obj_npc_facing_slash_Other_10_gml_408_0"@5770
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
push.s "obj_npc_facing_slash_Other_10_gml_410_0"@5771
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_412_0"@5772
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 7
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_414_0"@5773
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [87]

:[86]
push.s "obj_npc_facing_slash_Other_10_gml_419_0"@5774
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_420_0"@5775
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_421_0"@5776
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_423_0"@5777
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
push.s "obj_npc_facing_slash_Other_10_gml_425_0"@5778
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_427_0"@5779
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_428_0"@5780
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 10
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_430_0"@5781
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 12
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_432_0"@5782
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg

:[87]
push.v self.talked
pushi.e -50
cmp.i.v LT
bf [89]

:[88]
pushi.e 2
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_438_0"@5783
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_440_0"@5784
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
push.s "obj_npc_facing_slash_Other_10_gml_442_0"@5785
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
push.s "obj_npc_facing_slash_Other_10_gml_444_0"@5786
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[89]
push.v self.dtsprite
pushi.e 211
cmp.i.v EQ
bf [91]

:[90]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_452_0"@5787
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_453_0"@5788
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
push.s "obj_npc_facing_slash_Other_10_gml_455_0"@5789
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_457_0"@5790
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_458_0"@5791
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[91]
pushbltn.v self.room
pushi.e 81
cmp.i.v EQ
bf [96]

:[92]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_470_0"@5792
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
push.s "obj_npc_facing_slash_Other_10_gml_472_0"@5793
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_474_0"@5794
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
push.s "obj_npc_facing_slash_Other_10_gml_476_0"@5795
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 7
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_478_0"@5796
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 9
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_480_0"@5797
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [94]

:[93]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_489_0"@5798
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_490_0"@5799
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_492_0"@5800
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[94]
push.v self.x
pushi.e 600
cmp.i.v GTE
bf [96]

:[95]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_500_0"@5801
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_501_0"@5802
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_502_0"@5803
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[96]
pushbltn.v self.room
pushi.e 82
cmp.i.v EQ
bf [102]

:[97]
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_512_0"@5804
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_514_0"@5805
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_516_0"@5806
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_518_0"@5807
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
push.s "obj_npc_facing_slash_Other_10_gml_520_0"@5808
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
push.s "obj_npc_facing_slash_Other_10_gml_522_0"@5809
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 11
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_524_0"@5810
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [99]

:[98]
push.s "obj_npc_facing_slash_Other_10_gml_527_0"@5811
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_529_0"@5812
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_530_0"@5813
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[99]
pushi.e 83
pushenv [101]

:[100]
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[101]
popenv [100]

:[102]
pushbltn.v self.room
pushi.e 92
cmp.i.v EQ
bf [107]

:[103]
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_541_0"@5814
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
push.s "obj_npc_facing_slash_Other_10_gml_543_0"@5815
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_545_0"@5816
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 5
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_547_0"@5817
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [105]

:[104]
push.s "obj_npc_facing_slash_Other_10_gml_550_0"@5818
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
push.s "obj_npc_facing_slash_Other_10_gml_552_0"@5819
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[105]
pushi.e -5
pushi.e 293
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [107]

:[106]
pushi.e 2
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_557_0"@5820
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_559_0"@5821
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[107]
pushbltn.v self.room
pushi.e 95
cmp.i.v EQ
bf [112]

:[108]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_568_0"@5822
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
push.s "obj_npc_facing_slash_Other_10_gml_570_0"@5823
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
push.s "obj_npc_facing_slash_Other_10_gml_572_0"@5824
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_573_0"@5825
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 6
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_575_0"@5826
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_576_0"@5827
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [110]

:[109]
push.s "obj_npc_facing_slash_Other_10_gml_579_0"@5828
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[110]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [112]

:[111]
pushi.e 9
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_584_0"@5829
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_586_0"@5830
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[112]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [116]

:[113]
pushglb.v global.plot
pushi.e 243
cmp.i.v LT
bf [115]

:[114]
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_600_0"@5831
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_601_0"@5832
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
push.s "obj_npc_facing_slash_Other_10_gml_603_0"@5833
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_605_0"@5834
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_606_0"@5835
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 7
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_608_0"@5836
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_609_0"@5837
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_611_0"@5838
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_612_0"@5839
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_613_0"@5840
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 14
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_615_0"@5841
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_616_0"@5842
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_617_0"@5843
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 18
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_619_0"@5844
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_620_0"@5845
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_621_0"@5846
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 22
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_623_0"@5847
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_624_0"@5848
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 25
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_626_0"@5849
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_627_0"@5850
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
pushi.e 243
pop.v.i global.plot
b [116]

:[115]
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_636_0"@5851
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
push.s "obj_npc_facing_slash_Other_10_gml_638_0"@5852
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_640_0"@5853
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[116]
pushbltn.v self.room
pushi.e 128
cmp.i.v EQ
bf [123]

:[117]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 11
pop.v.i global.fe
pushglb.v global.plot
pushi.e 242
cmp.i.v EQ
bf [119]

:[118]
pushi.e 1
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_656_0"@5854
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
push.s "obj_npc_facing_slash_Other_10_gml_658_0"@5855
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[119]
pushglb.v global.plot
pushi.e 243
cmp.i.v GTE
bf [121]

:[120]
pushi.e 1
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_665_0"@5856
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
push.s "obj_npc_facing_slash_Other_10_gml_667_0"@5857
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_668_0"@5858
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[121]
pushglb.v global.plot
pushi.e 242
cmp.i.v LT
bf [123]

:[122]
push.s "obj_npc_facing_slash_Other_10_gml_674_0"@5859
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
push.s "obj_npc_facing_slash_Other_10_gml_676_0"@5860
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_677_0"@5861
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
push.s "obj_npc_facing_slash_Other_10_gml_679_0"@5862
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_680_0"@5863
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_681_0"@5864
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
push.s "obj_npc_facing_slash_Other_10_gml_683_0"@5865
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 242
pop.v.i global.plot

:[123]
pushbltn.v self.room
pushi.e 26
cmp.i.v EQ
bf [143]

:[124]
pushbltn.v self.room
pushi.e 26
cmp.i.v EQ
bf [143]

:[125]
push.v self.x
pushi.e 140
cmp.i.v LT
bf [135]

:[126]
pushi.e 12
pop.v.i global.fc
pushi.e 13
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_700_0"@5866
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 256
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [128]

:[127]
push.s "obj_npc_facing_slash_Other_10_gml_702_0"@5867
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[128]
push.s "obj_npc_facing_slash_Other_10_gml_703_0"@5868
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_704_0"@5869
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_705_0"@5870
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_706_0"@5871
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_707_0"@5872
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [130]

:[129]
push.s "obj_npc_facing_slash_Other_10_gml_711_0"@5873
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_712_0"@5874
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_713_0"@5875
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_714_0"@5876
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[130]
pushi.e -5
pushi.e 255
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [132]

:[131]
pushi.e -5
pushi.e 256
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [133]

:[132]
push.e 0

:[133]
bf [135]

:[134]
push.s "obj_npc_facing_slash_Other_10_gml_719_0"@5877
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_720_0"@5878
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_721_0"@5879
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_722_0"@5880
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_723_0"@5881
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_724_0"@5882
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 256
pop.v.i [array]global.flag
pushi.e -1
pop.v.i self.talked

:[135]
push.v self.x
pushi.e 150
cmp.i.v GT
bf [137]

:[136]
push.v self.x
pushi.e 220
cmp.i.v LT
b [138]

:[137]
push.e 0

:[138]
bf [141]

:[139]
pushi.e 14
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_739_0"@5883
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_740_0"@5884
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_741_0"@5885
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_743_0"@5886
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [141]

:[140]
push.s "obj_npc_facing_slash_Other_10_gml_747_0"@5887
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[141]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [143]

:[142]
push.s "obj_npc_facing_slash_Other_10_gml_753_0"@5888
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_754_0"@5889
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[143]
pushbltn.v self.room
pushi.e 24
cmp.i.v EQ
bf [146]

:[144]
pushi.e 10
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 18
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_767_0"@5890
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_768_0"@5891
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_769_0"@5892
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_770_0"@5893
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_771_0"@5894
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [146]

:[145]
push.s "obj_npc_facing_slash_Other_10_gml_775_0"@5895
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_776_0"@5896
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[146]
pushbltn.v self.room
pushi.e 25
cmp.i.v EQ
bf [148]

:[147]
pushi.e 10
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 18
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_785_0"@5897
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_facing_slash_Other_10_gml_786_0"@5898
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[148]
pushbltn.v self.room
pushi.e 27
cmp.i.v EQ
bf [150]

:[149]
pushi.e 11
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 20
pop.v.i global.typer
pushi.e 285
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[150]
pushbltn.v self.room
pushi.e 13
cmp.i.v EQ
bf [152]

:[151]
pushi.e 17
pop.v.i global.typer
pushi.e 335
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[152]
pushbltn.v self.room
pushi.e 11
cmp.i.v EQ
bf [158]

:[153]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 14
pop.v.i global.typer
pushi.e 6
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 370
pop.v.i global.msc
pushi.e -5
pushi.e 273
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [155]

:[154]
pushi.e 371
pop.v.i global.msc

:[155]
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 20
pushenv [157]

:[156]
pushi.e 70
pop.v.i self.con

:[157]
popenv [156]

:[158]
pushbltn.v self.room
pushi.e 9
cmp.i.v EQ
bf [161]

:[159]
push.v self.dtsprite
pushi.e 124
cmp.i.v EQ
bf [161]

:[160]
pushi.e 385
pop.v.i global.msc
pushi.e 12
pop.v.i global.typer
pushi.e 3
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v

:[161]
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