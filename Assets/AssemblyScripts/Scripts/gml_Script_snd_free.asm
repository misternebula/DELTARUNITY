.localvar 0 arguments

:[0]
pushi.e 128
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushbltn.v self.argument0
pop.v.v self._xstream
push.v self._xstream
pop.v.v 128.bstream
pushi.e 128
pushenv [4]

:[2]
push.v self.bstream
push.v self.mystream
cmp.v.v EQ
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [2]

:[end]