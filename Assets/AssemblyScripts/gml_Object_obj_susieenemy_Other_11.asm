.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 0
pop.v.i self.awoke
push.v self.sleepcounter
pushi.e 1
add.i.v
pop.v.v self.sleepcounter
push.v self.sleepcounter
pushi.e 3
cmp.i.v GTE
bf [6]

:[5]
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 0
pop.v.i self.sleeping
pushi.e 609
pop.v.i self.idlesprite
push.s "obj_susieenemy_slash_Other_11_gml_9_0"@8690
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstercomment
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterstatus
pushi.e 99
pop.v.i self.sleepcounter
pushi.e 1
pop.v.i self.awoke

:[9]
push.v self.sleeping
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
call.i scr_randomtarget(argc=0)
popz.v

:[11]
pushi.e 195
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [13]

:[12]
pushi.e 195
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[13]
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
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_susieenemy_slash_Other_11_gml_19_0"@8691
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_susieenemy_slash_Other_11_gml_20_0"@8692
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_susieenemy_slash_Other_11_gml_21_0"@8693
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_susieenemy_slash_Other_11_gml_22_0"@8694
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[21]
push.v self.lancer_hurt
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e -5
pushi.e 1
push.v [array]global.monsterhp
pushi.e -5
pushi.e 1
push.v [array]global.monstermaxhp
push.d 0.5
mul.d.v
cmp.v.v LTE
b [24]

:[23]
push.e 0

:[24]
bf [28]

:[25]
pushi.e 1
pop.v.i self.lancer_hurt
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
cmp.v.v EQ
bf [27]

:[26]
push.s "obj_susieenemy_slash_Other_11_gml_28_0"@8695
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [28]

:[27]
push.s "obj_susieenemy_slash_Other_11_gml_31_0"@8696
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [39]

:[29]
push.v self.anythingcounter
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_susieenemy_slash_Other_11_gml_35_0"@8697
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
push.v self.anythingcounter
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_susieenemy_slash_Other_11_gml_36_0"@8698
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
push.v self.anythingcounter
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_susieenemy_slash_Other_11_gml_37_0"@8699
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
push.v self.anythingcounter
pushi.e 4
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_susieenemy_slash_Other_11_gml_38_0"@8700
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
push.v self.anythingcounter
pushi.e 5
cmp.i.v GTE
bf [39]

:[38]
push.s "obj_susieenemy_slash_Other_11_gml_39_0"@8701
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
push.v self.lancer_act
pushi.e 3
cmp.i.v EQ
bf [48]

:[40]
push.v self.anythingxcounter
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_susieenemy_slash_Other_11_gml_43_0"@8702
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
push.v self.anythingxcounter
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_susieenemy_slash_Other_11_gml_44_0"@8703
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
push.v self.anythingxcounter
pushi.e 3
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_susieenemy_slash_Other_11_gml_45_0"@8704
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.anythingxcounter
pushi.e 4
cmp.i.v GTE
bf [48]

:[47]
push.s "obj_susieenemy_slash_Other_11_gml_46_0"@8705
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_susieenemy_slash_Other_11_gml_48_0"@8706
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.awoke
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_susieenemy_slash_Other_11_gml_49_0"@8707
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
pushi.e 0
pop.v.i self.awoke
pushi.e 0
pop.v.i self.lancer_act
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

:[end]