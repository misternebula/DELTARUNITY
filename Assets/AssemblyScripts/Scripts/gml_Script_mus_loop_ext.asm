.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushbltn.v self.argument1
pushi.e -5
pushi.e 16
push.v [array]global.flag
mul.v.v
pushbltn.v self.argument0
call.i snd_volume(argc=3)
popz.v
pushbltn.v self.argument2
pushbltn.v self.argument0
call.i snd_pitch(argc=2)
popz.v
pushbltn.v self.argument0
call.i mus_loop(argc=1)
ret.v

:[end]