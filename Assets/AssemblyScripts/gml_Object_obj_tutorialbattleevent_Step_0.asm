.localvar 0 arguments

:[0]
push.v self.con
pushi.e 400
cmp.i.v LT
bf [end]

:[1]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
push.v self.xx
pushi.e 13
sub.i.v
cmp.v.v GTE
bf [5]

:[3]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
push.v self.xx
pushi.e 20
add.i.v
cmp.v.v LTE
bf [5]

:[4]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.xx
pushi.e 10
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 40
pop.v.i self.con
pushi.e 135
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[8]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [10]

:[9]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 3
pop.v.i global.encounterno
pushi.e 3
pop.v.i global.specialbattle
pushi.e 1
pushi.e -5
pushi.e 9
pop.v.i [array]global.flag
push.s "battle.ogg"@4970
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.batmusic
pushi.e 164
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 21
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[13]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [18]

:[14]
pushi.e 187
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[15]
push.v self.dummy
conv.v.i
pushenv [17]

:[16]
pushi.e 0
pop.v.i self.visible

:[17]
popenv [16]
pushi.e 23
pop.v.i self.con

:[18]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [21]

:[19]
pushi.e 302
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [21]

:[20]
push.d 23.5
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.con
pushi.e 24
cmp.i.v GTE
bf [23]

:[22]
push.v self.con
pushi.e 28
cmp.i.v LTE
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 1
pop.v.i global.interact

:[26]
push.v self.con
push.d 24.5
cmp.d.v EQ
bf [28]

:[27]
pushi.e 24
pop.v.i self.con
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [30]

:[29]
pushi.e 26
pop.v.i self.con
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [34]

:[31]
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_tutorialbattleevent_slash_Step_0_gml_87_0"@5072
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_tutorialbattleevent_slash_Step_0_gml_88_0"@5073
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_tutorialbattleevent_slash_Step_0_gml_89_0"@5074
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_tutorialbattleevent_slash_Step_0_gml_90_0"@5075
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e 6
conv.i.v
call.i scr_get_input_name(argc=1)
add.v.v
push.s "obj_tutorialbattleevent_slash_Step_0_gml_90_1"@5076
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_tutorialbattleevent_slash_Step_0_gml_92_0"@5077
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 205
push.v [array]global.flag
pushi.e 4
cmp.i.v GTE
bf [33]

:[32]
push.s "obj_tutorialbattleevent_slash_Step_0_gml_95_0"@5078
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_tutorialbattleevent_slash_Step_0_gml_96_0"@5079
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[33]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 4
conv.i.v
call.i scr_itemget(argc=1)
popz.v
pushi.e 28
pop.v.i self.con

:[34]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [36]

:[35]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [41]

:[38]
pushi.e 0
pop.v.i global.interact
pushglb.v global.plot
pushi.e 31
cmp.i.v LT
bf [40]

:[39]
pushi.e 31
pop.v.i global.plot

:[40]
pushi.e 29
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[41]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [43]

:[42]
call.i d_ex(argc=0)
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [end]

:[45]
pushi.e 4
conv.i.v
call.i scr_itemget(argc=1)
popz.v
pushi.e 41
pop.v.i self.con
pushglb.v global.plot
pushi.e 31
cmp.i.v LT
bf [47]

:[46]
pushi.e 31
pop.v.i global.plot

:[47]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]