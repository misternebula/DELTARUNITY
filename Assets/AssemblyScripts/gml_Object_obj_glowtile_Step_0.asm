.localvar 0 arguments

:[0]
push.v self.stepbuffer
pushi.e 1
sub.i.v
pop.v.v self.stepbuffer
push.v self.stepbuffer
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.stepped
pushi.e 243
pop.v.i self.sprite_index

:[end]