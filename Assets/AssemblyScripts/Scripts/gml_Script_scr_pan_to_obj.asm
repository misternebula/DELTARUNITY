.localvar 0 arguments

:[0]
pushbltn.v self.argument0
conv.v.i
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
pushbltn.v self.argument0
conv.v.i
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i floor(argc=1)
sub.v.v
pop.v.v self._wd
pushbltn.v self.argument0
conv.v.i
push.v [stacktop]self.y
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
pushbltn.v self.argument0
conv.v.i
push.v [stacktop]self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i floor(argc=1)
sub.v.v
pop.v.v self._ht
push.v self._wd
pop.v.v self._vx
push.v self._ht
pop.v.v self._vy
push.v self._vx
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self._vx

:[2]
push.v self._vx
pushbltn.v self.room_width
push.v self._vx
sub.v.v
cmp.v.v GT
bf [4]

:[3]
pushbltn.v self.room_width
push.v self._vx
sub.v.v
pop.v.v self._vx

:[4]
push.v self._vy
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
pop.v.i self._vy

:[6]
push.v self._vy
pushbltn.v self.room_height
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
sub.v.v
cmp.v.v GT
bf [8]

:[7]
pushbltn.v self.room_height
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
sub.v.v
pop.v.v self._vy

:[8]
pushbltn.v self.argument1
push.v self._vy
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
sub.v.v
pushbltn.v self.argument1
div.v.v
push.v self._vx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
sub.v.v
pushbltn.v self.argument1
div.v.v
call.i scr_pan(argc=3)
popz.v

:[end]