.localvar 0 arguments

:[0]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
add.i.v
cmp.v.v LT
bf [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
add.i.v
pop.v.v self.y

:[2]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 460
add.i.v
cmp.v.v GT
bf [4]

:[3]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 460
add.i.v
pop.v.v self.y

:[4]
pushi.e 1
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.times
pushi.e 0
pop.v.i self.activetimer
pushi.e 0
pop.v.i self.grazed
pushi.e 5
pop.v.i self.grazepoints
pushi.e 5
pop.v.i self.timepoints
pushi.e 0
pop.v.i self.target
pushi.e 1
pop.v.i self.dont
pushi.e 120
pop.v.i self.inv
pushi.e 124
pop.v.i self.damage
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.image_alpha
pushi.e 305
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
pushi.e 0
pop.v.i self.type

:[end]