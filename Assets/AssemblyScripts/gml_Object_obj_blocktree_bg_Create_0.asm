.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.siner
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 600
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 0
pop.v.i self.blocktimer
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.spec
push.v self.depth
pop.v.v self.remdepth
pushbltn.v self.room
pushi.e 89
cmp.i.v EQ
bf [end]

:[1]
push.v self.y
pushi.e 70
cmp.i.v LTE
bf [3]

:[2]
pushi.e 2
pop.v.i self.spec
b [end]

:[3]
pushi.e 1
pop.v.i self.spec

:[end]