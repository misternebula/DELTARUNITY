.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 4
mul.i.v
pop.v.v self.image_index
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [2]

:[1]
pushi.e 3
pop.v.i self.image_index
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.timer
pushi.e 40
cmp.i.v GTE
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]