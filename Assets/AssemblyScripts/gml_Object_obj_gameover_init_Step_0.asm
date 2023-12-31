.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i snd_free_all(argc=0)
popz.v

:[2]
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [6]

:[3]
push.v self.bg
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 1
pop.v.i self.visible
pushglb.v global.heartx
pop.v.v self.x
pushglb.v global.hearty
pop.v.v self.y

:[6]
push.v self.timer
pushi.e 31
cmp.i.v EQ
bf [8]

:[7]
pushglb.v global.screenshot
call.i sprite_delete(argc=1)
popz.v

:[8]
push.v self.timer
pushi.e 50
cmp.i.v EQ
bf [10]

:[9]
pushi.e 89
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 859
pop.v.i self.sprite_index
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x

:[10]
push.v self.timer
pushi.e 90
cmp.i.v EQ
bf [18]

:[11]
pushi.e 90
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.visible
pushi.e 78
conv.i.v
push.v self.y
push.v self.x
pushi.e 2
sub.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.sh
pushi.e 78
conv.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.sh
pushi.e 78
conv.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.sh
pushi.e 78
conv.i.v
push.v self.y
push.v self.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.sh
pushi.e 78
conv.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.sh
pushi.e 78
conv.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 5
pop.v.v [array]self.sh
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [16]

:[13]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sh
conv.v.i
pushenv [15]

:[14]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.direction
pushi.e 7
pop.v.i self.speed
pushi.e 270
pop.v.i self.gravity_direction
push.d 0.2
pop.v.d self.gravity
pushi.e 860
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[15]
popenv [14]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [12]

:[16]
pushi.e -5
pushi.e 3
push.v [array]global.tempflag
pushi.e 1
cmp.i.v GTE
bf [18]

:[17]
push.v self.timer
pushi.e 15
add.i.v
pop.v.v self.timer

:[18]
push.v self.timer
pushi.e 140
cmp.i.v EQ
bf [20]

:[19]
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[20]
push.v self.timer
pushi.e 80
cmp.i.v GTE
bf [22]

:[21]
push.v self.timer
pushi.e 150
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [28]

:[24]
call.i button1_p(argc=0)
conv.v.b
bf [26]

:[25]
push.v self.Z_COUNT
pushi.e 1
add.i.v
pop.v.v self.Z_COUNT

:[26]
push.v self.Z_COUNT
pushi.e 4
cmp.i.v GTE
bf [28]

:[27]
call.i scr_tempload(argc=0)
popz.v

:[28]
push.v self.timer
pushi.e 150
cmp.i.v EQ
bf [end]

:[29]
pushi.e 138
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]