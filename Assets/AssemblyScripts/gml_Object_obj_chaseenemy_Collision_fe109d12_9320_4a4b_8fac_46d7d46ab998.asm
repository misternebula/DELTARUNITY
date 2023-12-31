.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]