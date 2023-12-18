.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v 326.x
push.v self.x
pushi.e 60
sub.i.v
cmp.v.v GTE
bf [3]

:[2]
push.v 326.x
push.v self.x
pushi.e 60
add.i.v
cmp.v.v LTE
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.con
push.d 0.334
pop.v.d self.image_speed
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 5
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 3
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.eye_factor
pushi.e 1
pop.v.i self.draw_eye
push.v self.y
pushi.e 100
add.i.v
pop.v.v self.maxy
pushi.e 559
pop.v.i self.sprite_index
pushi.e -8
pop.v.i self.vspeed
push.d 1.5
pop.v.d self.gravity
pushi.e 5
pop.v.i self.con

:[10]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [15]

:[11]
push.v self.eye_factor
pushi.e 5
cmp.i.v LT
bf [13]

:[12]
push.v self.eye_factor
pushi.e 1
add.i.v
pop.v.v self.eye_factor

:[13]
pushi.e 270
pop.v.i self.eye_angle
push.v self.vspeed
push.v self.eye_factor
mul.v.v
pushi.e 5
conv.i.d
div.d.v
push.d 0.7
mul.d.v
pop.v.v self.eye_radius
push.v self.y
push.v self.maxy
cmp.v.v GTE
bf [15]

:[14]
pushi.e 558
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 6
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.remspeed
pushi.e 0
pop.v.i self.stopped

:[15]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [17]

:[16]
push.v self.eye_radius
push.d 0.5
mul.d.v
pop.v.v self.eye_radius

:[17]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [45]

:[18]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [43]

:[19]
push.v self.stopped
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.v self.remspeed
pop.v.v self.speed
pushi.e 0
pop.v.i self.stopped

:[21]
call.i scr_depth(argc=0)
popz.v
push.v self.eye_radius
pushi.e 8
cmp.i.v LT
bf [23]

:[22]
push.v self.eye_radius
pushi.e 2
add.i.v
pop.v.v self.eye_radius

:[23]
push.v 326.y
pushi.e 20
add.i.v
push.v 326.x
pushi.e 20
add.i.v
push.v self.y
pushi.e 28
add.i.v
push.v self.x
pushi.e 32
add.i.v
call.i point_direction(argc=4)
pop.v.v self.eye_angle
push.d 0.25
pop.v.d self.image_speed
push.v self.eye_angle
pop.v.v self.direction
pushi.e 13
pop.v.i self.maxspeed
pushi.e -5
pushi.e 502
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 11
pop.v.i self.maxspeed

:[25]
pushi.e -5
pushi.e 502
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [27]

:[26]
pushi.e 9
pop.v.i self.maxspeed

:[27]
pushbltn.v self.room
pushi.e 70
cmp.i.v EQ
bf [29]

:[28]
pushi.e 9
pop.v.i self.maxspeed

:[29]
push.v self.speed
push.v self.maxspeed
cmp.v.v LT
bf [31]

:[30]
push.v self.speed
pushi.e 2
add.i.v
pop.v.v self.speed

:[31]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 326
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.b
bf [43]

:[32]
pushi.e 13
pop.v.i self.myencounter
pushi.e -5
pushi.e 502
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 14
pop.v.i self.myencounter

:[34]
pushi.e -5
pushi.e 502
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [36]

:[35]
pushi.e 14
conv.i.v
pushi.e 13
conv.i.v
call.i choose(argc=2)
pop.v.v self.myencounter

:[36]
pushbltn.v self.room
pushi.e 70
cmp.i.v EQ
bf [38]

:[37]
pushi.e 14
pop.v.i self.myencounter

:[38]
pushi.e -5
pushi.e 502
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 163
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.newme
pushi.e 555
push.v self.newme
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 555
push.v self.newme
conv.v.i
pop.v.i [stacktop]self.touchsprite
pushi.e 555
push.v self.newme
conv.v.i
pop.v.i [stacktop]self.slidesprite
pushi.e 5
push.v self.newme
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.newme
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.newme
conv.v.i
pushenv [40]

:[39]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
call.i scr_depth(argc=0)
popz.v

:[40]
popenv [39]
push.v self.myencounter
pop.v.v global.encounterno
pushi.e 259
pushenv [42]

:[41]
pushi.e 1
pop.v.i self.fadecon

:[42]
popenv [41]
call.i instance_destroy(argc=0)
popz.v

:[43]
pushglb.v global.interact
pushi.e 0
cmp.i.v NEQ
bf [45]

:[44]
pushi.e 1
pop.v.i self.stopped
push.v self.speed
pop.v.v self.remspeed
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.image_speed

:[45]
push.v self.fadecon
pushi.e 1
cmp.i.v EQ
bf [48]

:[46]
pushi.e 187
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [48]

:[47]
call.i instance_destroy(argc=0)
popz.v

:[48]
push.v self.eye_angle
push.v self.eye_radius
call.i lengthdir_x(argc=2)
pop.v.v self.eyex
push.v self.eye_angle
push.v self.eye_radius
call.i lengthdir_y(argc=2)
pop.v.v self.eyey

:[end]