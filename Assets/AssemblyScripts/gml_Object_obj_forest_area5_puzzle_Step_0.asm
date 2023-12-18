.localvar 0 arguments

:[0]
push.v self.activated
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.activated

:[2]
push.v 326.battlealpha
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
pushi.e -1
pop.v.i self.last_touched

:[end]