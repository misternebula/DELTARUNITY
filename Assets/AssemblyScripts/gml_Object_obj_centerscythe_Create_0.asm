.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.grazed
pushi.e 3
pop.v.i self.grazepoints
pushi.e 2
pop.v.i self.timepoints
pushi.e 0
pop.v.i self.target
pushi.e 120
pop.v.i self.inv
pushi.e 124
pop.v.i self.damage
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.rotspeed
pushi.e 1
pop.v.i self.insanity
pushi.e 1
pop.v.i self.chasecon
pushi.e 0
pop.v.i self.chasetimer
pushi.e 320
pop.v.i self.centerx
pushi.e 120
pop.v.i self.centery
pushi.e 188
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 188.x
pop.v.v self.centerx
push.v 188.y
pop.v.v self.centery

:[2]
pushi.e 150
pop.v.i self.radius
pushi.e 0
pop.v.i self.sine
push.d 1.4
pop.v.d self.sinespeed
pushi.e 70
conv.i.v
call.i random(argc=1)
pop.v.v self.dir
push.d 1.5
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.d
pop.v.v self.dirspeed
pushi.e 0
pop.v.i self.un
pushi.e -5
pop.v.i self.scythetimer
pushi.e 1
pop.v.i self.scythesidex
pushi.e 0
pop.v.i self.swingnoise
pushi.e 0
pop.v.i self.noisebuffer
pushi.e 0
pop.v.i self.type
pushi.e 233
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[3]
push.v 233.type
pushi.e 76
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.type

:[5]
pushi.e 0
pop.v.i self.king
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.insanity
push.d 1.3
pop.v.d self.sinespeed
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.scythesidex

:[7]
pushi.e 264
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v EQ
bf [19]

:[8]
pushi.e 1
pop.v.i self.king
push.v self.centerx
push.v self.radius
sub.v.v
pop.v.v self.x
push.v self.centery
pop.v.v self.y
pushi.e 264
conv.i.v
push.v self.centery
push.v self.centerx
push.v self.radius
add.v.v
call.i instance_create(argc=3)
pop.v.v self.s2
push.v self.s2
conv.v.i
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.sine
pushi.e 180
pop.v.i self.dir
pushi.e 1
pop.v.i self.un

:[10]
popenv [9]
pushi.e 264
conv.i.v
push.v self.centery
push.v self.radius
sub.v.v
push.v self.centerx
call.i instance_create(argc=3)
pop.v.v self.s3
push.v self.s3
conv.v.i
pushenv [12]

:[11]
pushi.e 0
pop.v.i self.sine
pushi.e 90
pop.v.i self.dir
pushi.e 0
pop.v.i self.un

:[12]
popenv [11]
pushi.e 264
conv.i.v
push.v self.centery
push.v self.radius
add.v.v
push.v self.centerx
call.i instance_create(argc=3)
pop.v.v self.s4
push.v self.s4
conv.v.i
pushenv [14]

:[13]
pushi.e 0
pop.v.i self.sine
pushi.e 270
pop.v.i self.dir
pushi.e 1
pop.v.i self.un

:[14]
popenv [13]
push.v self.dir
pop.v.v 264.mydir
push.v self.sinespeed
pop.v.v 264.sinespeed
push.v self.dirspeed
pop.v.v 264.dirspeed
push.v self.insanity
pop.v.v 264.insanity
pushi.e 264
pushenv [18]

:[15]
push.v self.dir
push.v self.mydir
cmp.v.v NEQ
bf [17]

:[16]
push.v self.dir
push.v self.mydir
add.v.v
pop.v.v self.dir

:[17]
push.v self.centerx
push.v self.dir
push.v self.radius
call.i lengthdir_x(argc=2)
sub.v.v
pop.v.v self.x
push.v self.centery
push.v self.dir
push.v self.radius
call.i lengthdir_y(argc=2)
sub.v.v
pop.v.v self.y

:[18]
popenv [15]

:[19]
pushi.e 0
pop.v.i self.wall_destroy

:[end]