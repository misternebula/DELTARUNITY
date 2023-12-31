.localvar 0 arguments

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [20]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 2
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
push.s "obj_clubsenemy_old_slash_Draw_0_gml_6_0"@9079
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
b [20]

:[6]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
call.i scr_defeatrun(argc=0)
popz.v
b [13]

:[8]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e 0
cmp.i.v GT
bt [10]

:[9]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
pushi.e 0
pop.v.i self.battlecancel
pushi.e -100
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
pushi.e 1
pop.v.i self.betray

:[13]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [19]

:[14]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[16]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [18]

:[17]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[18]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

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
push.v self.shakex
add.v.v
pushi.e 0
conv.i.v
pushi.e 527
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[20]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [25]

:[21]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 524
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
bf [23]

:[22]
pushi.e 526
pop.v.i self.thissprite

:[23]
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
bf [25]

:[24]
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

:[25]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
pop.v.i self.flash

:[27]
pushi.e 0
pop.v.i self.becomeflash

:[end]