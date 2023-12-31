.localvar 0 arguments

:[0]
push.i 16777215
pop.v.i self.image_blend
pushi.e -1
pop.v.i self.who
pushi.e 0
pop.v.i self.active
pushi.e 168
pushenv [2]

:[1]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[2]
popenv [1]
pushi.e 6
pop.v.i self.image_alpha
push.s " "@24
pop.v.s self.msg

:[end]