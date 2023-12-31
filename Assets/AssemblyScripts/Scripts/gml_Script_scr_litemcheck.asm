.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.haveit
pushi.e 0
pop.v.i self.itemcount
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [7]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.litem
pushbltn.v self.argument0
cmp.v.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.haveit

:[4]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.litem
pushbltn.v self.argument0
cmp.v.v EQ
bf [6]

:[5]
push.v self.itemcount
pushi.e 1
add.i.v
pop.v.v self.itemcount

:[6]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[7]
push.v self.haveit
ret.v

:[end]