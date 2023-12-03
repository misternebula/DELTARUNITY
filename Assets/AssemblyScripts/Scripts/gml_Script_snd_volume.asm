.localvar 0 arguments

:[0]
pushbltn.v self.argument2
pushi.e 1000
mul.i.v
pushbltn.v self.fps
div.v.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i audio_sound_gain(argc=3)
popz.v

:[end]