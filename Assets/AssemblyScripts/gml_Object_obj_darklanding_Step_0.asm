.localvar 0 arguments

:[0]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
pushi.e 326
pushenv [3]

:[2]
pushi.e 827
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i global.facing

:[3]
popenv [2]
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.con
pushi.e 0
pushi.e -5
pushi.e 7
pop.v.i [array]global.flag
pushglb.v global.plot
pushi.e 16
cmp.i.v LT
bf [5]

:[4]
pushi.e 16
pop.v.i global.plot

:[5]
call.i scr_tempsave(argc=0)
popz.v

:[end]