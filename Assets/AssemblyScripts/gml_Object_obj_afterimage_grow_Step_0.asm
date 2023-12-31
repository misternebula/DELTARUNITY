.localvar 0 arguments

:[0]
push.v self.image_alpha
push.v self.fade
sub.v.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.v self.xrate
add.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.v self.yrate
add.v.v
pop.v.v self.image_yscale
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]