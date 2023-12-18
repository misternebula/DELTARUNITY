.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.touched
pushi.e -1
pop.v.i self.last_touched
pushi.e 0
pop.v.i self.activated
pushi.e 0
pop.v.i self.type
push.v self.y
pushi.e 500
cmp.i.v GTE
bf [end]

:[1]
pushi.e 1
pop.v.i self.type

:[end]