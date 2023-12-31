.localvar 0 arguments

:[0]
push.v self.g
pushi.e 1
add.i.v
pop.v.v self.g
push.v self.g
pushi.e 15
cmp.i.v GTE
bf [end]

:[1]
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t

:[end]