.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i global.interact
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.touched
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 8
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.touched

:[end]