.localvar 0 arguments

:[0]
pushi.e 0
pushi.e -1
pushi.e 12
chkindex.e
push.i 32000
mul.i.i
pushbltn.v self.argument1
conv.v.i
chkindex.e
add.i.i
pop.v.i [array]self.tempitem
pushbltn.v self.argument0
pop.v.v self.i

:[1]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [end]

:[2]
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushbltn.v self.argument1
conv.v.i
chkindex.e
add.i.i
push.v [array]self.tempitem
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushbltn.v self.argument1
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.tempitem
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]