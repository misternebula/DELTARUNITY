.localvar 0 arguments

:[0]
pushi.e 15
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.con
pushi.e 299
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.destroy

:[2]
popenv [1]
pushi.e 0
pop.v.i self.count
pushi.e 0
pop.v.i global.tension
pushglb.v global.specialbattle
pushi.e 0
cmp.i.v EQ
bt [4]

:[3]
pushglb.v global.specialbattle
pushi.e 3
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [21]

:[6]
pushi.e 829
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.heromakey
pushi.e -5
pushi.e 0
push.v [array]global.heromakex
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.c
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
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
pushi.e 1
push.v [array]global.heromakey
pushi.e -5
pushi.e 1
push.v [array]global.heromakex
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.c

:[8]
pushi.e -5
pushi.e 1
push.v [array]global.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
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
pushi.e 2
push.v [array]global.heromakey
pushi.e -5
pushi.e 2
push.v [array]global.heromakex
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.c

:[10]
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [20]

:[12]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v 326.y
push.v 326.x
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
push.v 326.y
push.v 326.x
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

:[14]
push.v self.i
pushi.e 1
cmp.i.v EQ
bt [16]

:[15]
push.v self.i
pushi.e 2
cmp.i.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [19]

:[18]
pushi.e -5
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
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
pushi.e 1
sub.i.v
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
pushi.e -5
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
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

:[19]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[20]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[21]
pushi.e -5
pushi.e 9
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[22]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.batmusic
call.i snd_volume(argc=3)
popz.v

:[end]