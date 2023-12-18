.localvar 0 arguments

:[0]
push.v self.target
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[1]
push.v self.moved
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.target
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x
push.v self.target
conv.v.i
push.v [stacktop]self.y
pop.v.v self.y
push.v self.movey
push.v self.movex
call.i distance_to_point(argc=2)
pop.v.v self.dist
push.v self.movey
push.v self.movex
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.dir
push.v self.dist
push.v self.movemax
div.v.v
pop.v.v self.amt
push.v self.dir
push.v self.amt
call.i lengthdir_x(argc=2)
pop.v.v self.xadd
push.v self.dir
push.v self.amt
call.i lengthdir_y(argc=2)
pop.v.v self.yadd
pushi.e 1
pop.v.i self.moved

:[3]
push.v self.target
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.xadd
add.v.v
pop.i.v [stacktop]self.x
push.v self.target
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.v self.yadd
add.v.v
pop.i.v [stacktop]self.y
push.v self.movetimer
pushi.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
push.v self.movemax
cmp.v.v GTE
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.target
pushi.e 321
cmp.i.v EQ
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
b [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]