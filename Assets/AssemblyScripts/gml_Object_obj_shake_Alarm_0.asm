.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 12
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.camerax
push.v self.shakex
push.v self.shakesign
mul.v.v
add.v.v
push.v self.camera
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
push.v self.cameray
push.v self.shakey
push.v self.shakesign
mul.v.v
add.v.v
push.v self.camera
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v

:[2]
push.v self.permashake
pushi.e 0
cmp.i.v EQ
bf [7]

:[3]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[5]
push.v self.shakey
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.shakey
pushi.e 1
sub.i.v
pop.v.v self.shakey

:[7]
push.v self.shakesign
neg.v
pop.v.v self.shakesign
push.v self.shakespeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.shakex
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.shakey
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[end]