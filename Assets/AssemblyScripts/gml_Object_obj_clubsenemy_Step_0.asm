.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [67]

:[1]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [28]

:[5]
call.i scr_randomtarget(argc=0)
popz.v
pushi.e 195
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 195
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[7]
pushi.e 50
pop.v.i global.typer
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.rr
push.s "obj_clubsenemy_slash_Step_0_gml_11_0"@8936
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_12_0"@8938
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_13_0"@8940
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_clubsenemy_slash_Step_0_gml_17_0"@8942
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_18_0"@8943
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_19_0"@8944
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[9]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_clubsenemy_slash_Step_0_gml_24_0"@8945
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_25_0"@8946
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_26_0"@8947
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[11]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_clubsenemy_slash_Step_0_gml_31_0"@8948
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_32_0"@8949
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_33_0"@8950
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[13]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_clubsenemy_slash_Step_0_gml_39_0"@8951
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_40_0"@8952
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_41_0"@8953
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[15]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_clubsenemy_slash_Step_0_gml_46_0"@8954
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_47_0"@8955
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_48_0"@8956
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[17]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_clubsenemy_slash_Step_0_gml_53_0"@8957
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_54_0"@8958
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_55_0"@8959
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[19]
push.v self.acting
pushi.e 5
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_clubsenemy_slash_Step_0_gml_60_0"@8960
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_61_0"@8961
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_62_0"@8962
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[21]
push.v self.acting
pushi.e 6
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_clubsenemy_slash_Step_0_gml_68_0"@8963
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_69_0"@8964
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_70_0"@8965
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[23]
push.v self.manual
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_clubsenemy_slash_Step_0_gml_76_0"@8966
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_77_0"@8967
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_78_0"@8968
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[25]
push.v self.text1
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 110
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
push.v self.text2
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
push.v self.y
pushi.e 70
add.i.v
push.v self.x
pushi.e 125
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
push.v self.text3
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 125
add.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 234
pushenv [27]

:[26]
pushi.e 210
pop.v.i self.talkmax

:[27]
popenv [26]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer
pushi.e 0
pop.v.i self.manual

:[28]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [37]

:[32]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [37]

:[33]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [35]

:[34]
call.i scr_moveheart(argc=0)
popz.v

:[35]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [37]

:[36]
pushi.e 303
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
call.i instance_create(argc=3)
popz.v

:[37]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [67]

:[41]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [66]

:[42]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 2
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
b [45]

:[44]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 4
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage

:[45]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 150
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.attacked
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=6)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_clubsenemy_slash_Step_0_gml_134_0"@8969
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[47]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_clubsenemy_slash_Step_0_gml_135_0"@8970
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[49]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_clubsenemy_slash_Step_0_gml_136_0"@8971
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[51]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_clubsenemy_slash_Step_0_gml_137_0"@8972
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[53]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [55]

:[54]
push.s "obj_clubsenemy_slash_Step_0_gml_138_0"@8973
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[55]
push.v self.rr
pushi.e 5
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_clubsenemy_slash_Step_0_gml_139_0"@8974
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[57]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.s "obj_clubsenemy_slash_Step_0_gml_140_0"@8975
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[59]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 3
conv.i.d
div.d.v
cmp.v.v LTE
bf [61]

:[60]
push.s "obj_clubsenemy_slash_Step_0_gml_141_0"@8976
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[61]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymax
cmp.v.v GTE
bf [63]

:[62]
push.s "obj_clubsenemy_slash_Step_0_gml_142_0"@8977
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
push.v self.betray
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
push.s "obj_clubsenemy_slash_Step_0_gml_143_0"@8978
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[65]
pushi.e 0
pop.v.i self.betray
b [67]

:[66]
pushi.e 150
pop.v.i global.turntimer

:[67]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[68]
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
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
pushi.e 1
pop.v.i self.actcon
push.s "obj_clubsenemy_slash_Step_0_gml_163_0"@8979
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[73]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [75]

:[74]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_clubsenemy_slash_Step_0_gml_187_0"@8980
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.argue
pushi.e 1
add.i.v
pop.v.v self.argue
call.i scr_battletext(argc=0)
popz.v
pushi.e 20
pop.v.i self.actcon

:[78]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [80]

:[79]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [81]

:[80]
push.e 0

:[81]
bf [83]

