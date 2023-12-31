.localvar 0 arguments

:[0]
push.v self.chasecon
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_alpha
push.d 0.04
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 2
pop.v.i self.chasecon
pushi.e 1
pop.v.i self.active

:[3]
push.v self.chasecon
pushi.e 2
cmp.i.v EQ
bf [27]

:[4]
push.v self.un
pushi.e 0
cmp.i.v EQ
bf [7]

:[5]
push.v self.rotspeed
pushi.e 10
cmp.i.v LTE
bf [7]

:[6]
push.v self.rotspeed
pushi.e 1
add.i.v
pop.v.v self.rotspeed

:[7]
push.v self.un
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
push.v self.rotspeed
pushi.e -10
cmp.i.v GTE
bf [10]

:[9]
push.v self.rotspeed
pushi.e 1
sub.i.v
pop.v.v self.rotspeed

:[10]
push.v self.sine
push.v self.sinespeed
add.v.v
pop.v.v self.sine
push.v self.dir
push.v self.dirspeed
add.v.v
pop.v.v self.dir
push.v self.insanity
pushi.e 1
cmp.i.v EQ
bf [21]

:[11]
push.v self.dirspeed
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.dirspeed
pushi.e 3
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v self.dirspeed
push.d 0.01
add.d.v
pop.v.v self.dirspeed

:[16]
push.v self.dirspeed
pushi.e 0
cmp.i.v LT
bf [18]

:[17]
push.v self.dirspeed
pushi.e -3
cmp.i.v GT
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v self.dirspeed
push.d 0.01
sub.d.v
pop.v.v self.dirspeed

:[21]
push.v self.sine
pushi.e 18
conv.i.d
div.d.v
call.i cos(argc=1)
push.v self.radius
mul.v.v
pop.v.v self.length
push.v self.centerx
push.v self.dir
push.v self.length
call.i lengthdir_x(argc=2)
sub.v.v
pop.v.v self.x
push.v self.centery
push.v self.dir
push.v self.length
call.i lengthdir_y(argc=2)
sub.v.v
pop.v.v self.y
push.v self.king
pushi.e 1
cmp.i.v EQ
bf [27]

:[22]
push.v self.noisebuffer
pushi.e 1
sub.i.v
pop.v.v self.noisebuffer
push.v self.length
call.i abs(argc=1)
pushi.e 8
cmp.i.v LTE
bf [24]

:[23]
push.v self.noisebuffer
pushi.e 0
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 79
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 10
pop.v.i self.noisebuffer

:[27]
push.v self.king
pushi.e 1
cmp.i.v EQ
bf [56]

:[28]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [56]

:[29]
push.v self.scythetimer
pushi.e 1
add.i.v
pop.v.v self.scythetimer
push.v self.scythetimer
pushi.e 60
cmp.i.v EQ
bf [31]

:[30]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
push.v self.centery
pushi.e 60
push.v self.scythesidex
mul.v.i
add.v.v
push.v self.centerx
push.v self.radius
push.v self.scythesidex
mul.v.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.sbul
pushi.e 2
push.v self.sbul
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.sbul
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.sbul
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 575
push.v self.sbul
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 576
push.v self.sbul
conv.v.i
pop.v.i [stacktop]self.mask_index
pushi.e 255
push.v self.sbul
conv.v.i
pop.v.i [stacktop]self.image_blend
pushi.e 1
push.v self.sbul
conv.v.i
pop.v.i [stacktop]self.active
push.v self.sbul
call.i scr_bullet_inherit(argc=1)
popz.v

:[31]
push.v self.scythetimer
pushi.e 60
cmp.i.v GTE
bf [33]

:[32]
push.v self.scythetimer
pushi.e 70
cmp.i.v LT
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.v self.sbul
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
pushi.e 10
push.v self.scythesidex
mul.v.i
add.v.v
pop.i.v [stacktop]self.image_angle
push.v self.sbul
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha

:[36]
push.v self.scythetimer
pushi.e 85
cmp.i.v GTE
bf [38]

:[37]
push.v self.scythetimer
pushi.e 90
cmp.i.v LT
b [39]

:[38]
push.e 0

:[39]
bf [42]

:[40]
push.v self.sbul
call.i instance_exists(argc=1)
conv.v.b
bf [42]

:[41]
push.v self.sbul
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
pushi.e 3
push.v self.scythesidex
mul.v.i
sub.v.v
pop.i.v [stacktop]self.hspeed

:[42]
push.v self.scythetimer
pushi.e 100
cmp.i.v GTE
bf [44]

:[43]
push.v self.scythetimer
pushi.e 105
cmp.i.v LT
b [45]

:[44]
push.e 0

:[45]
bf [49]

:[46]
push.v self.sbul
conv.v.i
pushenv [48]

:[47]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha

:[48]
popenv [47]

:[49]
push.v self.scythetimer
pushi.e 105
cmp.i.v GTE
bf [56]

:[50]
push.v self.sbul
conv.v.i
pushenv [52]

:[51]
call.i instance_destroy(argc=0)
popz.v

:[52]
popenv [51]
push.v self.scythesidex
pushi.e -1
cmp.i.v EQ
bf [54]

:[53]
pushi.e 1
pop.v.i self.scythesidex
b [55]

:[54]
pushi.e -1
pop.v.i self.scythesidex

:[55]
pushi.e 59
pop.v.i self.scythetimer

:[56]
push.v self.image_angle
push.v self.rotspeed
add.v.v
pop.v.v self.image_angle
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [end]

:[57]
push.v self.grazetimer
pushi.e 1
add.i.v
pop.v.v self.grazetimer
push.v self.grazetimer
pushi.e 30
cmp.i.v GTE
bf [end]

:[58]
pushi.e 0
pop.v.i self.grazed
pushi.e 0
pop.v.i self.grazetimer

:[end]