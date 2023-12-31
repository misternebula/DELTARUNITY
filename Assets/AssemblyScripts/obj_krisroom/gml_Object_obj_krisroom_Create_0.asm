.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 88
conv.i.v
pushi.e 40
conv.i.v
pushi.e 140
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.wallwindow
push.v self.wallwindow
conv.v.i
pushenv [2]

:[1]
call.i scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushglb.v global.plot
pushi.e 0
cmp.i.v GT
bf [6]

:[3]
call.i scr_depth(argc=0)
popz.v
push.v self.wallwindow
conv.v.i
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.image_index

:[5]
popenv [4]
pushi.e 1
pop.v.i self.image_index
b [end]

:[6]
push.s "obj_krisroom_slash_Create_0_gml_14_0"@3984
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_windowcaption(argc=1)
popz.v
pushi.e 102
conv.i.v
pushi.e 97
conv.i.v
pushi.e 151
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.t
push.v self.t
conv.v.i
pushenv [8]

:[7]
call.i scr_depth(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed

:[8]
popenv [7]
pushi.e 0
pop.v.i global.msc
pushi.e 7
pop.v.i global.typer
pushi.e 4
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_krisroom_slash_Create_0_gml_21_0"@3985
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_krisroom_slash_Create_0_gml_22_0"@3986
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i global.facing

:[end]