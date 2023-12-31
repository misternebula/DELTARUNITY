.localvar 0 arguments
.localvar 1 top_ndx 1128

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
pushloc.v local.top_ndx
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
pushi.e 1
conv.i.v
push.s "stack empty"@3406
conv.s.v
call.i show_error(argc=2)
popz.v

:[4]
pushloc.v local.top_ndx
pushi.e 1
sub.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.chemg_stack
pushi.e -5
pushloc.v local.top_ndx
conv.v.i
push.v [array]global.chemg_stack
ret.v

:[end]