.localvar 0 arguments

:[0]
pushi.e 5
pop.v.i global.entrance
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushbltn.v self.room
call.i room_previous(argc=1)
call.i room_previous(argc=1)
call.i room_goto(argc=1)
popz.v

:[end]