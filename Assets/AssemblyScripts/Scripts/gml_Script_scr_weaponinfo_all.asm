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
push.v [array]global.weapon
call.i scr_weaponinfo(argc=1)
popz.v
push.v self.weaponnametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponname
push.v self.weapondesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weapondesc
push.v self.wmessage2temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.wmessage2
push.v self.wmessage3temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.wmessage3
push.v self.weaponattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponat
push.v self.weapondftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weapondf
push.v self.weaponmagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponmag
push.v self.weaponboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponbolts
push.v self.weaponstyletemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponstyle
push.v self.weapongrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weapongrazeamt
push.v self.weapongrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weapongrazesize
push.v self.weaponchar1temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponchar1
push.v self.weaponchar2temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponchar2
push.v self.weaponchar3temp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponchar3
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponvalue
push.v self.weaponabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponability
push.v self.weaponabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponabilityicon
push.v self.weaponicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.weaponicon
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]