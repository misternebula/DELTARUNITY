.localvar 0 arguments

:[0]
pushi.e 180
pop.v.i self.direction
pushi.e 10
pop.v.i self.speed
pushi.e 180
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.chaincon
pushi.e -1
pop.v.i self.sons
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.t
pushi.e 220
pop.v.i self.tmax
push.v 240.x
pop.v.v self.initkingx
push.v 240.y
pop.v.v self.initkingy
push.v 246.x
pop.v.v self.initboxx
push.v 246.y
pop.v.v self.initboxy
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 40
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.kingx
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.kingy
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.siner
pushi.e 20
pop.v.i self.btimer
pushi.e 0
pop.v.i self.bgap
pushi.e 0
pop.v.i self.type
pushi.e 1
pop.v.i self.wavefactor
pushi.e 60
pop.v.i self.inv
pushi.e 0
pop.v.i self.timepoints
pushi.e 6
pop.v.i self.grazepoints
pushi.e 0
pop.v.i self.target
pushi.e 50
pop.v.i self.damage
pushi.e 0
pop.v.i self.grazed
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.chain_noise

:[end]