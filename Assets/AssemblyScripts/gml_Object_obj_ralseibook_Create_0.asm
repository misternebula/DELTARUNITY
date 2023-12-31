.localvar 0 arguments

:[0]
pushi.e -1
pop.v.i self.page
pushi.e 0
pop.v.i self.topage
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
add.i.v
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
add.i.v
pop.v.v self.yy
pushi.e 0
pop.v.i self.turning
pushi.e 0
pop.v.i self.turntimer
pushi.e 0
pop.v.i self.turnpage
pushi.e 0
pop.v.i self.siner

:[end]