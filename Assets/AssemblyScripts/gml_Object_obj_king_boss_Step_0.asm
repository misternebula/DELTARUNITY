.localvar 0 arguments

:[0]
push.v self.susinit
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 203
pushenv [3]

:[2]
pushi.e 471
pop.v.i self.idlesprite
pushi.e 475
pop.v.i self.attacksprite

:[3]
popenv [2]
pushi.e 1
pop.v.i self.susinit

:[4]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [98]

:[5]
pushi.e 4
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.i [array]global.flag
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [68]

:[9]
pushi.e 195
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[10]
pushi.e 195
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[11]
pushi.e 50
pop.v.i global.typer
push.s "obj_king_boss_slash_Step_0_gml_25_0"@8789
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
pop.v.i self.blcontype
push.v self.kturn
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_king_boss_slash_Step_0_gml_27_0"@8791
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
push.v self.kturn
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_king_boss_slash_Step_0_gml_28_0"@8792
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 8
pop.v.i self.blcontype

:[15]
push.v self.kturn
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_king_boss_slash_Step_0_gml_29_0"@8793
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.v self.kturn
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_king_boss_slash_Step_0_gml_30_0"@8794
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
push.v self.kturn
pushi.e 4
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_king_boss_slash_Step_0_gml_31_0"@8795
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[21]
push.v self.kturn
pushi.e 5
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_king_boss_slash_Step_0_gml_32_0"@8796
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 8
pop.v.i self.blcontype

:[23]
push.v self.kturn
pushi.e 6
cmp.i.v EQ
bf [25]

:[24]
pushi.e 8
pop.v.i self.blcontype
push.s "obj_king_boss_slash_Step_0_gml_36_0"@8797
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_37_0"@8798
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[25]
push.v self.kturn
pushi.e 7
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_king_boss_slash_Step_0_gml_39_0"@8799
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[27]
push.v self.kturn
pushi.e 8
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_king_boss_slash_Step_0_gml_40_0"@8800
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_41_0"@8801
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 8
pop.v.i self.blcontype

:[29]
push.v self.kturn
pushi.e 9
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_king_boss_slash_Step_0_gml_43_0"@8802
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
push.v self.kturn
pushi.e 10
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_king_boss_slash_Step_0_gml_44_0"@8803
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_45_0"@8804
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[33]
push.v self.kturn
pushi.e 11
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_king_boss_slash_Step_0_gml_46_0"@8805
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
push.v self.kturn
pushi.e 12
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_king_boss_slash_Step_0_gml_47_0"@8806
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
push.v self.kturn
pushi.e 13
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_king_boss_slash_Step_0_gml_48_0"@8807
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
push.v self.kturn
pushi.e 14
cmp.i.v GTE
bf [41]

:[40]
push.s "obj_king_boss_slash_Step_0_gml_49_0"@8808
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.battlecancel

:[41]
push.v self.kturn
pushi.e 1
add.i.v
pop.v.v self.kturn
push.v self.kturn
pushi.e 11
cmp.i.v LTE
bf [43]

:[42]
push.v self.kturn
pop.v.v self.attack
b [59]

:[43]
push.v self.kturn
pushi.e 12
cmp.i.v EQ
bf [45]

:[44]
pushi.e 7
pop.v.i self.attack

:[45]
push.v self.kturn
pushi.e 13
cmp.i.v EQ
bf [47]

:[46]
pushi.e 8
pop.v.i self.attack

:[47]
push.v self.kturn
pushi.e 14
cmp.i.v EQ
bf [49]

:[48]
pushi.e 10
pop.v.i self.attack

:[49]
push.v self.kturn
pushi.e 15
cmp.i.v EQ
bf [51]

:[50]
pushi.e 9
pop.v.i self.attack

:[51]
push.v self.kturn
pushi.e 16
cmp.i.v EQ
bf [53]

:[52]
pushi.e 7
pop.v.i self.attack

:[53]
push.v self.kturn
pushi.e 17
cmp.i.v EQ
bf [55]

:[54]
pushi.e 11
pop.v.i self.attack

:[55]
push.v self.kturn
pushi.e 18
cmp.i.v GTE
bf [57]

:[56]
pushi.e 11
pop.v.i self.attack

:[57]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterdf
pushi.e -25
cmp.i.v GT
bf [59]

:[58]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterdf
pushi.e 5
sub.i.v
pop.i.v [array]global.monsterdf

:[59]
pushi.e 1
pop.v.i self.target_randomly
push.v self.attack
pushi.e 2
cmp.i.v EQ
bt [63]

:[60]
push.v self.attack
pushi.e 5
cmp.i.v EQ
bt [63]

:[61]
push.v self.attack
pushi.e 10
cmp.i.v EQ
bt [63]

:[62]
push.v self.attack
pushi.e 11
cmp.i.v EQ
b [64]

:[63]
push.e 1

:[64]
bf [66]

:[65]
call.i scr_targetall(argc=0)
popz.v
b [67]

:[66]
call.i scr_randomtarget(argc=0)
popz.v

