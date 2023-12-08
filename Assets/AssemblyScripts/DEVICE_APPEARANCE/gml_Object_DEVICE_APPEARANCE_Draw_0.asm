.localvar 0 arguments

:[0]
push.v self.t
pushi.e 0
cmp.i.v LTE
bf [4]

:[1]
pushi.e 1
push.v self.t
pushi.e 10
conv.i.d
div.d.v
add.v.i
pop.v.v self.xs
push.v self.xs
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i self.xs

:[3]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 800
conv.i.v
push.v self.xs
push.v self.y
push.v self.m
add.v.v
pushi.e 400
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.xs
mul.v.v
sub.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 1
conv.i.v
push.v self.sprite_width
push.v self.m
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v

:[4]
push.v self.t
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.t
push.v self.m
cmp.v.v LT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self.y
push.v self.t
sub.v.v
push.v self.m
add.v.v
push.v self.x
pushi.e 1
push.v self.t
pushi.e 2
mul.i.v
add.v.i
push.v self.sprite_width
push.v self.m
push.v self.t
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 400
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 400
sub.i.v
push.v self.t
sub.v.v
push.v self.m
add.v.v
push.v self.x
pushi.e 1
conv.i.v
push.v self.sprite_width
push.v self.m
push.v self.t
sub.v.v
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 400
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.t
add.v.v
push.v self.m
add.v.v
push.v self.x
pushi.e 1
conv.i.v
push.v self.sprite_width
push.v self.m
push.v self.t
add.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v

:[9]
push.v self.t
push.v self.m
cmp.v.v GTE
bf [11]

:[10]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[11]
push.v self.momentum
pushi.e 0
cmp.i.v GT
bf [14]

:[12]
push.v self.t
push.v self.tmax
pushi.e 2
add.i.v
cmp.v.v LT
bf [14]

:[13]
push.v self.t
push.v self.momentum
add.v.v
pop.v.v self.t

:[14]
push.v self.momentum
pushi.e 0
cmp.i.v LT
bf [end]

:[15]
push.v self.t
push.v self.momentum
add.v.v
pop.v.v self.t

:[end]