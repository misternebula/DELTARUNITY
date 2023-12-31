.localvar 0 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.draw_eye
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 32
add.i.v
push.v self.eyey
add.v.v
push.v self.x
pushi.e 28
add.i.v
push.v self.eyex
add.v.v
pushi.e 0
conv.i.v
pushi.e 556
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]