.localvar 0 arguments

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [16]

:[1]
pushi.e 99
pop.v.i self.sleepcounter
pushi.e 0
pop.v.i self.sleeping
push.s "obj_susieenemy_slash_Draw_0_gml_5_0"@8708
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstercomment
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterstatus
pushi.e 609
pop.v.i self.idlesprite
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
bf [9]

:[4]
pushi.e 40
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 38
pushenv [8]

:[5]
push.v self.s
conv.v.i
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.visible
pushi.e 607
pop.v.i self.sprite_index
pushi.e 100
pop.v.i self.depth

:[7]
popenv [6]

:[8]
popenv [5]
pushi.e 0
pop.v.i self.visible
call.i instance_destroy(argc=0)
popz.v

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
bf [19]

:[18]
push.v self.idlesprite
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