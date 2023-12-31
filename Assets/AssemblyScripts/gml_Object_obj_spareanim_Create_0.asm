.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.t
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.starcount
pushi.e 0
pop.v.i self.afterimage
pushi.e 0
pop.v.i self.tone
pushi.e 0
pop.v.i self.neotone
pushi.e 55
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 55
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]