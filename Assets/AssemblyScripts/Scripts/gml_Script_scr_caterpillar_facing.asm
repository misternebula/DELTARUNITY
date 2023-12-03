.localvar 0 arguments

:[0]
pushi.e 165
pushenv [4]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 25
cmp.i.v LT
bf [4]

:[3]
pushbltn.v self.argument0
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.facing
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
popenv [1]

:[end]