.localvar 0 arguments

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [16]

:[1]
pushi.e 0
pop.v.i self.shakesine
pushi.e 0
pop.v.i self.siner
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
b [16]

:[3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
call.i scr_defeatrun(argc=0)
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
div.v.v
push.d 0.65
cmp.d.v LTE
bf [13]

:[12]
pushi.e 1
pop.v.i self.hurtlevel

:[13]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
div.v.v
push.d 0.2
cmp.d.v LTE
bf [15]

:[14]
pushi.e 2
pop.v.i self.hurtlevel

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
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
push.v self.hurtsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [21]

:[17]
push.v self.shakesine
pushi.e 1
add.i.v
pop.v.v self.shakesine
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.shakesine
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.hurtlevel
mul.v.v
push.d 1.5
div.d.v
call.i random(argc=1)
pop.v.v self.shx
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
bf [19]

:[18]
push.v self.sparedsprite
pop.v.v self.thissprite

:[19]
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
push.v self.shx
add.v.v
push.v self.hurtlevel
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
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
push.v self.hurtlevel
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

:[21]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.flash

:[23]
pushi.e 0
pop.v.i self.becomeflash

:[end]