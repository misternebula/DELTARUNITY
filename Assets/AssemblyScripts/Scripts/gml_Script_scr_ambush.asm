.localvar 0 arguments

:[0]
pushi.e 6
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 2
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 3
pop.v.i global.charturn
pushi.e 1
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight

:[end]