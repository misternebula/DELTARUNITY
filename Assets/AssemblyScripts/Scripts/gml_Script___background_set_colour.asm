.localvar 0 arguments
.localvar 1 __newcol 912
.localvar 2 __colinfo 913

:[0]
pushbltn.v self.argument0
pop.v.v local.__newcol
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
pushloc.v local.__newcol
pushi.e -7
pushi.e 0
push.v [array]local.__colinfo
call.i layer_background_blend(argc=2)
popz.v
pushloc.v local.__newcol
ret.v

:[end]