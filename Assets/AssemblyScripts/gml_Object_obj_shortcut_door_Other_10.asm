.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.msc
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
pushi.e 460
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_shortcut_door_slash_Other_10_gml_13_0"@5105
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
pushi.e 3
pop.v.i self.myinteract
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]