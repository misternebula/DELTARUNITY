.localvar 0 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [6]

:[5]
pushi.e 1
pop.v.i self.init
pushi.e 1
pop.v.i self.active

:[6]
push.v self.tracking
pushi.e 1
cmp.i.v EQ
bf [24]

:[7]
pushi.e 305
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[8]
push.v self.side
pushi.e 1
cmp.i.v EQ
bt [10]

:[9]
push.v self.side
pushi.e 3
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [16]

:[12]
push.v 305.x
pushi.e 10
add.i.v
push.v self.x
sub.v.v
pushi.e 10
cmp.i.v GTE
bf [14]

:[13]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x

:[14]
push.v 305.x
pushi.e 10
add.i.v
push.v self.x
sub.v.v
pushi.e -10
cmp.i.v LTE
bf [16]

:[15]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x

:[16]
push.v self.side
pushi.e 0
cmp.i.v EQ
bt [18]

:[17]
push.v self.side
pushi.e 2
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [24]

:[20]
push.v 305.y
pushi.e 10
add.i.v
push.v self.y
sub.v.v
pushi.e 10
cmp.i.v GTE
bf [22]

:[21]
push.v self.y
pushi.e 3
add.i.v
pop.v.v self.y

:[22]
push.v 305.y
pushi.e 10
add.i.v
push.v self.y
sub.v.v
pushi.e -10
cmp.i.v LTE
bf [24]

:[23]
push.v self.y
pushi.e 3
sub.i.v
pop.v.v self.y

:[24]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [26]

:[25]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [31]

:[28]
pushi.e 0
pop.v.i self.tracking
push.v self.side
pushi.e 90
mul.i.v
pushi.e 180
add.i.v
pop.v.v self.direction
pushi.e 4
pop.v.i self.speed
push.v self.side
pushi.e 90
mul.i.v
pop.v.v self.gravity_direction
push.d 1.2
pop.v.d self.gravity
push.v self.joker
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.d 1.6
pop.v.d self.gravity
pushi.e 6
pop.v.i self.speed

:[30]
pushi.e 1
pop.v.i self.con

:[31]
push.v self.timer
pushi.e 40
cmp.i.v GTE
bf [33]

:[32]
pushi.e 0
pop.v.i self.gravity

:[33]
push.v self.locked
pushi.e 1
cmp.i.v EQ
bf [end]

:[34]
push.v self.ltimer
pushi.e 1
add.i.v
pop.v.v self.ltimer
push.v self.ltimer
pushi.e 12
cmp.i.v GTE
bf [36]

:[35]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
pushi.e 0
pop.v.i self.active

:[36]
push.v self.ltimer
pushi.e 17
cmp.i.v GTE
bf [end]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[end]