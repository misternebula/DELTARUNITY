.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 26
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.factor
mul.v.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
pushi.e 3
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
push.v self.y
push.v self.x
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]