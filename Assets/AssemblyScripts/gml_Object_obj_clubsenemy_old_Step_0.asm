.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [95]

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
bf [48]

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
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rr
push.s "obj_clubsenemy_old_slash_Step_0_gml_11_0"@9000
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_12_0"@9001
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_13_0"@9002
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_clubsenemy_old_slash_Step_0_gml_17_0"@9003
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_18_0"@9004
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_19_0"@9005
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[9]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [13]

:[10]
pushi.e 3
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [12]

:[11]
push.s "obj_clubsenemy_old_slash_Step_0_gml_26_0"@9006
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_27_0"@9007
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_28_0"@9008
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3
b [13]

:[12]
push.s "obj_clubsenemy_old_slash_Step_0_gml_32_0"@9009
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_33_0"@9010
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_34_0"@9011
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[13]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_clubsenemy_old_slash_Step_0_gml_40_0"@9012
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_41_0"@9013
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_42_0"@9014
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[15]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_clubsenemy_old_slash_Step_0_gml_47_0"@9015
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_48_0"@9016
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_49_0"@9017
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[17]
push.v self.myact
pushi.e 0
cmp.i.v EQ
bf [24]

:[18]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_clubsenemy_old_slash_Step_0_gml_61_0"@9018
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_62_0"@9019
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_63_0"@9020
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[20]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_clubsenemy_old_slash_Step_0_gml_67_0"@9021
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_68_0"@9022
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_69_0"@9023
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[22]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_clubsenemy_old_slash_Step_0_gml_73_0"@9024
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_74_0"@9025
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_75_0"@9026
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[24]
push.v self.myact
pushi.e 1
cmp.i.v EQ
bf [34]

:[25]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_clubsenemy_old_slash_Step_0_gml_86_0"@9027
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_87_0"@9028
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_88_0"@9029
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[27]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [32]

:[28]
push.s "obj_clubsenemy_old_slash_Step_0_gml_92_0"@9030
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_93_0"@9031
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_94_0"@9032
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
bf [30]

:[29]
push.s "obj_clubsenemy_old_slash_Step_0_gml_95_0"@9033
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[30]
pushi.e 3
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
not.b
bf [32]

:[31]
push.s "obj_clubsenemy_old_slash_Step_0_gml_98_0"@9034
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_99_0"@9035
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_100_0"@9036
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[32]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [34]

:[33]
push.s "obj_clubsenemy_old_slash_Step_0_gml_105_0"@9037
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_106_0"@9038
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_107_0"@9039
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[34]
push.v self.myact
pushi.e 2
cmp.i.v EQ
bf [41]

:[35]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_clubsenemy_old_slash_Step_0_gml_117_0"@9040
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_118_0"@9041
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_119_0"@9042
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[37]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_clubsenemy_old_slash_Step_0_gml_123_0"@9043
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_124_0"@9044
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_125_0"@9045
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[39]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [41]

:[40]
push.s "obj_clubsenemy_old_slash_Step_0_gml_130_0"@9046
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_131_0"@9047
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_132_0"@9048
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[41]
push.v self.manual
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_clubsenemy_old_slash_Step_0_gml_139_0"@9049
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_140_0"@9050
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_141_0"@9051
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[43]
push.v self.betray
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_clubsenemy_old_slash_Step_0_gml_146_0"@9052
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text1
push.s "obj_clubsenemy_old_slash_Step_0_gml_147_0"@9053
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text2
push.s "obj_clubsenemy_old_slash_Step_0_gml_148_0"@9054
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.text3

:[45]
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
pushenv [47]

:[46]
pushi.e 150
pop.v.i self.talkmax

:[47]
popenv [46]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer
pushi.e 0
pop.v.i self.manual

:[48]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [57]

:[52]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [57]

:[53]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [55]

:[54]
call.i scr_moveheart(argc=0)
popz.v

:[55]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [57]

:[56]
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

:[57]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [59]

:[58]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [87]

:[61]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [86]

:[62]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
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
b [65]

:[64]
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

:[65]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 140
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
bf [67]

:[66]
push.s "obj_clubsenemy_old_slash_Step_0_gml_204_0"@9055
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[67]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
push.s "obj_clubsenemy_old_slash_Step_0_gml_205_0"@9056
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[69]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [71]

:[70]
push.s "obj_clubsenemy_old_slash_Step_0_gml_206_0"@9057
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[71]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [73]

