.localvar 0 arguments

:[0]
pushi.e 147
conv.i.v
push.v 326.y
pushi.e 30
add.i.v
push.v 326.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.dust
push.v self.dust
conv.v.i
pushenv [2]

:[1]
pushi.e -6
pop.v.i self.vspeed
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed

:[2]
popenv [1]
pushi.e 4
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]