.localvar 0 arguments

:[0]
pushi.e 292
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.defeatanim
push.v self.sprite_index
push.v self.defeatanim
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.hurtsprite
push.v self.defeatanim
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.defeatanim
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.image_xscale
push.v self.defeatanim
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.defeatanim
conv.v.i
pop.v.v [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v

:[end]