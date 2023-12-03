.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v self.w
pushi.e 0
pop.v.i self.usable
pushbltn.v self.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [3]

:[1]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [4]

:[2]
b [5]

:[3]
b [5]

:[4]
pushi.e 100
conv.i.v
pushglb.v global.charselect
call.i scr_healitem(argc=2)
popz.v
b [5]

:[5]
popz.v

:[end]