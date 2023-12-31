.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "dontforget.ogg"@9885
conv.s.v
call.i snd_init(argc=1)
pop.v.v self.song0
push.v self.song0
call.i mus_play(argc=1)
pop.v.v self.song1

:[2]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_credits_slash_Step_0_gml_13_0"@9888
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[4]
push.v self.timer
pushi.e 108
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_credits_slash_Step_0_gml_19_0"@9889
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric
push.s "obj_credits_slash_Step_0_gml_21_0"@9890
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_22_0"@9891
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s " "@24
pushi.e -1
pushi.e 2
pop.v.s [array]self.line
push.s "obj_credits_slash_Step_0_gml_24_0"@9892
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line

:[6]
push.v self.timer
pushi.e 180
cmp.i.v EQ
bf [9]

:[7]
pushglb.v global.lang
push.s "en"@2775
cmp.s.v EQ
bf [9]

:[8]
push.s "obj_credits_slash_Step_0_gml_33_0"@9893
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[9]
push.v self.timer
pushi.e 201
cmp.i.v EQ
bf [12]

:[10]
push.s "obj_credits_slash_Step_0_gml_38_0"@9894
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_39_0"@9895
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_40_0"@9896
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s " "@24
pushi.e -1
pushi.e 3
pop.v.s [array]self.line
push.s "obj_credits_slash_Step_0_gml_42_0"@9897
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.i 12632256
pushi.e -1
pushi.e 0
pop.v.i [array]self.linecolor
push.i 12632256
pushi.e -1
pushi.e 1
pop.v.i [array]self.linecolor
push.i 12632256
pushi.e -1
pushi.e 2
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 4
pop.v.i [array]self.linecolor
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [12]

:[11]
push.s "obj_credits_slash_Step_0_gml_33_0"@9893
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[12]
push.v self.timer
pushi.e 278
cmp.i.v EQ
bf [15]

:[13]
pushglb.v global.lang
push.s "en"@2775
cmp.s.v EQ
bf [15]

:[14]
push.s "obj_credits_slash_Step_0_gml_54_0"@9898
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[15]
push.v self.timer
pushi.e 298
cmp.i.v EQ
bf [18]

:[16]
push.s "obj_credits_slash_Step_0_gml_59_0"@9899
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_60_0"@9900
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_61_0"@9901
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.i 12632256
pushi.e -1
pushi.e 2
pop.v.i [array]self.linecolor
push.s " "@24
pushi.e -1
pushi.e 3
pop.v.s [array]self.line
push.s "obj_credits_slash_Step_0_gml_64_0"@9902
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [18]

:[17]
push.s "obj_credits_slash_Step_0_gml_54_0"@9898
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[18]
push.v self.timer
pushi.e 366
cmp.i.v EQ
bf [21]

:[19]
pushglb.v global.lang
push.s "en"@2775
cmp.s.v EQ
bf [21]

:[20]
push.s "obj_credits_slash_Step_0_gml_70_0"@9903
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[21]
push.v self.timer
pushi.e 390
cmp.i.v EQ
bf [24]

:[22]
push.s "obj_credits_slash_Step_0_gml_95_0"@9904
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_96_0"@9905
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s " "@24
pushi.e -1
pushi.e 2
pop.v.s [array]self.line
push.s "obj_credits_slash_Step_0_gml_98_0"@9906
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_99_0"@9907
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.i 12632256
pushi.e -1
pushi.e 0
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 1
pop.v.i [array]self.linecolor
push.i 12632256
pushi.e -1
pushi.e 3
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 4
pop.v.i [array]self.linecolor
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [24]

:[23]
push.s "obj_credits_slash_Step_0_gml_70_0"@9903
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[24]
push.v self.timer
pushi.e 480
cmp.i.v GTE
bf [26]

:[25]
push.v self.timer
pushi.e 520
cmp.i.v LTE
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.v self.creditalpha
push.d 0.025
sub.d.v
pop.v.v self.creditalpha
push.v self.textalpha
push.d 0.025
sub.d.v
pop.v.v self.textalpha

