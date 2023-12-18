.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_angle
pushi.e 10
add.i.v
pop.v.v self.image_angle

:[2]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [6]

:[3]
push.v self.x
push.v self.xstart
pushi.e 40
add.i.v
cmp.v.v LT
bf [5]

:[4]
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.x

:[5]
pushi.e 6
pop.v.i self.con

:[6]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [9]

:[7]
push.v self.x
push.v self.xstart
cmp.v.v GT
bf [9]

:[8]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x

:[9]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [end]

:[10]
push.v self.x
push.v self.xstart
pushi.e 40
add.i.v
cmp.v.v LT
bf [12]

:[11]
push.v self.x
pushi.e 8
add.i.v
pop.v.v self.x

:[12]
pushi.e 6
pop.v.i self.con

:[end]