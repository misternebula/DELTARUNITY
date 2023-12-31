.localvar 0 arguments

:[0]
push.v self.facing
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.walk_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.facing
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
neg.v
push.v self.y
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.walk_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
call.i scr_debug(argc=0)
conv.v.b
bf [end]

:[5]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.targety
pushi.e 2
add.i.v
push.v self.targetx
pushi.e 2
add.i.v
push.v self.targety
pushi.e 2
sub.i.v
push.v self.targetx
pushi.e 2
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.targety
pushi.e 2
add.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.targetx
pushi.e 2
add.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.targety
pushi.e 2
sub.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.targetx
pushi.e 2
sub.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[end]