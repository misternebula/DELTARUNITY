.localvar 0 arguments

:[0]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 6.msgno
ret.v

:[end]