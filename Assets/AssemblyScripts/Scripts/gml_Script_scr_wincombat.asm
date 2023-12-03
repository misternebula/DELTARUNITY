.localvar 0 arguments

:[0]
pushi.e 7
pop.v.i global.myfight
pushi.e -1
pop.v.i global.mnfight
pushi.e 187
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.victory

:[2]
popenv [1]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[4]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monsterinstance
call.i instance_exists(argc=1)
conv.v.b
b [7]

:[6]
push.e 0

:[7]
bf [11]

:[8]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [10]

:[9]
call.i scr_monsterdefeat(argc=0)
popz.v

:[10]
popenv [9]

:[11]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[end]