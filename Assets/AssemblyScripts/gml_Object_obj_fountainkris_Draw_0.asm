.localvar 0 arguments

:[0]
push.v 158.colcol
pop.v.v self.image_blend
push.v 158.siner
pop.v.v self.siner
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 4
sub.i.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.susy
pushi.e 4
sub.i.v
push.v self.susx
push.v self.susindex
push.v self.sussprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
pop.v.i self.image_blend
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e -6
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.sprite_height
pushi.e 4
mul.i.v
add.v.v
pushi.e 8
sub.i.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e -6
conv.i.v
pushi.e 2
conv.i.v
push.v self.susy
pushi.e 368
add.i.v
pushi.e 8
sub.i.v
push.v self.susx
push.v self.susindex
push.v self.sussprite
call.i draw_sprite_ext(argc=9)
popz.v
call.i draw_self(argc=0)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.susy
push.v self.susx
push.v self.susindex
push.v self.sussprite
call.i draw_sprite_ext(argc=9)
popz.v

:[end]