.localvar 0 arguments

:[0]
pushi.e 5
conv.i.v
call.i scr_litemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 5
conv.i.v
call.i scr_litemget(argc=1)
popz.v

:[2]
pushi.e 2
conv.i.v
call.i scr_keyitemcheck(argc=1)
conv.v.b
bf [5]

:[3]
pushi.e 8
conv.i.v
call.i scr_litemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 8
conv.i.v
call.i scr_litemget(argc=1)
popz.v

:[5]
pushi.e -5
pushi.e 1
push.v [array]global.hp
pushi.e -5
pushi.e 1
push.v [array]global.maxhp
div.v.v
call.i ceil(argc=1)
pushglb.v global.lmaxhp
mul.v.v
pop.v.v global.lhp
pushglb.v global.lhp
pushi.e 1
cmp.i.v LT
bf [7]

:[6]
pushi.e 1
pop.v.i global.lhp

:[7]
pushglb.v global.lhp
pushglb.v global.lmaxhp
cmp.v.v GT
bf [9]

:[8]
pushglb.v global.lmaxhp
pop.v.v global.lhp

:[9]
pushi.e 1
pop.v.i global.lwstrength
pushi.e -5
pushi.e 1
push.v [array]global.charweapon
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 2
pop.v.i global.lweapon

:[11]
pushi.e -5
pushi.e 1
push.v [array]global.charweapon
pushi.e 5
cmp.i.v EQ
bf [13]

:[12]
pushi.e 6
pop.v.i global.lweapon

:[13]
pushi.e -5
pushi.e 1
push.v [array]global.charweapon
pushi.e 8
cmp.i.v EQ
bf [15]

:[14]
pushi.e 7
pop.v.i global.lweapon

:[15]
pushi.e 0
pop.v.i global.darkzone

:[end]