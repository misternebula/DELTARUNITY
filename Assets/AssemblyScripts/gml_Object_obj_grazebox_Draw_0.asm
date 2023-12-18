.localvar 0 arguments

:[0]
push.v self.grazetimer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.grazetimer
pushi.e 6
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.grazetimer
pushi.e 6
conv.i.d
div.d.v
push.d 0.2
sub.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 3
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.grazetimer
pushi.e 1
sub.i.v
pop.v.v self.grazetimer

:[end]