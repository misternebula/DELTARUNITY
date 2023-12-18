.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.grazed
pushi.e 4
pop.v.i self.grazepoints
pushi.e 0
pop.v.i self.timepoints
pushi.e 0
pop.v.i self.target
pushi.e 1
pop.v.i self.dont
pushi.e 60
pop.v.i self.inv
pushi.e 20
pop.v.i self.damage
pushi.e 0
pop.v.i self.spec
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.loop
pushi.e 0
pop.v.i self.lcon
pushi.e 0
pop.v.i self.flip
pushi.e 0
pop.v.i self.ltimer
pushi.e 0
pop.v.i self.btimer
pushi.e 0
pop.v.i self.racecon
pushi.e 100
pop.v.i self.topy
pushi.e 300
pop.v.i self.bottomy
push.v self.x
pushi.e 100
sub.i.v
pop.v.v self.susiex
push.v self.y
pushi.e 180
sub.i.v
pop.v.v self.susiey
pushi.e 281
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 281.x
pop.v.v self.susiex
push.v 281.y
pop.v.v self.susiey

:[2]
pushi.e 0
pop.v.i self.s_tracking
pushi.e 0
pop.v.i self.s_attack
pushi.e 0
pop.v.i self.s_timer
pushi.e 0
pop.v.i self.type

:[end]