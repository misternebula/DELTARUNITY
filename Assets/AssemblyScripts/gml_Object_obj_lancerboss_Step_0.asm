.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [60]

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
bf [24]

:[5]
call.i scr_randomtarget(argc=0)
popz.v
pushi.e 4
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
push.v self.mytarget
conv.v.i
pop.v.i [array]global.targeted
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
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_lancerboss_slash_Step_0_gml_17_0"@8562
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_lancerboss_slash_Step_0_gml_18_0"@8563
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_lancerboss_slash_Step_0_gml_19_0"@8564
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
push.v self.turns
pushi.e 3
cmp.i.v GTE
bf [15]

:[14]
push.s "obj_lancerboss_slash_Step_0_gml_20_0"@8565
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.compliment_just
pushi.e 1
cmp.i.v EQ
bf [23]

:[16]
push.v self.compliment
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_lancerboss_slash_Step_0_gml_26_0"@8566
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
push.v self.compliment
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_lancerboss_slash_Step_0_gml_30_0"@8567
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.compliment
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_lancerboss_slash_Step_0_gml_34_0"@8568
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
pushi.e 0
pop.v.i self.compliment_just

:[23]
pushi.e 3
conv.i.v
push.v self.y
pushi.e 65
sub.i.v
push.v self.x
pushi.e 235
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[24]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [41]

:[28]
call.i button1_p(argc=0)
conv.v.b
bf [30]

:[29]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
push.v self.talkmax
pop.v.v self.talktimer

:[33]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [41]

:[34]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [36]

:[35]
call.i scr_moveheart(argc=0)
popz.v

:[36]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [38]

:[37]
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

:[38]
pushi.e 6
pushenv [40]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[40]
popenv [39]
pushi.e 2
pop.v.i global.mnfight

:[41]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [43]

:[42]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [60]

:[45]
push.v self.attacks
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
pushi.e 201
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bike
pushi.e 0
pop.v.i self.visible
pushi.e 1
push.v self.bike
conv.v.i
pop.v.i [stacktop]self.racecon
push.v self.mytarget
push.v self.bike
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.bike
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 1
pop.v.i self.attacks
b [48]

:[47]
pushi.e 201
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bike
pushi.e 0
pop.v.i self.visible
pushi.e 1
push.v self.bike
conv.v.i
pop.v.i [stacktop]self.lcon
push.v self.mytarget
push.v self.bike
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.bike
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 0
pop.v.i self.attacks

:[48]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 999
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.attacked
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rr
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_lancerboss_slash_Step_0_gml_90_0"@8570
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[50]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_lancerboss_slash_Step_0_gml_91_0"@8571
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[52]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_lancerboss_slash_Step_0_gml_92_0"@8572
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[54]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_lancerboss_slash_Step_0_gml_93_0"@8573
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[56]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_lancerboss_slash_Step_0_gml_94_0"@8574
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[58]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
pushi.e 47
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
push.s "obj_lancerboss_slash_Step_0_gml_100_0"@8575
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[60]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [92]

:[61]
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
bf [63]

:[62]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 1
pop.v.i self.actcon
push.s "obj_lancerboss_slash_Step_0_gml_118_0"@8576
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerboss_slash_Step_0_gml_119_0"@8577
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[66]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [68]

:[67]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [74]

:[70]
pushi.e 1
pop.v.i self.actcon
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.automiss
pushi.e 0
cmp.i.v EQ
bf [72]

:[71]
push.s "obj_lancerboss_slash_Step_0_gml_130_0"@8578
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.automiss
b [73]

:[72]
push.s "obj_lancerboss_slash_Step_0_gml_135_0"@8579
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[73]
call.i scr_battletext_default(argc=0)
popz.v

:[74]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [76]

:[75]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [87]

:[78]
push.v self.compliment
pushi.e 3
cmp.i.v GTE
bf [80]

:[79]
push.s "obj_lancerboss_slash_Step_0_gml_145_0"@8580
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[80]
push.v self.compliment
pushi.e 2
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_lancerboss_slash_Step_0_gml_150_0"@8581
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerboss_slash_Step_0_gml_151_0"@8582
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 20
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v

:[82]
push.v self.compliment
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_lancerboss_slash_Step_0_gml_157_0"@8583
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerboss_slash_Step_0_gml_158_0"@8584
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 20
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterat
pushi.e 1
add.i.v
pop.i.v [array]global.monsterat

:[84]
push.v self.compliment
pushi.e 0
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_lancerboss_slash_Step_0_gml_164_0"@8585
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerboss_slash_Step_0_gml_165_0"@8586
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 20
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterat
pushi.e 1
sub.i.v
pop.i.v [array]global.monsterat

:[86]
pushi.e 1
pop.v.i self.compliment_just
push.v self.compliment
pushi.e 1
add.i.v
pop.v.v self.compliment
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[87]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v

:[92]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [94]

:[93]
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.con

:[94]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [96]

:[95]
pushi.e 50
pop.v.i global.typer
push.s "obj_lancerboss_slash_Step_0_gml_196_0"@8587
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerboss_slash_Step_0_gml_197_0"@8588
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerboss_slash_Step_0_gml_198_0"@8589
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lancerboss_slash_Step_0_gml_199_0"@8590
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lancerboss_slash_Step_0_gml_200_0"@8591
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lancerboss_slash_Step_0_gml_201_0"@8592
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lancerboss_slash_Step_0_gml_202_0"@8593
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 4
pop.v.i self.con
pushi.e 3
conv.i.v
push.v self.y
pushi.e 65
sub.i.v
push.v self.x
pushi.e 235
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v

:[96]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [98]

:[97]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [99]

:[98]
push.e 0

:[99]
bf [103]

:[100]
pushi.e 20
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 187
pushenv [102]

:[101]
pushi.e 0
pop.v.i self.noreturn
pushi.e 17
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[102]
popenv [101]

:[103]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [end]

:[104]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterexp
pushi.e 0
sub.i.v
pop.i.v [array]global.monsterexp
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monstergold
pushi.e 10
add.i.v
pop.i.v [array]global.monstergold
pushglb.v global.plot
pushi.e 22
cmp.i.v LT
bf [106]

:[105]
pushi.e 22
pop.v.i global.plot

:[106]
call.i scr_monsterdefeat(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[end]