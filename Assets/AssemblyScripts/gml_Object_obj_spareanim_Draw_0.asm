.localvar 0 arguments

:[0]
push.v self.t
pushi.e 6
cmp.i.v GTE
bf [2]

:[1]
push.v self.t
pushi.e 26
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.afterimage
pushi.e 1
add.i.v
pop.v.v self.afterimage
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
call.i d3d_set_fog(argc=4)
popz.v
push.d 0.7
push.v self.afterimage
pushi.e 25
conv.i.d
div.d.v
sub.v.d
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.afterimage
pushi.e 4
mul.i.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.4
push.v self.afterimage
pushi.e 30
conv.i.d
div.d.v
sub.v.d
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.afterimage
pushi.e 8
mul.i.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i d3d_set_fog(argc=4)
popz.v

:[5]
push.v self.t
pushi.e 6
cmp.i.v LT
bf [11]

:[6]
push.v self.t
pushi.e 5
cmp.i.v LT
bf [8]

:[7]
pushi.e 1
push.v self.neotone
pushi.e 4
conv.i.d
div.d.v
sub.v.i
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[8]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
call.i d3d_set_fog(argc=4)
popz.v
push.v self.t
pushi.e 5
conv.i.d
div.d.v
pop.v.v self.maxwhite
push.v self.maxwhite
pushi.e 1
cmp.i.v GT
bf [10]

:[9]
pushi.e 1
pop.v.i self.maxwhite

:[10]
push.v self.maxwhite
push.v self.tone
pushi.e 5
conv.i.d
div.d.v
sub.v.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i d3d_set_fog(argc=4)
popz.v

:[11]
push.v self.t
pushi.e 1
cmp.i.v GTE
bf [13]

:[12]
push.v self.t
pushi.e 5
cmp.i.v LTE
b [14]

:[13]
push.e 0

:[14]
bf [20]

:[15]
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [20]

:[17]
pushi.e 78
conv.i.v
push.v self.y
push.v self.sprite_height
call.i random(argc=1)
add.v.v
push.v self.x
push.v self.sprite_width
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
pushenv [19]

:[18]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 853
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_alpha
push.d 0.25
pop.v.d self.image_speed
pushi.e -3
pop.v.i self.hspeed
push.d 0.5
pop.v.d self.gravity
pushi.e 0
pop.v.i self.gravity_direction

:[19]
popenv [18]
push.v self.starcount
pushi.e 1
add.i.v
pop.v.v self.starcount
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [16]

:[20]
push.v self.t
pushi.e 5
cmp.i.v GTE
bf [22]

:[21]
push.v self.t
pushi.e 30
cmp.i.v LTE
b [23]

:[22]
push.e 0

:[23]
bf [30]

:[24]
pushi.e 0
pop.v.i self.i

:[25]
push.v self.i
push.v self.starcount
cmp.v.v LT
bf [30]

:[26]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.star
conv.v.i
pushenv [29]

:[27]
push.v self.image_angle
pushi.e 10
add.i.v
pop.v.v self.image_angle
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [27]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [25]

:[30]
push.v self.t
pushi.e 5
cmp.i.v GTE
bf [32]

:[31]
push.v self.t
pushi.e 10
cmp.i.v LT
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.v self.tone
pushi.e 1
add.i.v
pop.v.v self.tone

:[35]
push.v self.t
pushi.e 9
cmp.i.v GTE
bf [43]

:[36]
push.v self.neotone
pushi.e 1
add.i.v
pop.v.v self.neotone
push.v self.neotone
pushi.e 30
cmp.i.v GTE
bf [43]

:[37]
pushi.e 0
pop.v.i self.i

:[38]
push.v self.i
push.v self.starcount
cmp.v.v LT
bf [42]

:[39]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.star
conv.v.i
pushenv [41]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[41]
popenv [40]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [38]

:[42]
call.i instance_destroy(argc=0)
popz.v

:[43]
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t

:[end]