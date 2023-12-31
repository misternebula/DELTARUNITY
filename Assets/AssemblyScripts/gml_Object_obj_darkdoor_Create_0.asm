.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.open
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.xsin
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 5
cmp.i.v LT
bf [8]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 326
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.visible

:[3]
popenv [2]
pushi.e 839
conv.i.v
pushi.e 198
conv.i.v
pushi.e 290
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.k
pushi.e 176
conv.i.v
pushi.e 190
conv.i.v
pushi.e 310
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.s
pushi.e 1
pop.v.i global.interact
push.v self.s
conv.v.i
pushenv [5]

:[4]
pushi.e -1
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[5]
popenv [4]
push.v self.k
conv.v.i
pushenv [7]

:[6]
pushi.e -1
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[7]
popenv [6]
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [11]

:[8]
pushi.e 336
conv.i.v
pushi.e 100
conv.i.v
pushi.e 280
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.block
pushi.e 4
push.v self.block
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 107
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.sunset
push.v self.sunset
conv.v.i
pushenv [10]

:[9]
push.d 0.4
pop.v.d self.image_alpha
pushi.e 2000
pop.v.i self.depth

:[10]
popenv [9]

:[11]
pushglb.v global.plot
pushi.e 250
cmp.i.v EQ
bf [end]

:[12]
pushi.e 326
pushenv [14]

:[13]
push.v 107.x
pop.v.v self.x
push.v 107.y
pop.v.v self.y

:[14]
popenv [13]
pushi.e 1
pop.v.i global.interact
pushi.e 40
pop.v.i self.con

:[end]