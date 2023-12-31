.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [end]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [45]

:[3]
pushi.e -5
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [24]

:[4]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
push.v self.s
conv.v.i
push.v [stacktop]self.x
cmp.v.v NEQ
bt [6]

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
push.v self.s
conv.v.i
push.v [stacktop]self.x
cmp.v.v NEQ
b [7]

:[6]
push.e 1

:[7]
bf [11]

:[8]
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.x
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
pushenv [10]

:[9]
call.i scr_caterpillar_interpolate(argc=0)
popz.v

:[10]
popenv [9]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.y

:[11]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
pushenv [21]

:[12]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.dsprite
pop.v.v self.sprite_index

:[14]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.rsprite
pop.v.v self.sprite_index

:[16]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
push.v self.usprite
pop.v.v self.sprite_index

:[18]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
push.v self.lsprite
pop.v.v self.sprite_index

:[20]
pushi.e 1
pop.v.i self.visible

:[21]
popenv [12]
push.v self.s
conv.v.i
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]

:[24]
pushi.e -5
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [45]

:[25]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.x
push.v self.r
conv.v.i
push.v [stacktop]self.x
cmp.v.v NEQ
bt [27]

:[26]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
push.v [stacktop]self.y
push.v self.r
conv.v.i
push.v [stacktop]self.x
cmp.v.v NEQ
b [28]

:[27]
push.e 1

:[28]
bf [32]

:[29]
push.v self.r
conv.v.i
push.v [stacktop]self.x
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.x
push.v self.r
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
pushenv [31]

:[30]
call.i scr_caterpillar_interpolate(argc=0)
popz.v

:[31]
popenv [30]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.y

:[32]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.cinstance
conv.v.i
pushenv [42]

:[33]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
push.v self.dsprite
pop.v.v self.sprite_index

:[35]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.v self.rsprite
pop.v.v self.sprite_index

:[37]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
push.v self.usprite
pop.v.v self.sprite_index

:[39]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [41]

:[40]
push.v self.lsprite
pop.v.v self.sprite_index

:[41]
pushi.e 1
pop.v.i self.visible

:[42]
popenv [33]
push.v self.r
conv.v.i
pushenv [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
popenv [43]

:[45]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]