.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
pushbltn.v self.room
pushi.e 45
cmp.i.v EQ
bf [3]

:[1]
pushi.e 1
pop.v.i global.fe
push.s "obj_npc_susiedark_slash_Other_10_gml_13_0"@5123
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_susiedark_slash_Other_10_gml_14_0"@5124
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_susiedark_slash_Other_10_gml_15_0"@5125
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_susiedark_slash_Other_10_gml_16_0"@5126
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
push.s "obj_npc_susiedark_slash_Other_10_gml_20_0"@5127
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_susiedark_slash_Other_10_gml_21_0"@5128
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_susiedark_slash_Other_10_gml_22_0"@5129
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[3]
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]