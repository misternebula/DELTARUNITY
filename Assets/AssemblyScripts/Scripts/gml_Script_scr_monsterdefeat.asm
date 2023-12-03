.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.monstergold
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstergold
add.v.v
pop.i.v [array]global.monstergold
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.monsterexp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterexp
add.v.v
pop.i.v [array]global.monsterexp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
pushi.e 2
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.i [array]global.flag
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
pushi.e 1
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.i [array]global.flag

:[4]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e -5
pushi.e 40
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[6]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e -5
pushi.e 41
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[8]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
pushi.e -5
pushi.e 42
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[10]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 43
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[12]
call.i scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [30]

:[13]
pushi.e 0
pop.v.i self._amt_add
pushi.e 0
pop.v.i self._violenced
pushi.e 0
pop.v.i self._spared
pushi.e 0
pop.v.i self._pacified
pushi.e 0
pop.v.i self.d_i

:[14]
push.v self.d_i
pushi.e 3
cmp.i.v LT
bf [24]

:[15]
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
bf [17]

:[16]
push.v self._amt_add
pushi.e 1
add.i.v
pop.v.v self._amt_add

:[17]
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.v self._violenced
pushi.e 1
add.i.v
pop.v.v self._violenced

:[19]
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
push.v self._spared
pushi.e 1
add.i.v
pop.v.v self._spared

:[21]
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
push.v self._pacified
pushi.e 1
add.i.v
pop.v.v self._pacified

:[23]
push.v self.d_i
pushi.e 1
add.i.v
pop.v.v self.d_i
b [14]

:[24]
push.v self._pacified
pushi.e 0
cmp.i.v GT
bf [26]

:[25]
pushi.e 3
pushi.e -5
pushi.e 50
pop.v.i [array]global.flag

:[26]
push.v self._spared
pushi.e 0
cmp.i.v GT
bf [28]

:[27]
pushi.e 2
pushi.e -5
pushi.e 50
pop.v.i [array]global.flag

:[28]
push.v self._violenced
pushi.e 0
cmp.i.v GT
bf [30]

:[29]
pushi.e 1
pushi.e -5
pushi.e 50
pop.v.i [array]global.flag

:[30]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]