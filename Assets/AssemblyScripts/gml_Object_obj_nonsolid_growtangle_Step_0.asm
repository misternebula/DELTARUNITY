.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.growth
push.v self.timer
push.v self.maxtimer
cmp.v.v LT
bf [2]

:[1]
push.v self.growcon
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.growth

:[5]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.growcon
pushi.e 3
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.growth

:[10]
push.v self.growth
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
push.v self.growcon
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer

:[13]
push.v self.growcon
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.v self.timer
pushi.e 1
sub.i.v
pop.v.v self.timer

:[15]
pushi.e 2
push.v self.timer
push.v self.maxtimer
div.v.v
mul.v.i
pop.v.v self.image_xscale
pushi.e 2
push.v self.timer
push.v self.maxtimer
div.v.v
mul.v.i
pop.v.v self.image_yscale
pushi.e 180
pushi.e 180
push.v self.timer
push.v self.maxtimer
div.v.v
mul.v.i
add.v.i
pop.v.v self.image_angle
push.d 0.5
push.v self.timer
push.v self.maxtimer
div.v.v
push.d 0.5
mul.d.v
add.v.d
pop.v.v self.image_alpha
pushi.e 183
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.d
push.v self.sprite_index
push.v self.d
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.image_xscale
push.v self.d
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.d
conv.v.i
pop.v.v [stacktop]self.image_yscale
push.v self.image_angle
push.v self.d
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.depth
pushi.e 1
sub.i.v
push.v self.d
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.image_blend
push.v self.d
conv.v.i
pop.v.v [stacktop]self.image_blend
pushi.e 1
push.v self.image_alpha
sub.v.i
push.d 0.1
add.d.v
push.v self.d
conv.v.i
pop.v.v [stacktop]self.image_alpha
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.timer
push.v self.maxtimer
cmp.v.v GTE
bf [17]

:[16]
push.v self.growcon
pushi.e 1
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 2
pop.v.i self.growcon
pushi.e 1
pop.v.i self.keep

:[20]
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [22]

:[21]
push.v self.growcon
pushi.e 3
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [end]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[end]