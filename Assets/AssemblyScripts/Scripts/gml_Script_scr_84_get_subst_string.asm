.localvar 0 arguments
.localvar 1 str 1112
.localvar 2 sub_id 1113
.localvar 3 sub 1114

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.argument
pop.v.v local.str
pushi.e 1
pop.v.i local.sub_id
pushloc.v local.str
call.i string_length(argc=1)
pop.v.v self.length
pushi.e 0
pop.v.i self.pos

:[1]
pushloc.v local.sub_id
pushbltn.v self.argument_count
cmp.v.v LT
bf [3]

:[2]
push.s "~"@2593
pushloc.v local.sub_id
call.i string(argc=1)
add.v.s
pop.v.v local.sub
pushi.e -1
pushloc.v local.sub_id
conv.v.i
push.v [array]self.argument
pushloc.v local.sub
pushloc.v local.str
call.i string_replace_all(argc=3)
pop.v.v local.str
pushloc.v local.sub_id
pushi.e 1
add.i.v
pop.v.v local.sub_id
b [1]

:[3]
pushloc.v local.str
ret.v

:[end]