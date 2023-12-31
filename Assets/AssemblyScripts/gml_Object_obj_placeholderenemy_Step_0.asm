.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [51]

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
bf [16]

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
push.s "obj_placeholderenemy_slash_Step_0_gml_11_0"@7938
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
push.s "obj_placeholderenemy_slash_Step_0_gml_12_0"@7939
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
push.s "obj_placeholderenemy_slash_Step_0_gml_13_0"@7940
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
push.s "obj_placeholderenemy_slash_Step_0_gml_14_0"@7941
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.s "obj_placeholderenemy_slash_Step_0_gml_16_0"@7942
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
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[16]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [25]

:[20]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [25]

:[21]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [23]

:[22]
call.i scr_moveheart(argc=0)
popz.v

:[23]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [25]

:[24]
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

:[25]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [43]

:[29]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [42]

:[30]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
b [33]

:[32]
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target

:[33]
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
bf [35]

:[34]
push.s "obj_placeholderenemy_slash_Step_0_gml_63_0"@7944
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[35]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_placeholderenemy_slash_Step_0_gml_64_0"@7945
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[37]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_placeholderenemy_slash_Step_0_gml_65_0"@7946
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[39]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [41]

:[40]
push.s "obj_placeholderenemy_slash_Step_0_gml_66_0"@7947
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[41]
b [43]

:[42]
pushi.e 120
pop.v.i global.turntimer

:[43]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [51]

:[44]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [51]

:[45]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod

:[47]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [51]

:[48]
pushi.e 187
pushenv [50]

:[49]
pushi.e 1
pop.v.i self.noreturn

:[50]
popenv [49]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[51]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
pushi.e 2
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[53]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [55]

:[54]
pushi.e 50
pop.v.i global.typer
push.s "obj_placeholderenemy_slash_Step_0_gml_99_0"@7948
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

:[55]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [57]

:[56]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [58]

:[57]
push.e 0

:[58]
bf [62]

:[59]
pushi.e 15
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 187
pushenv [61]

:[60]
pushi.e 17
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[61]
popenv [60]

:[62]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [66]

:[63]
pushi.e 187
pushenv [65]

:[64]
pushi.e 0
pop.v.i self.noreturn

:[65]
popenv [64]
call.i scr_monsterdefeat(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[66]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [104]

:[67]
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
bf [69]

:[68]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 1
pop.v.i self.actcon
push.s "obj_placeholderenemy_slash_Step_0_gml_135_0"@7949
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[72]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [74]

:[73]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [79]

:[76]
pushi.e 1
pop.v.i self.actcon
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.automiss
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
push.s "obj_placeholderenemy_slash_Step_0_gml_146_0"@7950
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_placeholderenemy_slash_Step_0_gml_147_0"@7951
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
pop.v.i [array]global.automiss

:[78]
call.i scr_battletext_default(argc=0)
popz.v

:[79]
push.v self.acting
pushi.e 3
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
push.s "obj_placeholderenemy_slash_Step_0_gml_156_0"@7952
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.mercymod
pushi.e 200
add.i.v
pop.i.v [array]global.mercymod
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[84]
push.v self.acting
pushi.e 4
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
bf [89]

:[88]
push.s "obj_placeholderenemy_slash_Step_0_gml_164_0"@7953
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

:[89]
push.v self.acting
pushi.e 5
cmp.i.v EQ
bf [91]

:[90]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [92]

:[91]
push.e 0

:[92]
bf [94]

:[93]
push.s "obj_placeholderenemy_slash_Step_0_gml_172_0"@7954
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.battlecancel
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[94]
push.v self.acting
pushi.e 6
cmp.i.v EQ
bf [96]

:[95]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
push.s "obj_placeholderenemy_slash_Step_0_gml_180_0"@7955
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_placeholderenemy_slash_Step_0_gml_181_0"@7956
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
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[99]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v

:[104]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[105]
pushi.e 15
pop.v.i self.hspeed

:[end]