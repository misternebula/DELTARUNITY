.localvar 0 arguments

:[0]
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.char
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.char
pushi.e 166
pushenv [12]

:[1]
pushi.e 0
pop.v.i self.chartotal
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.havechar
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.havechar
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.havechar
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [12]

:[3]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.faceaction
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
push.v self.chartotal
pushi.e 1
add.i.v
pop.v.v self.chartotal

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.havechar
push.v self.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.charpos

:[7]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.havechar
push.v self.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.charpos

:[9]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.havechar
push.v self.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.charpos

:[11]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[12]
popenv [1]

:[end]