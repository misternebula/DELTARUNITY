.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.times
pushi.e 0
pop.v.i self.activetimer
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
pushi.e 120
pop.v.i self.inv
pushi.e 124
pop.v.i self.damage
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.image_speed
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
pushi.e 100
conv.i.v
call.i random(argc=1)
pop.v.v self.jumpsiner
pushi.e -3
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed
pushi.e 8
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.jumpspeed
pushi.e 50
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.jumpheight
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[end]