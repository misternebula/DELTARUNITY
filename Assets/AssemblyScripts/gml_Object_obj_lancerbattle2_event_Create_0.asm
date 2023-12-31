.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.mcon
pushi.e 217
conv.i.v
pushi.e 60
conv.i.v
pushi.e 780
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.puzz1
push.v self.puzz1
conv.v.i
pushenv [2]

:[1]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.sol
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.sol
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.sol
pushi.e 3
pop.v.i self.max_suit

:[2]
popenv [1]
pushglb.v global.plot
pushi.e 154
cmp.i.v GTE
bf [end]

:[3]
push.v self.puzz1
conv.v.i
pushenv [5]

:[4]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.suit
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.suit
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.suit

:[5]
popenv [4]
pushi.e 999
pop.v.i self.con
pushi.e 999
pop.v.i self.mcon
call.i instance_destroy(argc=0)
popz.v

:[end]