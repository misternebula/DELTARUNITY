.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 51
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 500
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[2]
pushbltn.v self.room
pushi.e 52
cmp.i.v EQ
bf [end]

:[3]
pushi.e -5
pushi.e 50
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
bf [end]

:[4]
pushi.e -5
pushi.e 50
push.v [array]global.flag
pushi.e -5
pushi.e 501
pop.v.v [array]global.flag

:[end]