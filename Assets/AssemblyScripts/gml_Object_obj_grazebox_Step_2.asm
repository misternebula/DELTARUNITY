.localvar 0 arguments

:[0]
pushi.e 305
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 305.x
pushi.e 10
add.i.v
pop.v.v self.x
push.v 305.y
pushi.e 10
add.i.v
pop.v.v self.y
b [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]