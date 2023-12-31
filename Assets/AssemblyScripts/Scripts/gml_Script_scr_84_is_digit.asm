.localvar 0 arguments

:[0]
pushbltn.v self.argument0
push.s "0"@2521
cmp.s.v GTE
bf [2]

:[1]
pushbltn.v self.argument0
push.s "9"@2528
cmp.s.v LTE
b [3]

:[2]
push.e 0

:[3]
conv.b.v
ret.v

:[end]