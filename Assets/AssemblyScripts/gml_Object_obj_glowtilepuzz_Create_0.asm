.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.record
pushi.e 0
pop.v.i self.tiletotal
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.1
pop.v.d self.image_speed
pushi.e 99
pop.v.i self.funtotal
pushi.e 0
pop.v.i self.order
pushi.e 0
pop.v.i self.funbuffer
pushi.e 0
pop.v.i self.stepnoise
pushi.e 0
pop.v.i self.wonamt
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.failtimer
pushi.e 0
pop.v.i self.failamt
pushi.e 0
pop.v.i self.talked
pushi.e 3
pop.v.i self.wonmax
pushi.e 1
pop.v.i self.plotamt
pushi.e 200
pop.v.i self.failmax
pushbltn.v self.room
pushi.e 55
cmp.i.v EQ
bf [16]

:[1]
pushi.e 240
pop.v.i self.failmax
pushi.e 3
pop.v.i self.wonmax
pushi.e 35
pop.v.i self.plotamt
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.wonmax
cmp.v.v LT
bf [16]

:[3]
pushi.e 331
conv.i.v
pushi.e 280
conv.i.v
pushi.e 1280
push.v self.i
pushi.e 40
mul.i.v
add.v.i
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.block
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.block
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 244
conv.i.v
pushi.e 280
conv.i.v
pushi.e 1280
push.v self.i
pushi.e 40
mul.i.v
add.v.i
call.i scr_dark_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spike1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike1
conv.v.i
pushenv [5]

:[4]
push.i 900000
pop.v.i self.depth

:[5]
popenv [4]
pushi.e 244
conv.i.v
pushi.e 320
conv.i.v
pushi.e 1280
push.v self.i
pushi.e 40
mul.i.v
add.v.i
call.i scr_dark_marker(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spike2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike2
conv.v.i
pushenv [7]

:[6]
push.i 900000
pop.v.i self.depth

:[7]
popenv [6]
pushglb.v global.plot
pushi.e 35
cmp.i.v GTE
bf [15]

:[8]
pushi.e 2
pop.v.i self.active
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike1
conv.v.i
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.image_index

:[10]
popenv [9]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike2
conv.v.i
pushenv [12]

:[11]
pushi.e 1
pop.v.i self.image_index

:[12]
popenv [11]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.block
conv.v.i
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]

:[15]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[16]
pushbltn.v self.room
pushi.e 57
cmp.i.v EQ
bf [22]

:[17]
pushi.e 240
pop.v.i self.failmax
pushi.e 3
pop.v.i self.wonmax
pushi.e 38
pop.v.i self.plotamt
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
push.v self.wonmax
cmp.v.v LT
bf [22]

:[19]
pushglb.v global.plot
pushi.e 38
cmp.i.v GTE
bf [21]

:[20]
pushi.e 2
pop.v.i self.active

:[21]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[22]
pushi.e 0
pop.v.i self.shakecon

:[end]