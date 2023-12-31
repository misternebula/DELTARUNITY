.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.getchar
pushi.e -5
pushi.e 0
push.v [array]global.char
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushbltn.v self.argument0
pushi.e -5
pushi.e 0
pop.v.v [array]global.char
pushi.e 1
pop.v.i self.getchar

:[2]
pushi.e -5
pushi.e 1
push.v [array]global.char
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.getchar
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushbltn.v self.argument0
pushi.e -5
pushi.e 1
pop.v.v [array]global.char
pushi.e 1
pop.v.i self.getchar

:[7]
pushi.e -5
pushi.e 2
push.v [array]global.char
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.getchar
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushbltn.v self.argument0
pushi.e -5
pushi.e 2
pop.v.v [array]global.char
pushi.e 1
pop.v.i self.getchar

:[12]
pushi.e 166
pushenv [24]

:[13]
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

:[14]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [24]

:[15]
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
bf [17]

:[16]
push.v self.chartotal
pushi.e 1
add.i.v
pop.v.v self.chartotal

:[17]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.havechar
push.v self.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.charpos

:[19]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.havechar
push.v self.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.charpos

:[21]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.havechar
push.v self.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.charpos

:[23]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [14]

:[24]
popenv [13]

:[end]