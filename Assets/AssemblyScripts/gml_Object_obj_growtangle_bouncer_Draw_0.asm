.localvar 0 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.fadein
pushi.e 10
cmp.i.v LT
bf [2]

:[1]
push.v self.fadein
pushi.e 1
add.i.v
pop.v.v self.fadein

:[2]
push.v self.fadein
pushi.e 10
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.dx
push.v self.rx
push.v self.ux
push.v self.lx
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
push.v self.dx
pushi.e 1
sub.i.v
push.v self.rx
pushi.e 1
sub.i.v
push.v self.ux
pushi.e 1
add.i.v
push.v self.lx
pushi.e 1
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.sprite_width
pop.v.v self.w
push.v self.sprite_height
pop.v.v self.h
push.v self.w
pushi.e 11
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.spikecount
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
push.v self.spikecount
cmp.v.v LT
bf [end]

:[4]
push.v self.fadein
pushi.e 10
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
push.v self.h
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.i
pushi.e 11
mul.i.v
add.v.v
push.v self.x
push.v self.w
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
pushi.e 633
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fadein
pushi.e 10
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 270
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.h
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 3
add.i.v
push.v self.x
push.v self.w
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.i
pushi.e 11
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 633
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fadein
pushi.e 10
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 90
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.h
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 2
sub.i.v
push.v self.x
push.v self.w
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.i
pushi.e 11
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 633
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fadein
pushi.e 10
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.y
push.v self.h
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.i
pushi.e 11
mul.i.v
add.v.v
push.v self.x
push.v self.w
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 2
sub.i.v
pushi.e 0
conv.i.v
pushi.e 633
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[end]