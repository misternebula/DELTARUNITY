.localvar 0 arguments

:[0]
push.v self.bgdraw
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v self.rate
push.d 0.9523809523809523
mul.d.v
pop.v.v self.rate
push.v self.rate
push.d 0.01
cmp.d.v LTE
bf [3]

:[2]
pushi.e 0
pop.v.i self.rate

:[3]
push.v self.rate_alpha
push.d 0.02
sub.d.v
pop.v.v self.rate_alpha
push.v self.rate_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.rate
push.v self.rate
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
push.v self.rate
pushi.e 84
mul.i.v
sub.v.v
pushi.e 200
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 160
add.i.v
pushi.e 0
conv.i.v
pushi.e 709
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
call.i draw_self(argc=0)
popz.v

:[end]