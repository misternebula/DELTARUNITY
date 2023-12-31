.localvar 0 arguments

:[0]
push.v self.open
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
push.v self.xsin
push.d 0.01
add.d.v
pop.v.v self.xsin
push.v self.xsin
pushi.e 1
cmp.i.v GT
bf [3]

:[2]
pushi.e 1
pop.v.i self.xsin

:[3]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
pop.v.i self.image_index
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
pop.v.v self.amt
push.v self.xsin
push.v self.amt
add.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 926
conv.i.v
call.i draw_background_ext(argc=8)
popz.v
pushi.e 1
pop.v.i self.i

:[4]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [6]

:[5]
push.v self.xsin
push.v self.amt
push.d 0.2
add.d.v
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.d
push.v self.i
div.v.d
push.v self.amt
add.v.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 2
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
push.v self.amt
push.v self.sprite_height
mul.v.v
pushi.e 3
mul.i.v
pop.v.v self.ht
push.v self.amt
push.v self.sprite_width
mul.v.v
pushi.e 3
mul.i.v
pop.v.v self.wt
push.v self.xsin
push.v self.amt
push.d 0.2
add.d.v
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v self.amt
pushi.e 3
mul.i.v
add.v.i
pushi.e 1
push.v self.amt
pushi.e 3
mul.i.v
add.v.i
push.v self.y
push.v self.ht
sub.v.v
push.v self.x
push.v self.wt
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 2
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.amt
push.v self.sprite_height
mul.v.v
pushi.e 2
mul.i.v
pop.v.v self.ht
push.v self.amt
push.v self.sprite_width
mul.v.v
pushi.e 2
mul.i.v
pop.v.v self.wt
push.v self.xsin
push.v self.amt
push.d 0.2
add.d.v
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v self.amt
pushi.e 2
mul.i.v
add.v.i
pushi.e 1
push.v self.amt
pushi.e 2
mul.i.v
add.v.i
push.v self.y
push.v self.ht
sub.v.v
push.v self.x
push.v self.wt
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 2
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
call.i draw_self(argc=0)
popz.v

:[end]