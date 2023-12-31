.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.OBSPEED
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.siner
pushi.e 34
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
pop.v.v self.alpha

:[2]
push.v self.ystretch
push.v self.OBSPEED
add.v.v
pop.v.v self.ystretch
push.v self.xstretch
push.v self.OBSPEED
add.v.v
pop.v.v self.xstretch
push.v self.b_insurance
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
push.v self.b_insurance
push.d 0.01
add.d.v
pop.v.v self.b_insurance

:[4]
push.v self.ystretch
pushi.e 2
cmp.i.v GT
bf [end]

:[5]
push.v self.o_insurance
push.d 0.01
add.d.v
pop.v.v self.o_insurance
push.v self.o_insurance
push.d 0.5
cmp.d.v GTE
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]