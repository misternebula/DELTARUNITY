.localvar 0 arguments

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [16]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 4
conv.i.d
div.d.v
cmp.v.v LT
bf [5]

:[2]
pushi.e 234
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.defeated

:[4]
popenv [3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 4
conv.i.d
div.d.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monsterhp

:[5]
push.v self.hurttimer
pushi.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushi.e 0
pop.v.i self.state
b [16]

:[7]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 12
pop.v.i self.hspeed

:[9]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [15]

:[10]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[12]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [14]

:[13]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[14]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

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
push.v self.shakex
add.v.v
push.v self.hurttimer
pushi.e 2
conv.i.d
div.d.v
pushi.e 428
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [19]

:[17]
push.v self.dodgetimer
pushi.e 1
add.i.v
pop.v.v self.dodgetimer
push.v self.dodgetimer
pushi.e 2
mul.i.v
push.d 3.141592653589793
mul.d.v
pushi.e 15
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.dodgeamt
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.dodgeamt
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 429
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.dodgetimer
pushi.e 15
cmp.i.v GTE
bf [19]

:[18]
pushi.e 0
pop.v.i self.state

:[19]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [24]

:[20]
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
bf [22]

:[21]
push.v self.idlesprite
pop.v.v self.thissprite

:[22]
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
pushi.e 5
conv.i.d
div.d.v
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
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
pushi.e 5
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

:[24]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e 0
pop.v.i self.flash

:[26]
pushi.e 0
pop.v.i self.becomeflash

:[end]