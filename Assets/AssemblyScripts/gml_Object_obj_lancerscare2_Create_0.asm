.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 55
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [5]

:[2]
pushi.e 1
pop.v.i self.con
pushi.e 75
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.visible

:[4]
popenv [3]

:[5]
pushi.e 0
pop.v.i self.mcon

:[end]