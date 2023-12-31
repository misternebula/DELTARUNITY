.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 45
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 1
pop.v.i self.con
pushi.e 680
pop.v.i self.tx
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed

:[end]