.localvar 0 arguments

:[0]
push.v self.walkcon
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 0
pop.v.i self.visible
pushi.e 616
conv.i.v
push.v self.y
pushi.e 74
add.i.v
push.v self.x
pushi.e 92
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.wings
push.v self.image_index
push.v self.wings
conv.v.i
pop.v.v [stacktop]self.image_index
push.v self.wings
conv.v.i
pushenv [3]

:[2]
push.d 0.2
pop.v.d self.image_speed
pushi.e 1010
pop.v.i self.depth
pushi.e 5
pop.v.i self.hspeed
pushi.e -1
pop.v.i self.vspeed
pushi.e 90
pop.v.i self.gravity_direction
push.d 0.2
pop.v.d self.gravity

:[3]
popenv [2]
pushi.e 615
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 70
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.body
push.v self.body
conv.v.i
pushenv [5]

:[4]
pushi.e 1000
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_speed
pushi.e 8
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed

:[5]
popenv [4]
pushi.e 2
pop.v.i self.walkcon

:[6]
push.v self.walkcon
pushi.e 2
cmp.i.v EQ
bf [end]

:[7]
push.v self.body
conv.v.i
pushenv [9]

:[8]
call.i scr_depth(argc=0)
popz.v

:[9]
popenv [8]
push.v self.walktimer
pushi.e 1
add.i.v
pop.v.v self.walktimer
push.v self.walktimer
pushi.e 20
cmp.i.v GTE
bf [end]

:[10]
pushi.e 7
pop.v.i self.hspeed
push.v self.body
conv.v.i
pushenv [12]

:[11]
pushi.e 0
pop.v.i self.vspeed
pushi.e 7
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[12]
popenv [11]
pushi.e 80
conv.i.v
push.v self.body
conv.v.i
push.v [stacktop]self.y
pushi.e 20
add.i.v
push.v self.body
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.bodycheck
pushi.e 2
push.v self.bodycheck
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bodycheck
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.bodycheck
conv.v.i
pushenv [14]

:[13]
pushi.e 7
pop.v.i self.hspeed

:[14]
popenv [13]
pushi.e 3
pop.v.i self.walkcon
pushi.e 0
pop.v.i self.walktimer

:[end]