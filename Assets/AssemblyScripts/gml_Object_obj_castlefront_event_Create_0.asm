.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushglb.v global.plot
pushi.e 165
cmp.i.v GTE
bf [2]

:[1]
pushi.e 999
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v
b [5]

:[2]
pushi.e 102
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
pushi.e 0
pop.v.i self.black

:[end]