.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.image_angle
push.v self.x
pushi.e 30
sub.i.v
pushi.e 260
conv.i.d
div.d.v
pop.v.v self.after_x
push.v self.after_x
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.after_x

:[2]
push.v self.after_x
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[end]