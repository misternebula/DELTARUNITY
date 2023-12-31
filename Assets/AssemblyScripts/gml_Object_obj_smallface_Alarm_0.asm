.localvar 0 arguments

:[0]
push.v self.direction
pop.v.v self.nowdir
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.active
push.v self.type
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
push.v self.type
pushi.e 4
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i self.finished

:[end]