.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 11
cmp.i.v LT
bf [6]

:[1]
call.i scr_losechar(argc=0)
popz.v
pushi.e 165
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 326
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
pushi.e 765
conv.i.v
push.v 326.y
push.v 326.x
call.i scr_dark_marker(argc=3)
pop.v.v self.k
pushi.e -50
pop.v.i self.waketimer
b [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]