.localvar 0 arguments

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [33]

:[1]
push.v self.hurttimer
pushi.e 0
cmp.i.v GT
bf [30]

:[2]
pushi.e 0
pop.v.i self.hurttimer
pushi.e 1
push.v self.body
conv.v.i
pop.v.i [stacktop]self.condition
pushi.e 0
push.v self.body
conv.v.i
pop.v.i [stacktop]self.siner
push.v self.body
conv.v.i
dup.i 0
push.v [stacktop]self.maxdist
pushi.e 20
push.v self.hurtamt
pushi.e 5
conv.i.d
div.d.v
add.v.i
add.v.v
pop.i.v [stacktop]self.maxdist
push.v self.body
conv.v.i
push.v [stacktop]self.maxdist
pushi.e 30
cmp.i.v LT
bf [4]

:[3]
pushi.e 30
push.v self.body
conv.v.i
pop.v.i [stacktop]self.maxdist

:[4]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
div.v.v
pop.v.v self.mhpratio
pushi.e 1
pushi.e 1
push.v self.mhpratio
sub.v.i
add.v.i
push.v self.body
conv.v.i
pop.v.v [stacktop]self.floatsinerspeed
push.v self.mhpratio
push.d 0.8
cmp.d.v LTE
bf [6]

:[5]
push.v self.body
conv.v.i
push.v [stacktop]self.dancelv
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 1
push.v self.body
conv.v.i
pop.v.i [stacktop]self.dancelv

:[9]
push.v self.mhpratio
push.d 0.4
cmp.d.v LTE
bf [11]

:[10]
push.v self.jturn
pushi.e 17
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 3
push.v self.body
conv.v.i
pop.v.i [stacktop]self.dancelv

:[14]
push.v self.mhpratio
push.d 0.2
cmp.d.v LTE
bf [16]

:[15]
push.v self.jturn
pushi.e 17
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 2
push.v self.body
conv.v.i
pop.v.i [stacktop]self.dancelv

:[19]
push.v self.mhpratio
pushi.e 0
cmp.i.v LTE
bf [21]

:[20]
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 6
pushi.e -5
pushi.e 241
pop.v.i [array]global.flag

:[21]
pushi.e 131
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[22]
push.v self.mhpratio
pushi.e 0
cmp.i.v GT
bf [24]

:[23]
pushi.e 1
push.d 1.5
push.v self.mhpratio
push.d 1.5
mul.d.v
sub.v.d
add.v.i
pop.v.v 131.rotspeed

:[24]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.laughnoise
push.v self.laughnoise
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e 119
conv.i.v
call.i snd_play(argc=1)
popz.v

:[26]
push.v self.laughnoise
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 124
conv.i.v
call.i snd_play(argc=1)
popz.v

:[28]
push.v self.laughnoise
pushi.e 2
cmp.i.v EQ
bf [30]

:[29]
pushi.e 121
conv.i.v
call.i snd_play(argc=1)
popz.v

:[30]
push.v self.hurttimer
pushi.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
pushi.e 0
cmp.i.v LT
bf [32]

:[31]
pushi.e 0
pop.v.i self.state
b [33]

:[32]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [33]

:[33]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [44]

:[34]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.idlesprite
pop.v.v self.thissprite
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [44]

:[35]
push.v self.fsiner
pushi.e 1
add.i.v
pop.v.v self.fsiner
push.v self.fsiner
push.v self.body
conv.v.i
pop.v.v [stacktop]self.fsiner
push.v self.body
conv.v.i
pushenv [43]

:[36]
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
push.v self.dancelv
pushi.e 0
cmp.i.v EQ
bf [38]

:[37]
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
push.v self.offy
push.v self.fly
add.v.v
push.v self.offx
push.v self.flyx
add.v.v
pushi.e 0
conv.i.v
pushi.e 580
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[38]
push.v self.dancelv
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
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
push.v self.offy
push.v self.fly
add.v.v
push.v self.offx
push.v self.flyx
add.v.v
push.v self.floatsiner
pushi.e 3
conv.i.d
div.d.v
pushi.e 573
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[40]
push.v self.dancelv
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
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
push.v self.offy
push.v self.fly
add.v.v
push.v self.offx
push.v self.flyx
add.v.v
pushi.e 0
conv.i.v
pushi.e 581
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[42]
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

:[43]
popenv [36]

:[44]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
pushi.e 0
pop.v.i self.flash

:[46]
pushi.e 0
pop.v.i self.becomeflash

:[end]