.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.angle
pushi.e 1
pop.v.i self.throwcon
pushi.e 1
pop.v.i self.angledraw
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 300
pop.v.i self.radius
pushi.e 2
pop.v.i self.anglespeed
push.v self.x
pushi.e 70
add.i.v
pop.v.v self.rx
push.v self.y
pushi.e 30
add.i.v
pop.v.v self.ry
pushi.e 26
pop.v.i self.ralspeed
pushi.e 1
pop.v.i self.ralgrav
pushi.e 0
pop.v.i self.fro
pushi.e 15
pop.v.i self.mypower
pushi.e 30
pop.v.i self.maxpower
pushi.e 15
pop.v.i self.minpower
pushi.e 1
pop.v.i self.powerdir
push.d 0.6
pop.v.d self.powerspeed
pushi.e 0
pop.v.i self.throwready
pushi.e 0
pop.v.i self.throwalpha
pushi.e 0
pop.v.i self.activatethrow

:[end]