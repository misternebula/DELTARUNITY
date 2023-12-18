.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 71
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 177
pushenv [6]

:[5]
pushi.e 0
pop.v.i self.whitetimer
pushi.e 1
pop.v.i self.whitecon

:[6]
popenv [5]

:[end]