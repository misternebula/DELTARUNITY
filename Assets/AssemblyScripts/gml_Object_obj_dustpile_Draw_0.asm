.localvar 0 arguments

:[0]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 3
conv.i.v
pushi.e 714
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.bust
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.x
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
sub.v.v
pushi.e 2
conv.i.v
pushi.e 714
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pushi.e 1
add.i.v
push.v self.x
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pushi.e 1
conv.i.v
pushi.e 714
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.x
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pushi.e 0
conv.i.v
pushi.e 714
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]