.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [63]

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
bf [20]

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
push.s "obj_diamondenemy_slash_Step_0_gml_11_0"@8614
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
push.s "obj_diamondenemy_slash_Step_0_gml_12_0"@8615
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
push.s "obj_diamondenemy_slash_Step_0_gml_13_0"@8616
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
push.s "obj_diamondenemy_slash_Step_0_gml_14_0"@8617
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_diamondenemy_slash_Step_0_gml_24_0"@8618
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_diamondenemy_slash_Step_0_gml_28_0"@8619
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
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

:[20]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [29]

:[24]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [29]

:[25]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [27]

:[26]
call.i scr_moveheart(argc=0)
popz.v

:[27]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [29]

:[28]
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

:[29]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [55]

:[33]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [54]

:[34]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 0
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
b [37]

:[36]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 1
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

:[37]
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
bf [39]

:[38]
push.s "obj_diamondenemy_slash_Step_0_gml_77_0"@8620
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[39]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
push.s "obj_diamondenemy_slash_Step_0_gml_78_0"@8621
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[41]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_diamondenemy_slash_Step_0_gml_79_0"@8622
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[43]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_diamondenemy_slash_Step_0_gml_80_0"@8623
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[45]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_diamondenemy_slash_Step_0_gml_81_0"@8624
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[47]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_diamondenemy_slash_Step_0_gml_82_0"@8625
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[49]
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
bf [51]

:[50]
push.s "obj_diamondenemy_slash_Step_0_gml_83_0"@8626
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[51]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymax
cmp.v.v GTE
bf [53]

:[52]
push.s "obj_diamondenemy_slash_Step_0_gml_84_0"@8627
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
b [55]

:[54]
pushi.e 120
pop.v.i global.turntimer

:[55]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [63]

:[56]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [63]

:[57]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod

:[59]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [63]

:[60]
pushi.e 187
pushenv [62]

:[61]
pushi.e 1
pop.v.i self.noreturn

:[62]
popenv [61]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[63]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
pushi.e 2
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[65]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [67]

:[66]
pushi.e 50
pop.v.i global.typer
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
push.s "obj_diamondenemy_slash_Step_0_gml_118_0"@8628
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[67]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [69]

:[68]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [70]

:[69]
push.e 0

:[70]
bf [74]

:[71]
pushi.e 15
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 187
pushenv [73]

:[72]
pushi.e 17
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[73]
popenv [72]

:[74]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [78]

:[75]
pushi.e 187
pushenv [77]

:[76]
pushi.e 0
pop.v.i self.noreturn

:[77]
popenv [76]
call.i scr_monsterdefeat(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[78]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [134]

:[79]
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
bf [81]

:[80]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
pushi.e 1
pop.v.i self.actcon
push.s "obj_diamondenemy_slash_Step_0_gml_154_0"@8629
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[84]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [86]

:[85]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [91]

:[88]
push.v self.nexttry
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
pushi.e 1
pushi.e -5
pushi.e 208
pop.v.i [array]global.flag

:[90]
push.s "obj_diamondenemy_slash_Step_0_gml_163_0"@8630
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 100
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[91]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [93]

:[92]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [99]

:[95]
push.s "obj_diamondenemy_slash_Step_0_gml_173_0"@8631
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_diamondenemy_slash_Step_0_gml_174_0"@8632
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.i

:[96]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [98]

:[97]
push.s "obj_diamondenemy_slash_Step_0_gml_177_0"@8633
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
pop.v.i [array]global.monsterstatus
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [96]

:[98]
pushi.e 50
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[99]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [101]

:[100]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
bf [109]

:[103]
pushi.e 1
pop.v.i self.actcon
push.s "obj_diamondenemy_slash_Step_0_gml_188_0"@8634
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [105]

:[104]
push.s "obj_diamondenemy_slash_Step_0_gml_190_0"@8635
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[105]
pushi.e 0
pop.v.i self.i

:[106]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [108]

:[107]
push.s "obj_diamondenemy_slash_Step_0_gml_193_0"@8636
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
b [106]

:[108]
call.i scr_battletext_default(argc=0)
popz.v

:[109]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [111]

:[110]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v

:[114]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [116]

:[115]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushi.e 50
pop.v.i global.typer
push.s "obj_diamondenemy_slash_Step_0_gml_215_0"@8637
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 11
pop.v.i self.actcon

:[119]
push.v self.actcon
pushi.e 11
cmp.i.v EQ
bf [121]

:[120]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
push.s "obj_diamondenemy_slash_Step_0_gml_225_0"@8638
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext(argc=0)
popz.v
pushi.e 12
pop.v.i self.actcon

:[124]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [126]

:[125]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
pushi.e 50
pop.v.i global.typer
push.s "obj_diamondenemy_slash_Step_0_gml_233_0"@8639
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_diamondenemy_slash_Step_0_gml_234_0"@8640
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 14
pop.v.i self.actcon

:[129]
push.v self.actcon
pushi.e 14
cmp.i.v EQ
bf [131]

:[130]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [132]

:[131]
push.e 0

:[132]
bf [134]

:[133]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.s "obj_diamondenemy_slash_Step_0_gml_244_0"@8641
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext(argc=0)
popz.v
pushi.e 1
pop.v.i self.nexttry
pushi.e 1
pop.v.i self.actcon

:[134]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[135]
pushi.e 15
pop.v.i self.hspeed

:[end]