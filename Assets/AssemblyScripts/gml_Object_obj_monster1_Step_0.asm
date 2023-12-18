.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [46]

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
bf [19]

:[5]
pushi.e 1
pop.v.i self.abletotarget
pushi.e -5
pushi.e 0
push.v [array]global.charcantarget
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
pushi.e -5
pushi.e 1
push.v [array]global.charcantarget
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e -5
pushi.e 2
push.v [array]global.charcantarget
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 0
pop.v.i self.abletotarget

:[11]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.mytarget
push.v self.abletotarget
pushi.e 1
cmp.i.v EQ
bf [15]

:[12]
pushi.e -5
push.v self.mytarget
conv.v.i
push.v [array]global.charcantarget
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.mytarget
b [12]

:[14]
b [16]

:[15]
pushi.e 3
pop.v.i self.target

:[16]
pushi.e 1
pushi.e -5
push.v self.mytarget
conv.v.i
pop.v.i [array]global.targeted
pushi.e 195
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 7
pop.v.i global.typer
push.s "obj_monster1_slash_Step_0_gml_25_0"@7416
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymax
cmp.v.v GTE
bf [18]

:[17]
push.s "obj_monster1_slash_Step_0_gml_26_0"@7417
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
pushi.e 6
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 60
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.mywriter
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[19]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [32]

:[23]
call.i button1_p(argc=0)
conv.v.b
bf [25]

:[24]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.v self.talkmax
pop.v.v self.talktimer

:[28]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [32]

:[29]
pushi.e 6
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
pushi.e 2
pop.v.i global.mnfight

:[32]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [46]

:[36]
push.v self.obj_simplecontroller
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.simp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.simp
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.simp
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 1
pop.v.i self.attacked
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [38]

:[37]
push.s "obj_monster1_slash_Step_0_gml_53_0"@7421
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[38]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.s "obj_monster1_slash_Step_0_gml_54_0"@7422
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[40]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_monster1_slash_Step_0_gml_55_0"@7423
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[42]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_monster1_slash_Step_0_gml_56_0"@7424
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[44]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_monster1_slash_Step_0_gml_57_0"@7425
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[46]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [75]

:[47]
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
bf [49]

:[48]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [57]

:[51]
pushi.e 1
pop.v.i self.actcon
push.s "obj_monster1_slash_Step_0_gml_75_0"@7426
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.battletyper
pop.v.v global.typer
pushi.e 6
conv.i.v
push.v self.yy
pushi.e 376
add.i.v
push.v self.xx
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.battlewriter
pushglb.v global.fc
pushi.e 0
cmp.i.v NEQ
bf [53]

:[52]
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 26
add.i.v
call.i instance_create(argc=3)
pop.v.v self.myface

:[53]
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.mercymod
pushi.e 120
add.i.v
pop.i.v [array]global.mercymod

:[55]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymax
cmp.v.v GTE
bf [57]

:[56]
push.s "obj_monster1_slash_Step_0_gml_82_0"@7427
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [70]

:[58]
push.v self.acttimer
pushi.e 0
cmp.i.v EQ
bf [61]

:[59]
push.s "obj_monster1_slash_Step_0_gml_91_0"@7428
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.battletyper
pop.v.v global.typer
pushi.e 6
conv.i.v
push.v self.yy
pushi.e 376
add.i.v
push.v self.xx
pushi.e 130
add.i.v
call.i instance_create(argc=3)
pop.v.v self.battlewriter
pushglb.v global.fc
pushi.e 0
cmp.i.v NEQ
bf [61]

:[60]
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 26
add.i.v
call.i instance_create(argc=3)
pop.v.v self.myface

:[61]
push.v self.acttimer
pushi.e 20
cmp.i.v EQ
bf [67]

:[62]
push.v self.myself
pushi.e -5
pushi.e 0
pop.v.v [array]global.chartarget
push.v self.myself
pushi.e -5
pushi.e 1
pop.v.v [array]global.chartarget
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.charspecial
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.charspecial
pushi.e -5
pushi.e 0
push.v [array]global.charinstance
conv.v.i
pushenv [64]

:[63]
pushi.e 2
pop.v.i self.state

:[64]
popenv [63]
pushi.e -5
pushi.e 1
push.v [array]global.charinstance
conv.v.i
pushenv [66]

:[65]
pushi.e 2
pop.v.i self.state

:[66]
popenv [65]

:[67]
push.v self.acttimer
pushi.e 40
cmp.i.v EQ
bf [69]

:[68]
pushi.e 1
pop.v.i self.actcon

:[69]
push.v self.acttimer
pushi.e 1
add.i.v
pop.v.v self.acttimer

:[70]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v

:[75]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 800
add.i.v
cmp.v.v GT
bf [77]

:[76]
pushglb.v global.myfight
pushi.e 3
cmp.i.v NEQ
b [78]

:[77]
push.e 0

:[78]
bf [end]

:[79]
call.i instance_destroy(argc=0)
popz.v

:[end]