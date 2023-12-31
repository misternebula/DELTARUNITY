.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 90
conv.i.v
pushbltn.v self.argument0
call.i audio_play_sound(argc=3)
pop.v.v self._xsndinstance
pushi.e 0
conv.i.v
pushi.e 1
pushi.e -5
pushi.e 16
push.v [array]global.flag
mul.v.i
push.v self._xsndinstance
call.i snd_volume(argc=3)
popz.v
push.v self._xsndinstance
ret.v

:[end]