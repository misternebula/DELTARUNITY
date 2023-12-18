.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 568
pop.v.i self.sprite_index

:[3]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 566
pop.v.i self.sprite_index

:[5]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 567
pop.v.i self.sprite_index

:[7]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 565
pop.v.i self.sprite_index

:[9]
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i self.con

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [17]

:[11]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [15]

:[12]
pushi.e 284
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.beepnoise

:[14]
popenv [13]
push.v self.timer
push.v self.maxtimer
div.v.v
pop.v.v self.image_speed

:[15]
push.v self.timer
push.v self.maxtimer
cmp.v.v GTE
bf [17]

:[16]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.speed

:[17]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [39]

:[18]
pushi.e 284
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.burstnoise

:[20]
popenv [19]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [25]

:[21]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.dir
pushi.e 12
pop.v.i self.maxe
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [24]

:[23]
pushi.e 210
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spade
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.i [stacktop]self.active
push.v self.dir
push.v self.i
pushi.e 360
conv.i.d
push.v self.maxe
div.v.d
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 8
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
push.v [stacktop]self.direction
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e 679
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spade
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [22]

:[24]
pushi.e 3
pop.v.i self.con

:[25]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [32]

:[26]
pushi.e 0
pop.v.i self.i

:[27]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [31]

:[28]
pushi.e 210
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.diamond
pushi.e 100
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
conv.v.i
pop.v.i [stacktop]self.damage
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
conv.v.i
pushenv [30]

:[29]
pushi.e 11
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[30]
popenv [29]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
conv.v.i
dup.i 0
push.v [stacktop]self.speed
push.v self.i
sub.v.v
pop.i.v [stacktop]self.speed
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
conv.v.i
push.v [stacktop]self.direction
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e 416
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.diamond
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [27]

:[31]
pushi.e 3
pop.v.i self.con

:[32]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
pushi.e 261
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.h
push.v self.h
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 3
pop.v.i self.con

:[34]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [39]

:[35]
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.dir
pushi.e 0
pop.v.i self.i

:[36]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [38]

:[37]
pushi.e 210
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.club
pushi.e 510
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 100
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
conv.v.i
pop.v.i [stacktop]self.damage
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
conv.v.i
pop.v.i [stacktop]self.active
push.v self.dir
pushi.e 20
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
conv.v.i
push.v [stacktop]self.direction
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e 8
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.club
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [36]

:[38]
pushi.e 3
pop.v.i self.con

:[39]
push.v self.explodedraw
pushi.e 40
cmp.i.v GTE
bf [end]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[end]