:[72]
push.s "obj_clubsenemy_old_slash_Step_0_gml_207_0"@9058
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[73]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_clubsenemy_old_slash_Step_0_gml_208_0"@9059
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[75]
push.v self.rr
pushi.e 5
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_clubsenemy_old_slash_Step_0_gml_209_0"@9060
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[77]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_clubsenemy_old_slash_Step_0_gml_210_0"@9061
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[79]
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
bf [81]

:[80]
push.s "obj_clubsenemy_old_slash_Step_0_gml_211_0"@9062
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[81]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymax
cmp.v.v GTE
bf [83]

:[82]
push.s "obj_clubsenemy_old_slash_Step_0_gml_212_0"@9063
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[83]
push.v self.betray
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
push.s "obj_clubsenemy_old_slash_Step_0_gml_213_0"@9064
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[85]
pushi.e 0
pop.v.i self.betray
b [87]

:[86]
pushi.e 120
pop.v.i global.turntimer

:[87]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [95]

:[88]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [95]

:[89]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
pushi.e 100
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v

:[91]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [95]

:[92]
pushi.e 187
pushenv [94]

:[93]
pushi.e 1
pop.v.i self.noreturn

:[94]
popenv [93]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[95]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [166]

:[96]
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
bf [98]

:[97]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
pushi.e 1
pop.v.i self.actcon
push.s "obj_clubsenemy_old_slash_Step_0_gml_247_0"@9065
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[101]
push.v self.myact
pushi.e 0
cmp.i.v EQ
bf [117]

:[102]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [104]

:[103]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [107]

:[106]
push.s "obj_clubsenemy_old_slash_Step_0_gml_261_0"@9066
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

:[107]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [109]

:[108]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
push.s "obj_clubsenemy_old_slash_Step_0_gml_269_0"@9067
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

:[112]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [114]

:[113]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
push.s "obj_clubsenemy_old_slash_Step_0_gml_277_0"@9068
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.battlecancel
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[117]
push.v self.myact
pushi.e 1
cmp.i.v EQ
bf [133]

:[118]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [120]

:[119]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [121]

:[120]
push.e 0

:[121]
bf [123]

:[122]
push.s "obj_clubsenemy_old_slash_Step_0_gml_293_0"@9069
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

:[123]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [125]

:[124]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
push.s "obj_clubsenemy_old_slash_Step_0_gml_301_0"@9070
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.battlecancel
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[128]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [130]

:[129]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [131]

:[130]
push.e 0

:[131]
bf [133]

:[132]
push.s "obj_clubsenemy_old_slash_Step_0_gml_309_0"@9071
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

:[133]
push.v self.myact
pushi.e 2
cmp.i.v EQ
bf [149]

:[134]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [136]

:[135]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [137]

:[136]
push.e 0

:[137]
bf [139]

:[138]
push.s "obj_clubsenemy_old_slash_Step_0_gml_324_0"@9072
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.battlecancel
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[139]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [141]

:[140]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [142]

:[141]
push.e 0

:[142]
bf [144]

:[143]
push.s "obj_clubsenemy_old_slash_Step_0_gml_332_0"@9073
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

:[144]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [146]

:[145]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [147]

:[146]
push.e 0

:[147]
bf [149]

:[148]
push.s "obj_clubsenemy_old_slash_Step_0_gml_340_0"@9074
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

:[149]
push.v self.acting
pushi.e 5
cmp.i.v EQ
bf [151]

:[150]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [152]

:[151]
push.e 0

:[152]
bf [159]

:[153]
pushi.e 1
pop.v.i self.actcon
push.s "obj_clubsenemy_old_slash_Step_0_gml_354_0"@9075
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [155]

:[154]
push.s "obj_clubsenemy_old_slash_Step_0_gml_356_0"@9076
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[155]
pushi.e 0
pop.v.i self.i

:[156]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [158]

:[157]
push.s "obj_clubsenemy_old_slash_Step_0_gml_359_0"@9077
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.monstercomment
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.automiss
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [156]

:[158]
call.i scr_battletext_default(argc=0)
popz.v

:[159]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [161]

:[160]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [162]

:[161]
push.e 0

:[162]
bf [166]

:[163]
push.v self.argue
pushi.e 2
cmp.i.v GTE
bf [165]

:[164]
push.s "obj_clubsenemy_old_slash_Step_0_gml_377_0"@9078
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

:[165]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v

:[166]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[167]
pushi.e 15
pop.v.i self.hspeed

:[end]