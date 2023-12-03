.localvar 0 arguments
.localvar 1 __depth 1034
.localvar 2 __layers 1035
.localvar 3 __numlayers 1036
.localvar 4 __i 1037
.localvar 5 __els 1038
.localvar 6 __numels 1039
.localvar 7 __j 1040
.localvar 8 __eltype 1041

:[0]
pushbltn.v self.argument0
pop.v.v local.__depth
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
bf [end]

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
pushi.e 0
conv.i.v
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]local.__els
call.i layer_tile_visible(argc=2)
popz.v

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

:[end]