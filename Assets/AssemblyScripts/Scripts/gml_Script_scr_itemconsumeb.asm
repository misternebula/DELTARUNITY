.localvar 0 arguments

:[0]
pushi.e 3
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.i [array]global.faceaction
pushi.e 4
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.i [array]global.charaction
pushi.e -1
pushi.e -5
pushi.e 4
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
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]self.tempitem
pushi.e 200
add.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]global.charspecial
push.v self.usable
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.charturn
pushi.e -5
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
call.i scr_itemshift_temp(argc=2)
popz.v

:[2]
call.i scr_nexthero(argc=0)
popz.v

:[end]