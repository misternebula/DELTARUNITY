.localvar 0 arguments

:[0]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [8]

:[1]
push.v self.htimer
pushi.e 1
add.i.v
pop.v.v self.htimer
push.v self.htimer
pushi.e 10
cmp.i.v GTE
bf [3]

:[2]
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.speed

:[3]
push.v self.htimer
pushi.e 20
cmp.i.v GTE
bf [5]

:[4]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha

:[5]
push.v self.htimer
pushi.e 25
cmp.i.v GTE
bf [8]

:[6]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v GTE
bf [8]

:[7]
pushi.e -2
pop.v.i global.turntimer

:[8]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [13]

:[9]
push.v self.htimer
pushi.e 1
add.i.v
pop.v.v self.htimer
push.v self.htimer
push.v self.hmax
cmp.v.v GTE
bf [13]

:[10]
push.v self.image_angle
pop.v.v self.direction
push.d 2.5
pop.v.d self.speed
push.d -0.5
pop.v.d self.friction
push.v self.joker
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 5
pop.v.i self.speed

:[12]
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.htimer

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [18]

:[14]
push.v self.htimer
pushi.e 1
add.i.v
pop.v.v self.htimer
push.v self.image_angle
pushi.e 24
add.i.v
pop.v.v self.image_angle
push.v self.htimer
push.v self.spinmax
cmp.v.v GTE
bf [18]

:[15]
pushi.e 19
pop.v.i self.hmax
push.v self.joker
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 15
pop.v.i self.hmax

:[17]
pushi.e 270
push.v self.spinmax
pushi.e 24
mul.i.v
add.v.i
pop.v.v self.image_angle
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.htimer

:[18]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [23]

:[19]
push.v self.htimer
pushi.e 1
add.i.v
pop.v.v self.htimer
push.v self.htimer
pushi.e 10
cmp.i.v GTE
bf [23]

:[20]
push.d 37.5
conv.d.v
push.d 33.75
conv.d.v
pushi.e 30
conv.i.v
push.d 26.25
conv.d.v
call.i choose(argc=4)
pop.v.v self.spinmax
push.v self.joker
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 15
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.spinmax

:[22]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.htimer

:[23]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [26]

:[24]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.d 0.2
sub.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.2
sub.d.v
pop.v.v self.image_yscale
push.v self.htimer
pushi.e 1
add.i.v
pop.v.v self.htimer
push.v self.htimer
pushi.e 5
cmp.i.v GTE
bf [26]

:[25]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.htimer
pushi.e 1
pop.v.i self.active

:[26]
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v self.grazetimer
pushi.e 1
add.i.v
pop.v.v self.grazetimer

:[28]
push.v self.grazetimer
pushi.e 15
cmp.i.v GTE
bf [end]

:[29]
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.grazed

:[end]