.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.entrance
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i room_goto_next(argc=0)
popz.v

:[end]