.localvar 0 arguments
.localvar 1 __colinfo 888
.localvar 2 __col 889

:[0]
call.i __background_get_colour_element(argc=0)
pop.v.v local.__colinfo
pushi.e -7
pushi.e 0
push.v [array]local.__colinfo
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
ret.v

:[2]
pushi.e -7
pushi.e 0
push.v [array]local.__colinfo
call.i layer_background_get_blend(argc=1)
pop.v.v local.__col
pushloc.v local.__col
ret.v

:[end]