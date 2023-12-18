.localvar 0 arguments

:[0]
pushi.e 305
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.lborder
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.rborder
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.uborder
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.dborder
push.v 305.x
push.v self.lborder
pushi.e 5
add.i.v
cmp.v.v LT
bf [3]

:[2]
push.v self.lborder
pushi.e 5
add.i.v
pop.v.v 305.x

:[3]
push.v 305.x
push.v self.rborder
pushi.e 22
sub.i.v
cmp.v.v GT
bf [5]

:[4]
push.v self.rborder
pushi.e 22
sub.i.v
pop.v.v 305.x

:[5]
push.v 305.y
push.v self.uborder
pushi.e 5
add.i.v
cmp.v.v LT
bf [7]

:[6]
push.v self.uborder
pushi.e 5
add.i.v
pop.v.v 305.y

:[7]
push.v 305.y
push.v self.dborder
pushi.e 22
sub.i.v
cmp.v.v GT
bf [end]

:[8]
push.v self.dborder
pushi.e 22
sub.i.v
pop.v.v 305.y

:[end]