.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.boxfinished
pushi.e 0
pop.v.i self.con
pushbltn.v self.room
pushi.e 117
cmp.i.v EQ
bt [2]

:[1]
pushbltn.v self.room
pushi.e 121
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
pushi.e 244
conv.i.v
pushi.e 240
conv.i.v
pushi.e 80
conv.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.spike
pushi.e 244
conv.i.v
pushi.e 280
conv.i.v
pushi.e 80
conv.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.spike
pushi.e 244
conv.i.v
pushi.e 200
conv.i.v
pushi.e 920
conv.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.spike
pushi.e 244
conv.i.v
pushi.e 240
conv.i.v
pushi.e 920
conv.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.spike
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [7]

:[6]
push.i 900000
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spike
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
pushbltn.v self.room
pushi.e 117
cmp.i.v EQ
bf [9]

:[8]
pushi.e 331
conv.i.v
pushi.e 240
conv.i.v
pushi.e 280
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.floorwall
pushi.e 2
push.v self.floorwall
conv.v.i
pop.v.i [stacktop]self.image_xscale

:[9]
pushbltn.v self.room
pushi.e 121
cmp.i.v EQ
bf [11]

:[10]
pushi.e 331
conv.i.v
pushi.e 240
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.floorwall
pushi.e 3
push.v self.floorwall
conv.v.i
pop.v.i [stacktop]self.image_xscale

:[11]
pushbltn.v self.room
pushi.e 117
cmp.i.v EQ
bf [17]

:[12]
pushi.e -5
pushi.e 217
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 84
conv.i.v
pushi.e 160
conv.i.v
pushi.e 280
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v
b [17]

:[14]
pushi.e 861
conv.i.v
pushi.e 260
conv.i.v
pushi.e 520
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.flashobj
push.v self.flashobj
conv.v.i
pushenv [16]

:[15]
push.d 0.1
pop.v.d self.image_speed
push.i 90000
pop.v.i self.depth

:[16]
popenv [15]

:[17]
pushbltn.v self.room
pushi.e 121
cmp.i.v EQ
bf [23]

:[18]
pushi.e -5
pushi.e 218
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 84
conv.i.v
pushi.e 160
conv.i.v
pushi.e 280
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v
b [23]

:[20]
pushi.e 861
conv.i.v
pushi.e 260
conv.i.v
pushi.e 520
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.flashobj
push.v self.flashobj
conv.v.i
pushenv [22]

:[21]
push.d 0.1
pop.v.d self.image_speed
push.i 90000
pop.v.i self.depth

:[22]
popenv [21]

:[23]
pushi.e 0
pop.v.i self.visible

:[end]