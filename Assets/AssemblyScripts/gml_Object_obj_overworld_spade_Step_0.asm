.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 2
cmp.i.v GTE
bf [5]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[3]
push.v self.image_alpha
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.active

:[5]
pushbltn.v self.room
pushi.e 43
cmp.i.v EQ
bf [11]

:[6]
push.v self.x
pushi.e 680
cmp.i.v GT
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.x
pushi.e -40
cmp.i.v LT
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
b [end]

:[11]
pushbltn.v self.room
pushi.e 42
cmp.i.v EQ
bf [16]

:[12]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 800
add.i.v
cmp.v.v GTE
bf [14]

:[13]
push.v self.x
pushi.e 900
sub.i.v
pop.v.v self.x

:[14]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 200
sub.i.v
cmp.v.v LTE
bf [16]

:[15]
push.v self.x
pushi.e 900
add.i.v
pop.v.v self.x

:[16]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 600
add.i.v
cmp.v.v GT
bf [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 800
sub.i.v
cmp.v.v LT
bf [end]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[end]