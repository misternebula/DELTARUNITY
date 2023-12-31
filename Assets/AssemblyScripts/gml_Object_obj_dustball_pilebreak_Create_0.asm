.localvar 0 arguments

:[0]
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.hspeed
push.d 0.28
push.d 0.08
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.friction
push.d -0.44
pop.v.d self.gravity
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[end]