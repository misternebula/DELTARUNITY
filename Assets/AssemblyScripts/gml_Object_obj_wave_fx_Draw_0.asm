.localvar 0 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.wave_siner
pushi.e 1
add.i.v
pop.v.v self.wave_siner
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.wave_max
cmp.v.v LT
bf [end]

:[2]
push.v self.y
push.v self.x
push.v self.i
add.v.v
push.v self.wave_siner
push.v self.i
add.v.v
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.sprite_height
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.i
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]