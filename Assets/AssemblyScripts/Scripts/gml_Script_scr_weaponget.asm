.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i
pushi.e 1
pop.v.i self.loop
pushi.e 0
pop.v.i self.noroom
pushi.e 999
pushi.e -5
pushi.e 12
pop.v.i [array]global.weapon

:[1]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [7]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.weapon
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushbltn.v self.argument0
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.weapon
b [7]

:[4]
push.v self.i
pushi.e 12
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.noroom
b [7]

:[6]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[7]
pushi.e 105
conv.i.v
call.i script_execute(argc=1)
popz.v

:[end]