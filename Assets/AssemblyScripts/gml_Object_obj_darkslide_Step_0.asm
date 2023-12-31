.localvar 0 arguments

:[0]
push.v self.collidetimer
pushi.e 1
sub.i.v
pop.v.v self.collidetimer
push.v self.collidetimer
pushi.e 0
cmp.i.v LT
bf [3]

:[1]
push.v self.collide
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 0
pop.v.i self.collide
pushi.e 0
pop.v.i global.interact
push.v self.collider
pushi.e 10
cmp.i.v GTE
bf [end]

:[6]
push.v self.abovey
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
pushi.e 326
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.fun
pushi.e 837
pop.v.i self.sprite_index

:[9]
popenv [8]
push.v self.slide_noise
call.i snd_stop(argc=1)
popz.v

:[10]
pushi.e 331
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 40
sub.i.v
push.v self.x
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]