.localvar 0 arguments

:[0]
push.v self.firstskip
pushi.e 1
cmp.i.v EQ
bf [10]

:[1]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.acting
pushi.e 1
pop.v.i self.acting
pushi.e 6
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 2
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 4
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]
pushi.e -5
pushi.e 0
push.v [array]global.charaction
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i global.attacking

:[9]
pushi.e 3
pop.v.i global.charturn
pushi.e 3
pop.v.i global.myfight

:[10]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [57]

:[11]
pushi.e 4
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.acting
pushi.e 1
pop.v.i self.acting
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
pushi.e 0
pop.v.i self.actcon
call.i scr_randomtarget(argc=0)
popz.v
pushi.e 195
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [17]

:[16]
pushi.e 195
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[17]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[18]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [30]

:[22]
pushi.e 0
pop.v.i self.rtimer
pushi.e -1
conv.i.v
call.i scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [30]

:[23]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [25]

:[24]
push.v self.hmake
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
call.i scr_moveheart(argc=0)
popz.v
pushi.e 1
pop.v.i self.hmake

:[28]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [30]

:[29]
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

:[30]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [54]

:[34]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [53]

:[35]
pushi.e 140
pop.v.i global.turntimer
push.v self.turns
pushi.e 0
cmp.i.v EQ
bt [37]

:[36]
push.v self.turns
pushi.e 2
cmp.i.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [42]

:[39]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 20
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
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 70
cmp.i.v LTE
bf [41]

:[40]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 3
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage

:[41]
pushi.e 180
pop.v.i global.turntimer

:[42]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [46]

:[43]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 21
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
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 70
cmp.i.v LTE
bf [45]

:[44]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 3
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage

:[45]
pushi.e 180
pop.v.i global.turntimer

:[46]
push.v self.turns
pushi.e 3
cmp.i.v GTE
bf [52]

:[47]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
push.v self.turns
pushi.e 2
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.difficulty
push.v self.turns
pushi.e 6
cmp.i.v EQ
bf [49]

:[48]
pushi.e 30
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.difficulty

:[49]
push.v self.turns
pushi.e 7
cmp.i.v EQ
bf [51]

:[50]
pushi.e 90
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.difficulty

:[51]
pushi.e 24
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

:[52]
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
push.s "obj_lancerboss2_slash_Step_0_gml_88_0"@8599
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [54]

:[53]
pushi.e 150
pop.v.i global.turntimer

:[54]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [57]

:[55]
pushglb.v global.turntimer
pushi.e 10
cmp.i.v LTE
bf [57]

:[56]
pushi.e 0
pop.v.i self.hmake

:[57]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[58]
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
bf [60]

:[59]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [85]

:[62]
pushi.e 0
pop.v.i self.firstskip
pushi.e 53
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
pushi.e 1
pop.v.i self.actcon
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
push.s "obj_lancerboss2_slash_Step_0_gml_120_0"@8600
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
push.s "obj_lancerboss2_slash_Step_0_gml_121_0"@8601
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [68]

:[67]
push.s "obj_lancerboss2_slash_Step_0_gml_122_0"@8602
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerboss2_slash_Step_0_gml_122_1"@8603
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[68]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bf [70]

:[69]
push.s "obj_lancerboss2_slash_Step_0_gml_123_0"@8604
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[70]
push.v self.turns
pushi.e 4
cmp.i.v EQ
bf [72]

:[71]
push.s "obj_lancerboss2_slash_Step_0_gml_124_0"@8605
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[72]
push.v self.turns
pushi.e 5
cmp.i.v EQ
bf [76]

:[73]
push.s "obj_lancerboss2_slash_Step_0_gml_127_0"@8606
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 203
pushenv [75]

:[74]
pushi.e 471
pop.v.i self.idlesprite
pushi.e 475
pop.v.i self.attacksprite

:[75]
popenv [74]

:[76]
push.v self.turns
pushi.e 6
cmp.i.v EQ
bf [80]

:[77]
push.s "obj_lancerboss2_slash_Step_0_gml_135_0"@8607
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerboss2_slash_Step_0_gml_136_0"@8608
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerboss2_slash_Step_0_gml_137_0"@8609
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 203
pushenv [79]

:[78]
pushi.e 463
pop.v.i self.idlesprite
pushi.e 474
pop.v.i self.attacksprite

:[79]
popenv [78]

:[80]
push.v self.turns
pushi.e 7
cmp.i.v EQ
bf [82]

:[81]
pushi.e 54
pop.v.i global.typer
push.s "obj_lancerboss2_slash_Step_0_gml_145_0"@8610
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerboss2_slash_Step_0_gml_145_1"@8611
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerboss2_slash_Step_0_gml_145_2"@8612
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.actcon

:[82]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterdf
pushi.e 5
sub.i.v
pop.i.v [array]global.monsterdf
pushi.e 7
conv.i.v
push.v 203.y
push.v 203.x
pushi.e 100
add.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 6
pushenv [84]

:[83]
pushi.e 0
pop.v.i self.skippable

:[84]
popenv [83]

:[85]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v

:[90]
push.v self.actcon
pushi.e 2
cmp.i.v EQ
bf [92]

:[91]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [93]

:[92]
push.e 0

:[93]
bf [100]

:[94]
call.i snd_free_all(argc=0)
popz.v
pushi.e 99
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 909
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
sub.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.black
push.v self.black
conv.v.i
pushenv [96]

:[95]
pushi.e 0
pop.v.i self.image_blend
pushi.e -10000
pop.v.i self.depth
pushi.e 900
pop.v.i self.image_xscale
pushi.e 900
pop.v.i self.image_yscale

:[96]
popenv [95]
pushi.e 3
pop.v.i self.actcon
pushi.e 0
pop.v.i self.acttimer
pushi.e 35
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [100]

:[97]
push.v self.black
pop.v.v 35.black
pushi.e 35
pushenv [99]

:[98]
pushi.e 52
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[99]
popenv [98]

:[100]
push.v self.actcon
pushi.e 3
cmp.i.v EQ
bf [end]

:[end]