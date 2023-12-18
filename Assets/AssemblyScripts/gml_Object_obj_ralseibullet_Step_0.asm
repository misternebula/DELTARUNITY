.localvar 0 arguments

:[0]
push.v self.image_xscale
pushi.e 1
cmp.i.v LTE
bf [3]

:[1]
push.v self.image_yscale
push.d 0.2
add.d.v
pop.v.v self.image_yscale
push.v self.image_xscale
push.d 0.2
add.d.v
pop.v.v self.image_xscale
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
pushi.e 1
pop.v.i self.active

:[3]
call.i scr_destroyoutside(argc=0)
popz.v

:[end]