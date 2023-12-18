.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.depthcancel
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[2]
pushbltn.v self.room
pushi.e 34
cmp.i.v EQ
bf [8]

:[3]
pushi.e 800
pop.v.i self.sprite_index
pushglb.v global.time
pushi.e 14400
cmp.i.v GT
bt [5]

:[4]
pushi.e -5
pushi.e 10
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
pushbltn.v self.room
pushi.e 11
cmp.i.v EQ
bf [12]

:[9]
push.v self.x
pushi.e 320
cmp.i.v GTE
bf [11]

:[10]
pushi.e 278
pop.v.i self.sprite_index
b [12]

:[11]
pushi.e 277
pop.v.i self.sprite_index

:[12]
pushbltn.v self.room
pushi.e 22
cmp.i.v EQ
bf [14]

:[13]
pushi.e 261
pop.v.i self.sprite_index
pushi.e 4000
pop.v.i self.depth
pushi.e 1
pop.v.i self.depthcancel

:[14]
pushbltn.v self.room
pushi.e 122
cmp.i.v EQ
bf [16]

:[15]
pushi.e 346
pop.v.i self.sprite_index

:[16]
pushbltn.v self.room
pushi.e 125
cmp.i.v EQ
bf [18]

:[17]
pushi.e 533
pop.v.i self.sprite_index

:[18]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [22]

:[19]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
pushi.e 533
pop.v.i self.sprite_index

:[22]
pushbltn.v self.room
pushi.e 56
cmp.i.v EQ
bf [25]

:[23]
pushi.e 601
pop.v.i self.sprite_index
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
bf [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
bf [27]

:[26]
push.d 0.1
pop.v.d self.image_speed
pushi.e 500
pop.v.i self.sprite_index

:[27]
push.v self.depthcancel
pushi.e 0
cmp.i.v EQ
bf [end]

:[28]
call.i scr_depth(argc=0)
popz.v

:[end]