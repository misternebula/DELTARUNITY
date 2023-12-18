.localvar 0 arguments

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [17]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 3
conv.i.d
div.d.v
cmp.v.v LTE
bf [4]

:[2]
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
bf [4]

:[3]
push.s "obj_heartenemy_slash_Draw_0_gml_6_0"@9113
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstercomment

:[4]
push.v self.hurttimer
pushi.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
pop.v.i self.state
b [17]

:[6]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [10]

:[7]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [9]

:[8]
pushi.e -5
pushi.e 524
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[9]
pushi.e -5
pushi.e 521
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
call.i scr_defeatrun(argc=0)
popz.v

:[10]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [16]

:[11]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[13]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [15]

:[14]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[15]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

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
push.v self.shakex
add.v.v
pushi.e 0
conv.i.v
pushi.e 519
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[17]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [22]

:[18]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 516
pop.v.i self.thissprite
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymax
cmp.v.v GTE
bf [20]

:[19]
pushi.e 518
pop.v.i self.thissprite

:[20]
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
bf [22]

:[21]
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

:[22]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.i self.flash

:[24]
pushi.e 0
pop.v.i self.becomeflash

:[end]