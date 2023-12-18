.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.wobbled
pushi.e -20
pop.v.i self.vspeed

:[end]