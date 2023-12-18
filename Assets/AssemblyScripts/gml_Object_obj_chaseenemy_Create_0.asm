.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.walk_index
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.alertcon
pushi.e 0
pop.v.i self.alerttimer
pushi.e 0
pop.v.i self.facetimer
pushi.e 0
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.pacetype
pushi.e 0
pop.v.i self.pacecon
pushi.e 0
pop.v.i self.pacecon2
pushi.e 0
pop.v.i self.pacetimer
pushi.e 0
pop.v.i self.targetx
pushi.e 0
pop.v.i self.targety
call.i scr_depth(argc=0)
popz.v
pushi.e 200
pop.v.i self.radius
pushi.e 160
pop.v.i self.moveradius
pushi.e 1
pop.v.i self.pacespeed
pushi.e 0
pop.v.i self.frozen
pushi.e 0
pop.v.i self.hadfrozen
pushi.e 1
pop.v.i self.offscreen_frozen
pushi.e 0
pop.v.i self.remspeed
pushi.e 4
pop.v.i self.myencounter
pushi.e 504
pop.v.i self.touchsprite
pushi.e 0
pop.v.i self.cancelwalk
pushi.e 0
pop.v.i self.eraser
pushi.e 0
pop.v.i self.touchflag
pushi.e 0
pop.v.i self.ignoresolid
pushbltn.v self.room
pushi.e 144
cmp.i.v EQ
bf [2]

:[1]
pushi.e 40
pop.v.i self.myencounter

:[2]
pushbltn.v self.room
pushi.e 51
cmp.i.v EQ
bf [4]

:[3]
pushi.e 4
pop.v.i self.myencounter

:[4]
pushbltn.v self.room
pushi.e 52
cmp.i.v EQ
bf [7]

:[5]
pushi.e 5
pop.v.i self.myencounter
pushi.e -5
pushi.e 501
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
pushbltn.v self.room
pushi.e 55
cmp.i.v EQ
bf [9]

:[8]
pushi.e 6
pop.v.i self.myencounter
pushi.e 200
pop.v.i self.radius
pushi.e 5
pop.v.i self.pacetype

:[9]
pushbltn.v self.room
pushi.e 58
cmp.i.v EQ
bf [11]

:[10]
pushi.e 7
pop.v.i self.myencounter
pushi.e 533
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.touchsprite
pushi.e 6
pop.v.i self.pacetype
push.d 0.2
pop.v.d self.image_speed

:[11]
pushbltn.v self.room
pushi.e 63
cmp.i.v EQ
bf [13]

:[12]
pushi.e 33
pop.v.i self.myencounter

:[13]
pushbltn.v self.room
pushi.e 64
cmp.i.v EQ
bf [16]

