.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [end]

:[1]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 323
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.myinteract

:[end]