:[67]
push.v self.blcontype
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[68]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
pushi.e 0
pop.v.i self.rtimer
pushi.e -1
conv.i.v
call.i scr_blconskip(argc=1)
popz.v

:[73]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [75]

:[74]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [90]

:[77]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [89]

:[78]
pushi.e 0
pop.v.i self.talktimer
pushi.e 180
pop.v.i global.turntimer
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 1
pop.v.i self.attacked
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
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
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [80]

:[79]
push.s "obj_king_boss_slash_Step_0_gml_104_0"@8811
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[80]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_king_boss_slash_Step_0_gml_105_0"@8812
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[82]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_king_boss_slash_Step_0_gml_106_0"@8813
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[84]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_king_boss_slash_Step_0_gml_107_0"@8814
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[86]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 4
conv.i.d
div.d.v
cmp.v.v LTE
bf [88]

:[87]
push.s "obj_king_boss_slash_Step_0_gml_110_0"@8815
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[88]
b [90]

:[89]
pushi.e 120
pop.v.i global.turntimer

:[90]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [98]

:[91]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [98]

:[92]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [94]

:[93]
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod

:[94]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [98]

:[95]
pushi.e 187
pushenv [97]

:[96]
pushi.e 1
pop.v.i self.noreturn

:[97]
popenv [96]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[98]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
pushi.e 4
pop.v.i self.con

:[100]
push.v self.con
pushi.e 4
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
bf [107]

:[104]
pushi.e 5
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 187
pushenv [106]

:[105]
pushi.e 17
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[106]
popenv [105]

:[107]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [111]

:[108]
pushi.e 187
pushenv [110]

:[109]
pushi.e 0
pop.v.i self.noreturn

:[110]
popenv [109]
pushi.e 1
pushi.e -5
pushi.e 247
pop.v.i [array]global.flag
call.i scr_monsterdefeat(argc=0)
popz.v
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[111]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [186]

:[112]
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
pushi.e 1
pop.v.i self.actcon
push.s "obj_king_boss_slash_Step_0_gml_169_0"@8816
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_170_0"@8817
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[117]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [119]

:[118]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [120]

:[119]
push.e 0

:[120]
bf [127]

:[121]
pushi.e -5
pushi.e 5
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [123]

:[122]
push.s "obj_king_boss_slash_Step_0_gml_180_0"@8818
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_kingface(argc=2)
popz.v
push.s "obj_king_boss_slash_Step_0_gml_182_0"@8819
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_183_0"@8820
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_184_0"@8821
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_king_boss_slash_Step_0_gml_186_0"@8822
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 5
pop.v.i [array]global.tempflag
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "obj_king_boss_slash_Step_0_gml_192_0"@8823
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s "obj_king_boss_slash_Step_0_gml_193_0"@8824
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.actdesc
pushi.e 62
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.i [array]global.actcost
b [126]

:[123]
pushi.e 87
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 205
pushenv [125]

:[124]
call.i scr_oflash(argc=0)
pop.v.v self.__of
push.i 4235519
push.v self.__of
conv.v.i
pop.v.i [stacktop]self.flashcolor

:[125]
popenv [124]
push.s "obj_king_boss_slash_Step_0_gml_201_0"@8826
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.d 0.8
pop.v.d self.tempattack

:[126]
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[127]
push.v self.acting
pushi.e 3
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
bf [135]

:[131]
pushi.e -5
pushi.e 6
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [133]

:[132]
push.s "obj_king_boss_slash_Step_0_gml_214_0"@8827
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
push.s "obj_king_boss_slash_Step_0_gml_216_0"@8828
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_217_0"@8829
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_218_0"@8830
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_kingface(argc=2)
popz.v
push.s "obj_king_boss_slash_Step_0_gml_220_0"@8831
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_221_0"@8832
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "C"@2530
conv.s.v
pushi.e 8
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_king_boss_slash_Step_0_gml_223_0"@8833
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_224_0"@8834
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 11
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_king_boss_slash_Step_0_gml_226_0"@8835
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 6
pop.v.i [array]global.tempflag
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "obj_king_boss_slash_Step_0_gml_232_0"@8836
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s "obj_king_boss_slash_Step_0_gml_233_0"@8837
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actdesc
pushi.e 150
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.i [array]global.actcost
pushi.e 1
pop.v.i self.actcon
b [134]

:[133]
push.s "obj_king_boss_slash_Step_0_gml_241_0"@8838
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 10
pop.v.i self.actcon

:[134]
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 0
pop.v.i self.acttimer

:[135]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [137]

:[136]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [138]

:[137]
push.e 0

:[138]
bf [143]

:[139]
pushi.e -5
pushi.e 7
push.v [array]global.tempflag
pushi.e 0
cmp.i.v EQ
bf [141]

