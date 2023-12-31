.localvar 0 arguments

:[0]
pushglb.v global.charturn
pop.v.v self.prevturn
pushi.e 0
pop.v.i self.moveswapped
pushglb.v global.charturn
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e -5
pushi.e 0
push.v [array]global.charmove
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i global.charturn
pushi.e 1
pop.v.i self.moveswapped

:[3]
pushglb.v global.charturn
pushi.e 2
cmp.i.v EQ
bf [11]

:[4]
pushi.e 1
pop.v.i self.moveswapped
pushi.e -5
pushi.e 1
push.v [array]global.charmove
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e -5
pushi.e 1
push.v [array]global.acting
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 1
pop.v.i global.charturn
b [11]

:[9]
pushi.e -5
pushi.e 0
push.v [array]global.charmove
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i global.charturn

:[11]
push.v self.moveswapped
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i global.bmenuno
pushi.e 0
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.i [array]global.chartarget
pushi.e 0
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.i [array]global.charaction
pushi.e 0
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.i [array]global.charspecial
pushi.e 1
pop.v.i self.movenoise

:[13]
pushglb.v global.charturn
pushi.e 0
cmp.i.v EQ
bf [20]

:[14]
pushi.e 234
pushenv [16]

:[15]
pushi.e 0
pop.v.i self.acting

:[16]
popenv [15]
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.acting
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.acting
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.acting
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.chartarget
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.charaction
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.charspecial
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.faceaction
pushi.e -5
pushi.e 0
push.v [array]global.temptension
pop.v.v global.tension
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [19]

:[18]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.item
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]self.tempitem
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [17]

:[19]
b [end]

:[20]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]global.temptension
pop.v.v global.tension
pushi.e 0
pop.v.i self.i

:[21]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [end]

:[22]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
pushi.e 1
sub.i.v
conv.v.i
chkindex.e
add.i.i
push.v [array]self.tempitem
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.tempitem
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [21]

:[end]