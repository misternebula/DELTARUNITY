.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [end]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.armor
call.i scr_armorinfo(argc=1)
popz.v
push.v self.armornametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorname
push.v self.armordesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armordesc
push.v self.amessage2temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.amessage2
push.v self.amessage3temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.amessage3
push.v self.armorattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorat
push.v self.armordftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armordf
push.v self.armormagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armormag
push.v self.armorboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorbolts
push.v self.armorgrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorgrazeamt
push.v self.armorgrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorgrazesize
push.v self.armorchar1temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorchar1
push.v self.armorchar2temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorchar2
push.v self.armorchar3temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorchar3
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorvalue
push.v self.armorabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorability
push.v self.armorabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armorabilityicon
push.v self.armoricontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.armoricon
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]