.localvar 0 arguments

:[0]
pushi.e 182
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.active

:[2]
popenv [1]
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

:[3]
pushi.e 8
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.touched

:[end]