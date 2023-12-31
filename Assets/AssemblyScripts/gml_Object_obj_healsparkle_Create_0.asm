.localvar 0 arguments

:[0]
push.d 0.334
pop.v.d self.image_speed
push.d 0.02
pop.v.d self.speed
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.direction
push.d -0.04
pop.v.d self.friction
push.d 0.08
pop.v.d self.gravity
pushi.e 90
pop.v.i self.gravity_direction

:[end]