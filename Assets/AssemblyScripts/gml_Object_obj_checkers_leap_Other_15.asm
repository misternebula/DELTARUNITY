.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
call.i scr_damage(argc=0)
popz.v

:[end]