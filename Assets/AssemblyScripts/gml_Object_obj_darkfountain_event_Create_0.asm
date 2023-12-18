.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e -10
pop.v.i self.t
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.rs
pushi.e 0
pop.v.i self.ds2
pushi.e 0
pop.v.i self.ds3
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
pushi.e 134
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 0
pop.v.i self.soundcon

:[end]