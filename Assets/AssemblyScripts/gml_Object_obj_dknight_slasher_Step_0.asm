.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.object_index
call.i instance_number(argc=1)
pop.v.v self.throwernumber
pushi.e 12
pop.v.i self.con
pushi.e 4
pop.v.i self.movecon
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.thrown
pushi.e 0
pop.v.i self.image_index

:[2]
push.v self.movecon
pushi.e 4
cmp.i.v EQ
bf [10]

:[3]
push.v self.movesiner
pushi.e 1
add.i.v
pop.v.v self.movesiner
pushglb.v global.turntimer
pushi.e 30
cmp.i.v GTE
bf [6]

:[4]
push.v self.movefactor
pushi.e 1
cmp.i.v LT
bf [6]

:[5]
push.v self.movefactor
push.d 0.1
add.d.v
pop.v.v self.movefactor

:[6]
push.v self.ystart
push.v self.movesiner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
push.v self.movefactor
mul.v.v
add.v.v
pop.v.v self.y
pushglb.v global.turntimer
pushi.e 30
cmp.i.v LTE
bf [10]

:[7]
push.v self.movefactor
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.v self.movefactor
push.d 0.1
sub.d.v
pop.v.v self.movefactor
b [10]

:[9]
pushi.e 0
pop.v.i self.movefactor

:[10]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [13]

:[11]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.thrown
pushi.e 0
pop.v.i self.image_index
pushglb.v global.turntimer
pushi.e 15
cmp.i.v GT
bf [13]

:[12]
pushi.e 11
pop.v.i self.con

:[13]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [27]

:[14]
push.v self.image_index
push.d 0.334
add.d.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 4
cmp.i.v GTE
bf [16]

:[15]
push.v self.thrown
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [25]

:[18]
pushi.e 210
conv.i.v
push.v self.y
pushi.e 34
add.i.v
push.v self.x
pushi.e 6
add.i.v
call.i instance_create(argc=3)
pop.v.v self.swordbullet
push.v self.movesiner
push.v self.swordbullet
conv.v.i
pop.v.v [stacktop]self.siner
push.v self.swordbullet
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.throwernumber
push.v self.swordbullet
conv.v.i
pop.v.v [stacktop]self.throwernumber
push.v self.swordbullet
conv.v.i
pushenv [24]

:[19]
pushi.e 1
pop.v.i self.active
pushi.e 617
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 9
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.throwernumber
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
push.v self.speed
push.d 0.85
mul.d.v
pop.v.v self.speed

:[21]
push.v self.throwernumber
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
push.v self.speed
push.d 0.7
mul.d.v
pop.v.v self.speed

:[23]
push.v self.direction
pushi.e 5
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.i
add.v.v
pop.v.v self.direction
push.v self.direction
pop.v.v self.image_angle

:[24]
popenv [19]
push.v self.depth
pushi.e 1
add.i.v
push.v self.swordbullet
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 1
pop.v.i self.thrown

:[25]
push.v self.image_index
pushi.e 6
cmp.i.v GTE
bf [27]

:[26]
pushi.e 12
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[27]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [end]

:[28]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.throwernumber
pushi.e 3
mul.i.v
cmp.v.v GTE
bf [end]

:[29]
pushi.e 10
pop.v.i self.con

:[end]