.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushglb.v global.plot
pushi.e 36
cmp.i.v GTE
bf [2]

:[1]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.visible

:[2]
pushi.e 0
pop.v.i self.equipcon
pushi.e 0
pop.v.i self.image_speed
push.i 60000
pop.v.i self.depth

:[end]