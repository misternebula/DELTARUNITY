.localvar 0 arguments

:[0]
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_pan(argc=3)
popz.v

:[end]