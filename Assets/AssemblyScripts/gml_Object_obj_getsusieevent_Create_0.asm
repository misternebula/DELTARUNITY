.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.rcon
pushglb.v global.plot
pushi.e 38
cmp.i.v GTE
bf [6]

:[1]
pushi.e 237
conv.i.v
pushi.e 40
conv.i.v
pushi.e 400
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.doormarker
push.i 600000
push.v self.doormarker
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.doormarker
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 331
conv.i.v
pushi.e 120
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.block
pushi.e 331
conv.i.v
pushi.e 120
conv.i.v
pushi.e 480
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.block
pushi.e 90
conv.i.v
pushi.e 120
conv.i.v
pushi.e 440
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.door
pushi.e 2
push.v self.door
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.door
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 87
conv.i.v
pushi.e 260
conv.i.v
pushi.e 520
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.visible
pushglb.v global.plot
pushi.e 38
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.rcon

:[3]
pushglb.v global.plot
pushi.e 40
cmp.i.v LT
bf [5]

:[4]
pushi.e 161
conv.i.v
pushi.e 240
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.hathy
pushi.e 30
push.v self.hathy
conv.v.i
pop.v.i [stacktop]self.radius

:[5]
b [7]

:[6]
pushi.e 237
conv.i.v
pushi.e 40
conv.i.v
pushi.e 400
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.doormarker
push.i 600000
push.v self.doormarker
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 331
conv.i.v
pushi.e 120
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.block
pushi.e 3
push.v self.block
conv.v.i
pop.v.i [stacktop]self.image_xscale

:[7]
pushi.e 1
pop.v.i self.con
pushglb.v global.plot
pushi.e 37
cmp.i.v GTE
bf [9]

:[8]
pushi.e 0
pop.v.i self.visible
pushi.e -1
pop.v.i self.con

:[9]
pushi.e 0
pop.v.i self.walkcon
pushi.e 0
pop.v.i self.image_speed

:[end]