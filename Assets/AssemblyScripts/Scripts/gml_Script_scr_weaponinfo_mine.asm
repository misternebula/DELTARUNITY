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
push.v [array]global.charweapon
call.i scr_weaponinfo(argc=1)
popz.v
push.v self.weaponnametemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponname
push.v self.weapondesctemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweapondesc
push.v self.weaponattemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponat
push.v self.weapondftemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweapondf
push.v self.weaponmagtemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponmag
push.v self.weaponboltstemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponbolts
push.v self.weaponstyletemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponstyle
push.v self.weapongrazeamttemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweapongrazeamt
push.v self.weapongrazesizetemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweapongrazesize
push.v self.weaponabilitytemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponability
push.v self.weaponabilityicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponabilityicon
push.v self.weaponicontemp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.charweaponicon
push.v self.weaponattemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.itemat
push.v self.weapondftemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.itemdf
push.v self.weaponmagtemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.itemmag
push.v self.weaponboltstemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.itembolts
push.v self.weapongrazeamttemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.itemgrazeamt
push.v self.weapongrazesizetemp
pushi.e -5
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.itemgrazesize
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]