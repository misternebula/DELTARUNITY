.localvar 0 arguments

:[0]
push.s "mus/"@1580
pushbltn.v self.argument0
add.v.s
pop.v.v self.initsongvar
push.v self.initsongvar
call.i audio_create_stream(argc=1)
pop.v.v self._mystream
pushi.e 128
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self._astream
push.v self._mystream
push.v self._astream
conv.v.i
pop.v.v [stacktop]self.mystream
push.v self._mystream
ret.v

:[end]