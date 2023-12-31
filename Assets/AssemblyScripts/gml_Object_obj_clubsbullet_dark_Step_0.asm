.localvar 0 arguments

:[0]
push.v self.dtimer
pushi.e 1
add.i.v
pop.v.v self.dtimer
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [14]

:[1]
push.v self.dtimer
pushi.e 15
cmp.i.v EQ
bt [4]

:[2]
push.v self.dtimer
pushi.e 19
cmp.i.v EQ
bt [4]

:[3]
push.v self.dtimer
pushi.e 23
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [12]

:[6]
push.d 0.1
conv.d.v
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 210
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bul
push.v self.bul
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 508
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.direction
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 4
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.direction
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.damage
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e 1
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.timepoints

:[8]
pushi.e 210
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bul
push.v self.bul
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
pushi.e 509
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.direction
pushi.e 17
sub.i.v
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 4
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.direction
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.damage
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e 1
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.timepoints

:[10]
pushi.e 210
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bul
push.v self.bul
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[11]
pushi.e 507
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.direction
pushi.e 17
add.i.v
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 4
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.direction
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.damage
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e 1
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.timepoints

:[12]
push.v self.dtimer
pushi.e 25
cmp.i.v EQ
bf [14]

:[13]
pushi.e 183
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.a
push.v self.sprite_index
push.v self.a
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.image_angle
push.v self.a
conv.v.i
pop.v.v [stacktop]self.image_angle
call.i instance_destroy(argc=0)
popz.v

:[14]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [end]

:[15]
push.v self.dtimer
pushi.e 20
cmp.i.v EQ
bt [18]

:[16]
push.v self.dtimer
pushi.e 22
cmp.i.v EQ
bt [18]

:[17]
push.v self.dtimer
pushi.e 24
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [33]

:[20]
push.d 0.1
conv.d.v
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 210
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bul
push.v self.bul
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[21]
pushi.e 508
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.direction
pushi.e 2
sub.i.v
push.v self.initangle
add.v.v
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 2
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
pushi.e 5
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.speed

:[23]
push.v self.direction
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.bul
call.i scr_bullet_inherit(argc=1)
popz.v

:[24]
pushi.e 210
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bul
push.v self.bul
call.i instance_exists(argc=1)
conv.v.b
bf [28]

:[25]
pushi.e 509
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.direction
pushi.e 19
sub.i.v
pushi.e 2
sub.i.v
push.v self.initangle
add.v.v
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 2
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushi.e 5
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.speed

:[27]
push.v self.direction
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.bul
call.i scr_bullet_inherit(argc=1)
popz.v

:[28]
pushi.e 210
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bul
push.v self.bul
call.i instance_exists(argc=1)
conv.v.b
bf [32]

:[29]
pushi.e 507
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.direction
pushi.e 19
add.i.v
pushi.e 2
sub.i.v
push.v self.initangle
add.v.v
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 2
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
pushi.e 5
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.speed

:[31]
push.v self.direction
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.bul
call.i scr_bullet_inherit(argc=1)
popz.v

:[32]
push.v self.initangle
pushi.e 2
add.i.v
pop.v.v self.initangle

:[33]
push.v self.dtimer
pushi.e 26
cmp.i.v EQ
bf [end]

:[34]
pushi.e 183
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.a
push.v self.sprite_index
push.v self.a
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.image_angle
push.v self.a
conv.v.i
pop.v.v [stacktop]self.image_angle
call.i instance_destroy(argc=0)
popz.v

:[end]