.localvar 0 arguments

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [12]

:[1]
push.v self.hurttimer
pushi.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i self.state
b [12]

:[3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v

:[5]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [11]

:[6]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[8]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[10]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

:[11]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.shakex
add.v.v
pushi.e 0
conv.i.v
push.v self.hurtsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [17]

:[13]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.idlesprite
pop.v.v self.thissprite
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymax
cmp.v.v GTE
bf [15]

:[14]
push.v self.idlesprite
pop.v.v self.thissprite

:[15]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.fsiner
pushi.e 1
add.i.v
pop.v.v self.fsiner
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
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
push.v self.thissprite
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

:[17]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i self.flash

:[19]
pushi.e 0
pop.v.i self.becomeflash

:[end]