.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
pushbltn.v self.argument0
push.v self.i
call.i scr_heal(argc=2)
popz.v

:[4]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]