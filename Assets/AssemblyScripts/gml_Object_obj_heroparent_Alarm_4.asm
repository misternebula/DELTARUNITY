.localvar 0 arguments

:[0]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.faceaction
call.i scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.myself
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.charspecial
call.i scr_spell(argc=2)
popz.v

:[2]
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.attacktimer

:[end]