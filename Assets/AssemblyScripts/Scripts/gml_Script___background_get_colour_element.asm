.localvar 0 arguments
.localvar 1 __nearestdepth 891
.localvar 2 __farthestdepth 892
.localvar 3 __depthinc 893
.localvar 4 __result 894
.localvar 5 __colstring 895
.localvar 6 __layerlist 896
.localvar 7 __layerlistlength 897
.localvar 8 __layerid 898
.localvar 9 __isforeground 899
.localvar 10 __i 900
.localvar 11 __layername 901
.localvar 12 __els 902
.localvar 13 __elslength 903
.localvar 14 __newback 904

:[0]
pushi.e -15000
pop.v.i local.__nearestdepth
pushi.e 15999
pop.v.i local.__farthestdepth
pushi.e 100
pop.v.i local.__depthinc
pushi.e -1
pushi.e -7
pushi.e 0
pop.v.i [array]local.__result
pushi.e -1
pushi.e -7
pushi.e 1
pop.v.i [array]local.__result
push.s "Compatibility_Colour"@2822
pop.v.s local.__colstring
call.i layer_get_all(argc=0)
pop.v.v local.__layerlist
pushloc.v local.__layerlist
call.i array_length_1d(argc=1)
pop.v.v local.__layerlistlength
pushi.e -1
pop.v.i local.__layerid
pushi.e 0
pop.v.i local.__isforeground
pushi.e 0
pop.v.i local.__i

:[1]
pushloc.v local.__i
pushloc.v local.__layerlistlength
cmp.v.v LT
bf [5]

:[2]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layerlist
call.i layer_get_name(argc=1)
pop.v.v local.__layername
pushloc.v local.__layername
pushloc.v local.__colstring
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layerlist
pop.v.v local.__layerid
b [5]

:[4]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [1]

:[5]
pushloc.v local.__layerid
pushi.e -1
cmp.i.v NEQ
bf [12]

:[6]
pushloc.v local.__layerid
call.i layer_get_all_elements(argc=1)
pop.v.v local.__els
pushloc.v local.__els
call.i array_length_1d(argc=1)
pop.v.v local.__elslength
pushi.e 0
pop.v.i local.__i

:[7]
pushloc.v local.__i
pushloc.v local.__elslength
cmp.v.v LT
bf [11]

:[8]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__els
call.i layer_get_element_type(argc=1)
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__els
pushi.e -7
pushi.e 0
pop.v.v [array]local.__result
pushloc.v local.__layerid
pushi.e -7
pushi.e 1
pop.v.v [array]local.__result

:[10]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [7]

:[11]
b [13]

:[12]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i __background_set_element(argc=15)
pop.v.v local.__newback
pushi.e -7
pushi.e 0
push.v [array]local.__newback
pushi.e -7
pushi.e 0
pop.v.v [array]local.__result
pushi.e -7
pushi.e 1
push.v [array]local.__newback
pushi.e -7
pushi.e 1
pop.v.v [array]local.__result

:[13]
pushloc.v local.__result
ret.v

:[end]