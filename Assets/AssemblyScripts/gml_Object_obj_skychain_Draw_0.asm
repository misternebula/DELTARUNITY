.localvar 0 arguments

:[0]
call.i draw_self(argc=0)
popz.v
pushi.e 0
pop.v.i self.can
push.v self.y
pushi.e -20
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
pop.v.i self.can

:[2]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
sub.i.v
cmp.v.v LT
bf [4]

:[3]
pushi.e 1
pop.v.i self.can

:[4]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 660
add.i.v
cmp.v.v GT
bf [6]

:[5]
pushi.e 1
pop.v.i self.can

:[6]
push.v self.can
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
push.v self.direction
pushi.e 1000
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
push.v self.direction
pushi.e 1000
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
push.v self.y
push.v self.x
call.i draw_line(argc=4)
popz.v

:[8]
push.v self.can
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.soundcon
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [end]

:[12]
pushi.e 19
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.soundcon

:[end]