.localvar 0 arguments

:[0]
pushi.e 187
pushenv [26]

:[1]
pushi.e 0
pop.v.i self.techwon
call.i scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.techwon

:[3]
push.v self.techwon
pushi.e 0
cmp.i.v EQ
bf [25]

:[4]
pushi.e 1
pop.v.i self.fightphase
pushi.e 3
pop.v.i global.charturn
pushi.e -5
pushi.e 0
push.v [array]global.charaction
pushi.e 4
cmp.i.v EQ
bt [6]

:[5]
pushi.e -5
pushi.e 0
push.v [array]global.charaction
pushi.e 2
cmp.i.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
pushi.e 0
pop.v.i self.fightphase

:[9]
pushi.e -5
pushi.e 1
push.v [array]global.charaction
pushi.e 4
cmp.i.v EQ
bt [11]

:[10]
pushi.e -5
pushi.e 1
push.v [array]global.charaction
pushi.e 2
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
pushi.e 0
pop.v.i self.fightphase

:[14]
pushi.e -5
pushi.e 2
push.v [array]global.charaction
pushi.e 4
cmp.i.v EQ
bt [16]

:[15]
pushi.e -5
pushi.e 2
push.v [array]global.charaction
pushi.e 2
cmp.i.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [19]

:[18]
pushi.e 0
pop.v.i self.fightphase

:[19]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.fightphase

:[21]
push.v self.fightphase
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
pop.v.i global.myfight
pushi.e 185
conv.i.v
push.v self.yy
pushi.e 365
add.i.v
push.v self.xx
pushi.e 2
add.i.v
call.i instance_create(argc=3)
popz.v
b [24]

:[23]
pushi.e 4
pop.v.i global.myfight
pushi.e 300
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[24]
b [26]

:[25]
call.i scr_wincombat(argc=0)
popz.v

:[26]
popenv [1]

:[end]