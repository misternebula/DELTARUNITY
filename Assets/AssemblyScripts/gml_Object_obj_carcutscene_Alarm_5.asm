.localvar 0 arguments

:[0]
pushi.e 8
pop.v.i global.typer
push.s "obj_carcutscene_slash_Alarm_5_gml_2_0"@3957
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_carcutscene_slash_Alarm_5_gml_3_0"@3958
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_carcutscene_slash_Alarm_5_gml_4_0"@3959
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_carcutscene_slash_Alarm_5_gml_5_0"@3960
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.myd
push.v self.myd
conv.v.i
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.skippable

:[2]
popenv [1]
push.v self.myd
conv.v.i
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.persistent

:[4]
popenv [3]
pushi.e 1
pop.v.i self.dhaver

:[end]