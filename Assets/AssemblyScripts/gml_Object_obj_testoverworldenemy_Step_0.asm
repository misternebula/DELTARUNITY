.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [19]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.frozen

:[3]
pushi.e 200
conv.i.v
call.i scr_outside_camera(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 1
pop.v.i self.frozen
b [6]

:[5]
pushi.e 0
pop.v.i self.frozen

:[6]
pushglb.v global.interact
pushi.e 0
cmp.i.v NEQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.frozen

:[8]
push.v self.frozen
pushi.e 1
cmp.i.v EQ
bf [11]

:[9]
push.v self.hadfrozen
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v self.speed
pop.v.v self.remspeed
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.hadfrozen

:[11]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [16]

:[12]
push.v self.hadfrozen
pushi.e 1
cmp.i.v EQ
bf [16]

:[13]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.remspeed
pop.v.v self.speed

:[15]
pushi.e 0
pop.v.i self.hadfrozen

:[16]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [19]

:[17]
push.v self.fliptimer
pushi.e 1
add.i.v
pop.v.v self.fliptimer
push.v self.fliptimer
pushi.e 30
cmp.i.v GTE
bf [19]

:[18]
push.v self.vspeed
neg.v
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.fliptimer

:[19]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.v self.touchsprite
pop.v.v self.sprite_index
pushi.e 62
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.hnka
pushi.e 2
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
pushi.e 62
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.hnkb
push.d 1.1
conv.d.v
push.v self.hnkb
call.i snd_pitch(argc=2)
popz.v
pushi.e 4
pop.v.i self.con
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [34]

:[24]
pushi.e 5000
pop.v.i self.depth
pushi.e 299
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 164
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 6
pop.v.i self.con
push.v self.slidesprite
pop.v.v self.sprite_index
pushi.e -5
pushi.e 0
push.v [array]global.monstermakey
pushi.e -5
pushi.e 0
push.v [array]global.monstermakex
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
pushi.e -5
pushi.e 0
push.v [array]global.monstermakey
pushi.e -5
pushi.e 0
push.v [array]global.monstermakex
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.speed
pushi.e 0
pop.v.i self.copyhave
pushi.e 0
pop.v.i self.cc

:[25]
push.v self.cc
pushi.e 2
cmp.i.v LT
bf [33]

:[26]
pushi.e -5
push.v self.cc
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.monstertype
pushi.e 0
cmp.i.v NEQ
bf [32]

:[27]
push.v self.copyhave
pushi.e 1
add.i.v
pop.v.v self.copyhave
pushi.e -5
push.v self.cc
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.monstertype
pushi.e -5
pushi.e 0
push.v [array]global.monstertype
cmp.v.v EQ
bf [29]

:[28]
push.v self.sprite_index
push.v self.y
push.v self.x
call.i scr_dark_marker(argc=3)
pushi.e -1
push.v self.cc
conv.v.i
pop.v.v [array]self.copy
pushi.e -5
push.v self.cc
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.monstermakey
pushi.e -5
push.v self.cc
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.monstermakex
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e -1
push.v self.cc
conv.v.i
push.v [array]self.copy
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e -5
push.v self.cc
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.monstermakey
pushi.e -5
push.v self.cc
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.monstermakex
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
push.v self.cc
conv.v.i
push.v [array]self.copy
conv.v.i
pop.v.v [stacktop]self.speed
push.v self.depth
pushi.e 1
sub.i.v
push.v self.cc
sub.v.v
pushi.e -1
push.v self.cc
conv.v.i
push.v [array]self.copy
conv.v.i
pop.v.v [stacktop]self.depth
b [32]

:[29]
pushi.e -5
push.v self.cc
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.monsterinstancetype
call.i object_get_sprite(argc=1)
pushi.e -5
push.v self.cc
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.monstermakey
pushi.e -5
push.v self.cc
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.monstermakex
pushi.e 200
add.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
push.v self.cc
conv.v.i
pop.v.v [array]self.copy
push.v self.cc
pushi.e -1
push.v self.cc
conv.v.i
push.v [array]self.copy
conv.v.i
pop.v.v [stacktop]self.cc
push.v self.depth
pushi.e 1
sub.i.v
push.v self.cc
sub.v.v
pushi.e -1
push.v self.cc
conv.v.i
push.v [array]self.copy
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e -1
push.v self.cc
conv.v.i
push.v [array]self.copy
conv.v.i
pushenv [31]

:[30]
pushi.e -5
push.v self.cc
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.monstermakey
pushi.e -5
push.v self.cc
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.monstermakex
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
pushi.e -5
push.v self.cc
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.monstermakey
pushi.e -5
push.v self.cc
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.monstermakex
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.speed

:[31]
popenv [30]

:[32]
push.v self.cc
pushi.e 1
add.i.v
pop.v.v self.cc
b [25]

:[33]
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [end]

:[35]
push.v self.copyhave
pushi.e 0
cmp.i.v GT
bf [41]

:[36]
pushi.e 0
pop.v.i self.c

:[37]
push.v self.c
push.v self.copyhave
cmp.v.v LT
bf [41]

:[38]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.copy
conv.v.i
pushenv [40]

:[39]
pushi.e 0
pop.v.i self.speed

:[40]
popenv [39]
push.v self.c
pushi.e 1
add.i.v
pop.v.v self.c
b [37]

:[41]
pushi.e 0
pop.v.i self.speed
pushi.e 187
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[42]
push.v self.eraser
pushi.e 1
cmp.i.v EQ
bf [46]

:[43]
pushi.e 161
pushenv [45]

:[44]
call.i instance_destroy(argc=0)
popz.v

:[45]
popenv [44]

:[46]
call.i instance_destroy(argc=0)
popz.v
push.v self.copyhave
pushi.e 0
cmp.i.v GT
bf [end]

:[47]
pushi.e 0
pop.v.i self.c

:[48]
push.v self.c
push.v self.copyhave
cmp.v.v LT
bf [end]

:[49]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.copy
conv.v.i
pushenv [51]

:[50]
call.i instance_destroy(argc=0)
popz.v

:[51]
popenv [50]
push.v self.c
pushi.e 1
add.i.v
pop.v.v self.c
b [48]

:[end]