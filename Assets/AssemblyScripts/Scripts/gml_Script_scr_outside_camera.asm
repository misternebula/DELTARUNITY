.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self._offcamera
push.v self.x
push.v self.sprite_width
add.v.v
pop.v.v self.rightx
push.v self.x
pop.v.v self.leftx
push.v self.y
push.v self.sprite_height
add.v.v
pop.v.v self.bottomy
push.v self.y
pop.v.v self.topy
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
add.v.v
pushbltn.v self.argument0
add.v.v
cmp.v.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self._offcamera

:[2]
push.v self.rightx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushbltn.v self.argument0
sub.v.v
cmp.v.v LT
bf [4]

:[3]
pushi.e 1
pop.v.i self._offcamera

:[4]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i __view_get(argc=2)
add.v.v
pushbltn.v self.argument0
add.v.v
cmp.v.v GT
bf [6]

:[5]
pushi.e 1
pop.v.i self._offcamera

:[6]
push.v self.bottomy
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushbltn.v self.argument0
sub.v.v
cmp.v.v LT
bf [8]

:[7]
pushi.e 1
pop.v.i self._offcamera

:[8]
push.v self._offcamera
ret.v

:[end]