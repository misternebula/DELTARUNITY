.localvar 0 arguments

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [18]

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
push.s "obj_ponman_enemy_slash_Draw_0_gml_6_0"@8366
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
b [18]

:[6]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 12
pop.v.i self.hspeed
push.v self.turnt
pushi.e 8
sub.i.v
pop.v.v self.turnt
pushi.e -4
pop.v.i self.vspeed

:[8]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [14]

:[9]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[11]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [13]

:[12]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[13]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

:[14]
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
pushi.e 558
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.sleeping
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 32
add.i.v
push.v self.eyey
add.v.v
push.v self.x
pushi.e 28
add.i.v
push.v self.eyex
add.v.v
pushi.e 0
conv.i.v
pushi.e 556
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e -100
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
pushi.e 558
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.sleeping

:[18]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [26]

:[19]
pushi.e 558
pop.v.i self.thissprite
push.v self.image_index
pop.v.v self.this_index
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [22]

:[20]
pushi.e 554
pop.v.i self.thissprite
push.v self.sleep_index
pop.v.v self.this_index
push.v self.sleep_index
push.d 0.5
cmp.d.v GT
bf [22]

:[21]
push.v self.sleep_index
push.d 0.25
sub.d.v
pop.v.v self.sleep_index

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
push.v self.this_index
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.sleeping
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 32
add.i.v
push.v self.eyey
add.v.v
push.v self.x
pushi.e 28
add.i.v
push.v self.eyex
add.v.v
pushi.e 0
conv.i.v
pushi.e 556
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[24]
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
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
push.v self.this_index
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

:[26]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
pushi.e 0
pop.v.i self.flash

:[28]
pushi.e 0
pop.v.i self.becomeflash

:[end]