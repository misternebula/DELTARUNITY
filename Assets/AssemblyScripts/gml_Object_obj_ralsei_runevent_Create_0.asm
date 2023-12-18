.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.runamt
pushi.e -5
pushi.e 1
push.v [array]global.char
pushi.e 3
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 999
pop.v.i self.con

:[2]
pushi.e -5
pushi.e 206
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 999
pop.v.i self.con

:[4]
push.d 0.2
pop.v.d self.image_speed

:[end]