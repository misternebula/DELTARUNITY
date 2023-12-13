.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i global.interact

:[end]