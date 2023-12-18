.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.stepped
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
pushi.e 222
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.stepnoise

:[4]
popenv [3]
pushi.e 242
pop.v.i self.sprite_index

:[5]
pushi.e 1
pop.v.i self.stepped
pushi.e 3
pop.v.i self.stepbuffer

:[end]