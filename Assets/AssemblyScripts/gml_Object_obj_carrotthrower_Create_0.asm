.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.throw
pushi.e 0
pop.v.i self.buffer
pushi.e 0
pop.v.i self.throwtimer
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.dir
pushi.e 1
pop.v.i self.gravity
pushi.e -14
pop.v.i self.vspeed
push.v self.dir
pushi.e 2
conv.i.v
call.i random(argc=1)
mul.v.v
pop.v.v self.hspeed

:[end]