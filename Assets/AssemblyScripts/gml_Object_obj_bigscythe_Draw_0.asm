.localvar 0 arguments

:[0]
pushi.e 1
push.v self.image_alpha
sub.v.i
push.d 0.2
add.d.v
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 2.5
div.d.v
add.v.v
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 579
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
call.i draw_self(argc=0)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 1
add.i.v
push.v self.x
pushi.e 1
add.i.v
push.v self.y
pushi.e 1
sub.i.v
push.v self.x
pushi.e 1
sub.i.v
call.i draw_rectangle(argc=5)
popz.v

:[end]