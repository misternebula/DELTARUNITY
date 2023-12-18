.localvar 0 arguments

:[0]
pushi.e 182
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.active

:[2]
popenv [1]
pushi.e 2
pop.v.i global.entrance
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i room_goto_previous(argc=0)
popz.v

:[end]