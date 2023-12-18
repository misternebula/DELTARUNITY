.localvar 0 arguments

:[0]
pushi.e 283
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i self.active

:[2]
popenv [1]
pushi.e 303
pushenv [4]

:[3]
pushi.e 3
pop.v.i self.growcon

:[4]
popenv [3]
pushi.e 246
pushenv [6]

:[5]
pushi.e 3
pop.v.i self.growcon

:[6]
popenv [5]

:[end]