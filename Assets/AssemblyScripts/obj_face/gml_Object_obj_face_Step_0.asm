.localvar 0 arguments

:[0]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [6]

:[1]
push.v self.mouthmove
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.mouthtimer
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.mouthtimer
pushi.e 1
pop.v.i self.face_index

:[6]
push.v self.mouthtimer
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.v self.mouthtimer
push.v self.rate
add.v.v
pop.v.v self.mouthtimer

:[8]
push.v self.mouthtimer
pushi.e 1
cmp.i.v GTE
bf [10]

:[9]
push.v self.mouthtimer
pushi.e 5
cmp.i.v LTE
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1
pop.v.i self.face_index
b [14]

:[13]
pushi.e 0
pop.v.i self.face_index

:[14]
push.v self.mouthtimer
pushi.e 9
cmp.i.v GTE
bf [end]

:[15]
pushi.e 0
pop.v.i self.mouthtimer
pushi.e 0
pop.v.i self.mouthmove

:[end]