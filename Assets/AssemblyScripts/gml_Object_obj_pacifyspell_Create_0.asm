.localvar 0 arguments

:[0]
push.i 439493
pop.v.i self.target
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.siner
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.fail
push.i 16711680
pop.v.i self.flashcolor

:[end]