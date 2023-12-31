.localvar 0 arguments
.localvar 1 top_ndx 1130
.localvar 2 i 1131

:[0]
push.s "chemg_stack"@3403
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i array_create(argc=1)
pop.v.v global.chemg_stack
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.chemg_stack

:[2]
pushi.e -5
pushi.e 0
push.v [array]global.chemg_stack
pop.v.v local.top_ndx
pushi.e 0
pop.v.i local.i

:[3]
pushloc.v local.i
pushbltn.v self.argument_count
cmp.v.v LT
bf [5]

:[4]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.argument
pushi.e -5
pushloc.v local.top_ndx
pushloc.v local.i
add.v.v
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]global.chemg_stack
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [3]

:[5]
pushloc.v local.top_ndx
pushbltn.v self.argument_count
add.v.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.chemg_stack

:[end]