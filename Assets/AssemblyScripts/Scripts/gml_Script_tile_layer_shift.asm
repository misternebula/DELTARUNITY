.localvar 0 arguments
.localvar 1 __depth 1043
.localvar 2 __x 1044
.localvar 3 __y 1045
.localvar 4 __layers 1046
.localvar 5 __numlayers 1047
.localvar 6 __i 1048
.localvar 7 __els 1049
.localvar 8 __numels 1050
.localvar 9 __j 1051
.localvar 10 __eltype 1052

:[0]
pushbltn.v self.argument0
pop.v.v local.__depth
pushbltn.v self.argument1
pop.v.v local.__x
pushbltn.v self.argument2
pop.v.v local.__y
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
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]local.__els
call.i layer_tile_get_x(argc=1)
pushloc.v local.__x
add.v.v
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]local.__els
call.i layer_tile_x(argc=2)
popz.v
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]local.__els
call.i layer_tile_get_y(argc=1)
pushloc.v local.__y
add.v.v
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]local.__els
call.i layer_tile_y(argc=2)
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