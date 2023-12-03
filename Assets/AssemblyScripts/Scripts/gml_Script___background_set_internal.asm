.localvar 0 arguments
.localvar 1 __prop 958
.localvar 2 __bind 959
.localvar 3 __val 960
.localvar 4 __backinfo 961
.localvar 5 __backid 962
.localvar 6 __layerid 963
.localvar 7 __isfore 964
.localvar 8 __visible 965
.localvar 9 __index 966
.localvar 10 __htiled 967
.localvar 11 __vtiled 968
.localvar 12 __stretch 969
.localvar 13 __blend 970
.localvar 14 __alpha 971
.localvar 15 __xscale 972
.localvar 16 __yscale 973
.localvar 17 __x 974
.localvar 18 __y 975
.localvar 19 __hspeed 976
.localvar 20 __vspeed 977

:[0]
pushbltn.v self.argument0
pop.v.v local.__prop
pushbltn.v self.argument1
pop.v.v local.__bind
pushbltn.v self.argument2
pop.v.v local.__val
pushbltn.v self.argument3
pop.v.v local.__backinfo
pushi.e -7
pushi.e 0
push.v [array]local.__backinfo
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -1
conv.i.v
ret.v

:[2]
pushi.e -7
pushi.e 0
push.v [array]local.__backinfo
pop.v.v local.__backid
pushi.e -7
pushi.e 1
push.v [array]local.__backinfo
pop.v.v local.__layerid
pushi.e -7
pushi.e 2
push.v [array]local.__backinfo
pop.v.v local.__isfore
pushloc.v local.__prop
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
pushloc.v local.__val
call.i round(argc=1)
pushloc.v local.__isfore
call.i round(argc=1)
cmp.v.v NEQ
bf [5]

:[4]
pushloc.v local.__layerid
call.i layer_get_visible(argc=1)
pop.v.v local.__visible
pushloc.v local.__backid
call.i layer_background_get_sprite(argc=1)
pop.v.v local.__index
pushloc.v local.__backid
call.i layer_background_get_htiled(argc=1)
pop.v.v local.__htiled
pushloc.v local.__backid
call.i layer_background_get_vtiled(argc=1)
pop.v.v local.__vtiled
pushloc.v local.__backid
call.i layer_background_get_stretch(argc=1)
pop.v.v local.__stretch
pushloc.v local.__backid
call.i layer_background_get_blend(argc=1)
pop.v.v local.__blend
pushloc.v local.__backid
call.i layer_background_get_alpha(argc=1)
pop.v.v local.__alpha
pushloc.v local.__backid
call.i layer_background_get_xscale(argc=1)
pop.v.v local.__xscale
pushloc.v local.__backid
call.i layer_background_get_yscale(argc=1)
pop.v.v local.__yscale
pushloc.v local.__layerid
call.i layer_get_x(argc=1)
pop.v.v local.__x
pushloc.v local.__layerid
call.i layer_get_y(argc=1)
pop.v.v local.__y
pushloc.v local.__layerid
call.i layer_get_hspeed(argc=1)
pop.v.v local.__hspeed
pushloc.v local.__layerid
call.i layer_get_vspeed(argc=1)
pop.v.v local.__vspeed
pushloc.v local.__alpha
pushloc.v local.__blend
pushloc.v local.__vspeed
pushloc.v local.__hspeed
pushloc.v local.__stretch
pushloc.v local.__yscale
pushloc.v local.__xscale
pushloc.v local.__vtiled
pushloc.v local.__htiled
pushloc.v local.__y
pushloc.v local.__x
pushloc.v local.__index
pushloc.v local.__val
pushloc.v local.__visible
pushloc.v local.__bind
call.i __background_set_element(argc=15)
popz.v

:[5]
b [34]

:[6]
pushloc.v local.__prop
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [20]

:[7]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [21]

:[8]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [22]

:[9]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [23]

:[10]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [24]

:[11]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [25]

:[12]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [26]

:[13]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [27]

:[14]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [28]

:[15]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [29]

:[16]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [30]

:[17]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [31]

:[18]
b [32]

:[19]
b [33]

:[20]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_set_visible(argc=2)
popz.v
b [33]

:[21]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_change(argc=2)
popz.v
b [33]

:[22]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_x(argc=2)
popz.v
b [33]

:[23]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_y(argc=2)
popz.v
b [33]

:[24]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_htiled(argc=2)
popz.v
b [33]

:[25]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_vtiled(argc=2)
popz.v
b [33]

:[26]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_xscale(argc=2)
popz.v
b [33]

:[27]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_yscale(argc=2)
popz.v
b [33]

:[28]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_hspeed(argc=2)
popz.v
b [33]

:[29]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_vspeed(argc=2)
popz.v
b [33]

:[30]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_blend(argc=2)
popz.v
b [33]

:[31]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_alpha(argc=2)
popz.v
b [33]

:[32]
b [33]

:[33]
popz.v

:[34]
pushi.e -1
conv.i.v
ret.v

:[end]