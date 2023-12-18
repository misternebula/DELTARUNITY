.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.visible
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.type
pushi.e -80
pop.v.i self.y
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.image_speed
pushi.e 10
pop.v.i self.vspeed
pushi.e 20
pushi.e 16
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.maxtimer
pushi.e 0
pop.v.i self.explodedraw

:[end]