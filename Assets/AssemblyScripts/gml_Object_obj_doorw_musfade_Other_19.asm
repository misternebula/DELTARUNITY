.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i global.interact
pushi.e 14
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v
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
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 14
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.touched

:[end]