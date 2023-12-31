.localvar 0 arguments

:[0]
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 100
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 100
add.i.v
call.i instance_create(argc=3)
popz.v

:[end]