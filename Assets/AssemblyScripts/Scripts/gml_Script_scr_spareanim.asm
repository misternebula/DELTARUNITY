.localvar 0 arguments

:[0]
pushi.e 298
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.spareanim
push.v self.sprite_index
push.v self.spareanim
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sparedsprite
push.v self.spareanim
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.spareanim
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.image_xscale
push.v self.spareanim
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.spareanim
conv.v.i
pop.v.v [stacktop]self.image_yscale

:[end]