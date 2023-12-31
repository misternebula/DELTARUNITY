.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 0
cmp.i.v GTE
bf [end]

:[1]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 548
pop.v.i self.sprite_index

:[3]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.xc
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.rect_width
pushi.e 1
cmp.i.v GT
bf [7]

:[4]
pushi.e 3
pop.v.i self.i

:[5]
push.v self.i
pushi.e 1
cmp.i.v GTE
bf [7]

:[6]
push.d 1.25
push.v self.i
pushi.e 4
conv.i.d
div.d.v
sub.v.d
push.v self.rect_width
mul.v.v
pushi.e 50
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.xc
push.v self.rect_width
pushi.e 1
push.v self.i
pushi.e 4
conv.i.d
div.d.v
add.v.i
mul.v.v
add.v.v
pushi.e -200
conv.i.v
push.v self.xc
push.v self.rect_width
pushi.e 1
push.v self.i
pushi.e 4
conv.i.d
div.d.v
add.v.i
mul.v.v
sub.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [5]

:[7]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.timer
pushi.e 15
cmp.i.v LTE
bf [10]

:[8]
push.v self.rect_width
pushi.e 50
cmp.i.v LTE
bf [10]

:[9]
push.v self.rect_width
pushi.e 2
add.i.v
pop.v.v self.rect_width
push.v self.rect_width
push.d 1.25
mul.d.v
pop.v.v self.rect_width

:[10]
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [19]

:[11]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [15]

:[12]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 32
sub.i.v
push.v self.r_index
pushi.e 4
mul.i.v
add.v.v
push.v self.x
push.v self.r_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.r_index
pushi.e 8
cmp.i.v LT
bf [14]

:[13]
push.v self.r_index
push.d 0.334
add.d.v
pop.v.v self.r_index
b [15]

:[14]
pushi.e 8
pop.v.i self.r_index

:[15]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [19]

:[16]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 32
sub.i.v
push.v self.r_index
pushi.e 4
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 547
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
push.v self.r_index
pushi.e 8
conv.i.d
div.d.v
sub.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 32
sub.i.v
push.v self.r_index
pushi.e 4
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 548
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.r_index
pushi.e 8
cmp.i.v LT
bf [18]

:[17]
push.v self.r_index
push.d 0.334
add.d.v
pop.v.v self.r_index
b [19]

:[18]
pushi.e 8
pop.v.i self.r_index

:[19]
push.v self.timer
pushi.e 36
cmp.i.v GTE
bf [end]

:[20]
push.v self.rect_width
pushi.e 2
cmp.i.v GTE
bf [22]

:[21]
push.v self.rect_width
pushi.e 1
sub.i.v
pop.v.v self.rect_width
push.v self.rect_width
push.d 0.9
mul.d.v
pop.v.v self.rect_width
b [end]

:[22]
pushi.e 0
pop.v.i self.rect_width

:[end]