.localvar 0 arguments

:[0]
push.v self.bluh
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.bluh
pushi.e 16
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.image_index

:[end]