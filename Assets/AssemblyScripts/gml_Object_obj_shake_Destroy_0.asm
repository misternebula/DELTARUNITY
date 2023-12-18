.localvar 0 arguments

:[0]
push.v self.camerax
push.v self.camera
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
push.v self.cameray
push.v self.camera
pushi.e 1
conv.i.v
call.i __view_set(argc=3)
popz.v

:[end]