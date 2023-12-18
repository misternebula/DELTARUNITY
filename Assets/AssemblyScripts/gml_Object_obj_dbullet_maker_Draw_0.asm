.localvar 0 arguments

:[0]
push.v self.dont
pushi.e 0
cmp.i.v EQ
bf [21]

:[1]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.futuredir
pushi.e 1
push.v self.image_alpha
sub.v.i
push.i 16777215
conv.i.v
push.v self.futuredir
pushi.e 3
push.v self.image_alpha
pushi.e 2
mul.i.v
sub.v.i
pushi.e 3
push.v self.image_alpha
pushi.e 2
mul.i.v
sub.v.i
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 417
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
b [5]

:[4]
pushi.e 2
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pop.v.v self.futuredir
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.speed

:[5]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.futuredir
pushi.e 2
push.v self.image_alpha
sub.v.i
pushi.e 2
push.v self.image_alpha
sub.v.i
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [21]

:[6]
push.v self.activetimer
pushi.e 1
add.i.v
pop.v.v self.activetimer
push.v self.activetimer
pushi.e 5
cmp.i.v GTE
bf [8]

:[7]
push.v self.times
push.v self.difficulty
cmp.v.v LT
b [9]

:[8]
push.e 0

:[9]
bf [15]

:[10]
pushi.e 210
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mybul
push.v self.mybul
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[11]
push.v self.damage
push.v self.mybul
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.mybul
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 416
push.v self.mybul
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.futuredir
push.v self.mybul
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.mybul
conv.v.i
pushenv [13]

:[12]
pushi.e 6
pop.v.i self.speed
push.v self.direction
pop.v.v self.image_angle

:[13]
popenv [12]

:[14]
push.v self.times
pushi.e 1
add.i.v
pop.v.v self.times
pushi.e 0
pop.v.i self.activetimer

:[15]
push.v self.activetimer
pushi.e 5
cmp.i.v GTE
bf [17]

:[16]
push.v self.times
push.v self.difficulty
cmp.v.v GTE
b [18]

:[17]
push.e 0

:[18]
bf [21]

:[19]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
pushi.e 0
pop.v.i self.dont

:[end]