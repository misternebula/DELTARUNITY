.localvar 0 arguments

:[0]
push.v self.image_alpha
push.v self.fadespeed
add.v.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.height
push.v self.length
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]