:[14]
pushi.e 602
pop.v.i self.sprite_index
pushi.e 602
pop.v.i self.touchsprite
pushi.e 23
pop.v.i self.myencounter
pushglb.v global.plot
pushi.e 130
cmp.i.v LT
bf [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
pushbltn.v self.room
pushi.e 74
cmp.i.v EQ
bf [18]

:[17]
pushi.e 590
pop.v.i self.sprite_index
pushi.e 16
pop.v.i self.myencounter
pushi.e 590
pop.v.i self.touchsprite
pushi.e -1
pop.v.i self.alertcon
pushi.e 10
pop.v.i self.pacetype

:[18]
pushbltn.v self.room
pushi.e 75
cmp.i.v EQ
bt [21]

:[19]
pushbltn.v self.room
pushi.e 81
cmp.i.v EQ
bt [21]

:[20]
pushbltn.v self.room
pushi.e 86
cmp.i.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [30]

:[23]
pushi.e 7
pop.v.i self.pacetype
pushi.e 590
pop.v.i self.sprite_index
pushbltn.v self.room
pushi.e 75
cmp.i.v EQ
bf [25]

:[24]
pushi.e 11
pop.v.i self.pacetype

:[25]
pushi.e 17
pop.v.i self.myencounter
pushi.e 505
pop.v.i self.touchflag
pushi.e 590
pop.v.i self.touchsprite
pushbltn.v self.room
pushi.e 81
cmp.i.v EQ
bf [27]

:[26]
pushi.e 24
pop.v.i self.myencounter

:[27]
pushbltn.v self.room
pushi.e 86
cmp.i.v EQ
bf [29]

:[28]
pushi.e 32
pop.v.i self.myencounter

:[29]
pushi.e -1
pop.v.i self.alertcon

:[30]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [33]

:[31]
pushi.e 505
pop.v.i self.touchflag
pushi.e 590
pop.v.i self.sprite_index
pushi.e 17
pop.v.i self.myencounter
pushi.e 590
pop.v.i self.touchsprite
pushi.e 1
pop.v.i self.pacetype
pushi.e -5
pushi.e 505
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 3
pop.v.i self.chasetype

:[33]
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
bf [37]

:[34]
pushi.e 506
pop.v.i self.touchflag
pushi.e 18
pop.v.i self.myencounter
pushi.e 594
pop.v.i self.sprite_index
pushi.e 594
pop.v.i self.touchsprite
pushi.e 1
pop.v.i self.pacetype
pushi.e -5
pushi.e 506
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e 3
pop.v.i self.chasetype
b [37]

:[36]
pushi.e 4
pop.v.i self.chasetype

:[37]
pushbltn.v self.room
pushi.e 79
cmp.i.v EQ
bf [39]

:[38]
pushi.e 18
pop.v.i self.myencounter
pushi.e 594
pop.v.i self.sprite_index
pushi.e 594
pop.v.i self.touchsprite
pushi.e 7
pop.v.i self.pacetype
pushi.e -1
pop.v.i self.alertcon

:[39]
pushbltn.v self.room
pushi.e 84
cmp.i.v EQ
bf [44]

:[40]
pushi.e 19
pop.v.i self.myencounter
pushi.e 594
pop.v.i self.sprite_index
pushi.e 594
pop.v.i self.touchsprite
pushi.e 7
pop.v.i self.pacetype
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [42]

:[41]
push.d 7.5
pop.v.d self.pacetype

:[42]
pushi.e 1
pop.v.i self.eraser
pushi.e 506
pop.v.i self.touchflag
pushi.e 4
pop.v.i self.chasetype
pushi.e 90
pop.v.i self.radius
pushi.e 1
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.offscreen_frozen
pushi.e -5
pushi.e 506
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [44]

:[43]
pushi.e -1
pop.v.i self.alertcon

:[44]
pushbltn.v self.room
pushi.e 114
cmp.i.v EQ
bf [47]

:[45]
pushi.e 9
pop.v.i self.pacetype
pushi.e 4
pop.v.i self.chasetype
pushi.e 160
pop.v.i self.moveradius
pushi.e 621
pop.v.i self.sprite_index
pushi.e 28
pop.v.i self.myencounter
pushi.e 621
pop.v.i self.touchsprite
pushi.e 507
pop.v.i self.touchflag
pushi.e -5
pushi.e 507
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushi.e -1
pop.v.i self.alertcon

:[47]
pushbltn.v self.room
pushi.e 118
cmp.i.v EQ
bf [end]

:[48]
pushi.e 1
pop.v.i self.eraser
pushi.e 1
pop.v.i self.ignoresolid
pushi.e 4
pop.v.i self.chasetype
pushi.e 9
pop.v.i self.pacetype
pushi.e 165
pop.v.i self.radius
pushi.e 160
pop.v.i self.moveradius
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [50]

:[49]
pushi.e -160
pop.v.i self.moveradius

:[50]
pushi.e 624
pop.v.i self.sprite_index
pushi.e 30
pop.v.i self.myencounter
pushi.e 624
pop.v.i self.touchsprite
pushi.e 0
pop.v.i self.offscreen_frozen
pushi.e 508
pop.v.i self.touchflag
pushi.e -5
pushi.e 508
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[51]
pushi.e -1
pop.v.i self.alertcon

:[end]