.localvar 0 arguments

:[0]
push.v other.id
conv.v.i
pushenv [2]

:[1]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
popenv [1]

:[end]