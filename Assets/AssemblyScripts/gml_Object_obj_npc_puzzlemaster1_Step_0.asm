.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [7]

:[1]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 323
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[3]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 327
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[5]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 328
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed

:[7]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [9]

:[8]
call.i d_ex(argc=0)
conv.v.b
not.b
b [10]

:[9]
push.e 0

:[10]
bf [14]

:[11]
push.v self.pwall
conv.v.i
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
pushi.e -8
pop.v.i self.hspeed
pushi.e 6
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 8
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 215
pop.v.i [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[16]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [24]

:[20]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [24]

:[21]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 326
pushenv [23]

:[22]
pushi.e 5
pop.v.i self.onebuffer

:[23]
popenv [22]

:[24]
push.v self.lecturecon
pushi.e 0
cmp.i.v EQ
bf [31]

:[25]
pushi.e 326
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[26]
push.v 326.y
pushi.e 270
cmp.i.v LTE
bf [28]

:[27]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.lecturecon
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_60_0"@5108
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_61_0"@5109
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_62_0"@5110
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_64_0"@5111
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_66_0"@5112
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_67_0"@5113
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_68_0"@5114
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_70_0"@5115
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 11
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_72_0"@5116
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_73_0"@5117
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
call.i d_make(argc=0)
popz.v

:[31]
push.v self.lecturecon
pushi.e 1
cmp.i.v EQ
bf [end]

:[32]
call.i d_ex(argc=0)
conv.v.b
not.b
bf [end]

:[33]
pushi.e 10
pop.v.i self.lecturecon
pushi.e 0
pop.v.i global.interact
pushglb.v global.plot
pushi.e 42
cmp.i.v LT
bf [end]

:[34]
pushi.e 42
pop.v.i global.plot

:[end]