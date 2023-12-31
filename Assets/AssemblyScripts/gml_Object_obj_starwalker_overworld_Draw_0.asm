.localvar 0 arguments

:[0]
push.v 326.x
push.v 326.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.targetx
pushi.e 1
pop.v.i self.bodyfacing
push.v self.targetx
push.v self.x
pushi.e 30
sub.i.v
cmp.v.v LTE
bf [2]

:[1]
pushi.e 0
pop.v.i self.bodyfacing

:[2]
push.v self.targetx
push.v self.x
pushi.e 30
add.i.v
cmp.v.v GTE
bf [4]

:[3]
pushi.e 2
pop.v.i self.bodyfacing

:[4]
push.v self.attackcon
pushi.e 2
cmp.i.v LT
bf [9]

:[5]
push.v self.bodyfacing
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e -2
pop.v.i self.xmake

:[7]
push.v self.bodyfacing
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 2
pop.v.i self.xmake

:[9]
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.bounce
push.v self.wing_index
push.d 0.2
push.v self.bounce
pushi.e 8
conv.i.d
div.d.v
call.i abs(argc=1)
add.v.d
add.v.v
pop.v.v self.wing_index
push.v self.attackcon
pushi.e -1
cmp.i.v EQ
bf [11]

:[10]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 2
conv.i.v
push.v self.xmake
push.v self.y
push.v self.bounce
pushi.e 4
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 612
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.bounce
pushi.e 4
mul.i.v
add.v.v
push.v self.x
push.v self.wing_index
pushi.e 616
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.bodyfacing
pushi.e 613
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 2
conv.i.v
push.v self.xmake
push.v self.y
push.v self.bounce
pushi.e 4
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 612
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[15]
push.v self.attackcon
pushi.e 2
cmp.i.v EQ
bf [end]

:[16]
push.v self.shakefactor
call.i random(argc=1)
pop.v.v self.shkx
push.v self.shakefactor
call.i random(argc=1)
pop.v.v self.shky
push.v self.shakefactor
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
push.v self.shakefactor
pushi.e 1
sub.i.v
pop.v.v self.shakefactor

:[18]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 2
conv.i.v
push.v self.xmake
push.v self.y
push.v self.shky
add.v.v
push.v self.bounce
pushi.e 4
mul.i.v
add.v.v
push.v self.x
push.v self.shkx
add.v.v
pushi.e 1
conv.i.v
pushi.e 612
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]