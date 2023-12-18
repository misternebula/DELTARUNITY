.localvar 0 arguments

:[0]
pushi.e 30
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
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 40
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 38
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 24
pop.v.i global.entrance
pushi.e 3
pop.v.i global.interact

:[end]