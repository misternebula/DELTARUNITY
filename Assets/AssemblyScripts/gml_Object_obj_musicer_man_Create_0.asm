.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e -5
pushi.e 910
push.v [array]global.flag
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
pushi.e 1
pushi.e -5
pushi.e 910
pop.v.i [array]global.flag

:[end]