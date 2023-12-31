.localvar 0 arguments

:[0]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 95
conv.i.v
call.i snd_play(argc=1)
popz.v
pushbltn.v self.room
pushi.e 97
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v self.application_surface
call.i sprite_create_from_surface(argc=9)
pop.v.v global.screenshot
call.i snd_free_all(argc=0)
popz.v
pushi.e 135
conv.i.v
call.i room_goto(argc=1)
popz.v
b [end]

:[2]
pushi.e 0
pop.v.i global.entrance
pushi.e 1
pushi.e -5
pushi.e 9
pop.v.i [array]global.tempflag
pushi.e 96
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]