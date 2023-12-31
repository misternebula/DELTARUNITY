.localvar 0 arguments

:[0]
pushi.e 294
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self._oflash
push.v self.image_xscale
push.v self._oflash
conv.v.i
pop.v.v [stacktop]self.image_xscale
pushi.e 0
push.v self._oflash
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.image_index
push.v self._oflash
conv.v.i
pop.v.v [stacktop]self.image_index
push.v self.image_yscale
push.v self._oflash
conv.v.i
pop.v.v [stacktop]self.image_yscale
push.v self.sprite_index
push.v self._oflash
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
sub.i.v
push.v self._oflash
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.id
push.v self._oflash
conv.v.i
pop.v.v [stacktop]self.target
push.v self._oflash
ret.v

:[end]