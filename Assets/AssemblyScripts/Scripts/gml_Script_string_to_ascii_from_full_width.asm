.localvar 0 arguments
.localvar 1 str 1193
.localvar 2 result 1194
.localvar 3 i 1195
.localvar 4 ch 1196
.localvar 5 lastch 1197

:[0]
pushbltn.v self.argument0
pop.v.v local.str
push.s ""@2240
pop.v.s local.result
pushi.e 1
pop.v.i local.i

:[1]
pushloc.v local.i
pushloc.v local.str
call.i string_length(argc=1)
cmp.v.v LTE
bf [10]

:[2]
pushloc.v local.i
pushloc.v local.str
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local.ch
pushloc.v local.ch
push.i 65281
cmp.i.v GTE
bf [4]

:[3]
pushloc.v local.ch
push.i 65374
cmp.i.v LTE
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v local.ch
push.i 65248
sub.i.v
pop.v.v local.ch
b [9]

:[7]
pushloc.v local.ch
pushi.e 12288
cmp.i.v EQ
bf [9]

:[8]
pushi.e 32
pop.v.i local.ch

:[9]
pushloc.v local.ch
call.i chr(argc=1)
pop.v.v local.lastch
push.v local.result
pushloc.v local.lastch
add.v.v
pop.v.v local.result
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[10]
pushloc.v local.result
ret.v

:[end]