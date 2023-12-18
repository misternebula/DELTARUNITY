.localvar 0 arguments

:[0]
push.i 43843743
pop.v.i self.target
pushi.e 1
pop.v.i self.damage
pushi.e 0
pop.v.i self.star
pushi.e 0
pop.v.i self.caster
pushi.e 0
pop.v.i self.image_alpha
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [3]

:[2]
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevx
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevy
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.a
pushi.e 0
pop.v.i self.targetx
pushi.e 0
pop.v.i self.targety
pushi.e 0
pop.v.i self.t
pushi.e 4
pop.v.i self.tmax
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.explode
pushi.e 0
pop.v.i self.maxaft
pushi.e 0
pop.v.i self.bolt_timer
pushi.e 0
pop.v.i self.chosen_bolt
pushi.e 0
pop.v.i self.final_bolt
pushi.e 0
pop.v.i self.red

:[end]