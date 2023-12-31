.localvar 0 arguments

:[0]
pushi.e -5
pushbltn.v self.argument0
conv.v.i
dup.i 1
push.v [array]global.mercymod
pushbltn.v self.argument1
add.v.v
pop.i.v [array]global.mercymod
pushi.e -5
pushbltn.v self.argument0
conv.v.i
push.v [array]global.mercymod
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
pushi.e 0
pushi.e -5
pushbltn.v self.argument0
conv.v.i
pop.v.i [array]global.mercymod

:[end]