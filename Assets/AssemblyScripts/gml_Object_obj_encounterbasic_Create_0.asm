.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i global.interact
pushi.e -5
pushi.e 9
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_volume(argc=3)
popz.v

:[2]
pushglb.v global.encounterno
call.i scr_encountersetup(argc=1)
popz.v
pushi.e 326
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.visible

:[4]
popenv [3]
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [6]

:[5]
pushi.e 0
pop.v.i self.visible

:[6]
popenv [5]
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
pushenv [8]

:[7]
pushi.e 0
pop.v.i self.visible

:[8]
popenv [7]
pushi.e 0
pop.v.i self.count
pushi.e 829
conv.i.v
push.v 326.y
push.v 326.x
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.c
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[9]
push.v self.count
pushi.e 1
add.i.v
pop.v.v self.count
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.rsprite
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.c
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.rsprite
pushi.e 183
cmp.i.v EQ
bf [11]

:[10]
pushi.e 195
pushi.e -1
pushi.e 1
push.v [array]self.c
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[11]
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[12]
push.v self.count
pushi.e 1
add.i.v
pop.v.v self.count
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.rsprite
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.c
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.rsprite
pushi.e 183
cmp.i.v EQ
bf [14]

:[13]
pushi.e 195
pushi.e -1
pushi.e 2
push.v [array]self.c
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[14]
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [17]

:[16]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.heromakex
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
push.v [stacktop]self.x
call.i point_direction(argc=4)
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.heromakex
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
push.v [stacktop]self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pop.v.v [stacktop]self.speed
pushi.e 200
push.v self.i
pushi.e 20
mul.i.v
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[17]
pushi.e 1
pop.v.i self.fightcon
pushi.e 0
pop.v.i self.counttimer

:[end]