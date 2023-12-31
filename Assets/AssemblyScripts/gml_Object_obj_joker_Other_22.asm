.localvar 0 arguments

:[0]
push.v self.x
pushi.e 20
add.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monsterx
push.v self.y
pushi.e 20
add.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstery
call.i scr_monstersetup(argc=0)
popz.v

:[end]