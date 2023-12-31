.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.panx
pushi.e 0
pop.v.i self.pany
pushi.e 1
pop.v.i self.panmax
pushi.e 0
pop.v.i self.pantimer
pushglb.v global.plot
pushi.e 11
cmp.i.v LT
bf [end]

:[1]
pushi.e -1
pop.v.i self.pantimer

:[end]