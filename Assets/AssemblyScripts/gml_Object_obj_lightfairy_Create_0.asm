.localvar 0 arguments

:[0]
pushi.e 6000
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 15
conv.i.v
call.i random(argc=1)
pushi.e 18
add.i.v
pop.v.v self.sinx
pushi.e 15
conv.i.v
call.i random(argc=1)
pushi.e 18
add.i.v
pop.v.v self.siny
push.d 0.5
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.d
pop.v.v self.period
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.1
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.factor

:[end]