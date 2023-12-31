.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.timer
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.bdir
pushi.e 60
pop.v.i self.inv
pushi.e 0
pop.v.i self.timepoints
pushi.e 3
pop.v.i self.grazepoints
pushi.e 0
pop.v.i self.target
pushi.e 50
pop.v.i self.damage
pushi.e 0
pop.v.i self.grazed
pushi.e 0
pop.v.i self.grazetimer

:[end]