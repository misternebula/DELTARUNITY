.localvar 0 arguments

:[0]
push.v self.wall_destroy
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
sub.i.v
cmp.v.v LT
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 680
add.i.v
cmp.v.v GT
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
sub.i.v
cmp.v.v LT
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 520
add.i.v
cmp.v.v GT
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]