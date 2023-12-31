.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 69
cmp.i.v EQ
bf [14]

:[1]
push.v self.timer
pushi.e 900
cmp.i.v GTE
bf [3]

:[2]
pushi.e 178
conv.i.v
pushi.e 240
conv.i.v
pushi.e 1202
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 178
conv.i.v
pushi.e 280
conv.i.v
pushi.e 1242
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 178
conv.i.v
pushi.e 320
conv.i.v
pushi.e 1282
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 178
conv.i.v
pushi.e 240
conv.i.v
pushi.e 962
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 178
conv.i.v
pushi.e 280
conv.i.v
pushi.e 1002
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 178
conv.i.v
pushi.e 320
conv.i.v
pushi.e 1042
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 178
conv.i.v
pushi.e 240
conv.i.v
pushi.e 722
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 178
conv.i.v
pushi.e 280
conv.i.v
pushi.e 762
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 178
conv.i.v
pushi.e 320
conv.i.v
pushi.e 802
conv.i.v
call.i instance_create(argc=3)
popz.v

:[3]
push.v 326.x
pushi.e 4000
cmp.i.v GTE
bf [5]

:[4]
push.v 326.x
pushi.e 1620
cmp.i.v LTE
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i 326.battlemode
b [9]

:[8]
pushi.e 0
pop.v.i 326.battlemode

:[9]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer

:[11]
push.v self.timer
pushi.e 40
cmp.i.v GTE
bf [14]

:[12]
pushi.e 0
pop.v.i self.timer
push.v self.con
pushi.e 40
mul.i.v
pop.v.v self.ch
pushi.e 178
conv.i.v
pushi.e 240
push.v self.ch
add.v.i
pushi.e 1442
push.v self.ch
sub.v.i
call.i instance_create(argc=3)
popz.v
push.v self.con
pushi.e 1
add.i.v
pop.v.v self.con
push.v self.con
pushi.e 2
cmp.i.v GT
bf [14]

:[13]
pushi.e 0
pop.v.i self.con

:[14]
push.v self.whitetimer
pushi.e 20
cmp.i.v GTE
bf [16]

:[15]
push.v self.whitecon
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [27]

:[18]
push.v 326.x
pushi.e 340
sub.i.v
pop.v.v self.xdiff
pushi.e 340
pop.v.i 326.x
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [22]

:[19]
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.xdiff
sub.v.v
pop.i.v [stacktop]self.x
pushi.e 25
pop.v.i self.i

:[20]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [22]

:[21]
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.remx
push.v self.xdiff
sub.v.v
pop.i.v [array]self.remx
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [20]

:[22]
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[23]
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.xdiff
sub.v.v
pop.i.v [stacktop]self.x
pushi.e 25
pop.v.i self.i

:[24]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [26]

:[25]
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.remx
push.v self.xdiff
sub.v.v
pop.i.v [array]self.remx
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [24]

:[26]
pushi.e 2
pop.v.i self.whitecon

:[27]
pushbltn.v self.room
pushi.e 65
cmp.i.v EQ
bt [29]

:[28]
pushbltn.v self.room
pushi.e 67
cmp.i.v EQ
b [30]

:[29]
push.e 1

:[30]
bf [end]

:[31]
push.v 326.x
pushi.e 4000
cmp.i.v GTE
bf [33]

:[32]
push.v 326.x
pushi.e 1620
cmp.i.v LTE
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 1
pop.v.i 326.battlemode
b [end]

:[36]
pushi.e 0
pop.v.i 326.battlemode

:[end]