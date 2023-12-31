.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.x
push.v 188.x
pushi.e 100
add.i.v
cmp.v.v GTE
bf [3]

:[2]
push.v self.hspeed
push.d 0.5
sub.d.v
pop.v.v self.hspeed

:[3]
push.v self.x
push.v 188.x
pushi.e 100
sub.i.v
cmp.v.v LTE
bf [5]

:[4]
push.v self.hspeed
push.d 0.5
add.d.v
pop.v.v self.hspeed

:[5]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [10]

:[6]
push.v self.y
push.v 188.y
pushi.e 100
add.i.v
cmp.v.v GTE
bf [8]

:[7]
push.v self.vspeed
push.d 0.5
sub.d.v
pop.v.v self.vspeed

:[8]
push.v self.y
push.v 188.y
pushi.e 100
sub.i.v
cmp.v.v LTE
bf [10]

:[9]
push.v self.vspeed
push.d 0.5
add.d.v
pop.v.v self.vspeed

:[10]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.image_angle
push.v self.anglespeed
add.v.v
pop.v.v self.image_angle
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [12]

:[11]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[12]
push.v self.grazetimer
pushi.e 1
add.i.v
pop.v.v self.grazetimer
push.v self.grazetimer
pushi.e 3
cmp.i.v GTE
bf [end]

:[13]
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.grazed

:[end]