.localvar 0 arguments

:[0]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 14
push.v [array]global.submenucoord
pushi.e -5
pushi.e 13
push.v [array]global.submenucoord
cmp.v.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -5
pushi.e 13
push.v [array]global.submenucoord
pushi.e -5
pushi.e 14
pop.v.v [array]global.submenucoord

:[5]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 13
push.v [array]global.submenucoord
pushi.e -5
pushi.e 14
push.v [array]global.submenucoord
cmp.v.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e -5
pushi.e 14
push.v [array]global.submenucoord
pushi.e -5
pushi.e 13
pop.v.v [array]global.submenucoord

:[end]