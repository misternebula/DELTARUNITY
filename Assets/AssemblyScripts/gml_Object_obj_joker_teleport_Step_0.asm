.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.sndcon
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 79
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 79
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.sndcon

:[3]
pushi.e 0
pop.v.i self.image_index
push.v self.image_xscale
pushi.e 2
cmp.i.v LT
bf [5]

:[4]
push.v self.image_xscale
push.d 0.4
add.d.v
pop.v.v self.image_xscale
b [6]

:[5]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [23]

:[7]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 8
cmp.i.v GTE
bf [23]

:[8]
push.v self.sndcon
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.type
pushi.e 3
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 123
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.sndcon

:[13]
pushi.e 1
pop.v.i self.image_index
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [17]

:[14]
pushi.e 193
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bullet
pushi.e 416
push.v self.bullet
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.bullet
conv.v.i
pop.v.i [stacktop]self.active
push.v self.bullet
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.bullet
conv.v.i
pushenv [16]

:[15]
pushi.e 8
conv.i.v
push.v 305.y
pushi.e 10
add.i.v
push.v 305.x
pushi.e 10
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pop.v.v self.image_angle
push.d 0.7
pop.v.d self.image_xscale
push.d 0.7
pop.v.d self.image_yscale

:[16]
popenv [15]

:[17]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [23]

:[18]
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [23]

:[20]
pushi.e 193
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bullet
pushi.e 679
push.v self.bullet
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.bullet
conv.v.i
pop.v.i [stacktop]self.active
pushi.e 18
push.v self.i
mul.v.i
push.v self.bullet
conv.v.i
pop.v.v [stacktop]self.offset
push.v self.bullet
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.bullet
conv.v.i
pushenv [22]

:[21]
push.d 4.5
conv.d.v
push.v 305.y
pushi.e 10
add.i.v
push.v 305.x
pushi.e 10
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pushi.e 36
sub.i.v
push.v self.offset
add.v.v
pop.v.v self.direction
push.v self.direction
pop.v.v self.image_angle
push.d 0.4
pop.v.d self.image_xscale
push.d 0.4
pop.v.d self.image_yscale

:[22]
popenv [21]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [19]

:[23]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [26]

:[24]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [26]

:[25]
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[26]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[27]
push.v self.sndcon
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
pushi.e 79
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 79
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i self.sndcon

:[29]
push.v self.image_xscale
pushi.e 0
cmp.i.v GT
bf [31]

:[30]
push.v self.image_xscale
push.d 0.4
sub.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.2
add.d.v
pop.v.v self.image_yscale
b [end]

:[31]
pushi.e 0
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]