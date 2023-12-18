.localvar 0 arguments

:[0]
push.v self.t
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i draw_self(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.sweat
push.v self.g
pushi.e 5
cmp.i.v LTE
bf [4]

:[3]
pushi.e 1
pop.v.i self.sweat

:[4]
push.v self.g
pushi.e 9
cmp.i.v GTE
bf [6]

:[5]
push.v self.g
pushi.e 13
cmp.i.v LTE
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 1
pop.v.i self.sweat

:[9]
push.v self.sweat
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
pushi.e 6
sub.i.v
pushi.e 0
conv.i.v
pushi.e 850
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[11]
push.v self.t
pushi.e 1
cmp.i.v GTE
bf [end]

:[12]
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 80
cmp.i.v LTE
bf [15]

:[14]
push.d 0.4
pop.v.d self.alph
push.v self.alph
push.v self.t
pushi.e 8
conv.i.d
div.d.v
sub.v.v
push.v self.i
pushi.e 200
conv.i.d
div.d.v
add.v.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 4
push.v self.i
mul.v.i
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[15]
push.v self.t
pushi.e 15
cmp.i.v GTE
bf [end]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[end]