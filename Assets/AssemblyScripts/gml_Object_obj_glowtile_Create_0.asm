.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.stepped
pushi.e 0
pop.v.i self.stepbuffer
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 222
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.id
pop.v.v 222.tempid
pushi.e 222
pushenv [3]

:[2]
push.v self.tempid
pushi.e -1
push.v self.tiletotal
conv.v.i
pop.v.v [array]self.tileid
push.v self.tiletotal
pushi.e 1
add.i.v
pop.v.v self.tiletotal

:[3]
popenv [2]

:[end]