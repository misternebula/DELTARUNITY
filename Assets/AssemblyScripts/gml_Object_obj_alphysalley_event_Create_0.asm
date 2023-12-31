.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 269
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.con
b [end]

:[2]
pushi.e 999
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]