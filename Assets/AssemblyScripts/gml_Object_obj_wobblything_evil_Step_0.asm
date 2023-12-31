.localvar 0 arguments

:[0]
push.v self.wobbled
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 326
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
push.v 326.x
push.v self.x
pushi.e 20
sub.i.v
cmp.v.v GT
bf [7]

:[6]
push.v 326.x
push.v self.x
pushi.e 50
add.i.v
cmp.v.v LT
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[10]
pushi.e 169
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
push.i 800000
push.v self.d
conv.v.i
pop.v.i [stacktop]self.depth

:[11]
pushi.e 326
pushenv [13]

:[12]
pushi.e 1
pop.v.i self.battlemode
pushi.e 2
pop.v.i self.threebuffer

:[13]
popenv [12]
pushi.e 116
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.s
push.d 0.5
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.s
call.i snd_pitch(argc=2)
popz.v
pushi.e 116
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.s2
push.d 0.9
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.s2
call.i snd_pitch(argc=2)
popz.v
push.d 0.2
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.wobbled
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[15]
pushi.e 180
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dbullet
push.v self.dbullet
conv.v.i
pushenv [17]

:[16]
pushi.e 15
pop.v.i self.damage
pushi.e 716
pop.v.i self.sprite_index
push.d 0.7
pop.v.d self.image_alpha
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[17]
popenv [16]
pushi.e 10
push.v self.dbullet
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 250
push.v self.i
pushi.e 20
mul.i.v
add.v.i
push.v self.dbullet
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [14]

:[end]