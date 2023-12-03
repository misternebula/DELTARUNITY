.localvar 0 arguments
.localvar 1 __depth 1023
.localvar 2 __tiles 1024
.localvar 3 __currtile 1025
.localvar 4 __layers 1026
.localvar 5 __numlayers 1027
.localvar 6 __i 1028
.localvar 7 __els 1029
.localvar 8 __numels 1030
.localvar 9 __j 1031
.localvar 10 __eltype 1032

:[0]
pushbltn.v self.argument0
pop.v.v local.__depth
pushi.e -1
pushi.e -7
pushi.e 0
pop.v.i [array]local.__tiles
pushi.e 0
pop.v.i local.__currtile
call.i layer_get_all(argc=0)
pop.v.v local.__layers
pushloc.v local.__layers
call.i array_length_1d(argc=1)
pop.v.v local.__numlayers
pushi.e 0
pop.v.i local.__i

:[1]
pushloc.v local.__i
pushloc.v local.__numlayers
cmp.v.v LT
bf [10]

:[2]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layers
call.i layer_get_depth(argc=1)
pushloc.v local.__depth
cmp.v.v NEQ
bf [4]

:[3]
b [9]

:[4]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layers
call.i layer_get_all_elements(argc=1)
pop.v.v local.__els
pushloc.v local.__els
call.i array_length_1d(argc=1)
pop.v.v local.__numels
pushi.e 0
pop.v.i local.__j

:[5]
pushloc.v local.__j
pushloc.v local.__numels
cmp.v.v LT
bf [9]

:[6]
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]local.__els
call.i layer_get_element_type(argc=1)
pop.v.v local.__eltype
pushloc.v local.__eltype
pushi.e 7
cmp.i.v EQ
bf [8]

:[7]
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]local.__els
pushi.e -7
pushloc.v local.__currtile
conv.v.i
pop.v.v [array]local.__tiles
push.v local.__currtile
push.e 1
add.i.v
pop.v.v local.__currtile

:[8]
push.v local.__j
push.e 1
add.i.v
pop.v.v local.__j
b [5]

:[9]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [1]

:[10]
pushloc.v local.__tiles
ret.v

:[end]