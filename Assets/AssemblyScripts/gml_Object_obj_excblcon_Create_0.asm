.localvar 0 arguments

:[0]
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[end]