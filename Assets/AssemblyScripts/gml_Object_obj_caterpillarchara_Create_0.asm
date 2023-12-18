.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushglb.v global.darkzone
pop.v.v self.darkmode
push.v self.darkmode
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[2]
pushi.e 0
pop.v.i self.walk
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.runmove
pushi.e 0
pop.v.i self.dir
pushi.e 0
pop.v.i self.walkbuffer
pushi.e 0
pop.v.i self.walktimer
pushi.e 0
pop.v.i self.blushtimer
pushi.e 12
pop.v.i self.target
pushi.e 190
pop.v.i self.usprite
pushi.e 187
pop.v.i self.dsprite
pushi.e 183
pop.v.i self.rsprite
pushi.e 180
pop.v.i self.lsprite
pushglb.v global.plot
pushi.e 240
cmp.i.v GTE
bf [4]

:[3]
pushi.e 190
pop.v.i self.usprite
pushi.e 198
pop.v.i self.dsprite
pushi.e 200
pop.v.i self.rsprite
pushi.e 199
pop.v.i self.lsprite

:[4]
pushi.e 206
pop.v.i self.usprite_blush
pushi.e 204
pop.v.i self.dsprite_blush
pushi.e 210
pop.v.i self.rsprite_blush
pushi.e 208
pop.v.i self.lsprite_blush
pushi.e 326
pop.v.i self.parent
push.v self.parent
conv.v.i
push.v [stacktop]self.dsprite
pop.v.v self.pd
push.v self.parent
conv.v.i
push.v [stacktop]self.rsprite
pop.v.v self.pr
push.v self.parent
conv.v.i
push.v [stacktop]self.lsprite
pop.v.v self.pl
push.v self.parent
conv.v.i
push.v [stacktop]self.usprite
pop.v.v self.pu
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 25
cmp.i.v LT
bf [7]

:[6]
push.v 326.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remx
push.v 326.y
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remy
pushglb.v global.facing
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.facing
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
push.v 326.depth
pushi.e 5
add.i.v
pop.v.v self.depth
push.v self.sprite_width
pop.v.v self.mywidth
push.v self.sprite_height
pop.v.v self.myheight

:[end]