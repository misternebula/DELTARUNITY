.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.moveswapped
pushglb.v global.charturn
pop.v.v self.prevturn
pushglb.v global.charturn
pushi.e 0
cmp.i.v EQ
bf [12]

:[1]
pushi.e 1
pop.v.i self.moveswapped
pushi.e -5
pushi.e 1
push.v [array]global.charmove
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
conv.i.v
call.i scr_charcan(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i global.charturn
b [12]

:[6]
pushi.e -5
pushi.e 2
push.v [array]global.charmove
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2
conv.i.v
call.i scr_charcan(argc=1)
conv.v.b
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 2
pop.v.i global.charturn
b [12]

:[11]
call.i scr_endturn(argc=0)
popz.v

:[12]
pushglb.v global.charturn
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v self.moveswapped
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [22]

:[16]
pushi.e 1
pop.v.i self.moveswapped
pushi.e 2
conv.i.v
call.i scr_charcan(argc=1)
conv.v.b
bf [18]

:[17]
pushi.e -5
pushi.e 1
push.v [array]global.acting
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 2
pop.v.i global.charturn
b [22]

:[21]
call.i scr_endturn(argc=0)
popz.v

:[22]
pushglb.v global.charturn
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
push.v self.moveswapped
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
call.i scr_endturn(argc=0)
popz.v

:[27]
push.v self.moveswapped
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 0
pop.v.i global.bmenuno

:[29]
pushglb.v global.charturn
pushi.e 0
cmp.i.v GT
bf [end]

:[30]
pushglb.v global.tension
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]global.temptension
pushi.e 0
pop.v.i self.i

:[31]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [end]

:[32]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.prevturn
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
b [31]

:[end]