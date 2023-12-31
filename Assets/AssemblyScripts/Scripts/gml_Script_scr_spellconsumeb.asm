.localvar 0 arguments

:[0]
push.v global.tension
push.v self.cost
sub.v.v
pop.v.v global.tension
pushi.e 2
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.i [array]global.faceaction
pushi.e 2
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.i [array]global.charaction
pushi.e -5
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spell
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]global.charspecial
pushi.e 0
pop.v.i global.tensionselect
call.i scr_nexthero(argc=0)
popz.v

:[end]