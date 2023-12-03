.localvar 0 arguments

:[0]
pushi.e 136
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.panner
pushbltn.v self.argument2
push.v self.panner
conv.v.i
pop.v.v [stacktop]self.panmax
pushbltn.v self.argument0
push.v self.panner
conv.v.i
pop.v.v [stacktop]self.panx
pushbltn.v self.argument1
push.v self.panner
conv.v.i
pop.v.v [stacktop]self.pany

:[end]