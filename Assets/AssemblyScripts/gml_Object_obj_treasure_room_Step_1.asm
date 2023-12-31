.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.close
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.image_index

:[3]
pushi.e 0
pop.v.i self.close

:[end]