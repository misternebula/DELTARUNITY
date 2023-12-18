.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 100
pop.v.i self.damage
push.d 0.334
pop.v.d self.image_speed
pushi.e 187
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.damagenoise

:[2]
popenv [1]
pushi.e 3
pop.v.i self.maxindex
pushi.e 0
pop.v.i self.critical

:[end]