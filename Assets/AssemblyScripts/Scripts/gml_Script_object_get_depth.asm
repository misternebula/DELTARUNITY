.localvar 0 arguments
.localvar 1 objID 1019
.localvar 2 ret 1020

:[0]
pushbltn.v self.argument0
pop.v.v local.objID
pushi.e 0
pop.v.i local.ret
pushloc.v local.objID
pushi.e 0
cmp.i.v GTE
bf [2]

:[1]
pushloc.v local.objID
pushglb.v global.__objectID2Depth
call.i array_length_1d(argc=1)
cmp.v.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -5
pushloc.v local.objID
conv.v.i
push.v [array]global.__objectID2Depth
pop.v.v local.ret

:[5]
pushloc.v local.ret
ret.v

:[end]