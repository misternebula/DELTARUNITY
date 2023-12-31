.localvar 0 arguments

:[0]
push.v self.wobbled
pushi.e 0
cmp.i.v EQ
bf [9]

:[1]
pushi.e 326
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[2]
push.v 326.y
push.v self.y
pushi.e 10
sub.i.v
cmp.v.v GT
bf [4]

:[3]
push.v 326.y
push.v self.y
pushi.e 50
add.i.v
cmp.v.v LT
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
push.d 0.334
pop.v.d self.image_speed
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.d 0.2
pop.v.d self.image_speed

:[8]
pushi.e 1
pop.v.i self.wobbled

:[9]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 60
sub.i.v
cmp.v.v LT
bf [end]

:[10]
pushi.e 0
pop.v.i self.wobbled
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
push.v self.y
pushi.e 960
add.i.v
pop.v.v self.y

:[end]