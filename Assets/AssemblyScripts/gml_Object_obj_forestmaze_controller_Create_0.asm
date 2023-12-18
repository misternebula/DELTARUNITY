.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e -5
pushi.e 291
push.v [array]global.flag
pop.v.v self.roomno
pushi.e -1
pop.v.i self.sidechoice
pushi.e -1
pop.v.i self.lancer_side
pushi.e -1
pop.v.i self.susie_side
pushi.e 0
pop.v.i self.lancercon
pushi.e 0
pop.v.i self.proper_choice
pushi.e 0
pop.v.i self.battlemoder
pushi.e 0
pop.v.i self.gencon
pushi.e 0
pop.v.i self.gen
pushi.e 0
pop.v.i self.gentimer
pushglb.v global.plot
pushi.e 90
cmp.i.v LT
bf [2]

:[1]
pushi.e 90
pop.v.i global.plot

:[2]
push.v self.roomno
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.lancer_side
pushi.e 0
pop.v.i self.proper_choice

:[4]
push.v self.roomno
pushi.e 1
cmp.i.v EQ
bf [9]

:[5]
pushi.e 1
pop.v.i self.battlemoder
pushi.e 1
pop.v.i self.gen
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [8]

:[7]
pushi.e 174
conv.i.v
pushi.e 300
conv.i.v
pushi.e 80
push.v self.i
pushi.e 180
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.scizz
pushi.e -8
push.v self.scizz
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.scizz
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[8]
pushi.e 0
pop.v.i self.lancer_side
pushi.e 1
pop.v.i self.proper_choice

:[9]
push.v self.roomno
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.lancer_side
pushi.e 0
pop.v.i self.proper_choice
pushi.e 161
conv.i.v
push.v self.y
pushi.e 80
sub.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.chaseenemy

:[11]
push.v self.roomno
pushi.e 3
cmp.i.v EQ
bf [19]

:[12]
pushi.e 331
conv.i.v
pushi.e 280
conv.i.v
pushi.e 280
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.holesolid
push.v self.holesolid
conv.v.i
pushenv [14]

:[13]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[14]
popenv [13]
pushi.e 689
conv.i.v
pushi.e 280
conv.i.v
pushi.e 280
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.hole
push.v self.hole
conv.v.i
pushenv [16]

:[15]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.i 950000
pop.v.i self.depth

:[16]
popenv [15]
pushi.e 1
pop.v.i self.battlemoder
pushi.e 0
pop.v.i self.lancer_side
pushi.e 1
pop.v.i self.proper_choice
pushi.e 176
conv.i.v
pushi.e 268
conv.i.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 28
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.darkponman
pushi.e 176
pushenv [18]

:[17]
pushi.e 0
pop.v.i self.boss
pushi.e 8
pop.v.i self.bmax

:[18]
popenv [17]

:[19]
push.v self.roomno
pushi.e 5
cmp.i.v EQ
bf [23]

:[20]
pushi.e 1
pop.v.i self.battlemoder
pushi.e 3
pop.v.i self.proper_choice
pushi.e 2
pop.v.i self.lancer_side
pushi.e 4
pop.v.i self.susie_side
pushi.e 1
pop.v.i self.gen
pushi.e 0
pop.v.i self.i

:[21]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [23]

:[22]
pushi.e 174
conv.i.v
pushi.e 300
conv.i.v
pushi.e 60
push.v self.i
pushi.e 140
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.scizz
pushi.e -8
push.v self.scizz
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.scizz
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 174
conv.i.v
pushi.e 460
conv.i.v
pushi.e 100
push.v self.i
pushi.e 140
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.scizz
pushi.e -8
push.v self.scizz
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.scizz
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [21]

:[23]
push.v self.roomno
pushi.e 6
cmp.i.v EQ
bf [25]

:[24]
pushi.e 4
pop.v.i self.proper_choice
pushi.e 3
pop.v.i self.lancer_side
pushi.e 2
pop.v.i self.susie_side
pushi.e 161
conv.i.v
push.v self.y
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.chaseenemy

:[25]
push.v self.roomno
pushi.e 7
cmp.i.v EQ
bf [27]

:[26]
pushi.e 2
pop.v.i self.gen
pushi.e 2
pop.v.i self.proper_choice
pushi.e 3
pop.v.i self.lancer_side
pushi.e 4
pop.v.i self.susie_side
pushi.e 171
conv.i.v
pushi.e 600
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.scizz
pushi.e 1
push.v self.scizz
conv.v.i
pop.v.i [stacktop]self.mazemode
pushi.e 171
conv.i.v
pushi.e 600
conv.i.v
pushi.e 580
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.scizz
pushi.e 1
push.v self.scizz
conv.v.i
pop.v.i [stacktop]self.mazemode

