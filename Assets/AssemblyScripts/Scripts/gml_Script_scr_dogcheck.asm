.localvar 0 arguments

:[0]
pushglb.v global.currentroom
pushi.e 131
cmp.i.v GTE
bt [2]

:[1]
pushglb.v global.currentroom
pushi.e 0
cmp.i.v LTE
b [3]

:[2]
push.e 1

:[3]
bf [6]

:[4]
pushi.e 1
conv.i.v
ret.v

:[5]
b [end]

:[6]
pushi.e 0
conv.i.v
ret.v

:[end]