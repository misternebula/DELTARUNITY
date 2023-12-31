.localvar 0 arguments

:[0]
push.v self.distx
pop.v.v self.x
push.v self.disty
pop.v.v self.y
pushi.e 305
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]