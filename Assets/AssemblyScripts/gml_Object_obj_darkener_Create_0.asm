.localvar 0 arguments

:[0]
pushi.e 195
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 1
pop.v.i self.darken
pushi.e 0
pop.v.i self.darkamt

:[end]