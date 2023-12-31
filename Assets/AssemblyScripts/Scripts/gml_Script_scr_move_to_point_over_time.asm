.localvar 0 arguments

:[0]
pushi.e 321
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self._mmm
push.v self.id
push.v self._mmm
conv.v.i
pop.v.v [stacktop]self.target
pushbltn.v self.argument0
push.v self._mmm
conv.v.i
pop.v.v [stacktop]self.movex
pushbltn.v self.argument1
push.v self._mmm
conv.v.i
pop.v.v [stacktop]self.movey
pushbltn.v self.argument2
push.v self._mmm
conv.v.i
pop.v.v [stacktop]self.movemax

:[end]