:[29]
push.v self.timer
pushi.e 526
cmp.i.v EQ
bf [31]

:[30]
pushi.e 1
pop.v.i self.textalpha
push.s "obj_credits_slash_Step_0_gml_89_0"@9908
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[31]
push.v self.timer
pushi.e 573
cmp.i.v EQ
bf [35]

:[32]
pushi.e 1
pop.v.i self.creditalpha
push.s "Localization Producers"@9909
pushi.e -1
pushi.e 0
pop.v.s [array]self.line
push.s "John Ricciardi"@9910
pushi.e -1
pushi.e 1
pop.v.s [array]self.line
push.s "Graeme Howard"@9911
pushi.e -1
pushi.e 2
pop.v.s [array]self.line
push.i 12632256
pushi.e -1
pushi.e 0
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 1
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 2
pop.v.i [array]self.linecolor
push.i 12632256
pushi.e -1
pushi.e 3
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 4
pop.v.i [array]self.linecolor
push.s "Localization Programming"@9912
pushi.e -1
pushi.e 3
pop.v.s [array]self.line
push.s "Gregg Tavares"@9913
pushi.e -1
pushi.e 4
pop.v.s [array]self.line
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [34]

:[33]
push.s "ローカライズプロデューサー"@9914
pushi.e -1
pushi.e 0
pop.v.s [array]self.line
push.s "ローカライズプログラミング"@9915
pushi.e -1
pushi.e 3
pop.v.s [array]self.line

:[34]
push.s "obj_credits_slash_Step_0_gml_108_0"@9916
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[35]
push.v self.timer
pushi.e 645
cmp.i.v EQ
bf [38]

:[36]
pushglb.v global.lang
push.s "en"@2775
cmp.s.v EQ
bf [38]

:[37]
push.s "obj_credits_slash_Step_0_gml_113_0"@9917
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[38]
push.v self.timer
pushi.e 668
cmp.i.v EQ
bf [43]

:[39]
push.s "obj_credits_slash_Step_0_gml_119_0"@9918
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_120_0"@9919
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_121_0"@9920
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "Snowdrake & Monster Kid Design"@9921
pushi.e -1
pushi.e 3
pop.v.s [array]self.line
push.s "Magnolia Porter"@9922
pushi.e -1
pushi.e 4
pop.v.s [array]self.line
push.i 12632256
pushi.e -1
pushi.e 0
pop.v.i [array]self.linecolor
push.i 12632256
pushi.e -1
pushi.e 1
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 2
pop.v.i [array]self.linecolor
push.i 12632256
pushi.e -1
pushi.e 3
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 4
pop.v.i [array]self.linecolor
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [41]

:[40]
push.s "ライちゃん／モンスターの子　デザイン"@9923
pushi.e -1
pushi.e 3
pop.v.s [array]self.line

:[41]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [43]

:[42]
push.s "obj_credits_slash_Step_0_gml_113_0"@9917
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[43]
push.v self.timer
pushi.e 735
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_credits_slash_Step_0_gml_131_0"@9924
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[45]
push.v self.timer
pushi.e 765
cmp.i.v EQ
bf [48]

:[46]
push.s "obj_credits_slash_Step_0_gml_152_0"@9925
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "Gigi DG (Outfit & Color Assist)"@9926
pushi.e -1
pushi.e 1
pop.v.s [array]self.line
push.s "Betty Kwong (Temmie Design)"@9927
pushi.e -1
pushi.e 2
pop.v.s [array]self.line
push.s "256graph (JP Graphics)"@9928
pushi.e -1
pushi.e 3
pop.v.s [array]self.line
push.s "Ryan Alyea (Website)"@9929
pushi.e -1
pushi.e 4
pop.v.s [array]self.line
push.s "Brian Coia (Website)"@9930
pushi.e -1
pushi.e 5
pop.v.s [array]self.line
push.i 12632256
pushi.e -1
pushi.e 0
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 1
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 2
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 3
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 4
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 5
pop.v.i [array]self.linecolor
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [48]

