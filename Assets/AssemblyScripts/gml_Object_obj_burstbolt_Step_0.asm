.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.v self.mag
add.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.v self.mag
add.v.v
pop.v.v self.image_yscale
push.v self.x
pushi.e 1
push.v self.sprite_width
sub.v.i
push.v self.mag
mul.v.v
push.d 2.7
div.d.v
add.v.v
pop.v.v self.x
push.v self.y
pushi.e 1
push.v self.sprite_height
sub.v.i
push.v self.mag
mul.v.v
push.d 2.5
div.d.v
add.v.v
pop.v.v self.y
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]