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
cmp.i.v GTE
bf [5]

:[4]
pushi.e 1
pop.v.i self.active

:[5]
push.v self.timer
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 8
conv.i.v
push.v 326.y
pushi.e 50
add.i.v
push.v 326.x
pushi.e 20
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pop.v.v self.image_angle

:[7]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 800
add.i.v
cmp.v.v GTE
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 200
sub.i.v
cmp.v.v LTE
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 600
add.i.v
cmp.v.v GT
bf [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 600
sub.i.v
cmp.v.v LT
bf [end]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[end]