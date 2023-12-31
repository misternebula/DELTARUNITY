.localvar 0 arguments

:[0]
call.i left_p(argc=0)
conv.v.b
bf [3]

:[1]
push.v self.turning
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.page
pushi.e -1
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e -1
pop.v.i self.turning
push.v self.page
pop.v.v self.turnpage
pushi.e 0
pop.v.i self.siner

:[6]
call.i right_p(argc=0)
conv.v.b
bf [9]

:[7]
push.v self.turning
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.page
pushi.e 6
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.turning
push.v self.page
pop.v.v self.turnpage
pushi.e 0
pop.v.i self.siner

:[12]
call.i button2_p(argc=0)
conv.v.b
bf [end]

:[13]
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i global.interact

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]