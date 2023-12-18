.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 653
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 15
add.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i cos(argc=1)
call.i round(argc=1)
add.v.v
push.v self.x
pushi.e 15
add.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
call.i round(argc=1)
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[end]