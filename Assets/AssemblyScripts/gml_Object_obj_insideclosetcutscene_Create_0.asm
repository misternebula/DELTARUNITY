.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.papetimer
pushi.e 0
pop.v.i self.papeno
pushi.e 0
pop.v.i self.papei
pushi.e 0
pop.v.i self.papefall
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.papeshake
call.i scr_depth(argc=0)
popz.v
pushi.e 1
pop.v.i global.facing
pushglb.v global.plot
pushi.e 6
cmp.i.v LT
bf [2]

:[1]
push.d 0.5
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
b [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 0
pop.v.i self.dex
pushi.e 1
pop.v.i self.grav
pushi.e 0
pop.v.i self.bgdraw
pushi.e 0
pop.v.i self.bgamt

:[end]