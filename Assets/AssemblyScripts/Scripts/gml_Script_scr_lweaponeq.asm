.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v GTE
bf [2]

:[1]
pushglb.v global.lweapon
pushi.e -5
pushbltn.v self.argument0
conv.v.i
pop.v.v [array]global.litem

:[2]
pushbltn.v self.argument1
pop.v.v global.lweapon
pushglb.v global.lweapon
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i global.lwstrength

:[4]
pushglb.v global.lweapon
pushi.e 6
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i global.lwstrength

:[6]
pushglb.v global.lweapon
pushi.e 7
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i global.lwstrength

:[8]
pushi.e 14
conv.i.v
call.i script_execute(argc=1)
popz.v

:[end]