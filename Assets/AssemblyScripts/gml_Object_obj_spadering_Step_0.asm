.localvar 0 arguments

:[0]
push.v self.t
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
push.v self.size
pushi.e 1
cmp.i.v GT
bf [3]

:[2]
pushi.e 180
conv.i.v
call.i random(argc=1)
neg.v
pop.v.v self.startang

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v self.maxspade
cmp.v.v LT
bf [8]

:[5]
pushi.e 360
conv.i.d
push.v self.maxspade
div.v.d
push.v self.i
mul.v.v
push.v self.startang
add.v.v
pop.v.v self.spadeang
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.spadeang
neg.v
pop.v.v self.spadeang

:[7]
push.v self.spadeang
pushi.e 180
add.i.v
pushi.e 300
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.spadex
push.v self.spadeang
pushi.e 180
add.i.v
pushi.e 300
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.spadey
pushi.e 193
conv.i.v
push.v self.spadey
push.v 188.y
add.v.v
push.v self.spadex
push.v 188.x
add.v.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spade
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 679
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.i [stacktop]self.active
push.i 12632256
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.i [stacktop]self.image_blend
push.v self.spadeang
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.spadeang
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e 26
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.size
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.size
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.v [stacktop]self.image_yscale
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[8]
push.v self.t
pushi.e 1
cmp.i.v GTE
bf [10]

:[9]
push.v self.t
pushi.e 15
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [17]

:[12]
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
push.v self.maxspade
cmp.v.v LT
bf [17]

:[14]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pushenv [16]

:[15]
push.v self.speed
push.d 0.87
mul.d.v
pop.v.v self.speed
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[16]
popenv [15]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[17]
push.v self.t
pushi.e 15
cmp.i.v EQ
bf [23]

:[18]
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
push.v self.maxspade
cmp.v.v LT
bf [23]

:[20]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pushenv [22]

:[21]
pushi.e 0
pop.v.i self.speed
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[22]
popenv [21]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [19]

:[23]
push.v self.t
pushi.e 15
cmp.i.v GTE
bf [25]

:[24]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [35]

:[27]
push.v self.spadet
pushi.e 1
add.i.v
pop.v.v self.spadet
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.v self.spadet
pushi.e 6
add.i.v
pop.v.v self.spadet

:[29]
push.v self.spadet
pushi.e 4
cmp.i.v GTE
bf [35]

:[30]
pushi.e -1
push.v self.startspade
conv.v.i
push.v [array]self.spade
conv.v.i
pushenv [32]

:[31]
push.i 16777215
pop.v.i self.image_blend
push.v self.direction
pop.v.v self.gravity_direction
push.d -3.4
pop.v.d self.speed

:[32]
popenv [31]
push.v self.grav
pushi.e -1
push.v self.startspade
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.v [stacktop]self.gravity
push.v self.startspade
pushi.e 1
add.i.v
pop.v.v self.startspade
push.v self.startspade
push.v self.maxspade
cmp.v.v GTE
bf [34]

:[33]
pushi.e 1
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[34]
pushi.e 0
pop.v.i self.spadet

:[35]
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t

:[end]