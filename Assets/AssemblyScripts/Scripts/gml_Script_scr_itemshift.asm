.localvar 0 arguments

:[0]
pushbltn.v self.argument1
pushi.e -5
pushi.e 12
pop.v.v [array]global.item
pushbltn.v self.argument0
pop.v.v self.i

:[1]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [3]

:[2]
pushi.e -5
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.item
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.item
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
call.i scr_iteminfo_all(argc=0)
popz.v
call.i scr_itemname(argc=0)
popz.v

:[end]