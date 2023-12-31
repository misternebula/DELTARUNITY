.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.ringno
pushi.e 8
pop.v.i self.maxspade
pushi.e 0
pop.v.i self.t
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.startspade
pushi.e 0
pop.v.i self.spadet
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.startang
push.d 0.2
pop.v.d self.grav
pushi.e 1
pop.v.i self.size
pushi.e 0
pop.v.i self.special
pushi.e 0
pop.v.i self.side

:[end]