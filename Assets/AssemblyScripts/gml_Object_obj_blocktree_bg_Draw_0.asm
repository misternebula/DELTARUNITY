.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.spec
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
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
push.v self.x
pushi.e 1
conv.i.v
pushi.e 697
conv.i.v
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
push.v self.y
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 2
conv.i.v
pushi.e 697
conv.i.v
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
push.v self.y
push.v self.siner
pushi.e 24
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
pushi.e 3
conv.i.v
pushi.e 697
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[2]
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
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
pushi.e 698
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]