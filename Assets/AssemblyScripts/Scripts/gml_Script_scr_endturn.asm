.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [3]

:[2]
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
push.v [array]self.tempitem
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.item
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [9]

:[5]
pushi.e 0
pop.v.i self.j

:[6]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [8]

:[7]
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
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.tempitem
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [6]

:[8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[9]
pushi.e 0
pop.v.i self.moveswapped
pushi.e 6
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
pushi.e 2
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 4
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]
pushi.e 0
pop.v.i global.attacking
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [30]

:[17]
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charauto
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v GT
b [20]

:[19]
push.e 0

:[20]
bf [27]

:[21]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 2
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.chartarget

:[23]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.chartarget

:[25]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.chartarget

:[27]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.charaction
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1
pop.v.i global.attacking

:[29]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [16]

:[30]
pushi.e -5
pushi.e 0
push.v [array]global.acting
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
call.i scr_attackphase(argc=0)
popz.v
b [end]

:[32]
pushi.e 3
pop.v.i global.charturn
pushi.e 3
pop.v.i global.myfight

:[end]