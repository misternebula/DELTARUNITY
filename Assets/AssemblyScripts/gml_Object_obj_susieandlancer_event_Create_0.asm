.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 130
cmp.i.v GTE
bf [2]

:[1]
pushi.e 99
pop.v.i self.con
b [5]

:[2]
pushi.e 84
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
pushi.e 0
pop.v.i self.lcon
pushi.e 0
pop.v.i self.scon

:[end]