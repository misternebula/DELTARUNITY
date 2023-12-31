.localvar 0 arguments

:[0]
push.v self.times
pushi.e 1
add.i.v
pop.v.v self.times
pushi.e 198
conv.i.v
push.v self.y
pushi.e 30
add.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 30
add.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.times
pushi.e 2
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]