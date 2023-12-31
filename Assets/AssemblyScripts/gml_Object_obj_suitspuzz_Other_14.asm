.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.max_suit
cmp.v.v LT
bf [11]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.suit
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 3
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.suit
b [6]

:[4]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.suit
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.suit

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.suit
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 4
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.suit
b [10]

:[8]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.suit
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.suit

:[10]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[11]
push.v self.swap
pushi.e 1
add.i.v
pop.v.v self.swap

:[end]