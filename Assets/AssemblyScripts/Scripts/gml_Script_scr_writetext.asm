.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.fc
pushbltn.v self.argument0
pop.v.v global.msc
pushbltn.v self.argument1
push.s "x"@37
cmp.s.v NEQ
bf [2]

:[1]
pushbltn.v self.argument1
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
pushbltn.v self.argument2
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
pushbltn.v self.argument2
pop.v.v global.fc

:[4]
pushi.e 5
pop.v.i global.typer
pushbltn.v self.argument3
pushi.e 0
cmp.i.v NEQ
bf [6]

:[5]
pushbltn.v self.argument3
pop.v.v global.typer

:[6]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]