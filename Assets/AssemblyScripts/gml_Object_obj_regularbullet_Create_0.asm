.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.grazed
pushi.e 5
pop.v.i self.grazepoints
pushi.e 5
pop.v.i self.timepoints
pushi.e 0
pop.v.i self.target
pushi.e 1
pop.v.i self.dont
pushi.e 60
pop.v.i self.inv
pushi.e 124
pop.v.i self.damage
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.spec
pushi.e 1
pop.v.i self.image_alpha
pushi.e 305
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 1
pop.v.i self.wall_destroy

:[end]