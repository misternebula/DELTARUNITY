.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 180
add.i.v
push.v self.offx
sub.v.v
pop.v.v self.x
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 100
add.i.v
pop.v.v self.y

:[end]