:[47]
push.s "Gigi DG (カラーアシタンス)"@9931
pushi.e -1
pushi.e 1
pop.v.s [array]self.line
push.s "Betty Kwong (テミー・デザイン)"@9932
pushi.e -1
pushi.e 2
pop.v.s [array]self.line
push.s "256graph (日本語グラフィック)"@9933
pushi.e -1
pushi.e 3
pop.v.s [array]self.line
push.s "Ryan Alyea (ウェブサイト)"@9934
pushi.e -1
pushi.e 4
pop.v.s [array]self.line
push.s "Brian Coia (ウェブサイト)"@9935
pushi.e -1
pushi.e 5
pop.v.s [array]self.line

:[48]
push.v self.timer
pushi.e 798
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_credits_slash_Step_0_gml_147_0"@9936
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[50]
push.v self.timer
pushi.e 870
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_credits_slash_Step_0_gml_152_0"@9925
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_153_0"@9937
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Fontworks Inc."@9938
pushi.e -1
pushi.e 2
pop.v.s [array]self.line
push.s "Yutaka Sato (Happy Ruika)"@9939
pushi.e -1
pushi.e 3
pop.v.s [array]self.line
push.s "Hiroko Minamoto"@9940
pushi.e -1
pushi.e 4
pop.v.s [array]self.line
push.s "All 8-4 & Fangamer Staff"@9941
pushi.e -1
pushi.e 5
pop.v.s [array]self.line
push.i 16777215
pushi.e -1
pushi.e 1
pop.v.i [array]self.linecolor

:[52]
push.v self.timer
pushi.e 960
cmp.i.v GTE
bf [54]

:[53]
push.v self.timer
pushi.e 1030
cmp.i.v LTE
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
push.v self.creditalpha
push.d 0.02
sub.d.v
pop.v.v self.creditalpha
push.v self.textalpha
push.d 0.02
sub.d.v
pop.v.v self.textalpha

:[57]
push.v self.timer
pushi.e 1033
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1
pop.v.i self.textalpha
push.s "obj_credits_slash_Step_0_gml_174_0"@9942
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[59]
push.v self.timer
pushi.e 1086
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_credits_slash_Step_0_gml_180_0"@9943
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.lyric

:[61]
push.v self.timer
pushi.e 1300
cmp.i.v GTE
bf [73]

:[62]
push.v self.timer
pushi.e 1560
cmp.i.v LTE
bf [64]

:[63]
push.v self.creditalpha
pushi.e 1
cmp.i.v LT
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
push.v self.creditalpha
push.d 0.01
add.d.v
pop.v.v self.creditalpha

:[67]
push.v self.timer
pushi.e 1560
cmp.i.v GTE
bf [69]

:[68]
push.v self.creditalpha
pushi.e 0
cmp.i.v GT
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
push.v self.creditalpha
push.d 0.01
sub.d.v
pop.v.v self.creditalpha

:[72]
push.s "obj_credits_slash_Step_0_gml_187_0"@9944
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_188_0"@9945
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.i 16777215
pushi.e -1
pushi.e 0
pop.v.i [array]self.linecolor
push.i 16777215
pushi.e -1
pushi.e 1
pop.v.i [array]self.linecolor
push.s " "@24
pushi.e -1
pushi.e 2
pop.v.s [array]self.line
push.s " "@24
pushi.e -1
pushi.e 3
pop.v.s [array]self.line
push.s " "@24
pushi.e -1
pushi.e 4
pop.v.s [array]self.line
push.s " "@24
pushi.e -1
pushi.e 5
pop.v.s [array]self.line
push.v self.textalpha
push.d 0.01
sub.d.v
pop.v.v self.textalpha

:[73]
push.v self.timer
pushi.e 1660
cmp.i.v EQ
bf [75]

:[74]
push.v self.song0
call.i snd_free(argc=1)
popz.v

:[75]
push.v self.timer
pushi.e 1680
cmp.i.v EQ
bf [end]

:[76]
call.i game_end(argc=0)
popz.v

:[end]