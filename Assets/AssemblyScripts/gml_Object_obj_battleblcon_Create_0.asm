.localvar 0 arguments

:[0]
pushi.e 6
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 5
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mywriter
push.v self.depth
pushi.e 5
sub.i.v
push.v self.mywriter
conv.v.i
pop.v.v [stacktop]self.depth

:[end]