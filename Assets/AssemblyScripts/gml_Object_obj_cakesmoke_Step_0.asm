.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 16
cmp.i.v GTE
bf [2]

:[1]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.image_xscale
push.d 0.05
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.05
add.d.v
pop.v.v self.image_yscale

:[end]