.localvar 0 arguments

:[0]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.reminvc
pop.v.v global.invc
push.v self.attack
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 303
conv.i.v
push.v self.yy
pushi.e 170
add.i.v
push.v self.xx
pushi.e 320
add.i.v
call.i instance_create(argc=3)
pop.v.v self.box
call.i scr_moveheart(argc=0)
pop.v.v self.mh
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.tempattack
mul.v.v
push.v self.dd
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.dd
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 1
push.v self.dd
conv.v.i
pop.v.i [stacktop]self.side
pushi.e -8
push.v self.dd
conv.v.i
pop.v.i [stacktop]self.btimer
pushi.e 190
pop.v.i global.turntimer

:[3]
push.v self.attack
pushi.e 2
cmp.i.v EQ
bf [7]

:[4]
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
pushi.e 6
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.grazepoints
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
pushi.e 200
conv.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.x
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.hm
call.i scr_moveheart(argc=0)
popz.v
push.v self.hm
conv.v.i
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 4
mul.i.v
push.v self.tempattack
mul.v.v
push.v self.chainking
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 3
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.target
pushi.e 999
pop.v.i global.turntimer

:[7]
push.v self.attack
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 303
conv.i.v
push.v self.yy
pushi.e 170
add.i.v
push.v self.xx
pushi.e 320
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.tempattack
mul.v.v
push.v self.dd
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.dd
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 10
push.v self.dd
conv.v.i
pop.v.i [stacktop]self.btimer
pushi.e 210
pop.v.i global.turntimer

:[9]
push.v self.attack
pushi.e 4
cmp.i.v EQ
bf [13]

:[10]
push.v global.invc
push.d 1.5
mul.d.v
pop.v.v global.invc
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
pushi.e 1
push.v self.box
conv.v.i
pop.v.i [stacktop]self.keep
pushi.e 200
conv.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.x
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.hm
call.i scr_moveheart(argc=0)
popz.v
push.v self.hm
conv.v.i
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
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
pushi.e 5
push.v self.damagebox
conv.v.i
pop.v.i [stacktop]self.type
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.tempattack
mul.v.v
push.v self.damagebox
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.damagebox
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 999
pop.v.i global.turntimer

:[13]
push.v self.attack
pushi.e 5
cmp.i.v EQ
bf [17]

:[14]
pushi.e 0
pop.v.i self.visible
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.chainking
pushi.e 6
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.grazepoints
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 4
mul.i.v
push.v self.tempattack
mul.v.v
push.v self.chainking
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 3
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.target
pushi.e 999
pop.v.i global.turntimer
pushi.e 200
conv.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.x
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.hm
call.i scr_moveheart(argc=0)
popz.v
push.v self.hm
conv.v.i
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]

:[17]
push.v self.attack
pushi.e 6
cmp.i.v EQ
bf [23]

:[18]
push.v global.invc
push.d 1.5
mul.d.v
pop.v.v global.invc
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
pushi.e 5
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.subtype
push.v self.chain_dragging
pushi.e 1
cmp.i.v GTE
bf [20]

:[19]
pushi.e 2
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.subtype

:[20]
push.v self.chain_dragging
pushi.e 1
add.i.v
pop.v.v self.chain_dragging
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.tempattack
mul.v.v
push.v self.chainking
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.chainking
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 999
pop.v.i global.turntimer
pushi.e 200
conv.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.x
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.hm
call.i scr_moveheart(argc=0)
popz.v
push.v self.hm
conv.v.i
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]

:[23]
push.v self.attack
pushi.e 7
cmp.i.v EQ
bf [25]

:[24]
pushi.e 303
conv.i.v
push.v self.yy
pushi.e 170
add.i.v
push.v self.xx
pushi.e 320
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
pushi.e 220
pop.v.i global.turntimer
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.tempattack
mul.v.v
push.v self.dd
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.dd
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 10
push.v self.dd
conv.v.i
pop.v.i [stacktop]self.btimer

:[25]
push.v self.attack
pushi.e 8
cmp.i.v EQ
bf [29]

:[26]
push.v global.invc
push.d 1.5
mul.d.v
pop.v.v global.invc
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
pushi.e 1
push.v self.box
conv.v.i
pop.v.i [stacktop]self.keep
pushi.e 200
conv.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.x
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.hm
call.i scr_moveheart(argc=0)
popz.v
push.v self.hm
conv.v.i
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.tempattack
mul.v.v
push.v self.damagebox
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.damagebox
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 999
pop.v.i global.turntimer

:[29]
push.v self.attack
pushi.e 9
cmp.i.v EQ
bf [31]

:[30]
pushi.e 303
conv.i.v
push.v self.yy
pushi.e 170
add.i.v
push.v self.xx
pushi.e 320
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
pushi.e 200
pop.v.i global.turntimer
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.tempattack
mul.v.v
push.v self.dd
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.dd
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -8
push.v self.dd
conv.v.i
pop.v.i [stacktop]self.btimer
pushi.e 1
push.v self.dd
conv.v.i
pop.v.i [stacktop]self.side

:[31]
push.v self.attack
pushi.e 10
cmp.i.v EQ
bf [35]

:[32]
pushi.e 0
pop.v.i self.visible
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.chainking
pushi.e 6
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.grazepoints
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
pushi.e 200
conv.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.x
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.hm
call.i scr_moveheart(argc=0)
popz.v
push.v self.hm
conv.v.i
pushenv [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
popenv [33]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 4
mul.i.v
push.v self.tempattack
mul.v.v
push.v self.chainking
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 3
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.target
pushi.e 999
pop.v.i global.turntimer

:[35]
push.v self.attack
pushi.e 11
cmp.i.v EQ
bf [39]

:[36]
push.v global.invc
push.d 1.5
mul.d.v
pop.v.v global.invc
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 3
mul.i.v
push.v self.tempattack
mul.v.v
push.v self.chainking
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 3
push.v self.chainking
conv.v.i
pop.v.i [stacktop]self.target
pushi.e 999
pop.v.i global.turntimer
pushi.e 200
conv.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.box
conv.v.i
push.v [stacktop]self.x
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.hm
call.i scr_moveheart(argc=0)
popz.v
push.v self.hm
conv.v.i
pushenv [38]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
popenv [37]

:[39]
pushi.e 1
pop.v.i self.tempattack
pushi.e 1
pop.v.i self.attacked

:[end]