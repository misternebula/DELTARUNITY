.localvar 0 arguments

:[0]
push.v self.explode
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.remrot
push.v self.scale
push.v self.scale
push.v self.remy
push.v self.remx
push.v self.image_index
pushi.e 575
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.explode
pushi.e 1
cmp.i.v GTE
bf [end]

:[3]
call.i draw_self(argc=0)
popz.v

:[end]