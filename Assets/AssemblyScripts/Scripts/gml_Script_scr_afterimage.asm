.localvar 0 arguments

:[0]
pushi.e 183
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.afterimage
push.v self.sprite_index
push.v self.afterimage
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.afterimage
conv.v.i
pop.v.v [stacktop]self.image_index
push.v self.image_blend
push.v self.afterimage
conv.v.i
pop.v.v [stacktop]self.image_blend
pushi.e 0
push.v self.afterimage
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.depth
push.v self.afterimage
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.image_xscale
push.v self.afterimage
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.afterimage
conv.v.i
pop.v.v [stacktop]self.image_yscale
push.v self.image_angle
push.v self.afterimage
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.afterimage
ret.v

:[end]