:[82]
pushi.e 50
pop.v.i global.typer
push.s "obj_clubsenemy_slash_Step_0_gml_196_0"@8981
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_197_0"@8982
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_198_0"@8983
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3
push.v self.text1
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 110
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
push.v self.text2
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
push.v self.y
pushi.e 70
add.i.v
push.v self.x
pushi.e 125
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
push.v self.text3
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 125
add.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 21
pop.v.i self.actcon

:[83]
push.v self.actcon
pushi.e 21
cmp.i.v EQ
bf [85]

:[84]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
push.s "obj_clubsenemy_slash_Step_0_gml_210_0"@8984
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[88]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [90]

:[89]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_clubsenemy_slash_Step_0_gml_223_0"@8985
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.argue
pushi.e 1
add.i.v
pop.v.v self.argue
call.i scr_battletext(argc=0)
popz.v
pushi.e 22
pop.v.i self.actcon

:[93]
push.v self.actcon
pushi.e 22
cmp.i.v EQ
bf [95]

:[94]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [96]

:[95]
push.e 0

:[96]
bf [100]

:[97]
pushi.e 50
pop.v.i global.typer
pushi.e -1
pushi.e 2
push.v [array]self.acted
pushi.e 0
cmp.i.v EQ
bf [99]

:[98]
pushi.e 40
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.acted

:[99]
push.s "obj_clubsenemy_slash_Step_0_gml_233_0"@8986
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_234_0"@8987
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_235_0"@8988
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3
push.v self.text1
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 110
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
push.v self.text2
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
push.v self.y
pushi.e 70
add.i.v
push.v self.x
pushi.e 125
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
push.v self.text3
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 125
add.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 23
pop.v.i self.actcon

:[100]
push.v self.actcon
pushi.e 23
cmp.i.v EQ
bf [102]

:[101]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
push.s "obj_clubsenemy_slash_Step_0_gml_247_0"@8989
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[105]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [107]

:[106]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [108]

:[107]
push.e 0

:[108]
bf [110]

:[109]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_clubsenemy_slash_Step_0_gml_258_0"@8990
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.argue
pushi.e 1
add.i.v
pop.v.v self.argue
call.i scr_battletext(argc=0)
popz.v
pushi.e 24
pop.v.i self.actcon

:[110]
push.v self.actcon
pushi.e 24
cmp.i.v EQ
bf [112]

:[111]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [113]

:[112]
push.e 0

:[113]
bf [117]

:[114]
pushi.e 50
pop.v.i global.typer
pushi.e -1
pushi.e 3
push.v [array]self.acted
pushi.e 0
cmp.i.v EQ
bf [116]

:[115]
pushi.e 40
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.acted

:[116]
push.s "obj_clubsenemy_slash_Step_0_gml_268_0"@8991
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_slash_Step_0_gml_269_0"@8992
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_slash_Step_0_gml_270_0"@8993
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3
push.v self.text1
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 110
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
push.v self.text2
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
push.v self.y
pushi.e 70
add.i.v
push.v self.x
pushi.e 125
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
push.v self.text3
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 125
add.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 25
pop.v.i self.actcon

:[117]
push.v self.actcon
pushi.e 25
cmp.i.v EQ
bf [119]

:[118]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
push.s "obj_clubsenemy_slash_Step_0_gml_282_0"@8994
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[122]
push.v self.acting
pushi.e 5
cmp.i.v EQ
bf [124]

:[123]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [125]

:[124]
push.e 0

:[125]
bf [127]

:[126]
push.s "obj_clubsenemy_slash_Step_0_gml_290_0"@8995
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_clubsenemy_slash_Step_0_gml_291_0"@8996
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.argue
pushi.e 1
add.i.v
pop.v.v self.argue
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[127]
push.v self.acting
pushi.e 6
cmp.i.v EQ
bf [129]

:[128]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [130]

:[129]
push.e 0

:[130]
bf [134]

:[131]
pushi.e -1
pushi.e 5
push.v [array]self.acted
pushi.e 0
cmp.i.v EQ
bf [133]

:[132]
pushi.e 40
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.acted

:[133]
push.s "obj_clubsenemy_slash_Step_0_gml_301_0"@8997
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.argue
pushi.e 1
add.i.v
pop.v.v self.argue
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[134]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [136]

:[135]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [137]

:[136]
push.e 0

:[137]
bf [end]

:[138]
push.v self.argue
pushi.e 3
cmp.i.v GTE
bf [140]

:[139]
push.s "obj_clubsenemy_slash_Step_0_gml_314_0"@8998
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstercomment
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterstatus

:[140]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v

:[end]