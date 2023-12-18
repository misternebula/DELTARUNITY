.localvar 0 arguments

:[0]
pushi.e 13
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [3]

:[1]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
call.i scr_debug(argc=0)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [30]

:[5]
push.v self.attackno
pushi.e 1
add.i.v
pop.v.v self.attackno
pushi.e 0
pop.v.i self.active
push.v self.attackno
pushi.e 11
cmp.i.v LTE
bf [7]

:[6]
push.v self.attackno
pop.v.v self.attack
b [8]

:[7]
pushi.e 11
conv.i.v
pushi.e 10
conv.i.v
pushi.e 9
conv.i.v
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
call.i choose(argc=5)
pop.v.v self.attack

:[8]
push.v self.attack
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 303
conv.i.v
push.v self.yy
pushi.e 170
add.i.v
push.v self.xx
pushi.e 340
add.i.v
call.i instance_create(argc=3)
pop.v.v self.box
call.i scr_moveheart(argc=0)
popz.v
pushi.e 233
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dd
pushi.e 21
push.v self.dd
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
pop.v.i self.timeruse
pushi.e 190
pop.v.i self.faketimermax
pushi.e 0
pop.v.i self.faketimer

:[10]
push.v self.attack
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i self.visible
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.chainking
pushi.e 1
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 0
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.subtype
pushi.e 246
conv.i.v
push.v self.yy
pushi.e 175
add.i.v
push.v self.xx
pushi.e 200
add.i.v
call.i instance_create(argc=3)
pop.v.v self.box
pushi.e 632
push.v self.box
conv.v.i
pop.v.i [stacktop]self.sprite_index
call.i scr_moveheart(argc=0)
popz.v

:[12]
push.v self.attack
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
pushi.e 303
conv.i.v
push.v self.yy
pushi.e 170
add.i.v
push.v self.xx
pushi.e 340
add.i.v
call.i instance_create(argc=3)
pop.v.v self.box
call.i scr_moveheart(argc=0)
popz.v
pushi.e 233
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dd
pushi.e 34
push.v self.dd
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
pop.v.i self.timeruse
pushi.e 200
pop.v.i self.faketimermax
pushi.e 0
pop.v.i self.faketimer

:[14]
push.v self.attack
pushi.e 4
cmp.i.v EQ
bf [16]

:[15]
pushi.e 303
conv.i.v
push.v self.yy
pushi.e 165
add.i.v
push.v self.xx
pushi.e 310
add.i.v
call.i instance_create(argc=3)
pop.v.v self.box
pushi.e 630
push.v self.box
conv.v.i
pop.v.i [stacktop]self.sprite_index
call.i scr_moveheart(argc=0)
popz.v
pushi.e 245
conv.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.y
push.v self.box
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.damagebox
pushi.e 0
push.v self.damagebox
conv.v.i
pop.v.i [stacktop]self.type

:[16]
push.v self.attack
pushi.e 5
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i self.visible
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.chainking
pushi.e 1
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.subtype
pushi.e 246
conv.i.v
push.v self.yy
pushi.e 175
add.i.v
push.v self.xx
pushi.e 200
add.i.v
call.i instance_create(argc=3)
pop.v.v self.box
pushi.e 632
push.v self.box
conv.v.i
pop.v.i [stacktop]self.sprite_index
call.i scr_moveheart(argc=0)
popz.v

:[18]
push.v self.attack
pushi.e 6
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i self.timeruse
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.chainking
pushi.e 2
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.subtype
pushi.e 246
conv.i.v
push.v self.yy
pushi.e 170
add.i.v
push.v self.xx
pushi.e 205
add.i.v
call.i instance_create(argc=3)
pop.v.v self.box
pushi.e 629
push.v self.box
conv.v.i
pop.v.i [stacktop]self.sprite_index
call.i scr_moveheart(argc=0)
popz.v

:[20]
push.v self.attack
pushi.e 7
cmp.i.v EQ
bf [22]

