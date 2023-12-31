.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.con
push.v self.x
pop.v.v self.xx
pushi.e 0
pop.v.i self.yy
pushi.e 84
conv.i.v
push.v self.yy
pushi.e 160
add.i.v
push.v self.xx
pushi.e 500
add.i.v
call.i instance_create(argc=3)
pop.v.v self.dummy
pushglb.v global.plot
pushi.e 31
cmp.i.v GTE
bf [2]

:[1]
pushi.e 400
pop.v.i self.con

:[2]
pushglb.v global.plot
pushi.e 6
cmp.i.v LT
bf [end]

:[3]
pushi.e 3
conv.i.v
call.i scr_getchar(argc=1)
popz.v
pushi.e 165
conv.i.v
push.v 326.y
pushi.e 16
sub.i.v
push.v 326.x
pushi.e 6
sub.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.cinstance
pushi.e 12
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pop.v.i [stacktop]self.target
pushi.e -5
pushi.e 0
push.v [array]global.cinstance
conv.v.i
pushenv [5]

:[4]
pushi.e 206
pop.v.i self.usprite
pushi.e 204
pop.v.i self.dsprite
pushi.e 209
pop.v.i self.rsprite
pushi.e 207
pop.v.i self.lsprite

:[5]
popenv [4]

:[end]