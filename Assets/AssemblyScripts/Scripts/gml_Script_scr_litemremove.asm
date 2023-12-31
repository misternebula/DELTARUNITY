.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [end]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.litem
pushbltn.v self.argument0
cmp.v.v EQ
bf [4]

:[3]
pushi.e 0
conv.i.v
push.v self.i
pushi.e 10
conv.i.v
call.i script_execute(argc=3)
popz.v

:[4]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]