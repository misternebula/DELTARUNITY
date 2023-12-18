.localvar 0 arguments

:[0]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.camera
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.camerax
push.v self.camera
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.cameray
pushi.e -5
pushi.e 12
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.camerax
push.v self.shakex
add.v.v
push.v self.camera
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
push.v self.cameray
push.v self.shakey
add.v.v
push.v self.camera
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v

:[3]
push.v self.shakesign
neg.v
pop.v.v self.shakesign
pushi.e 1
pop.v.i self.active
push.v self.shakespeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]