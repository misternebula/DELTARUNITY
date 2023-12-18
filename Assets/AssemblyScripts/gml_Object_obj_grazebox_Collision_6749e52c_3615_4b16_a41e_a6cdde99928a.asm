.localvar 0 arguments

:[0]
push.v other.id
conv.v.i
pushenv [22]

:[1]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [22]

:[2]
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [14]

:[3]
push.v self.grazepoints
pushi.e 20
conv.i.d
div.d.v
call.i scr_tensionheal(argc=1)
popz.v
pushglb.v global.turntimer
pushi.e 10
cmp.i.v GTE
bf [5]

:[4]
push.v global.turntimer
push.v self.timepoints
pushi.e 20
conv.i.d
div.d.v
sub.v.v
pop.v.v global.turntimer

:[5]
pushi.e 196
pushenv [13]

:[6]
push.v self.grazetimer
pushi.e 0
cmp.i.v GTE
bf [8]

:[7]
push.v self.grazetimer
pushi.e 4
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 3
pop.v.i self.grazetimer

:[11]
push.v self.grazetimer
pushi.e 2
cmp.i.v LT
bf [13]

:[12]
pushi.e 2
pop.v.i self.grazetimer

:[13]
popenv [6]

:[14]
push.v self.grazed
pushi.e 0
cmp.i.v EQ
bf [22]

:[15]
pushi.e 1
pop.v.i self.grazed
push.v self.grazepoints
call.i scr_tensionheal(argc=1)
popz.v
pushglb.v global.turntimer
pushi.e 10
cmp.i.v GTE
bf [17]

:[16]
push.v global.turntimer
push.v self.timepoints
sub.v.v
pop.v.v global.turntimer

:[17]
pushi.e 187
pushenv [19]

:[18]
pushi.e 1
pop.v.i self.grazenoise

:[19]
popenv [18]
pushi.e 196
pushenv [21]

:[20]
pushi.e 10
pop.v.i self.grazetimer

:[21]
popenv [20]

:[22]
popenv [1]

:[end]