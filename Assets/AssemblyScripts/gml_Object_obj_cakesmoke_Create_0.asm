.localvar 0 arguments

:[0]
push.d -0.2
pop.v.d self.gravity
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed
push.d 0.08
pop.v.d self.friction
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale

:[end]