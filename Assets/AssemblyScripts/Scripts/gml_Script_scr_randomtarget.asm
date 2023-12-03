.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.abletotarget
pushi.e -5
pushi.e 0
push.v [array]global.charcantarget
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushi.e -5
pushi.e 1
push.v [array]global.charcantarget
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 2
push.v [array]global.charcantarget
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 0
pop.v.i self.abletotarget

:[6]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.mytarget
push.v self.abletotarget
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
pushi.e -5
push.v self.mytarget
conv.v.i
push.v [array]global.charcantarget
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.mytarget
b [7]

:[9]
b [11]

:[10]
pushi.e 3
pop.v.i self.mytarget

:[11]
pushi.e 1
pushi.e -5
push.v self.mytarget
conv.v.i
pop.v.i [array]global.targeted

:[end]