:[140]
push.s "obj_king_boss_slash_Step_0_gml_254_0"@8839
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "B"@2529
conv.s.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_king_boss_slash_Step_0_gml_256_0"@8840
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_257_0"@8841
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_258_0"@8842
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i scr_kingface(argc=2)
popz.v
push.s "obj_king_boss_slash_Step_0_gml_260_0"@8843
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_261_0"@8844
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_king_boss_slash_Step_0_gml_262_0"@8845
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 9
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_king_boss_slash_Step_0_gml_264_0"@8846
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 11
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_king_boss_slash_Step_0_gml_266_0"@8847
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pushi.e -5
pushi.e 7
pop.v.i [array]global.tempflag
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.canact
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.actactor
push.s "obj_king_boss_slash_Step_0_gml_273_0"@8848
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s "obj_king_boss_slash_Step_0_gml_274_0"@8849
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.v [array]global.actdesc
pushi.e 125
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.i [array]global.actcost
pushi.e 1
pop.v.i self.actcon
b [142]

:[141]
push.s "obj_king_boss_slash_Step_0_gml_282_0"@8850
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 20
pop.v.i self.actcon

:[142]
pushi.e 0
pop.v.i self.acttimer

:[143]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [149]

:[144]
push.v self.acttimer
pushi.e 1
add.i.v
pop.v.v self.acttimer
push.v self.acttimer
pushi.e 10
cmp.i.v GTE
bt [146]

:[145]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [147]

:[146]
push.e 1

:[147]
bf [149]

:[148]
pushi.e 0
pop.v.i self.acttimer
pushi.e 11
pop.v.i self.actcon

:[149]
push.v self.actcon
pushi.e 11
cmp.i.v EQ
bf [157]

:[150]
pushi.e 2
pushi.e -5
pushi.e 1
pop.v.i [array]global.faceaction
pushi.e 2
pushi.e -5
pushi.e 1
pop.v.i [array]global.charaction
pushi.e 5
pushi.e -5
pushi.e 1
pop.v.i [array]global.charspecial
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.chartarget
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.acting
pushi.e 71
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 77
conv.i.v
push.v 202.y
pushi.e 50
add.i.v
push.v 202.x
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.heartanim
push.v self.heartanim
conv.v.i
pushenv [152]

:[151]
pushi.e -20
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.image_speed
pushi.e 849
pop.v.i self.sprite_index

:[152]
popenv [151]
pushi.e 202
pushenv [154]

:[153]
call.i scr_oflash(argc=0)
popz.v

:[154]
popenv [153]
pushi.e 203
pushenv [156]

:[155]
call.i scr_oflash(argc=0)
popz.v

:[156]
popenv [155]
pushi.e 12
pop.v.i self.actcon

:[157]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [162]

:[158]
push.v self.acttimer
pushi.e 1
add.i.v
pop.v.v self.acttimer
push.v self.acttimer
pushi.e 20
cmp.i.v GTE
bf [162]

:[159]
pushi.e 1
pop.v.i self.actcon
pushi.e 203
pushenv [161]

:[160]
pushi.e 0
pop.v.i self.state

:[161]
popenv [160]

:[162]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [168]

:[163]
push.v self.acttimer
pushi.e 1
add.i.v
pop.v.v self.acttimer
push.v self.acttimer
pushi.e 10
cmp.i.v GTE
bt [165]

:[164]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [166]

:[165]
push.e 1

:[166]
bf [168]

:[167]
pushi.e 0
pop.v.i self.acttimer
pushi.e 21
pop.v.i self.actcon

:[168]
push.v self.actcon
pushi.e 21
cmp.i.v EQ
bf [176]

:[169]
pushi.e 2
pushi.e -5
pushi.e 2
pop.v.i [array]global.faceaction
pushi.e 2
pushi.e -5
pushi.e 2
pop.v.i [array]global.charaction
pushi.e 6
pushi.e -5
pushi.e 2
pop.v.i [array]global.charspecial
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.chartarget
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.acting
pushi.e 71
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 77
conv.i.v
push.v 202.y
pushi.e 50
add.i.v
push.v 202.x
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.heartanim
push.v self.heartanim
conv.v.i
pushenv [171]

:[170]
pushi.e -20
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.image_speed
pushi.e 849
pop.v.i self.sprite_index

:[171]
popenv [170]
pushi.e 204
pushenv [173]

:[172]
call.i scr_oflash(argc=0)
popz.v

:[173]
popenv [172]
pushi.e 202
pushenv [175]

:[174]
call.i scr_oflash(argc=0)
popz.v

:[175]
popenv [174]
pushi.e 22
pop.v.i self.actcon

:[176]
push.v self.actcon
pushi.e 22
cmp.i.v EQ
bf [181]

:[177]
push.v self.acttimer
pushi.e 1
add.i.v
pop.v.v self.acttimer
push.v self.acttimer
pushi.e 20
cmp.i.v GTE
bf [181]

:[178]
pushi.e 1
pop.v.i self.actcon
pushi.e 204
pushenv [180]

:[179]
pushi.e 0
pop.v.i self.state

:[180]
popenv [179]

:[181]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [183]

:[182]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [184]

:[183]
push.e 0

:[184]
bf [186]

:[185]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v

:[186]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [188]

:[187]
pushi.e 15
pop.v.i self.hspeed

:[188]
pushi.e 140
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[189]
push.v self.remxx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
push.v self.remyy
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v

:[end]