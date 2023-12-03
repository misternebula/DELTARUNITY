.localvar 0 arguments

:[0]
pushi.e 157
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.shakeobj
push.v self.id
push.v self.shakeobj
conv.v.i
pop.v.v [stacktop]self.target
push.v self.shakeobj
conv.v.i
pushenv [2]

:[1]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
popenv [1]

:[end]