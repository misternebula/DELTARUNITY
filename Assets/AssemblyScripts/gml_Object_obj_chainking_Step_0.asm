.localvar 0 arguments

:[0]
push.v self.t
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.kingcon
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [10]

:[4]
pushi.e 640
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.kingcon
pushi.e 0
pop.v.i self.soundplayed
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.subtype
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 60
conv.i.v
call.i snd_play(argc=1)
popz.v
b [10]

:[9]
pushi.e 59
conv.i.v
call.i snd_play(argc=1)
popz.v

:[10]
push.v self.kingcon
pushi.e 1
cmp.i.v EQ
bf [24]

:[11]
push.v self.image_index
pushi.e 3
cmp.i.v GTE
bf [24]

:[12]
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [14]

:[13]
push.v self.soundplayed
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 83
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.soundplayed

:[17]
pushi.e 641
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.334
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.kingcon
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 239
conv.i.v
push.v self.y
pushi.e 104
add.i.v
push.v self.x
pushi.e 44
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.chain

:[19]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 248
conv.i.v
push.v self.y
pushi.e 104
add.i.v
push.v self.x
pushi.e 24
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.chain

:[21]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
pushi.e 243
conv.i.v
push.v self.y
pushi.e 104
add.i.v
push.v self.x
pushi.e 24
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.chain

:[23]
push.v self.chain
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.subtype
push.v self.chain
conv.v.i
pop.v.v [stacktop]self.type

:[24]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [35]

:[25]
push.v self.kingcon
pushi.e 2
cmp.i.v EQ
bf [31]

:[26]
push.v self.chain
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[27]
push.v self.chain
conv.v.i
push.v [stacktop]self.chaincon
pushi.e 3
cmp.i.v EQ
bf [29]

:[28]
pushi.e 0
pop.v.i self.image_speed

:[29]
push.v self.chain
conv.v.i
push.v [stacktop]self.chaincon
pushi.e 10
cmp.i.v GTE
bf [31]

:[30]
pushi.e 637
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 3
pop.v.i self.kingcon

:[31]
push.v self.kingcon
pushi.e 3
cmp.i.v EQ
bf [35]

:[32]
push.v self.chain
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[33]
push.v self.chain
conv.v.i
push.v [stacktop]self.chaincon
pushi.e 11
cmp.i.v GTE
bf [35]

:[34]
pushi.e 638
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 4
pop.v.i self.kingcon

:[35]
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t

:[end]