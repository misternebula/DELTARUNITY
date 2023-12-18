.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.quick
pushi.e -5
pushi.e 4
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.quick

:[2]
pushi.e -5
pushi.e 241
push.v [array]global.flag
pushi.e 6
cmp.i.v GTE
bf [4]

:[3]
pushi.e 999
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v
b [end]

:[4]
pushi.e 1
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.bulcon

:[end]