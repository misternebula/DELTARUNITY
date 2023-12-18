.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.onioncount
pushi.e 2
add.i.v
pop.v.v self.onioncount

:[end]