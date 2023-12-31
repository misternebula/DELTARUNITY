.localvar 0 arguments

:[0]
pushi.e 165
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i instance_create(argc=3)
pushi.e -5
pushbltn.v self.argument3
conv.v.i
pop.v.v [array]global.cinstance
pushi.e 12
pushbltn.v self.argument3
pushi.e 12
mul.i.v
add.v.i
pushi.e -5
pushbltn.v self.argument3
conv.v.i
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.target
pushbltn.v self.argument2
pushi.e 3
cmp.i.v EQ
bf [4]

:[1]
pushi.e -5
pushbltn.v self.argument3
conv.v.i
push.v [array]global.cinstance
conv.v.i
pushenv [3]

:[2]
pushi.e 206
pop.v.i self.usprite
pushi.e 204
pop.v.i self.dsprite
pushi.e 209
pop.v.i self.rsprite
pushi.e 207
pop.v.i self.lsprite

:[3]
popenv [2]

:[4]
pushi.e -5
pushbltn.v self.argument3
conv.v.i
push.v [array]global.cinstance
ret.v

:[end]