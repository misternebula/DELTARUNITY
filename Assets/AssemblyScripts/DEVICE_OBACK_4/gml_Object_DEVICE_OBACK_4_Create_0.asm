.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
push.d 0.2
pop.v.d self.alpha
pushi.e 1
pop.v.i self.xstretch
pushi.e 1
pop.v.i self.ystretch
pushi.e 0
pop.v.i self.o_insurance
pushi.e 4
push.v self.object_index
call.i instance_number(argc=1)
add.v.i
pop.v.v self.depth
push.d 0.02
pop.v.d self.OBSPEED
pushi.e 0
pop.v.i self.b_insurance
push.d -0.2
pop.v.d self.b_insurance

:[end]