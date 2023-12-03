.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v self.recovered
pushi.e 0
pop.v.i self.maxedout
pushglb.v global.lhp
pushglb.v global.lmaxhp
cmp.v.v LT
bf [2]

:[1]
push.v global.lhp
pushbltn.v self.argument0
add.v.v
pop.v.v global.lhp
b [3]

:[2]
pushi.e 1
pop.v.i self.maxedout

:[3]
pushglb.v global.lhp
pushglb.v global.lmaxhp
cmp.v.v GTE
bf [5]

:[4]
push.v self.maxedout
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
pushglb.v global.lmaxhp
pop.v.v global.lhp
pushi.e 1
pop.v.i self.maxedout

:[end]