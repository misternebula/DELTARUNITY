.localvar 0 arguments

:[0]
pushi.e 144
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.battlealpha
pushi.e 2
mul.i.v
pop.v.v 144.factor

:[2]
pushi.e 326
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
pushi.e 0
pop.v.i 326.battlemode
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v self.areas
cmp.v.v LT
bf [end]

:[5]
push.v 326.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.areax1
cmp.v.v GT
bf [9]

:[6]
push.v 326.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.areax2
cmp.v.v LT
bf [9]

:[7]
push.v 326.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.areay1
cmp.v.v GT
bf [9]

:[8]
push.v 326.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.areay2
cmp.v.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i 326.battlemode

:[12]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[end]