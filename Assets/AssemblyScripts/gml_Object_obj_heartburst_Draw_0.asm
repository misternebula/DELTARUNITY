.localvar 0 arguments

:[0]
push.v self.burst
pushi.e 1
add.i.v
pop.v.v self.burst
push.d 0.8
push.v self.burst
pushi.e 6
conv.i.d
div.d.v
sub.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.25
push.v self.burst
pushi.e 2
conv.i.d
div.d.v
add.v.d
push.d 0.25
push.v self.burst
add.v.d
push.v self.ystart
pushi.e 9
add.i.v
push.v self.xstart
pushi.e 9
add.i.v
pushi.e 0
conv.i.v
pushi.e 424
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
push.v self.burst
pushi.e 6
conv.i.d
div.d.v
sub.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.25
push.v self.burst
pushi.e 3
conv.i.d
div.d.v
add.v.d
push.d 0.25
push.v self.burst
push.d 1.5
div.d.v
add.v.d
push.v self.ystart
pushi.e 9
add.i.v
push.v self.xstart
pushi.e 9
add.i.v
pushi.e 0
conv.i.v
pushi.e 423
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 1.2
push.v self.burst
pushi.e 6
conv.i.d
div.d.v
sub.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.2
push.v self.burst
pushi.e 5
conv.i.d
div.d.v
add.v.d
push.d 0.2
push.v self.burst
push.d 2.5
div.d.v
add.v.d
push.v self.ystart
pushi.e 9
add.i.v
push.v self.xstart
pushi.e 9
add.i.v
pushi.e 0
conv.i.v
pushi.e 423
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.burst
pushi.e 10
cmp.i.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]