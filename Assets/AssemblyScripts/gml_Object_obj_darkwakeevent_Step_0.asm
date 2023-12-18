.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.waketimer
pushi.e 1
add.i.v
pop.v.v self.waketimer
pushi.e 0
pop.v.i self.canclick
push.v self.waketimer
pushi.e 50
cmp.i.v LT
bf [3]

:[2]
pushi.e 1
pop.v.i self.canclick

:[3]
push.v self.waketimer
pushi.e 110
cmp.i.v LT
bf [5]

:[4]
push.v self.waketimer
pushi.e 65
cmp.i.v GT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i self.canclick

:[8]
push.v self.waketimer
pushi.e 125
cmp.i.v GT
bf [10]

:[9]
push.v self.waketimer
pushi.e 170
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1
pop.v.i self.canclick

:[13]
push.v self.canclick
pushi.e 1
cmp.i.v EQ
bf [22]

:[14]
call.i left_p(argc=0)
conv.v.b
bf [16]

:[15]
push.v self.waketimer
pushi.e 2
add.i.v
pop.v.v self.waketimer

:[16]
call.i right_p(argc=0)
conv.v.b
bf [18]

:[17]
push.v self.waketimer
pushi.e 2
add.i.v
pop.v.v self.waketimer

:[18]
call.i down_p(argc=0)
conv.v.b
bf [20]

:[19]
push.v self.waketimer
pushi.e 2
add.i.v
pop.v.v self.waketimer

:[20]
call.i up_p(argc=0)
conv.v.b
bf [22]

:[21]
push.v self.waketimer
pushi.e 2
add.i.v
pop.v.v self.waketimer

:[22]
push.v self.waketimer
pushi.e 60
cmp.i.v EQ
bt [24]

:[23]
push.v self.waketimer
pushi.e 62
cmp.i.v EQ
b [25]

:[24]
push.e 1

:[25]
bf [29]

:[26]
push.v self.k
conv.v.i
pushenv [28]

:[27]
pushi.e 828
pop.v.i self.sprite_index
push.v self.xstart
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=2)
add.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=2)
add.v.v
pop.v.v self.y

:[28]
popenv [27]

:[29]
push.v self.waketimer
pushi.e 63
cmp.i.v EQ
bf [33]

:[30]
push.v self.k
conv.v.i
pushenv [32]

:[31]
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y

:[32]
popenv [31]

:[33]
push.v self.waketimer
pushi.e 120
cmp.i.v EQ
bt [37]

:[34]
push.v self.waketimer
pushi.e 121
cmp.i.v EQ
bt [37]

:[35]
push.v self.waketimer
pushi.e 122
cmp.i.v EQ
bt [37]

:[36]
push.v self.waketimer
pushi.e 123
cmp.i.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [42]

:[39]
push.v self.k
conv.v.i
pushenv [41]

:[40]
push.v self.xstart
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=3)
add.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=3)
add.v.v
pop.v.v self.y

:[41]
popenv [40]

:[42]
push.v self.waketimer
pushi.e 180
cmp.i.v GTE
bf [44]

:[43]
push.v self.waketimer
pushi.e 184
cmp.i.v LTE
b [45]

:[44]
push.e 0

:[45]
bf [49]

:[46]
push.v self.k
conv.v.i
pushenv [48]

:[47]
push.v self.xstart
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=3)
add.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=3)
add.v.v
pop.v.v self.y

:[48]
popenv [47]

:[49]
push.v self.waketimer
pushi.e 185
cmp.i.v EQ
bf [end]

:[50]
push.v self.k
conv.v.i
pushenv [52]

:[51]
call.i instance_destroy(argc=0)
popz.v

:[52]
popenv [51]
pushi.e 326
pushenv [54]

:[53]
pushi.e 1
pop.v.i self.visible

:[54]
popenv [53]
pushi.e 0
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushglb.v global.plot
pushi.e 11
cmp.i.v LT
bf [56]

:[55]
pushi.e 11
pop.v.i global.plot

:[56]
call.i scr_tempsave(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]