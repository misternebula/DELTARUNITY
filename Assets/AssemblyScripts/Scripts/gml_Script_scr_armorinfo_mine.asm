.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [end]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.chararmor1
call.i scr_armorinfo(argc=1)
popz.v
push.v self.armornametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1name
push.v self.armordesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1desc
push.v self.armorattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1at
push.v self.armordftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1df
push.v self.armormagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1mag
push.v self.armorboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1bolts
push.v self.armorgrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1grazeamt
push.v self.armorgrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1grazesize
push.v self.armorabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1ability
push.v self.armorabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1abilityicon
push.v self.armoricontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1icon
push.v self.armorattemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.itemat
push.v self.armordftemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.itemdf
push.v self.armormagtemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.itemmag
push.v self.armorboltstemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.itembolts
push.v self.armorgrazeamttemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.itemgrazeamt
push.v self.armorgrazesizetemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]global.itemgrazesize
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.chararmor2
call.i scr_armorinfo(argc=1)
popz.v
push.v self.armornametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2name
push.v self.armordesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2desc
push.v self.armorattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2at
push.v self.armordftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2df
push.v self.armormagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2mag
push.v self.armorboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2bolts
push.v self.armorgrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2grazeamt
push.v self.armorgrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2grazesize
push.v self.armorabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2ability
push.v self.armorabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2abilityicon
push.v self.armoricontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2icon
push.v self.armorattemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.itemat
push.v self.armordftemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.itemdf
push.v self.armormagtemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.itemmag
push.v self.armorboltstemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.itembolts
push.v self.armorgrazeamttemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.itemgrazeamt
push.v self.armorgrazesizetemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.itemgrazesize
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]