:[27]
push.v self.roomno
pushi.e 8
cmp.i.v EQ
bf [41]

:[28]
pushi.e 331
conv.i.v
pushi.e 380
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.holesolid
push.v self.holesolid
conv.v.i
pushenv [30]

:[29]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[30]
popenv [29]
pushi.e 689
conv.i.v
pushi.e 380
conv.i.v
pushi.e 180
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.hole
push.v self.hole
conv.v.i
pushenv [32]

:[31]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.i 950000
pop.v.i self.depth

:[32]
popenv [31]
pushi.e 331
conv.i.v
pushi.e 380
conv.i.v
pushi.e 380
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.holesolid
push.v self.holesolid
conv.v.i
pushenv [34]

:[33]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[34]
popenv [33]
pushi.e 689
conv.i.v
pushi.e 380
conv.i.v
pushi.e 380
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.hole
push.v self.hole
conv.v.i
pushenv [36]

:[35]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.i 950000
pop.v.i self.depth

:[36]
popenv [35]
pushi.e 1
pop.v.i self.battlemoder
pushi.e 3
pop.v.i self.proper_choice
pushi.e 2
pop.v.i self.lancer_side
pushi.e 4
pop.v.i self.susie_side
pushi.e 176
conv.i.v
pushi.e 368
conv.i.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 126
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.darkponman
pushi.e 176
pushenv [38]

:[37]
pushi.e 0
pop.v.i self.boss
pushi.e 8
pop.v.i self.bmax
pushi.e 180
pop.v.i self.rot

:[38]
popenv [37]
pushi.e 176
conv.i.v
pushi.e 368
conv.i.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 72
add.i.v
call.i instance_create(argc=3)
pop.v.v self.darkponman
push.v self.darkponman
conv.v.i
pushenv [40]

:[39]
pushi.e 0
pop.v.i self.boss
pushi.e 8
pop.v.i self.bmax
pushi.e -4
pop.v.i self.rotspeed
pushi.e 0
pop.v.i self.rot

:[40]
popenv [39]

:[41]
push.v self.lancer_side
pushi.e 0
cmp.i.v GTE
bf [52]

:[42]
pushi.e 1
pop.v.i self.lancercon
pushi.e 260
pop.v.i self.y
pushi.e 211
pop.v.i self.sprite_index
push.v self.lancer_side
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
pushi.e 160
pop.v.i self.x

:[44]
push.v self.lancer_side
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 400
pop.v.i self.x

:[46]
push.v self.lancer_side
pushi.e 2
cmp.i.v EQ
bf [48]

:[47]
pushi.e 120
pop.v.i self.x

:[48]
push.v self.lancer_side
pushi.e 3
cmp.i.v EQ
bf [50]

:[49]
pushi.e 280
pop.v.i self.x

:[50]
push.v self.lancer_side
pushi.e 4
cmp.i.v EQ
bf [52]

:[51]
pushi.e 440
pop.v.i self.x

:[52]
push.v self.susie_side
pushi.e 0
cmp.i.v GTE
bf [end]

:[53]
pushi.e 1
pop.v.i self.lancercon
pushi.e 187
conv.i.v
pushi.e 245
conv.i.v
pushi.e 160
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.susie
push.v self.depth
push.v self.susie
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.susie_side
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
pushi.e 160
push.v self.susie
conv.v.i
pop.v.i [stacktop]self.x

:[55]
push.v self.susie_side
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushi.e 400
push.v self.susie
conv.v.i
pop.v.i [stacktop]self.x

:[57]
push.v self.susie_side
pushi.e 2
cmp.i.v EQ
bf [59]

:[58]
pushi.e 120
push.v self.susie
conv.v.i
pop.v.i [stacktop]self.x

:[59]
push.v self.susie_side
pushi.e 3
cmp.i.v EQ
bf [61]

:[60]
pushi.e 280
push.v self.susie
conv.v.i
pop.v.i [stacktop]self.x

:[61]
push.v self.susie_side
pushi.e 4
cmp.i.v EQ
bf [end]

:[62]
pushi.e 440
push.v self.susie
conv.v.i
pop.v.i [stacktop]self.x

:[end]