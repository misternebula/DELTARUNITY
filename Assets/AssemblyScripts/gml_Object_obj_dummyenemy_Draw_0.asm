.localvar 0 arguments

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [13]

:[1]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterstatus
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstercomment
push.s " "@24
cmp.s.v EQ
bf [3]

:[2]
push.s "obj_dummyenemy_slash_Draw_0_gml_4_0"@7680
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstercomment

:[3]
push.v self.hurttimer
pushi.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushi.e 0
pop.v.i self.state
b [13]

:[5]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [6]

:[6]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [12]

:[7]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[9]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[11]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

:[12]
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
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [18]

:[14]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.sprite_index
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
bf [16]

:[15]
push.v self.sprite_index
pop.v.v self.thissprite

:[16]
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
bf [18]

:[17]
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

:[18]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.flash

:[20]
pushi.e 0
pop.v.i self.becomeflash

:[end]