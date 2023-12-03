.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.charcan
pushi.e -5
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
pushi.e 0
pop.v.i self.charcan

:[2]
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.acting
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.charcan

:[4]
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.char
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.charcan

:[6]
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.charmove
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.charcan

:[8]
pushi.e -5
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charauto
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.charcan

:[10]
push.v self.charcan
ret.v

:[end]