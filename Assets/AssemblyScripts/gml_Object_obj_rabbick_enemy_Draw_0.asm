.localvar 0 arguments

:[0]
push.v self.animsiner
pushi.e 1
add.i.v
pop.v.v self.animsiner
pushi.e 2
push.v self.blowamt
pushi.e 100
conv.i.d
div.d.v
sub.v.i
pop.v.v self.image_xscale
push.v self.blown
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.image_xscale

:[2]
pushi.e 0
pop.v.i self.xoff
push.v self.image_xscale
pushi.e 2
cmp.i.v LT
bf [4]

:[3]
push.v self.originalwidth
push.v self.sprite_width
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.xoff

:[4]
push.v self.blowanimtimer
pushi.e 1
sub.i.v
pop.v.v self.blowanimtimer
push.v self.blowanimtimer
pushi.e 6
cmp.i.v GT
bf [6]

:[5]
push.v self.blown
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [24]

:[8]
push.v self.onoff
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.onoff

:[10]
push.v self.onoff
push.d 1.5
cmp.d.v EQ
bf [12]

:[11]
pushi.e 2
pop.v.i self.onoff

:[12]
push.v self.onoff
push.d 0.5
cmp.d.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.onoff

:[14]
push.v self.onoff
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.shakeamt
neg.v
pop.v.v self.ashake
push.d 0.5
pop.v.d self.onoff

:[16]
push.v self.onoff
pushi.e 1
cmp.i.v EQ
bf [20]

:[17]
push.v self.shakeamt
pop.v.v self.ashake
push.v self.shakeamt
pushi.e 0
cmp.i.v GT
bf [19]

:[18]
push.v self.shakeamt
pushi.e 1
sub.i.v
pop.v.v self.shakeamt

:[19]
push.d 1.5
pop.v.d self.onoff

:[20]
push.v self.image_xscale
push.d 1.5
cmp.d.v GT
bf [22]

:[21]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.xoff
add.v.v
push.v self.ashake
add.v.v
pushi.e 0
conv.i.v
pushi.e 592
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [23]

:[22]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.d 0.5
add.d.v
push.v self.y
push.v self.x
push.v self.xoff
add.v.v
push.v self.ashake
add.v.v
pushi.e 8
sub.i.v
pushi.e 1
conv.i.v
pushi.e 592
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[23]
b [end]

:[24]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [41]

:[25]
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
bf [28]

:[26]
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
bf [28]

:[27]
push.s "obj_rabbick_enemy_slash_Draw_0_gml_45_0"@8481
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstercomment

:[28]
push.v self.hurttimer
pushi.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
pushi.e 0
cmp.i.v LT
bf [30]

:[29]
pushi.e 0
pop.v.i self.state
b [41]

:[30]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
call.i scr_defeatrun(argc=0)
popz.v

:[32]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [38]

:[33]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [35]

:[34]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[35]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [37]

:[36]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[37]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

:[38]
push.v self.hurtsprite
pop.v.v self.thissprite
push.v self.image_xscale
push.d 1.5
cmp.d.v GT
bf [40]

:[39]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.xoff
add.v.v
push.v self.shakex
add.v.v
pushi.e 0
conv.i.v
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
b [41]

:[40]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.d 0.5
add.d.v
push.v self.y
push.v self.x
push.v self.xoff
add.v.v
push.v self.shakex
add.v.v
pushi.e 8
sub.i.v
pushi.e 1
conv.i.v
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v

:[41]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [49]

:[42]
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
bt [44]

:[43]
push.v self.blown
pushi.e 1
cmp.i.v EQ
b [45]

:[44]
push.e 1

:[45]
bf [47]

:[46]
push.v self.sparedsprite
pop.v.v self.thissprite

:[47]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.xoff
add.v.v
push.v self.animsiner
pushi.e 5
conv.i.d
div.d.v
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
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
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.xoff
add.v.v
push.v self.animsiner
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

:[49]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
pushi.e 0
pop.v.i self.flash

:[51]
pushi.e 0
pop.v.i self.becomeflash

:[end]