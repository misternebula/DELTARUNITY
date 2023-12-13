.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushbltn.v self.room
pop.v.v global.currentroom
pushi.e 0
pop.v.i self.autorun
pushi.e 0
pop.v.i self.bg
pushi.e 135
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.bg

:[2]
pushi.e 0
pop.v.i self.stepping
pushi.e 0
pop.v.i self.stepped
pushi.e 0
pop.v.i self.battlemode
pushi.e 173
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.battleheart
pushi.e 0
push.v self.battleheart
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 0
push.v self.battleheart
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
pop.v.i self.battlealpha
pushi.e 0
pop.v.i self.becamebattle
pushglb.v global.darkzone
pop.v.v self.darkmode
push.v self.darkmode
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.stepping
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[4]
pushi.e 0
pop.v.i self.cutscene
pushi.e 0
pop.v.i self.press_l
pushi.e 0
pop.v.i self.press_r
pushi.e 0
pop.v.i self.press_d
pushi.e 0
pop.v.i self.press_u
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py
pushi.e 0
pop.v.i self.wallcheck
pushi.e 3
pop.v.i self.wspeed
pushi.e 3
pop.v.i self.bwspeed
push.v self.darkmode
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 4
pop.v.i self.bwspeed
pushi.e 4
pop.v.i self.wspeed

:[6]
pushi.e 0
pop.v.i self.run
pushi.e 0
pop.v.i self.runtimer
pushi.e 0
pop.v.i self.subxspeed
pushi.e 0
pop.v.i self.subyspeed
pushi.e 0
pop.v.i self.subx
pushi.e 0
pop.v.i self.suby
pushi.e 0
pop.v.i self.walkanim
pushi.e 0
pop.v.i self.walkbuffer
pushi.e 0
pop.v.i self.walktimer
pushi.e 0
pop.v.i self.image_speed
pushi.e 837
pop.v.i self.dsprite
pushi.e 834
pop.v.i self.rsprite
pushi.e 839
pop.v.i self.usprite
pushi.e 836
pop.v.i self.lsprite
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 827
pop.v.i self.dsprite
pushi.e 829
pop.v.i self.rsprite
pushi.e 831
pop.v.i self.lsprite
pushi.e 830
pop.v.i self.usprite

:[8]
pushi.e 0
pop.v.i self.fun
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.dsprite
pop.v.v self.sprite_index

:[10]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.rsprite
pop.v.v self.sprite_index

:[12]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
push.v self.usprite
pop.v.v self.sprite_index

:[14]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
push.v self.lsprite
pop.v.v self.sprite_index

:[16]
pushi.e 0
pop.v.i self.onebuffer
pushi.e 0
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.threebuffer
pushi.e 0
pop.v.i global.menuno
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [19]

:[18]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.menucoord
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [17]

:[19]
pushglb.v global.interact
pushi.e 3
cmp.i.v EQ
bf [47]

:[20]
pushglb.v global.entrance
pushi.e 0
cmp.i.v GT
bf [47]

:[21]
pushi.e 0
pop.v.i global.interact
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.v 104.x
pop.v.v self.x
push.v 104.y
pop.v.v self.y

:[23]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
push.v 105.x
pop.v.v self.x
push.v 105.y
pop.v.v self.y

:[25]
pushglb.v global.entrance
pushi.e 4
cmp.i.v EQ
bf [27]

:[26]
push.v 106.x
pop.v.v self.x
push.v 106.y
pop.v.v self.y

:[27]
pushglb.v global.entrance
pushi.e 5
cmp.i.v EQ
bf [29]

:[28]
push.v 107.x
pop.v.v self.x
push.v 107.y
pop.v.v self.y

:[29]
pushglb.v global.entrance
pushi.e 6
cmp.i.v EQ
bf [31]

:[30]
push.v 108.x
pop.v.v self.x
push.v 108.y
pop.v.v self.y

:[31]
pushglb.v global.entrance
pushi.e 7
cmp.i.v EQ
bf [33]

:[32]
push.v 109.x
pop.v.v self.x
push.v 109.y
pop.v.v self.y

:[33]
pushglb.v global.entrance
pushi.e 18
cmp.i.v EQ
bf [35]

:[34]
push.v 110.x
pop.v.v self.x
push.v 110.y
pop.v.v self.y

:[35]
pushglb.v global.entrance
pushi.e 19
cmp.i.v EQ
bf [37]

:[36]
push.v 111.x
pop.v.v self.x
push.v 111.y
pop.v.v self.y

:[37]
pushglb.v global.entrance
pushi.e 20
cmp.i.v EQ
bf [39]

:[38]
push.v 112.x
pop.v.v self.x
push.v 112.y
pop.v.v self.y

:[39]
pushglb.v global.entrance
pushi.e 21
cmp.i.v EQ
bf [41]

:[40]
push.v 113.x
pop.v.v self.x
push.v 113.y
pop.v.v self.y

:[41]
pushglb.v global.entrance
pushi.e 22
cmp.i.v EQ
bf [43]

:[42]
push.v 114.x
pop.v.v self.x
push.v 114.y
pop.v.v self.y

:[43]
pushglb.v global.entrance
pushi.e 23
cmp.i.v EQ
bf [45]

:[44]
push.v 115.x
pop.v.v self.x
push.v 115.y
pop.v.v self.y

:[45]
pushglb.v global.entrance
pushi.e 24
cmp.i.v EQ
bf [47]

:[46]
push.v 116.x
pop.v.v self.x
push.v 116.y
pop.v.v self.y

:[47]
push.v self.sprite_width
pop.v.v self.initwd
push.v self.sprite_height
pop.v.v self.initht
push.v self.sprite_width
pop.v.v self.mywidth
push.v self.sprite_height
pop.v.v self.myheight
pushi.e 0
pop.v.i self.i

:[48]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[49]
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.df
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.battledf
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [48]

:[end]