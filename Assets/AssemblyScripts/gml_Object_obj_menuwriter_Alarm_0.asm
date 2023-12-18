.localvar 0 arguments

:[0]
push.v self.who
pop.v.v 168.testwho
pushi.e 168
pushenv [6]

:[1]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.testwho
push.v self.who
cmp.v.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [1]
pushi.e 1
pop.v.i self.active

:[end]