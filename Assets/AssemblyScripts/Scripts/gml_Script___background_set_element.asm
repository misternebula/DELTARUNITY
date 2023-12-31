.localvar 0 arguments
.localvar 1 __bind 915
.localvar 2 __vis 916
.localvar 3 __fore 917
.localvar 4 __back 918
.localvar 5 __x 919
.localvar 6 __y 920
.localvar 7 __htiled 921
.localvar 8 __vtiled 922
.localvar 9 __xscale 923
.localvar 10 __yscale 924
.localvar 11 __stretch 925
.localvar 12 __hspeed 927
.localvar 13 __vspeed 929
.localvar 14 __blend 931
.localvar 15 __alpha 933
.localvar 16 __nearestdepth 934
.localvar 17 __farthestdepth 935
.localvar 18 __depthinc 936
.localvar 19 __result 937
.localvar 20 __fgstring 938
.localvar 21 __bgstring 939
.localvar 22 __colstring 940
.localvar 23 __fglen 941
.localvar 24 __bglen 942
.localvar 25 __layerlist 943
.localvar 26 __layerlistlength 944
.localvar 27 __collayer 945
.localvar 28 __i 946
.localvar 29 __slots 947
.localvar 30 __isforeground 948
.localvar 31 __layername 949
.localvar 32 __slotchr 950
.localvar 33 __slot 951
.localvar 34 __currdepth 952
.localvar 35 __depth 953
.localvar 36 __layerdepth 954
.localvar 37 __layerid 955
.localvar 38 __backel 956

:[0]
pushbltn.v self.argument0
pop.v.v local.__bind
pushbltn.v self.argument1
pop.v.v local.__vis
pushbltn.v self.argument2
pop.v.v local.__fore
pushbltn.v self.argument3
pop.v.v local.__back
pushbltn.v self.argument4
pop.v.v local.__x
pushbltn.v self.argument5
pop.v.v local.__y
pushbltn.v self.argument6
pop.v.v local.__htiled
pushbltn.v self.argument7
pop.v.v local.__vtiled
pushbltn.v self.argument8
pop.v.v local.__xscale
pushbltn.v self.argument9
pop.v.v local.__yscale
pushbltn.v self.argument10
pop.v.v local.__stretch
pushbltn.v self.argument11
pop.v.v local.__hspeed
pushbltn.v self.argument12
pop.v.v local.__vspeed
pushbltn.v self.argument13
pop.v.v local.__blend
pushbltn.v self.argument14
pop.v.v local.__alpha
push.i 1000000000
pop.v.i local.__nearestdepth
push.i -1000000000
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
push.s "Compatibility_Foreground_"@2868
pop.v.s local.__fgstring
push.s "Compatibility_Background_"@2870
pop.v.s local.__bgstring
push.s "Compatibility_Colour"@2822
pop.v.s local.__colstring
pushloc.v local.__fgstring
call.i string_length(argc=1)
pop.v.v local.__fglen
pushloc.v local.__bgstring
call.i string_length(argc=1)
pop.v.v local.__bglen
call.i layer_get_all(argc=0)
pop.v.v local.__layerlist
pushloc.v local.__layerlist
call.i array_length_1d(argc=1)
pop.v.v local.__layerlistlength
pushi.e -1
pop.v.i local.__collayer
pushi.e 0
pop.v.i local.__i

:[1]
pushloc.v local.__i
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
pushi.e -1
pushi.e -7
pushloc.v local.__i
conv.v.i
pop.v.i [array]local.__slots
pushi.e 0
pushi.e -7
pushloc.v local.__i
conv.v.i
pop.v.i [array]local.__isforeground
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [1]

:[3]
pushi.e 0
pop.v.i local.__i

:[4]
pushloc.v local.__i
pushloc.v local.__layerlistlength
cmp.v.v LT
bf [20]

:[5]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layerlist
call.i layer_get_name(argc=1)
pop.v.v local.__layername
pushloc.v local.__layername
pushloc.v local.__fgstring
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [9]

:[6]
pushloc.v local.__fglen
pushi.e 1
add.i.v
pushloc.v local.__layername
call.i string_char_at(argc=2)
pop.v.v local.__slotchr
pushloc.v local.__slotchr
push.s ""@2240
cmp.s.v EQ
bf [8]

:[7]
b [19]

:[8]
pushloc.v local.__slotchr
call.i real(argc=1)
pop.v.v local.__slot
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layerlist
pushi.e -7
pushloc.v local.__slot
conv.v.i
pop.v.v [array]local.__slots
pushi.e 1
pushi.e -7
pushloc.v local.__slot
conv.v.i
pop.v.i [array]local.__isforeground
b [19]

:[9]
pushloc.v local.__layername
pushloc.v local.__bgstring
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [13]

:[10]
pushloc.v local.__bglen
pushi.e 1
add.i.v
pushloc.v local.__layername
call.i string_char_at(argc=2)
pop.v.v local.__slotchr
pushloc.v local.__slotchr
push.s ""@2240
cmp.s.v EQ
bf [12]

:[11]
b [19]

:[12]
pushloc.v local.__slotchr
call.i real(argc=1)
pop.v.v local.__slot
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layerlist
pushi.e -7
pushloc.v local.__slot
conv.v.i
pop.v.v [array]local.__slots
pushi.e 0
pushi.e -7
pushloc.v local.__slot
conv.v.i
pop.v.i [array]local.__isforeground
b [19]

:[13]
pushloc.v local.__layername
pushloc.v local.__colstring
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layerlist
pop.v.v local.__collayer
pushloc.v local.__farthestdepth
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layerlist
call.i layer_depth(argc=2)
popz.v
b [19]

