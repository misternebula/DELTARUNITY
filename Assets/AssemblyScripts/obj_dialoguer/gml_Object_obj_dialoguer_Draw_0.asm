.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
call.i scr_dbox(argc=0)
popz.v
push.v self.writer
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]