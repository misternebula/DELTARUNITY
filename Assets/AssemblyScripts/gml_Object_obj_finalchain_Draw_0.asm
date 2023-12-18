.localvar 0 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.chaincon
pushi.e 9999
cmp.i.v GTE
bf [2]

:[1]
push.v self.type
pushi.e 1
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.spike
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[5]
push.v self.spike
conv.v.i
push.v [stacktop]self.sprite_width
pop.v.v self.w
push.v self.spike
conv.v.i
push.v [stacktop]self.sprite_height
pop.v.v self.h
push.v self.w
pushi.e 11
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.spikecount
push.v self.spike
conv.v.i
push.v [stacktop]self.x
pop.v.v self.spx
push.v self.spike
conv.v.i
push.v [stacktop]self.y
pop.v.v self.spy
push.v self.spike
conv.v.i
push.v [stacktop]self.basealpha
pop.v.v self.balpha
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
push.v self.spikecount
cmp.v.v LT
bf [end]

:[7]
push.v self.balpha
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
push.v self.spx
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
push.v self.balpha
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
push.v self.balpha
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
push.v self.balpha
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
b [6]

:[end]