.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 30
cmp.i.v LTE
bf [3]

:[1]
push.v self.offx
pushi.e 2
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
sub.v.i
add.v.v
pop.v.v self.offx
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[3]
push.v self.siner
pushi.e 120
cmp.i.v GTE
bf [end]

:[4]
push.v self.offx
pushi.e -8
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
add.v.i
add.v.v
pop.v.v self.offx
push.v self.image_alpha
push.d 0.03333333333333333
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]