.localvar 0 arguments
.localvar 1 list 1084
.localvar 2 i 1085

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.argument
pop.v.v local.list
pushi.e 1
pop.v.i local.i

:[1]
pushloc.v local.i
pushbltn.v self.argument_count
cmp.v.v LT
bf [end]

:[2]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.argument
pushloc.v local.list
call.i ds_list_add(argc=2)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [1]

:[end]