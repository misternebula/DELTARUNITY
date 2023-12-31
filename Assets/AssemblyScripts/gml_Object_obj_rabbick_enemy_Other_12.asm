.localvar 0 arguments

:[0]
pushi.e 77
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.sprite_height
pushi.e 20
sub.i.v
call.i random(argc=1)
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 10
sub.i.v
call.i random(argc=1)
add.v.v
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.dustparticle
push.v self.dustparticle
conv.v.i
pushenv [2]

:[1]
pushi.e 588
pop.v.i self.sprite_index
pushi.e 6
pop.v.i self.speed
pushi.e 1
pop.v.i self.image_index
pushi.e 10
pushi.e 70
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.direction
push.d 0.5
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.gravity_direction
push.d 0.7
pop.v.d self.gravity
push.d 0.4
pop.v.d self.friction
push.d 0.5
pop.v.d self.image_alpha
pushi.e 15
pop.v.i self.depth

:[2]
popenv [1]
push.v self.blown
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.dustparticle
conv.v.i
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.image_alpha
pushi.e -10
pop.v.i self.depth

:[5]
popenv [4]

:[end]