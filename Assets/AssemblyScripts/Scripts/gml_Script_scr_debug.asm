.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
ret.v

:[2]
pushi.e 0
conv.i.v
ret.v

:[end]