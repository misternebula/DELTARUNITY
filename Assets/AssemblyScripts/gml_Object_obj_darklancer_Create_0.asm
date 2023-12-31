.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushbltn.v self.room
pushi.e 36
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 12
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushbltn.v self.room
pushi.e 37
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.plot
pushi.e 13
cmp.i.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]