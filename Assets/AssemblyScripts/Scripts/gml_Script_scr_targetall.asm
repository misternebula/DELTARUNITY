.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self._ti

:[1]
push.v self._ti
pushi.e 3
cmp.i.v LT
bf [5]

:[2]
pushi.e -5
push.v self._ti
conv.v.i
push.v [array]global.charcantarget
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pushi.e -5
push.v self._ti
conv.v.i
pop.v.i [array]global.targeted

:[4]
push.v self._ti
pushi.e 1
add.i.v
pop.v.v self._ti
b [1]

:[5]
pushi.e 3
pop.v.i self.mytarget
pushi.e 3
pop.v.i self.target

:[end]