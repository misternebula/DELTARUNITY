.localvar 0 arguments

:[0]
pushi.e 187
pop.v.i self.dtsprite
pushi.e 183
pop.v.i self.rtsprite
pushi.e 180
pop.v.i self.ltsprite
pushi.e 190
pop.v.i self.utsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.talked
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
call.i scr_depth(argc=0)
popz.v
pushglb.v global.plot
pushi.e 30
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 331
conv.i.v
pushi.e 950
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.s
pushi.e 8
push.v self.s
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[end]