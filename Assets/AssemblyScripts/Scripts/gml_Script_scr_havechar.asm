.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self._rreturn
pushi.e -5
pushi.e 0
push.v [array]global.char
pushbltn.v self.argument0
cmp.v.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self._rreturn

:[2]
pushi.e -5
pushi.e 1
push.v [array]global.char
pushbltn.v self.argument0
cmp.v.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self._rreturn

:[4]
pushi.e -5
pushi.e 2
push.v [array]global.char
pushbltn.v self.argument0
cmp.v.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self._rreturn

:[6]
push.v self._rreturn
ret.v

:[end]