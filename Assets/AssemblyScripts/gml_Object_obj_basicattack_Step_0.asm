.localvar 0 arguments

:[0]
push.v self.critical
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_xscale
push.d 0.1
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.1
add.d.v
pop.v.v self.image_yscale

:[2]
push.v self.image_index
push.v self.maxindex
cmp.v.v GTE
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]