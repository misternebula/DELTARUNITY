.localvar 0 arguments

:[0]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.v
push.v self.image_xscale
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.v
push.v self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.x
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]