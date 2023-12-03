.localvar 0 arguments

:[0]
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.chartarget
pop.v.v self.thistarget
pushi.e 0
pop.v.i self.cancelattack
push.v self.thistarget
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.thistarget

:[3]
push.v self.thistarget
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2
pop.v.i self.thistarget

:[6]
push.v self.thistarget
pushi.e 2
cmp.i.v EQ
bf [21]

:[7]
pushi.e -5
pushi.e 2
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3
pop.v.i self.thistarget

:[9]
push.v self.thistarget
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 0
pop.v.i self.thistarget

:[14]
push.v self.thistarget
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1
pop.v.i self.thistarget

:[19]
push.v self.thistarget
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.cancelattack

:[21]
push.v self.thistarget
pushi.e -5
pushbltn.v self.argument0
conv.v.i
pop.v.v [array]global.chartarget

:[end]