.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
push.d 0.05
pop.v.d self.image_speed
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.hitmode

:[end]