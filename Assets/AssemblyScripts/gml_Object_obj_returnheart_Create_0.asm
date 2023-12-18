.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.burst
pushi.e 1
pop.v.i self.shift
pushi.e 1
pop.v.i self.image_alpha
pushi.e 8
pop.v.i self.flytime
push.v 202.x
pushi.e 10
add.i.v
pop.v.v self.distx
push.v 202.y
pushi.e 40
add.i.v
pop.v.v self.disty
push.v self.disty
push.v self.distx
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pop.v.v self.dist
push.v self.dist
push.v self.flytime
div.v.v
push.v self.disty
push.v self.distx
call.i move_towards_point(argc=3)
popz.v
push.v self.flytime
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.image_speed

:[end]