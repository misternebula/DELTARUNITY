.localvar 0 arguments

:[0]
push.v self.homing
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.dir
pushi.e 200
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.radius
push.v self.dir
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v self.dirx
push.v self.dir
push.v self.radius
call.i lengthdir_y(argc=2)
pop.v.v self.diry
push.v self.dirx
push.v 326.x
add.v.v
pushi.e 10
add.i.v
pop.v.v self.xx
push.v self.diry
push.v 326.y
add.v.v
pushi.e 40
add.i.v
pop.v.v self.yy
pushi.e 179
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
popz.v
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[2]
push.v self.homing
pushi.e 0
cmp.i.v EQ
bf [8]

:[3]
pushi.e -300
pushi.e 1000
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.radius
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
push.v self.radius
pushi.e -1
mul.i.v
pop.v.v self.radius

:[5]
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 180
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 500
sub.i.v
push.v 326.x
push.v self.radius
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fallspade
push.v self.fallspade
conv.v.i
pushenv [7]

:[6]
pushi.e 270
pop.v.i self.image_angle
push.d 0.08
pop.v.d self.gravity
pushi.e 0
pop.v.i self.speed
pushi.e 6
pop.v.i self.vspeed
push.d -0.8
push.d 1.6
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.hspeed

:[7]
popenv [6]

:[8]
push.v self.homing
pushi.e 2
cmp.i.v EQ
bf [25]

:[9]
pushi.e 10
push.v self.intensity
pushi.e 20
conv.i.d
div.d.v
sub.v.i
pop.v.v self.alarmamt
push.v self.alarmamt
pushi.e 5
cmp.i.v LT
bf [11]

:[10]
pushi.e 5
pop.v.i self.alarmamt

:[11]
pushi.e -1
push.v self.side
conv.v.i
push.v [array]self.sidespade
conv.v.i
pushenv [13]

:[12]
pushi.e 11
pop.v.i self.speed

:[13]
popenv [12]
push.v self.alarmamt
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 80
pop.v.i self.radius
b [16]

:[15]
pushi.e 560
pop.v.i self.radius

:[16]
pushi.e 180
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 30
add.i.v
pushi.e 420
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.radius
call.i instance_create(argc=3)
pushi.e -1
push.v self.side
conv.v.i
pop.v.v [array]self.sidespade
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pushi.e -1
push.v self.side
conv.v.i
push.v [array]self.sidespade
conv.v.i
pop.v.i [stacktop]self.direction

:[18]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 180
pushi.e -1
push.v self.side
conv.v.i
push.v [array]self.sidespade
conv.v.i
pop.v.i [stacktop]self.direction

:[20]
pushi.e -1
push.v self.side
conv.v.i
push.v [array]self.sidespade
conv.v.i
pushenv [24]

:[21]
pushi.e 17
pop.v.i self.damage
pushi.e -5
pushi.e 1
push.v [array]global.hp
pushi.e 40
cmp.i.v LTE
bf [23]

:[22]
pushi.e 13
pop.v.i self.damage

:[23]
push.v self.direction
pop.v.v self.image_angle

:[24]
popenv [21]
push.v self.intensity
pushi.e 1
add.i.v
pop.v.v self.intensity

:[25]
push.v self.homing
pushi.e 3
cmp.i.v EQ
bf [33]

:[26]
pushi.e 100
pushi.e 900
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.radius
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
push.v self.radius
pushi.e 500
sub.i.v
pop.v.v self.radius

:[28]
pushi.e 7
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 180
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 100
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 550
add.i.v
call.i choose(argc=2)
push.v 326.x
push.v self.radius
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fallspade
push.v self.fallspade
conv.v.i
pushenv [32]

:[29]
push.v self.damage
pushi.e 4
sub.i.v
pop.v.v self.damage
push.v self.damage
pushi.e -5
pushi.e 0
push.v [array]global.battledf
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.damage
push.d 1.5
pop.v.d self.image_xscale
push.d 1.5
pop.v.d self.image_yscale
push.d -0.1
pop.v.d self.friction
pushi.e 416
pop.v.i self.sprite_index
push.v self.y
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [31]

:[30]
pushi.e 135
pop.v.i self.image_angle
pushi.e -5
pop.v.i self.vspeed
pushi.e -5
pop.v.i self.hspeed
b [32]

:[31]
pushi.e 225
pop.v.i self.image_angle
pushi.e 5
pop.v.i self.vspeed
pushi.e -5
pop.v.i self.hspeed

:[32]
popenv [29]

:[33]
push.v self.homing
pushi.e 4
cmp.i.v EQ
bf [40]

:[34]
pushi.e 1
pushi.e -5
pushi.e 1
push.v [array]global.hp
pushi.e -5
pushi.e 1
push.v [array]global.maxhp
div.v.v
sub.v.i
pop.v.v self.slow_bonus
pushi.e 20
pushi.e 15
push.v self.slow_bonus
mul.v.i
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.side
push.v 326.y
pushi.e 400
cmp.i.v GTE
bf [40]

:[35]
pushi.e 0
pop.v.i self.i

:[36]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [40]

:[37]
pushi.e 180
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 500
add.i.v
pushi.e 220
pushi.e 20
push.v self.i
mul.v.i
add.v.i
push.v self.side
pushi.e 120
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fallspade
pushi.e -10
pushi.e 3
push.v self.slow_bonus
mul.v.i
add.v.i
push.v self.fallspade
conv.v.i
pop.v.v [stacktop]self.vvalue
push.d -0.5
push.d 0.2
push.v self.slow_bonus
mul.v.d
add.v.d
push.v self.fallspade
conv.v.i
pop.v.v [stacktop]self.fvalue
push.v self.fallspade
conv.v.i
pushenv [39]

:[38]
push.v self.damage
pushi.e 4
sub.i.v
pop.v.v self.damage
push.v self.damage
pushi.e -5
pushi.e 0
push.v [array]global.battledf
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.damage
pushi.e 90
pop.v.i self.image_angle
push.d 1.5
pop.v.d self.image_xscale
push.d 1.5
pop.v.d self.image_yscale
push.v self.vvalue
pop.v.v self.vspeed
push.v self.fvalue
pop.v.v self.friction
pushi.e 416
pop.v.i self.sprite_index

:[39]
popenv [38]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [36]

:[40]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 1
pop.v.i self.side
b [end]

:[42]
pushi.e 0
pop.v.i self.side

:[end]