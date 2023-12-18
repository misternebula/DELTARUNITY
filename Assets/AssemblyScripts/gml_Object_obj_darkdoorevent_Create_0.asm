.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.hcon
pushglb.v global.plot
pushi.e 32
cmp.i.v GTE
bf [2]

:[1]
pushi.e 400
pop.v.i self.hcon

:[2]
pushglb.v global.plot
pushi.e 33
cmp.i.v GTE
bf [end]

:[3]
pushi.e 400
pop.v.i self.con
pushi.e 1
pop.v.i self.image_index

:[end]