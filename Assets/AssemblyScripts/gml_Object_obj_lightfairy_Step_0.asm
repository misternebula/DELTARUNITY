.localvar 0 arguments

:[0]
push.v self.x
push.v self.siner
push.v self.sinx
div.v.v
call.i sin(argc=1)
push.v self.period
mul.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
push.v self.siny
div.v.v
call.i sin(argc=1)
push.v self.period
mul.v.v
add.v.v
pop.v.v self.y
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[end]