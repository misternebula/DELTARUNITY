.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.t
pushi.e 0
pop.v.i self.g
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.starcount
pushi.e 0
pop.v.i self.redup
pushi.e 6
pop.v.i self.bsize
pushi.e 69
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]