.localvar 0 arguments

:[0]
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "scr_talkroom_slash_scr_talkroom_gml_4_0"@1864
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.talkdg
push.v self.atalk
pushi.e 1
add.i.v
pop.v.v self.atalk

:[end]