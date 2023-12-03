.localvar 0 arguments

:[0]
push.v 326.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.remx
push.v 326.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.remy
pushglb.v global.facing
pushi.e -1
pushi.e 0
pop.v.v [array]self.facing
push.v self.target
pop.v.v self.i

:[1]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [end]

:[2]
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.facing
push.v 326.x
push.v self.x
push.v 326.x
sub.v.v
push.v self.i
push.v self.target
div.v.v
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remx
push.v 326.y
push.v self.y
push.v 326.y
sub.v.v
push.v self.i
push.v self.target
div.v.v
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remy
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [1]

:[end]