:[21]
pushi.e 303
conv.i.v
push.v self.yy
pushi.e 170
add.i.v
push.v self.xx
pushi.e 340
add.i.v
call.i instance_create(argc=3)
pop.v.v self.box
call.i scr_moveheart(argc=0)
popz.v
pushi.e 233
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dd
pushi.e 35
push.v self.dd
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
pop.v.i self.timeruse
pushi.e 220
pop.v.i self.faketimermax
pushi.e 0
pop.v.i self.faketimer

:[22]
push.v self.attack
pushi.e 8
cmp.i.v EQ
bf [24]

:[23]
pushi.e 303
conv.i.v
push.v self.yy
pushi.e 165
add.i.v
push.v self.xx
pushi.e 310
add.i.v
call.i instance_create(argc=3)
pop.v.v self.box
pushi.e 630
push.v self.box
conv.v.i
pop.v.i [stacktop]self.sprite_index
call.i scr_moveheart(argc=0)
popz.v
pushi.e 245
conv.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.y
push.v self.box
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.damagebox
pushi.e 3
push.v self.damagebox
conv.v.i
pop.v.i [stacktop]self.type

:[24]
push.v self.attack
pushi.e 9
cmp.i.v EQ
bf [26]

:[25]
pushi.e 303
conv.i.v
push.v self.yy
pushi.e 170
add.i.v
push.v self.xx
pushi.e 340
add.i.v
call.i instance_create(argc=3)
pop.v.v self.box
call.i scr_moveheart(argc=0)
popz.v
pushi.e 233
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dd
pushi.e 23
push.v self.dd
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
pop.v.i self.timeruse
pushi.e 190
pop.v.i self.faketimermax
pushi.e 0
pop.v.i self.faketimer

:[26]
push.v self.attack
pushi.e 10
cmp.i.v EQ
bf [28]

:[27]
pushi.e 0
pop.v.i self.visible
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.chainking
pushi.e 1
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.subtype
pushi.e 246
conv.i.v
push.v self.yy
pushi.e 175
add.i.v
push.v self.xx
pushi.e 200
add.i.v
call.i instance_create(argc=3)
pop.v.v self.box
pushi.e 632
push.v self.box
conv.v.i
pop.v.i [stacktop]self.sprite_index
call.i scr_moveheart(argc=0)
popz.v

:[28]
push.v self.attack
pushi.e 11
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i self.timeruse
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.chainking
pushi.e 2
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.subtype
pushi.e 246
conv.i.v
push.v self.yy
pushi.e 170
add.i.v
push.v self.xx
pushi.e 205
add.i.v
call.i instance_create(argc=3)
pop.v.v self.box
pushi.e 629
push.v self.box
conv.v.i
pop.v.i [stacktop]self.sprite_index
call.i scr_moveheart(argc=0)
popz.v

:[30]
push.v self.timeruse
pushi.e 1
cmp.i.v EQ
bf [41]

:[31]
push.v self.faketimer
pushi.e 1
add.i.v
pop.v.v self.faketimer
push.v self.faketimer
push.v self.faketimermax
cmp.v.v GTE
bf [41]

:[32]
pushi.e 190
pushenv [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
popenv [33]
pushi.e 233
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]
pushi.e 303
pushenv [38]

:[37]
pushi.e 3
pop.v.i self.growcon

:[38]
popenv [37]
pushi.e 305
pushenv [40]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[40]
popenv [39]
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.timeruse
pushi.e 0
pop.v.i self.faketimer

:[41]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [43]

:[42]
call.i scr_debug(argc=0)
conv.v.b
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
push.v self.attackno
pushi.e 1
add.i.v
pop.v.v self.attackno

:[46]
pushi.e 16
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [48]

:[47]
call.i scr_debug(argc=0)
conv.v.b
b [49]

:[48]
push.e 0

:[49]
bf [end]

:[50]
push.v self.attackno
pushi.e 1
sub.i.v
pop.v.v self.attackno

:[end]