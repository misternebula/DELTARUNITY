.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [end]

:[1]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v self.hspeed
push.v self.bdir
push.d 0.2
conv.d.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.hspeed
push.v self.vspeed
push.v self.bdir
push.d 0.2
conv.d.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.vspeed

:[end]