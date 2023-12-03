.localvar 0 arguments

:[0]
pushbltn.v self.argument1
pushi.e -5
pushi.e 12
pop.v.v [array]global.keyitem
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
push.v [array]global.keyitem
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.keyitem
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
call.i scr_keyiteminfo_all(argc=0)
popz.v

:[end]