.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 14
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [end]

:[3]
pushi.e 0
pop.v.i self.j

:[4]
push.v self.j
pushi.e 20
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]global.bmenucoord
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [4]

:[6]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[end]