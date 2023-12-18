.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer

:[2]
push.v self.timer
pushi.e 0
cmp.i.v GTE
bf [4]

:[3]
push.v self.timer
pushi.e 10
cmp.i.v LTE
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.image_alpha

:[7]
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.active

:[9]
push.v self.timer
pushi.e 20
cmp.i.v GTE
bf [24]

:[10]
pushi.e 3
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
sub.v.i
pop.v.v self.image_alpha
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [24]

:[11]
pushbltn.v self.room
pushi.e 69
cmp.i.v EQ
bf [13]

:[12]
push.v self.x
pushi.e 80
sub.i.v
pop.v.v self.x

:[13]
pushbltn.v self.room
pushi.e 65
cmp.i.v EQ
bf [16]

:[14]
push.v self.x
pushi.e 40
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 40
add.i.v
pop.v.v self.y
push.v self.y
pushi.e 350
cmp.i.v GTE
bf [16]

:[15]
pushi.e 240
pop.v.i self.y
push.v self.x
pushi.e 120
add.i.v
pop.v.v self.x

:[16]
pushbltn.v self.room
pushi.e 67
cmp.i.v EQ
bf [19]

:[17]
push.v self.x
pushi.e 40
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 40
add.i.v
pop.v.v self.y
push.v self.y
pushi.e 310
cmp.i.v GTE
bf [19]

:[18]
pushi.e 240
pop.v.i self.y
push.v self.x
pushi.e 80
add.i.v
pop.v.v self.x

:[19]
pushi.e -10
pop.v.i self.timer
pushbltn.v self.room
pushi.e 67
cmp.i.v EQ
bf [21]

:[20]
pushi.e -6
pop.v.i self.timer

:[21]
pushbltn.v self.room
pushi.e 65
cmp.i.v EQ
bf [23]

:[22]
pushi.e -4
pop.v.i self.timer

:[23]
pushi.e 0
pop.v.i self.image_alpha

:[24]
push.v self.x
pushi.e 500
cmp.i.v LT
bf [end]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[end]