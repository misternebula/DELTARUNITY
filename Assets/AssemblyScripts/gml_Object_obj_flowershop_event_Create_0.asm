.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.tcon
push.d 0.05
pop.v.d self.image_speed
call.i scr_depth(argc=0)
popz.v
pushbltn.v self.room
pushi.e 24
cmp.i.v EQ
bf [15]

:[1]
pushi.e 266
conv.i.v
pushi.e 103
conv.i.v
pushi.e 20
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.counter
push.v self.counter
conv.v.i
pushenv [3]

:[2]
call.i scr_depth(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 267
conv.i.v
pushi.e 136
conv.i.v
pushi.e 177
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.flowera
pushi.e 267
conv.i.v
pushi.e 82
conv.i.v
pushi.e 177
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.flowerb
push.v self.flowera
conv.v.i
pushenv [5]

:[4]
call.i scr_depth(argc=0)
popz.v

:[5]
popenv [4]
push.v self.flowerb
conv.v.i
pushenv [7]

:[6]
call.i scr_depth(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 1
pop.v.i self.con
pushi.e -5
pushi.e 262
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [12]

:[8]
pushi.e 83
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.visible
pushi.e -5
pushi.e 262
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 50
pop.v.i self.con

:[10]
pushi.e -5
pushi.e 262
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [12]

:[11]
pushi.e -1
pop.v.i self.con

:[12]
pushi.e -5
pushi.e 262
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i global.interact

:[14]
pushi.e 0
pop.v.i self.image_speed

:[15]
pushbltn.v self.room
pushi.e 24
cmp.i.v EQ
bf [20]

:[16]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [20]

:[17]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.entrance
pushi.e 326
pushenv [19]

:[18]
pushi.e -5
pushi.e 264
push.v [array]global.flag
pop.v.v self.x

:[19]
popenv [18]

:[20]
pushbltn.v self.room
pushi.e 25
cmp.i.v EQ
bf [end]

:[21]
pushi.e 0
pop.v.i self.visible
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [end]

:[22]
pushi.e 0
pop.v.i global.entrance
pushi.e 0
pop.v.i global.interact
pushi.e 326
pushenv [24]

:[23]
pushi.e -5
pushi.e 264
push.v [array]global.flag
pop.v.v self.x

:[24]
popenv [23]
push.v 326.x
pushi.e 160
cmp.i.v LT
bf [26]

:[25]
pushi.e 255
pop.v.i self.x

:[26]
push.v 326.x
pushi.e 160
cmp.i.v GT
bf [28]

:[27]
pushi.e 15
pop.v.i self.x

:[28]
pushi.e 83
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e -1
pop.v.i self.con

:[end]