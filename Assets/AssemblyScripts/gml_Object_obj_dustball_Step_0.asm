.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
pushi.e 1
push.v self.timer
push.d 1.5
mul.d.v
pushi.e 55
conv.i.d
div.d.v
add.v.i
pop.v.v self.image_index
push.v self.timer
pushi.e 55
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.x
push.v self.timer
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.4
mul.d.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.timer
push.d 3.5
div.d.v
call.i cos(argc=1)
add.v.v
pop.v.v self.y
push.v self.x
push.d 1.6
add.d.v
pop.v.v self.x
push.v self.y
push.d 0.8
sub.d.v
pop.v.v self.y

:[end]