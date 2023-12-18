.localvar 0 arguments

:[0]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v
push.v other.id
conv.v.i
pushenv [2]

:[1]
pushi.e 367
pop.v.i self.sprite_index

:[2]
popenv [1]

:[end]