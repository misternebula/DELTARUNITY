.localvar 0 arguments

:[0]
pushi.e 305
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 6
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [end]

:[2]
push.v self.speed
neg.v
pop.v.v self.speed

:[end]