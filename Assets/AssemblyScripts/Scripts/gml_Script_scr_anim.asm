.localvar 0 arguments

:[0]
pushi.e 155
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.objanim
push.v self.id
push.v self.objanim
conv.v.i
pop.v.v [stacktop]self.target
pushbltn.v self.argument0
push.v self.objanim
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushbltn.v self.argument1
push.v self.objanim
conv.v.i
pop.v.v [stacktop]self.framespeed
push.v self.objanim
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