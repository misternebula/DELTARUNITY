.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
push.s " "@24
pop.v.s self.lyric
pushi.e 1
pop.v.i self.textalpha
pushi.e 1
pop.v.i self.creditalpha
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [end]

:[2]
push.s " "@24
pushi.e -1
push.v self.i
conv.v.i
pop.v.s [array]self.line
push.i 16777215
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.linecolor
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]