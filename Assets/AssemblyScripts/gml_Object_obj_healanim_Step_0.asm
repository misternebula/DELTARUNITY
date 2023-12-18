.localvar 0 arguments

:[0]
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t
push.v self.target
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[1]
push.v self.t
pushi.e 1
cmp.i.v EQ
bf [13]

:[2]
push.v self.target
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x
push.v self.target
conv.v.i
push.v [stacktop]self.y
pop.v.v self.y
push.v self.target
conv.v.i
push.v [stacktop]self.image_xscale
pop.v.v self.image_xscale
push.v self.target
conv.v.i
push.v [stacktop]self.image_yscale
pop.v.v self.image_yscale
push.v self.target
conv.v.i
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index
push.v self.sprite_width
pop.v.v self.sw
push.v self.sprite_height
pop.v.v self.sh
pushi.e 0
pop.v.i self.herocheck
push.v self.target
conv.v.i
push.v [stacktop]self.object_index
pushi.e 202
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.herocheck

:[4]
push.v self.target
conv.v.i
push.v [stacktop]self.object_index
pushi.e 203
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.herocheck

:[6]
push.v self.target
conv.v.i
push.v [stacktop]self.object_index
pushi.e 204
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.herocheck

:[8]
push.v self.herocheck
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.target
conv.v.i
push.v [stacktop]self.mywidth
pop.v.v self.sw
push.v self.target
conv.v.i
push.v [stacktop]self.myheight
pop.v.v self.sh

:[10]
push.v self.target
conv.v.i
pushenv [12]

:[11]
call.i scr_oflash(argc=0)
popz.v

:[12]
popenv [11]

:[13]
push.v self.t
pushi.e 1
cmp.i.v GTE
bf [15]

:[14]
push.v self.t
pushi.e 5
cmp.i.v LTE
b [16]

:[15]
push.e 0

:[16]
bf [22]

:[17]
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [22]

:[19]
pushi.e 78
conv.i.v
push.v self.y
push.v self.sh
call.i random(argc=1)
add.v.v
push.v self.x
push.v self.sw
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.starcount
conv.v.i
pop.v.v [array]self.star
pushi.e -1
push.v self.starcount
conv.v.i
push.v [array]self.star
conv.v.i
pushenv [21]

:[20]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e -10
pop.v.i self.depth
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 2
pop.v.i self.image_alpha
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed
pushi.e -3
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
push.d 0.2
pop.v.d self.friction

:[21]
popenv [20]
push.v self.particlesprite
pushi.e -1
push.v self.starcount
conv.v.i
push.v [array]self.star
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.particlecolor
pushi.e -1
push.v self.starcount
conv.v.i
push.v [array]self.star
conv.v.i
pop.v.v [stacktop]self.image_blend
push.v self.starcount
pushi.e 1
add.i.v
pop.v.v self.starcount
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[22]
push.v self.t
pushi.e 5
cmp.i.v GTE
bf [24]

:[23]
push.v self.t
pushi.e 30
cmp.i.v LTE
b [25]

:[24]
push.e 0

:[25]
bf [34]

:[26]
pushi.e 0
pop.v.i self.i

:[27]
push.v self.i
push.v self.starcount
cmp.v.v LT
bf [32]

:[28]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.star
conv.v.i
pushenv [31]

:[29]
push.v self.image_angle
pushi.e 10
sub.i.v
pop.v.v self.image_angle
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [29]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [27]

:[32]
push.v self.t
pushi.e 30
cmp.i.v GTE
bf [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
b [end]

:[35]
pushi.e 0
pop.v.i self.i

:[36]
push.v self.i
push.v self.starcount
cmp.v.v LT
bf [40]

:[37]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.star
conv.v.i
pushenv [39]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[39]
popenv [38]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [36]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[end]