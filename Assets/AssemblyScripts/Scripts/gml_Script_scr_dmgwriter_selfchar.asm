.localvar 0 arguments

:[0]
pushi.e 304
conv.i.v
push.v self.y
push.v self.myheight
add.v.v
pushi.e 24
sub.i.v
push.v self.tu
pushi.e 20
mul.i.v
sub.v.v
push.v self.x
call.i instance_create(argc=3)
ret.v

:[end]