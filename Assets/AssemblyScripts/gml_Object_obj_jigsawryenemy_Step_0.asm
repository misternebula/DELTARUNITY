.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [106]

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
bf [49]

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
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_jigsawryenemy_slash_Step_0_gml_11_0"@8101
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_jigsawryenemy_slash_Step_0_gml_12_0"@8102
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_jigsawryenemy_slash_Step_0_gml_13_0"@8103
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_jigsawryenemy_slash_Step_0_gml_14_0"@8104
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e 100
cmp.i.v GTE
bf [26]

:[16]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bt [18]

:[17]
push.v self.rr
pushi.e 1
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
push.s "obj_jigsawryenemy_slash_Step_0_gml_18_0"@8105
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[21]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bt [23]

:[22]
push.v self.rr
pushi.e 3
cmp.i.v EQ
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
push.s "obj_jigsawryenemy_slash_Step_0_gml_19_0"@8106
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
push.v self.traitorp
pushi.e 1
cmp.i.v EQ
bf [37]

:[27]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bt [29]

:[28]
push.v self.rr
pushi.e 1
cmp.i.v EQ
b [30]

:[29]
push.e 1

:[30]
bf [32]

:[31]
push.s "obj_jigsawryenemy_slash_Step_0_gml_24_0"@8107
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bt [34]

:[33]
push.v self.rr
pushi.e 3
cmp.i.v EQ
b [35]

:[34]
push.e 1

:[35]
bf [37]

:[36]
push.s "obj_jigsawryenemy_slash_Step_0_gml_25_0"@8108
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
push.v self.traitorp
pushi.e 2
cmp.i.v EQ
bf [48]

:[38]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bt [40]

:[39]
push.v self.rr
pushi.e 1
cmp.i.v EQ
b [41]

:[40]
push.e 1

:[41]
bf [43]

:[42]
push.s "obj_jigsawryenemy_slash_Step_0_gml_29_0"@8109
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[43]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bt [45]

:[44]
push.v self.rr
pushi.e 3
cmp.i.v EQ
b [46]

:[45]
push.e 1

:[46]
bf [48]

:[47]
push.s "obj_jigsawryenemy_slash_Step_0_gml_30_0"@8110
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
pushi.e 0
pop.v.i self.traitorp
pushi.e 3
conv.i.v
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

:[49]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [58]

:[53]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [58]

:[54]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [56]

:[55]
call.i scr_moveheart(argc=0)
popz.v

:[56]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [58]

:[57]
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

:[58]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [60]

:[59]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [98]

:[62]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [97]

:[63]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [80]

:[64]
pushi.e 0
pop.v.i self.tellme
pushi.e 233
pushenv [70]

:[65]
push.v self.type
pushi.e 80
cmp.i.v GTE
bf [67]

:[66]
push.v self.type
pushi.e 84
cmp.i.v LTE
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 1
pop.v.i 252.tellme

:[70]
popenv [65]
push.v self.tellme
pushi.e 0
cmp.i.v EQ
bf [80]

:[71]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 4
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e 2
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.timepoints
pushi.e 0
pop.v.i self.metotal
pushi.e 0
pop.v.i self.i

:[72]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [79]

:[73]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monstertype
pushi.e 15
cmp.i.v EQ
bf [75]

:[74]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
push.v self.metotal
pushi.e 1
add.i.v
pop.v.v self.metotal

:[78]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [72]

:[79]
pushi.e 80
push.v self.metotal
add.v.i
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.type
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

:[80]
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
call.i choose(argc=5)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_jigsawryenemy_slash_Step_0_gml_89_0"@8113
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[82]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_jigsawryenemy_slash_Step_0_gml_90_0"@8114
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[84]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_jigsawryenemy_slash_Step_0_gml_91_0"@8115
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[86]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_jigsawryenemy_slash_Step_0_gml_92_0"@8116
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[88]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_jigsawryenemy_slash_Step_0_gml_93_0"@8117
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[90]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_jigsawryenemy_slash_Step_0_gml_94_0"@8118
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[92]
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
bf [94]

:[93]
push.s "obj_jigsawryenemy_slash_Step_0_gml_95_0"@8119
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[94]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymax
cmp.v.v GTE
bf [96]

:[95]
push.s "obj_jigsawryenemy_slash_Step_0_gml_96_0"@8120
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[96]
b [98]

:[97]
pushi.e 120
pop.v.i global.turntimer

:[98]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [106]

:[99]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [106]

:[100]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod

:[102]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [106]

:[103]
pushi.e 187
pushenv [105]

:[104]
pushi.e 1
pop.v.i self.noreturn

:[105]
popenv [104]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[106]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[107]
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
pushi.e 1
pop.v.i self.actcon
push.s "obj_jigsawryenemy_slash_Step_0_gml_129_0"@8121
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[112]
push.v self.acting
pushi.e 2
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
push.s "obj_jigsawryenemy_slash_Step_0_gml_136_0"@8122
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 3
pop.v.i self.actcon

:[117]
push.v self.actcon
pushi.e 3
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
bf [132]

:[121]
pushi.e 252
pushenv [123]

:[122]
pushi.e 100
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v

:[123]
popenv [122]
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
pushi.e 50
pop.v.i global.typer
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [125]

:[124]
push.s "obj_jigsawryenemy_slash_Step_0_gml_152_0"@8123
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[125]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [127]

:[126]
push.s "obj_jigsawryenemy_slash_Step_0_gml_153_0"@8124
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[127]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [129]

:[128]
push.s "obj_jigsawryenemy_slash_Step_0_gml_154_0"@8125
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[129]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [131]

:[130]
push.s "obj_jigsawryenemy_slash_Step_0_gml_155_0"@8126
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[131]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.actcon

:[132]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [134]

:[133]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [135]

:[134]
push.e 0

:[135]
bf [142]

:[136]
pushi.e 1
pop.v.i self.actcon
push.s "obj_jigsawryenemy_slash_Step_0_gml_164_0"@8127
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [138]

:[137]
push.s "obj_jigsawryenemy_slash_Step_0_gml_166_0"@8128
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[138]
pushi.e 0
pop.v.i self.i

:[139]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [141]

:[140]
push.s "obj_jigsawryenemy_slash_Step_0_gml_169_0"@8129
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
b [139]

:[141]
call.i scr_battletext_default(argc=0)
popz.v

:[142]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [145]

:[144]
push.e 0

:[145]
bf [end]

:[146]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v

:[end]