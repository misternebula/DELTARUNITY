.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i global.specialbattle
pushi.e 1
pushi.e -5
pushi.e 9
pop.v.i [array]global.flag
push.s "battle.ogg"@4970
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.batmusic
pushi.e -300
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.vspeed
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con

:[end]