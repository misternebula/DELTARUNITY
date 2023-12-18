.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.lightsoff
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [2]

:[1]
pushi.e 99
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.lightsoff

:[end]