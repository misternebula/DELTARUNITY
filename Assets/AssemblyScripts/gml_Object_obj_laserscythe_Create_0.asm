.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.grazed
pushi.e 15
pop.v.i self.grazepoints
pushi.e 0
pop.v.i self.timepoints
pushi.e 0
pop.v.i self.target
pushi.e 120
pop.v.i self.inv
pushi.e 124
pop.v.i self.damage
pushi.e 1
pop.v.i self.active
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e 14
pop.v.i self.rotspeed
pushi.e 5
pop.v.i self.vspeed
pushi.e 576
pop.v.i self.mask_index
pushi.e 1
pop.v.i self.gravity
pushi.e 0
pop.v.i self.explode
pushi.e 0
pop.v.i self.explodetimer
push.v self.image_angle
pop.v.v self.remrot
push.v self.y
pop.v.v self.remy
push.v self.x
pop.v.v self.remx
pushi.e 2
pop.v.i self.scale

:[end]