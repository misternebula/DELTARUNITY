.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
push.v self.depth
pushi.e 5
add.i.v
pop.v.v self.depth
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
pushi.e 0
pop.v.i self.moved
pushi.e 0
pop.v.i self.walk
pushi.e 0
pop.v.i self.runmove
push.v 326.x
pushi.e -1
pushi.e 0
push.v [array]self.remx
cmp.v.v NEQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.moved

:[2]
push.v 326.y
pushi.e -1
pushi.e 0
push.v [array]self.remy
cmp.v.v NEQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.moved

:[4]
push.v self.moved
pushi.e 1
cmp.i.v EQ
bf [19]

:[5]
pushi.e 0
pop.v.i self.blushtimer
pushi.e 25
pop.v.i self.i

:[6]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.remx
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remx
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.remy
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remy
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.facing
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.facing
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [6]

:[8]
push.v 326.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.remx
push.v 326.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.remy
pushglb.v global.facing
pushi.e -1
pushi.e 0
pop.v.v [array]self.facing
push.v self.usprite
pushi.e 190
cmp.i.v EQ
bf [10]

:[9]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remx
pushi.e 6
sub.i.v
pop.v.v self.x
b [11]

:[10]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remx
pushi.e 4
sub.i.v
pop.v.v self.x

:[11]
push.v self.usprite
pushi.e 190
cmp.i.v EQ
bf [13]

:[12]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remy
pushi.e 16
sub.i.v
pop.v.v self.y
b [14]

:[13]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remy
pushi.e 12
sub.i.v
pop.v.v self.y

:[14]
pushi.e -1
push.v self.target
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.remx
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remx
sub.v.v
call.i abs(argc=1)
pushi.e 4
cmp.i.v GT
bf [16]

:[15]
pushi.e 1
pop.v.i self.runmove

:[16]
pushi.e -1
push.v self.target
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.remy
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.remy
sub.v.v
call.i abs(argc=1)
pushi.e 4
cmp.i.v GT
bf [18]

:[17]
pushi.e 1
pop.v.i self.runmove

:[18]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.facing
pop.v.v self.dir

:[19]
push.v self.x
push.v self.nowx
cmp.v.v NEQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.walk

:[21]
push.v self.y
push.v self.nowy
cmp.v.v NEQ
bf [23]

:[22]
pushi.e 1
pop.v.i self.walk

:[23]
push.v self.walk
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 6
pop.v.i self.walkbuffer

:[25]
push.v self.walkbuffer
pushi.e 3
cmp.i.v GT
bf [27]

:[26]
push.v self.fun
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [41]

:[29]
push.v self.walktimer
push.d 1.5
add.d.v
pop.v.v self.walktimer
push.v self.runmove
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.v self.walktimer
push.d 1.5
add.d.v
pop.v.v self.walktimer

:[31]
push.v self.walktimer
pushi.e 40
cmp.i.v GTE
bf [33]

:[32]
push.v self.walktimer
pushi.e 40
sub.i.v
pop.v.v self.walktimer

:[33]
push.v self.walktimer
pushi.e 10
cmp.i.v LT
bf [35]

:[34]
pushi.e 0
pop.v.i self.image_index

:[35]
push.v self.walktimer
pushi.e 10
cmp.i.v GTE
bf [37]

:[36]
pushi.e 1
pop.v.i self.image_index

:[37]
push.v self.walktimer
pushi.e 20
cmp.i.v GTE
bf [39]

:[38]
pushi.e 2
pop.v.i self.image_index

:[39]
push.v self.walktimer
pushi.e 30
cmp.i.v GTE
bf [41]

:[40]
pushi.e 3
pop.v.i self.image_index

:[41]
push.v self.walkbuffer
pushi.e 0
cmp.i.v LTE
bf [43]

:[42]
push.v self.fun
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [60]

:[45]
push.v self.walktimer
pushi.e 10
cmp.i.v LT
bf [47]

:[46]
push.d 9.5
pop.v.d self.walktimer

:[47]
push.v self.walktimer
pushi.e 10
cmp.i.v GTE
bf [49]

:[48]
push.v self.walktimer
pushi.e 20
cmp.i.v LT
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
push.d 19.5
pop.v.d self.walktimer

:[52]
push.v self.walktimer
pushi.e 20
cmp.i.v GTE
bf [54]

:[53]
push.v self.walktimer
pushi.e 30
cmp.i.v LT
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
push.d 29.5
pop.v.d self.walktimer

:[57]
push.v self.walktimer
pushi.e 30
cmp.i.v GTE
bf [59]

:[58]
push.d 39.5
pop.v.d self.walktimer

:[59]
pushi.e 0
pop.v.i self.image_index

:[60]
push.v self.walkbuffer
push.d 0.75
sub.d.v
pop.v.v self.walkbuffer
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [69]

:[61]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.facing
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
push.v self.dsprite
pop.v.v self.sprite_index

:[63]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.facing
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
push.v self.rsprite
pop.v.v self.sprite_index

:[65]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.facing
pushi.e 2
cmp.i.v EQ
bf [67]

:[66]
push.v self.usprite
pop.v.v self.sprite_index

:[67]
pushi.e -1
push.v self.target
conv.v.i
push.v [array]self.facing
pushi.e 3
cmp.i.v EQ
bf [69]

:[68]
push.v self.lsprite
pop.v.v self.sprite_index

:[69]
push.v self.dsprite
pushi.e 204
cmp.i.v EQ
bf [72]

:[70]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [72]

:[71]
push.v self.fun
pushi.e 0
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [100]

:[74]
push.v 326.x
push.v self.x
pushi.e 4
add.i.v
sub.v.v
pop.v.v self.distfrommcx
push.v 326.y
push.v self.y
pushi.e 12
add.i.v
sub.v.v
pop.v.v self.distfrommcy
push.v self.distfrommcy
call.i abs(argc=1)
pushi.e 10
cmp.i.v LTE
bf [76]

:[75]
push.v self.distfrommcx
call.i abs(argc=1)
pushi.e 16
cmp.i.v LTE
b [77]

:[76]
push.e 0

:[77]
bf [89]

:[78]
push.v self.distfrommcx
pushi.e 0
cmp.i.v LTE
bf [80]

:[79]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
b [81]

:[80]
push.e 0

:[81]
bf [83]

:[82]
push.v self.blushtimer
pushi.e 1
add.i.v
pop.v.v self.blushtimer

:[83]
push.v self.distfrommcx
pushi.e 0
cmp.i.v GTE
bf [85]

:[84]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
push.v self.blushtimer
pushi.e 1
add.i.v
pop.v.v self.blushtimer

:[88]
b [90]

:[89]
pushi.e 0
pop.v.i self.blushtimer

:[90]
push.v self.blushtimer
pushi.e 300
cmp.i.v GTE
bf [99]

:[91]
push.v self.sprite_index
push.v self.dsprite
cmp.v.v EQ
bf [93]

:[92]
push.v self.dsprite_blush
pop.v.v self.sprite_index

:[93]
push.v self.sprite_index
push.v self.rsprite
cmp.v.v EQ
bf [95]

:[94]
push.v self.rsprite_blush
pop.v.v self.sprite_index

:[95]
push.v self.sprite_index
push.v self.usprite
cmp.v.v EQ
bf [97]

:[96]
push.v self.usprite_blush
pop.v.v self.sprite_index

:[97]
push.v self.sprite_index
push.v self.lsprite
cmp.v.v EQ
bf [99]

:[98]
push.v self.lsprite_blush
pop.v.v self.sprite_index

:[99]
b [end]

:[100]
pushi.e 0
pop.v.i self.blushtimer

:[end]