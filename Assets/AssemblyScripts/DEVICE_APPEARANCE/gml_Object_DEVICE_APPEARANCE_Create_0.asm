.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -10
pop.v.i self.t
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.m
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.tmax
pushi.e 0
pop.v.i self.momentum

:[end]