:[15]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layerlist
call.i layer_get_depth(argc=1)
pop.v.v local.__currdepth
pushloc.v local.__currdepth
pushloc.v local.__nearestdepth
cmp.v.v LT
bf [17]

:[16]
pushloc.v local.__currdepth
pop.v.v local.__nearestdepth

:[17]
pushloc.v local.__currdepth
pushloc.v local.__farthestdepth
cmp.v.v GT
bf [19]

:[18]
pushloc.v local.__currdepth
pop.v.v local.__farthestdepth

:[19]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [4]

:[20]
push.v local.__farthestdepth
pushloc.v local.__depthinc
pushi.e 1000
add.i.v
add.v.v
pop.v.v local.__farthestdepth
push.v local.__nearestdepth
pushloc.v local.__depthinc
sub.v.v
pop.v.v local.__nearestdepth
push.i 2147483600
conv.i.v
pushloc.v local.__farthestdepth
call.i max(argc=2)
pop.v.v local.__farthestdepth
push.i -2147482000
conv.i.v
pushloc.v local.__nearestdepth
call.i min(argc=2)
pop.v.v local.__nearestdepth
pushi.e 0
pop.v.i local.__i

:[21]
pushloc.v local.__i
pushi.e 8
cmp.i.v LT
bf [28]

:[22]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__slots
pushi.e -1
cmp.i.v NEQ
bf [27]

:[23]
pushi.e 0
pop.v.i local.__depth
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__isforeground
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushloc.v local.__nearestdepth
pushloc.v local.__i
pushloc.v local.__depthinc
mul.v.v
sub.v.v
pop.v.v local.__depth
b [26]

:[25]
pushloc.v local.__farthestdepth
pushloc.v local.__depthinc
sub.v.v
pushloc.v local.__slot
pushloc.v local.__depthinc
mul.v.v
sub.v.v
pop.v.v local.__depth

:[26]
pushloc.v local.__depth
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__slots
call.i layer_depth(argc=2)
popz.v

:[27]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [21]

:[28]
pushloc.v local.__collayer
pushi.e -1
cmp.i.v NEQ
bf [30]

:[29]
pushloc.v local.__farthestdepth
pushloc.v local.__collayer
call.i layer_depth(argc=2)
popz.v

:[30]
pushloc.v local.__bind
pushi.e -1
cmp.i.v EQ
bf [32]

:[31]
pushloc.v local.__colstring
pop.v.v local.__layername
pushloc.v local.__farthestdepth
pop.v.v local.__layerdepth
b [35]

:[32]
pushloc.v local.__fore
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushloc.v local.__fgstring
pushloc.v local.__bind
call.i string(argc=1)
add.v.v
pop.v.v local.__layername
pushloc.v local.__nearestdepth
pushloc.v local.__bind
pushloc.v local.__depthinc
mul.v.v
sub.v.v
pop.v.v local.__layerdepth
b [35]

:[34]
pushloc.v local.__bgstring
pushloc.v local.__bind
call.i string(argc=1)
add.v.v
pop.v.v local.__layername
pushloc.v local.__farthestdepth
pushloc.v local.__depthinc
sub.v.v
pushloc.v local.__bind
pushloc.v local.__depthinc
mul.v.v
sub.v.v
pop.v.v local.__layerdepth

:[35]
pushloc.v local.__bind
pushi.e -1
cmp.i.v EQ
bf [37]

:[36]
pushloc.v local.__collayer
pop.v.v local.__layerid
b [38]

:[37]
pushi.e -7
pushloc.v local.__bind
conv.v.i
push.v [array]local.__slots
pop.v.v local.__layerid

:[38]
pushloc.v local.__layerid
pushi.e -1
cmp.i.v NEQ
bf [40]

:[39]
pushloc.v local.__layerid
call.i layer_destroy(argc=1)
popz.v

:[40]
pushloc.v local.__layername
pushloc.v local.__layerdepth
call.i layer_create(argc=2)
pop.v.v local.__layerid
pushloc.v local.__x
pushloc.v local.__layerid
call.i layer_x(argc=2)
popz.v
pushloc.v local.__y
pushloc.v local.__layerid
call.i layer_y(argc=2)
popz.v
pushloc.v local.__hspeed
pushloc.v local.__layerid
call.i layer_hspeed(argc=2)
popz.v
pushloc.v local.__vspeed
pushloc.v local.__layerid
call.i layer_vspeed(argc=2)
popz.v
pushloc.v local.__back
pushloc.v local.__layerid
call.i layer_background_create(argc=2)
pop.v.v local.__backel
pushloc.v local.__vis
pushloc.v local.__backel
call.i layer_background_visible(argc=2)
popz.v
pushloc.v local.__htiled
pushloc.v local.__backel
call.i layer_background_htiled(argc=2)
popz.v
pushloc.v local.__vtiled
pushloc.v local.__backel
call.i layer_background_vtiled(argc=2)
popz.v
pushloc.v local.__xscale
pushloc.v local.__backel
call.i layer_background_xscale(argc=2)
popz.v
pushloc.v local.__yscale
pushloc.v local.__backel
call.i layer_background_yscale(argc=2)
popz.v
pushloc.v local.__stretch
pushloc.v local.__backel
call.i layer_background_stretch(argc=2)
popz.v
pushloc.v local.__blend
pushloc.v local.__backel
call.i layer_background_blend(argc=2)
popz.v
pushloc.v local.__alpha
pushloc.v local.__backel
call.i layer_background_alpha(argc=2)
popz.v
pushloc.v local.__backel
pushi.e -7
pushi.e 0
pop.v.v [array]local.__result
pushloc.v local.__layerid
pushi.e -7
pushi.e 1
pop.v.v [array]local.__result
pushloc.v local.__result
ret.v

:[end]