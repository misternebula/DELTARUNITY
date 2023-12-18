.localvar 0 arguments

:[0]
push.v self.seizure
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 3
cmp.i.v GTE
bf [3]

:[2]
push.v self.image_angle
pushi.e 45
add.i.v
pop.v.v self.image_angle
pushi.e 0
pop.v.i self.counter

:[3]
push.v self.seizure
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.image_angle
pushi.e 10
add.i.v
pop.v.v self.image_angle

:[5]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 700
add.i.v
cmp.v.v GTE
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]