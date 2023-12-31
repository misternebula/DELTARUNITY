.localvar 0 arguments

:[0]
pushi.e 8
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 8.papeno
pop.v.v self.i
push.v self.id
pushi.e 8
push.v self.i
conv.v.i
pop.v.v [array]self.pape
pushi.e 8
pushenv [3]

:[2]
push.v self.papeno
pushi.e 1
add.i.v
pop.v.v self.papeno

:[3]
popenv [2]

:[end]