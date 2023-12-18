.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.counter
pushi.e 0
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.seizure
push.d -7.6
push.d 1.5
conv.d.v
call.i random(argc=1)
sub.v.d
pop.v.v self.hspeed
pushi.e -2
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed
push.d 0.13
pop.v.d self.gravity
pushi.e 0
pop.v.i self.gravity_direction
pushi.e 1
pop.v.i self.active
pushi.e 4
pop.v.i self.timepoints
pushi.e 4
pop.v.i self.grazepoints
pushi.e 30
pop.v.i self.damage
pushi.e 0
pop.v.i self.grazed

:[end]