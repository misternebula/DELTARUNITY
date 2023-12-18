.localvar 0 arguments

:[0]
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.btimer
push.v self.timermax
push.v self.ratio
mul.v.v
cmp.v.v GTE
bf [5]

:[2]
pushi.e 0
pop.v.i self.btimer
pushi.e 30
pushi.e 120
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.dir
pushi.e 140
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.radius
push.v self.dir
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.dir
push.v self.radius
call.i lengthdir_y(argc=2)
pop.v.v self.yy
pushi.e 229
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v self.yy
add.v.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bm
push.v self.bm
conv.v.i
push.v [stacktop]self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
add.i.v
cmp.v.v LT
bf [4]

:[3]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
add.i.v
push.v self.bm
conv.v.i
pop.v.v [stacktop]self.y

:[4]
push.v self.damage
push.v self.bm
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bm
conv.v.i
pop.v.v [stacktop]self.target

:[5]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [10]

:[6]
push.v self.btimer
pushi.e 9
push.v self.ratio
mul.v.i
cmp.v.v GTE
bf [10]

:[7]
pushi.e 0
pop.v.i self.btimer
pushi.e 140
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.radius
push.v self.radius
push.v self.side
mul.v.v
pop.v.v self.yy
pushi.e -100
pushi.e 200
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.xx
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.num
push.v self.num
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e -10
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.xx

:[9]
pushi.e 230
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v self.yy
add.v.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
conv.v.i
pop.v.v [stacktop]self.target

:[10]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [17]

:[11]
push.v self.btimer
pushi.e 20
push.v self.ratio
mul.v.i
cmp.v.v GTE
bf [17]

:[12]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
sub.i.v
pop.v.v self.xx
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 660
add.i.v
pop.v.v self.xx

:[14]
push.v self.miny
push.v self.maxy
push.v self.miny
sub.v.v
call.i random(argc=1)
add.v.v
pop.v.v self.yy
pushi.e 227
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.bul
pushi.e 12
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.damage
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.target
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 180
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 180
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.image_angle

:[16]
pushi.e 0
pop.v.i self.btimer

:[17]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [28]

:[18]
push.v self.btimer
pushi.e 20
push.v self.ratio
mul.v.i
cmp.v.v GTE
bf [28]

:[19]
pushi.e 0
pop.v.i self.btimer
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 315
conv.i.v
pushi.e 225
conv.i.v
call.i choose(argc=2)
pop.v.v self.dir

:[21]
push.v self.side
pushi.e -1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 135
conv.i.v
pushi.e 45
conv.i.v
call.i choose(argc=2)
pop.v.v self.dir

:[23]
pushi.e 400
pop.v.i self.radius
push.v self.dir
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.dir
push.v self.radius
call.i lengthdir_y(argc=2)
pop.v.v self.yy
pushi.e 228
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v self.yy
add.v.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.d
push.v self.dir
pushi.e 180
add.i.v
push.v self.d
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 20
push.v self.d
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.friction
push.v self.damage
push.v self.d
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
conv.v.i
pop.v.v [stacktop]self.target
push.v self.d
conv.v.i
pushenv [25]

:[24]
push.v self.direction
pop.v.v self.image_angle

:[25]
popenv [24]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e -1
pop.v.i self.side
b [28]

:[27]
pushi.e 1
pop.v.i self.side

:[28]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [39]

:[29]
push.v self.btimer
pushi.e 30
push.v self.ratio
mul.v.i
cmp.v.v GTE
bf [39]

:[30]
pushi.e 0
pop.v.i self.btimer
push.v self.side
pushi.e -1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 225
pop.v.i self.dir

:[32]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 315
pop.v.i self.dir

:[34]
pushi.e 400
pop.v.i self.radius
push.v self.dir
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.dir
push.v self.radius
call.i lengthdir_y(argc=2)
pop.v.v self.yy
pushi.e 228
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v self.yy
add.v.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
conv.v.i
pop.v.v [stacktop]self.target
push.v self.dir
pushi.e 180
add.i.v
push.v self.d
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 20
push.v self.d
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.friction
push.v self.d
conv.v.i
pushenv [36]

:[35]
push.v self.direction
pop.v.v self.image_angle

:[36]
popenv [35]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
pushi.e -1
pop.v.i self.side
b [39]

:[38]
pushi.e 1
pop.v.i self.side

:[39]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [42]

:[40]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 225
conv.i.v
pushi.e -20
push.v self.yy
add.v.i
pushi.e 300
push.v self.xx
add.v.i
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 225
conv.i.v
pushi.e -60
push.v self.yy
add.v.i
pushi.e 360
push.v self.xx
add.v.i
call.i instance_create(argc=3)
pop.v.v self.e
push.v self.target
push.v self.d
conv.v.i
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.d
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.e
conv.v.i
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.e
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 1
pop.v.i self.made

:[42]
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [50]

:[43]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
push.v self.made
pushi.e 3
cmp.i.v LT
bf [45]

:[44]
push.v self.btimer
pushi.e 15
cmp.i.v GTE
b [46]

:[45]
push.e 0

:[46]
bf [50]

:[47]
pushi.e 0
pop.v.i self.btimer
pushi.e 225
conv.i.v
pushi.e -20
push.v self.yy
add.v.i
pushi.e 300
push.v self.xx
add.v.i
call.i instance_create(argc=3)
pop.v.v self.mine
push.v self.damage
push.v self.mine
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.mine
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 225
pushenv [49]

:[48]
push.d 0.15
push.v self.gravbonus
add.v.d
pop.v.v self.gravity
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale

:[49]
popenv [48]
push.v self.made
pushi.e 1
add.i.v
pop.v.v self.made

:[50]
push.v self.type
pushi.e 8
cmp.i.v EQ
bf [58]

:[51]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
push.v self.made
pushi.e 4
cmp.i.v LT
bf [53]

:[52]
push.v self.btimer
pushi.e 15
cmp.i.v GTE
b [54]

:[53]
push.e 0

:[54]
bf [58]

:[55]
pushi.e 0
pop.v.i self.btimer
pushi.e 225
conv.i.v
push.v self.yy
pushi.e 40
sub.i.v
pushi.e 300
push.v self.xx
add.v.i
call.i instance_create(argc=3)
pop.v.v self.mine
push.v self.damage
push.v self.mine
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.mine
conv.v.i
pop.v.v [stacktop]self.target
push.v self.mine
conv.v.i
pushenv [57]

:[56]
push.d 1.2
push.d 1.2
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.hspeed
push.d 0.1
conv.d.v
call.i random(argc=1)
pop.v.v self.gravbonus
push.d 0.15
push.v self.gravbonus
add.v.d
pop.v.v self.gravity
push.d 0.7
pop.v.d self.image_xscale
push.d 0.7
pop.v.d self.image_yscale

:[57]
popenv [56]
push.v self.made
pushi.e 1
add.i.v
pop.v.v self.made

:[58]
push.v self.type
pushi.e 10
cmp.i.v EQ
bf [66]

:[59]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
push.v self.btimer
pushi.e 15
cmp.i.v GTE
bf [66]

:[60]
pushi.e 0
pop.v.i self.btimer
push.v self.obj_dicebul_comet
pushi.e 0
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.xx
pushi.e 100
sub.i.v
push.v self.xx
pushi.e 680
add.i.v
call.i choose(argc=2)
call.i instance_create(argc=3)
pop.v.v self.dicecomet
push.v self.damage
push.v self.dicecomet
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.dicecomet
conv.v.i
pop.v.v [stacktop]self.target
push.v self.dicecomet
conv.v.i
pushenv [65]

:[61]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
cmp.v.v GT
bf [63]

:[62]
pushi.e -6
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed
b [64]

:[63]
pushi.e 6
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed

:[64]
pushi.e 2
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed

:[65]
popenv [61]

:[66]
push.v self.type
pushi.e 11
cmp.i.v EQ
bf [78]

:[67]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
push.v self.made
pushi.e 4
cmp.i.v LT
bf [69]

:[68]
push.v self.btimer
pushi.e 15
cmp.i.v GTE
b [70]

:[69]
push.e 0

:[70]
bf [78]

:[71]
pushi.e 0
pop.v.i self.btimer
pushi.e 225
conv.i.v
pushi.e -20
push.v self.yy
add.v.i
pushi.e 300
push.v self.xx
add.v.i
call.i instance_create(argc=3)
pop.v.v self.bb
push.v self.damage
push.v self.bb
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bb
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 225
pushenv [73]

:[72]
push.d 0.15
push.v self.gravbonus
add.v.d
pop.v.v self.gravity
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale

:[73]
popenv [72]
push.v self.made
pushi.e 3
cmp.i.v EQ
bf [77]

:[74]
push.v self.bb
conv.v.i
pushenv [76]

:[75]
pushi.e 1
pop.v.i self.green
push.i 65280
pop.v.i self.image_blend

:[76]
popenv [75]

:[77]
push.v self.made
pushi.e 1
add.i.v
pop.v.v self.made

:[78]
push.v self.type
pushi.e 12
cmp.i.v EQ
bf [81]

:[79]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [81]

:[80]
pushi.e 225
conv.i.v
pushi.e -20
push.v self.yy
add.v.i
pushi.e 320
push.v self.xx
add.v.i
call.i instance_create(argc=3)
pop.v.v self.db
pushi.e 1
push.v self.db
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.db
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.damage
push.v self.db
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.db
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 1
pop.v.i self.made

:[81]
push.v self.type
pushi.e 13
cmp.i.v EQ
bf [91]

:[82]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
push.v self.made
pushi.e 2
cmp.i.v LT
bf [84]

:[83]
push.v self.btimer
pushi.e 20
cmp.i.v GTE
b [85]

:[84]
push.e 0

:[85]
bf [91]

:[86]
pushi.e 225
conv.i.v
pushi.e -20
push.v self.yy
add.v.i
pushi.e 320
push.v self.xx
add.v.i
call.i instance_create(argc=3)
pushi.e -1
push.v self.made
conv.v.i
pop.v.v [array]self.db
pushi.e 1
pushi.e -1
push.v self.made
conv.v.i
push.v [array]self.db
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 1
pushi.e -1
push.v self.made
conv.v.i
push.v [array]self.db
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.damage
pushi.e -1
push.v self.made
conv.v.i
push.v [array]self.db
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
pushi.e -1
push.v self.made
conv.v.i
push.v [array]self.db
conv.v.i
pop.v.v [stacktop]self.target
push.v self.made
pushi.e 1
cmp.i.v EQ
bf [90]

:[87]
pushi.e -1
pushi.e 1
push.v [array]self.db
conv.v.i
pushenv [89]

:[88]
pushi.e 1
pop.v.i self.green
push.i 65280
pop.v.i self.image_blend

:[89]
popenv [88]
pushi.e -1
pushi.e 0
push.v [array]self.db
conv.v.i
push.v [stacktop]self.hspeed
neg.v
pushi.e -1
pushi.e 1
push.v [array]self.db
conv.v.i
pop.v.v [stacktop]self.hspeed

:[90]
push.v self.made
pushi.e 1
add.i.v
pop.v.v self.made

:[91]
push.v self.type
pushi.e 14
cmp.i.v EQ
bf [98]

:[92]
push.v self.btimer
pushi.e 10
cmp.i.v GTE
bf [98]

:[93]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
sub.i.v
pop.v.v self.xx
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 660
add.i.v
pop.v.v self.xx

:[95]
push.v self.miny
push.v self.maxy
push.v self.miny
sub.v.v
call.i random(argc=1)
add.v.v
pop.v.v self.yy
pushi.e 210
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.bul
pushi.e 646
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -8
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.damage
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.target
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
pushi.e 180
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 180
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.image_angle

:[97]
pushi.e 0
pop.v.i self.btimer

:[98]
push.v self.type
pushi.e 20
cmp.i.v EQ
bt [100]

:[99]
push.v self.type
pushi.e 22
cmp.i.v EQ
b [101]

:[100]
push.e 1

:[101]
bf [123]

:[102]
pushi.e 282
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [112]

:[103]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [107]

:[104]
pushi.e 110
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.whistletimer
pushi.e 1
pop.v.i self.made
pushi.e 282
pushenv [106]

:[105]
pushi.e 429
pop.v.i self.idlesprite

:[106]
popenv [105]

:[107]
push.v self.made
pushi.e 1
cmp.i.v EQ
bf [112]

:[108]
push.v self.whistletimer
pushi.e 1
add.i.v
pop.v.v self.whistletimer
push.v self.whistletimer
pushi.e 30
cmp.i.v GTE
bf [112]

:[109]
pushi.e 282
pushenv [111]

:[110]
pushi.e 426
pop.v.i self.idlesprite

:[111]
popenv [110]
pushi.e 2
pop.v.i self.made

:[112]
push.v self.type
pushi.e 20
cmp.i.v EQ
bf [114]

:[113]
pushi.e 8
pop.v.i self.bmax

:[114]
push.v self.type
pushi.e 22
cmp.i.v EQ
bf [116]

:[115]
pushi.e 6
pop.v.i self.bmax

:[116]
push.v self.btimer
push.v self.bmax
cmp.v.v GTE
bf [123]

:[117]
pushi.e -80
pushi.e 160
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e 8
add.i.v
pop.v.v self.radius
pushi.e 210
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
sub.i.v
push.v 305.x
push.v self.radius
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fallspade
push.v self.damage
push.v self.fallspade
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.fallspade
conv.v.i
pop.v.v [stacktop]self.target
push.v self.fallspade
conv.v.i
pushenv [119]

:[118]
pushi.e 679
pop.v.i self.sprite_index
pushi.e 270
pop.v.i self.image_angle
push.d 0.3
pop.v.d self.gravity
pushi.e 0
pop.v.i self.speed
pushi.e 3
pop.v.i self.vspeed
push.d -0.6
push.d 1.2
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.hspeed

:[119]
popenv [118]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [121]

:[120]
pushi.e -1
pop.v.i self.side
b [122]

:[121]
pushi.e 1
pop.v.i self.side

:[122]
pushi.e 0
pop.v.i self.btimer

:[123]
push.v self.type
pushi.e 21
cmp.i.v EQ
bt [126]

:[124]
push.v self.type
pushi.e 23
cmp.i.v EQ
bt [126]

:[125]
push.v self.type
pushi.e 25
cmp.i.v EQ
b [127]

:[126]
push.e 1

:[127]
bf [150]

:[128]
push.v self.type
pushi.e 21
cmp.i.v EQ
bf [130]

:[129]
pushi.e 9
pop.v.i self.bmax

:[130]
push.v self.type
pushi.e 23
cmp.i.v EQ
bf [132]

:[131]
pushi.e 7
pop.v.i self.bmax

:[132]
push.v self.type
pushi.e 25
cmp.i.v EQ
bf [134]

:[133]
pushi.e 4
pop.v.i self.bmax

:[134]
pushi.e 210
pushenv [136]

:[135]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha

:[136]
popenv [135]
push.v self.btimer
push.v self.bmax
cmp.v.v GTE
bf [150]

:[137]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [139]

:[138]
pushi.e 80
pop.v.i self.radius
b [140]

:[139]
pushi.e 560
pop.v.i self.radius

:[140]
pushi.e 210
conv.i.v
push.v 303.y
push.v 303.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v 303.sprite_height
call.i random(argc=1)
add.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
push.v self.radius
add.v.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.side
conv.v.i
pop.v.v [array]self.sidespade
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [142]

:[141]
pushi.e 0
pushi.e -1
push.v self.side
conv.v.i
push.v [array]self.sidespade
conv.v.i
pop.v.i [stacktop]self.direction

:[142]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
pushi.e 180
pushi.e -1
push.v self.side
conv.v.i
push.v [array]self.sidespade
conv.v.i
pop.v.i [stacktop]self.direction

:[144]
pushi.e 0
pushi.e -1
push.v self.side
conv.v.i
push.v [array]self.sidespade
conv.v.i
pop.v.i [stacktop]self.image_alpha
push.v self.damage
pushi.e -1
push.v self.side
conv.v.i
push.v [array]self.sidespade
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
pushi.e -1
push.v self.side
conv.v.i
push.v [array]self.sidespade
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -1
push.v self.side
conv.v.i
push.v [array]self.sidespade
conv.v.i
pushenv [146]

:[145]
pushi.e 679
pop.v.i self.sprite_index
pushi.e 5
pop.v.i self.speed
push.d -0.1
pop.v.d self.friction
push.v self.direction
pop.v.v self.image_angle

:[146]
popenv [145]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [148]

:[147]
pushi.e 0
pop.v.i self.side
b [149]

:[148]
pushi.e 1
pop.v.i self.side

:[149]
pushi.e 0
pop.v.i self.btimer

:[150]
push.v self.type
pushi.e 24
cmp.i.v EQ
bf [202]

:[151]
push.v self.difficulty
pushi.e 5
add.i.v
pop.v.v self.bmax
pushi.e 210
pushenv [195]

:[152]
pushi.e 305
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [195]

:[153]
push.v self.x
push.v 305.x
pushi.e 8
add.i.v
sub.v.v
pop.v.v self.xdiff
push.v self.y
push.v 305.y
pushi.e 240
sub.i.v
cmp.v.v GTE
bf [155]

:[154]
push.v self.xdiff
call.i abs(argc=1)
pushi.e 30
cmp.i.v LTE
b [156]

:[155]
push.e 0

:[156]
bf [167]

:[157]
push.v self.xdiff
pushi.e 0
cmp.i.v GTE
bf [159]

:[158]
push.v self.hspeed
pushi.e 5
cmp.i.v LT
b [160]

:[159]
push.e 0

:[160]
bf [162]

:[161]
push.v self.hspeed
push.d 0.4
add.d.v
pop.v.v self.hspeed

:[162]
push.v self.xdiff
pushi.e 0
cmp.i.v LT
bf [164]

:[163]
push.v self.hspeed
pushi.e -5
cmp.i.v GT
b [165]

:[164]
push.e 0

:[165]
bf [167]

:[166]
push.v self.hspeed
push.d 0.4
sub.d.v
pop.v.v self.hspeed

:[167]
push.v self.y
push.v 305.y
pushi.e 100
sub.i.v
cmp.v.v GTE
bf [195]

:[168]
push.v self.xdiff
call.i abs(argc=1)
pushi.e 60
cmp.i.v LTE
bf [195]

:[169]
push.v self.xdiff
pushi.e 0
cmp.i.v GTE
bf [183]

:[170]
push.v self.hspeed
pushi.e 2
cmp.i.v LT
bf [172]

:[171]
push.v self.hspeed
push.d 0.25
add.d.v
pop.v.v self.hspeed

:[172]
push.v self.xdiff
pushi.e 10
cmp.i.v LT
bf [174]

:[173]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x

:[174]
push.v self.xdiff
pushi.e 20
cmp.i.v LT
bf [176]

:[175]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x

:[176]
push.v self.xdiff
pushi.e 30
cmp.i.v LT
bf [178]

:[177]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x

:[178]
push.v self.xdiff
pushi.e 40
cmp.i.v LT
bf [180]

:[179]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.x

:[180]
push.v self.xdiff
pushi.e 60
cmp.i.v LT
bf [182]

:[181]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x

:[182]
b [195]

:[183]
push.v self.hspeed
pushi.e -2
cmp.i.v GT
bf [185]

:[184]
push.v self.hspeed
push.d 0.25
sub.d.v
pop.v.v self.hspeed

:[185]
push.v self.xdiff
pushi.e -10
cmp.i.v GT
bf [187]

:[186]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x

:[187]
push.v self.xdiff
pushi.e -20
cmp.i.v GT
bf [189]

:[188]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x

:[189]
push.v self.xdiff
pushi.e -30
cmp.i.v GT
bf [191]

:[190]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x

:[191]
push.v self.xdiff
pushi.e -40
cmp.i.v GT
bf [193]

:[192]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x

:[193]
push.v self.xdiff
pushi.e -60
cmp.i.v GT
bf [195]

:[194]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[195]
popenv [152]
push.v self.btimer
push.v self.bmax
cmp.v.v GTE
bf [202]

:[196]
pushi.e -80
pushi.e 160
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e 8
add.i.v
pop.v.v self.radius
pushi.e 210
conv.i.v
pushi.e -20
conv.i.v
push.v 305.x
push.v self.radius
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fallspade
push.v self.damage
push.v self.fallspade
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.fallspade
conv.v.i
pop.v.v [stacktop]self.target
push.v self.fallspade
conv.v.i
pushenv [198]

:[197]
pushi.e 679
pop.v.i self.sprite_index
pushi.e 270
pop.v.i self.image_angle
push.d 0.3
pop.v.d self.gravity
pushi.e 0
pop.v.i self.speed
pushi.e 3
pop.v.i self.vspeed
push.d -0.6
push.d 1.2
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.hspeed

:[198]
popenv [197]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [200]

:[199]
pushi.e -1
pop.v.i self.side
b [201]

:[200]
pushi.e 1
pop.v.i self.side

:[201]
pushi.e 0
pop.v.i self.btimer

:[202]
push.v self.type
pushi.e 26
cmp.i.v EQ
bf [227]

:[203]
pushi.e 210
pushenv [206]

:[204]
push.v self.sprite_index
pushi.e 598
cmp.i.v EQ
bf [206]

:[205]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[206]
popenv [204]
pushi.e 35
pop.v.i self.timer
call.i scr_monsterpop(argc=0)
pushi.e 2
cmp.i.v EQ
bf [208]

:[207]
push.d 52.5
pop.v.d self.timer

:[208]
call.i scr_monsterpop(argc=0)
pushi.e 3
cmp.i.v EQ
bf [210]

:[209]
pushi.e 77
pop.v.i self.timer

:[210]
push.v self.btimer
push.v self.timer
cmp.v.v GTE
bf [227]

:[211]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 300
add.i.v
pop.v.v self.x_c
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 140
add.i.v
pop.v.v self.y_c
pushi.e 200
pop.v.i self.x_o
pushi.e -60
pop.v.i self.y_o
pushi.e -80
pushi.e 160
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.y_o_o
push.v self.y_o
push.v self.y_o_o
add.v.v
pop.v.v self.y_o
push.v self.y_o_o
neg.v
pushi.e 160
conv.i.d
div.d.v
pop.v.v self.v_s
pushi.e -2
pop.v.i self.h_s
pushi.e 0
pop.v.i self.i

:[212]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [226]

:[213]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.upallow
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.rightallow
pushi.e 0
pop.v.i self.j

:[214]
push.v self.j
pushi.e 2
cmp.i.v LT
bf [225]

:[215]
pushi.e 210
conv.i.v
push.v self.y_c
push.v self.y_o
add.v.v
push.v self.j
pushi.e 80
mul.i.v
add.v.v
push.v self.x_c
push.v self.x_o
add.v.v
push.v self.i
pushi.e 80
mul.i.v
add.v.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.bul
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bul
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.j
push.v self.upallow
cmp.v.v EQ
bf [217]

:[216]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bul
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
add.v.v
pop.i.v [stacktop]self.y

:[217]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [219]

:[218]
push.v self.j
pushi.e 1
cmp.i.v EQ
b [220]

:[219]
push.e 0

:[220]
bf [222]

:[221]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bul
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e -40
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
add.v.v
pop.i.v [stacktop]self.x
push.v self.y_c
push.v self.y_o
add.v.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
add.v.v
push.v self.j
pushi.e 80
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bul
conv.v.i
pop.v.v [stacktop]self.y

:[222]
push.v self.h_s
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bul
conv.v.i
pop.v.v [stacktop]self.hspeed
push.v self.v_s
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bul
conv.v.i
pop.v.v [stacktop]self.vspeed
push.d -0.07
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bul
conv.v.i
pop.v.d [stacktop]self.friction
call.i scr_monsterpop(argc=0)
pushi.e 2
cmp.i.v GTE
bf [224]

:[223]
push.d -0.1
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bul
conv.v.i
pop.v.d [stacktop]self.friction

:[224]
pushi.e 598
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bul
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.j
conv.v.i
chkindex.e
add.i.i
push.v [array]self.bul
conv.v.i
pop.v.i [stacktop]self.image_alpha
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [214]

:[225]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [212]

:[226]
pushi.e 0
pop.v.i self.btimer

:[227]
push.v self.type
pushi.e 27
cmp.i.v EQ
bf [255]

:[228]
pushi.e 15
pop.v.i self.timer
call.i scr_monsterpop(argc=0)
pushi.e 2
cmp.i.v EQ
bf [230]

:[229]
push.d 25.5
pop.v.d self.timer

:[230]
call.i scr_monsterpop(argc=0)
pushi.e 3
cmp.i.v EQ
bf [232]

:[231]
push.d 34.5
pop.v.d self.timer

:[232]
push.v 188.x
push.v 188.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 8
add.i.v
pop.v.v self.lx
push.v 188.y
push.v 188.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 15
sub.i.v
pop.v.v self.ly
push.v self.btimer
push.v self.timer
cmp.v.v GTE
bf [240]

:[233]
push.v self.made
pop.v.v self.prevmade
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.made
push.v self.made
push.v self.prevmade
cmp.v.v EQ
bf [235]

:[234]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.made

:[235]
pushi.e 0
pop.v.i self.btimer
pushi.e 274
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.block
push.v self.made
push.v self.block
conv.v.i
pop.v.v [stacktop]self.xpos
push.v self.block
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 274
conv.i.v
push.v self.ly
push.v self.block
conv.v.i
push.v [stacktop]self.sprite_height
pushi.e 3
mul.i.v
sub.v.v
pushi.e 10
sub.i.v
push.v self.lx
push.v self.made
push.v self.block
conv.v.i
push.v [stacktop]self.sprite_width
mul.v.v
add.v.v
pushi.e 8
add.i.v
call.i collision_point(argc=5)
pop.v.v self.testblock
push.v self.testblock
pushi.e 1
cmp.i.v GT
bf [240]

:[236]
push.v self.testblock
conv.v.i
push.v [stacktop]self.halt
pushi.e 1
cmp.i.v EQ
bf [240]

:[237]
push.v self.block
conv.v.i
pushenv [239]

:[238]
call.i instance_destroy(argc=0)
popz.v

:[239]
popenv [238]

:[240]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 274
conv.i.v
push.v self.ly
push.v self.lx
pushi.e 15
add.i.v
call.i collision_point(argc=5)
pop.v.v self.legoa
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 274
conv.i.v
push.v self.ly
push.v self.lx
pushi.e 15
add.i.v
pushi.e 34
add.i.v
call.i collision_point(argc=5)
pop.v.v self.legob
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 274
conv.i.v
push.v self.ly
push.v self.lx
pushi.e 15
add.i.v
pushi.e 68
add.i.v
call.i collision_point(argc=5)
pop.v.v self.legoc
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 274
conv.i.v
push.v self.ly
push.v self.lx
pushi.e 15
add.i.v
pushi.e 102
add.i.v
call.i collision_point(argc=5)
pop.v.v self.legod
push.v self.legoa
pushi.e 1
cmp.i.v GT
bf [244]

:[241]
push.v self.legob
pushi.e 1
cmp.i.v GT
bf [244]

:[242]
push.v self.legoc
pushi.e 1
cmp.i.v GT
bf [244]

:[243]
push.v self.legod
pushi.e 1
cmp.i.v GT
b [245]

:[244]
push.e 0

:[245]
bf [255]

:[246]
push.v self.legoa
conv.v.i
pushenv [248]

:[247]
pushi.e 3
pop.v.i self.con

:[248]
popenv [247]
push.v self.legob
conv.v.i
pushenv [250]

:[249]
pushi.e 3
pop.v.i self.con

:[250]
popenv [249]
push.v self.legoc
conv.v.i
pushenv [252]

:[251]
pushi.e 3
pop.v.i self.con

:[252]
popenv [251]
push.v self.legod
conv.v.i
pushenv [254]

:[253]
pushi.e 3
pop.v.i self.con

:[254]
popenv [253]

:[255]
push.v self.type
pushi.e 30
cmp.i.v EQ
bf [262]

:[256]
pushi.e 34
pop.v.i self.bmax
call.i scr_monsterpop(argc=0)
pushi.e 2
cmp.i.v EQ
bf [258]

:[257]
pushi.e 46
pop.v.i self.bmax

:[258]
call.i scr_monsterpop(argc=0)
pushi.e 3
cmp.i.v EQ
bf [260]

:[259]
pushi.e 60
pop.v.i self.bmax

:[260]
push.v self.btimer
push.v self.bmax
cmp.v.v GTE
bf [262]

:[261]
pushi.e 272
conv.i.v
push.v 188.y
push.v 188.x
push.v 188.sprite_width
add.v.v
call.i instance_create(argc=3)
pop.v.v self.rab
push.v self.rab
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
pop.v.i self.btimer

:[262]
push.v self.type
pushi.e 32
cmp.i.v EQ
bf [270]

:[263]
pushi.e 0
pop.v.i self.skiprab
pushi.e 271
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [265]

:[264]
pushi.e 1
pop.v.i self.skiprab
pushi.e 30
pop.v.i self.type

:[265]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [267]

:[266]
push.v self.skiprab
pushi.e 0
cmp.i.v EQ
b [268]

:[267]
push.e 0

:[268]
bf [270]

:[269]
pushi.e 1
pop.v.i self.made
pushi.e 271
conv.i.v
push.v 188.y
push.v 188.x
call.i instance_create(argc=3)
pop.v.v self.rab
push.v self.rab
call.i scr_bullet_inherit(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[270]
push.v self.type
pushi.e 33
cmp.i.v EQ
bf [273]

:[271]
push.v self.btimer
pushi.e 26
push.v self.ratio
mul.v.i
cmp.v.v GTE
bf [273]

:[272]
pushi.e 231
conv.i.v
push.v 188.y
push.v 188.x
call.i instance_create(argc=3)
pop.v.v self.hs
pushi.e 50
push.v self.hs
conv.v.i
pop.v.i [stacktop]self.maxradius
pushi.e 1
push.v self.hs
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 0
pop.v.i self.btimer
push.v 188.x
pushi.e 50
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.hs
conv.v.i
pop.v.v [stacktop]self.thisx
push.v 188.y
pushi.e 50
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.hs
conv.v.i
pop.v.v [stacktop]self.thisy
push.v self.hs
call.i scr_bullet_inherit(argc=1)
popz.v

:[273]
push.v self.type
pushi.e 34
cmp.i.v EQ
bf [285]

:[274]
push.v self.btimer
pushi.e 28
cmp.i.v GTE
bf [285]

:[275]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.typechoice
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy
push.v self.typechoice
pushi.e 0
cmp.i.v EQ
bt [277]

:[276]
push.v self.typechoice
pushi.e 3
cmp.i.v EQ
b [278]

:[277]
push.e 1

:[278]
bf [280]

:[279]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
pushi.e 300
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 300
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.xx
pushi.e -60
pop.v.i self.yy

:[280]
push.v self.typechoice
pushi.e 1
cmp.i.v EQ
bf [282]

:[281]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 60
sub.i.v
pop.v.v self.xx
pushi.e 320
conv.i.v
call.i random(argc=1)
pop.v.v self.yy

:[282]
push.v self.typechoice
pushi.e 2
cmp.i.v EQ
bf [284]

:[283]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 700
add.i.v
pop.v.v self.xx
pushi.e 320
conv.i.v
call.i random(argc=1)
pop.v.v self.yy

:[284]
pushi.e 247
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.chain
pushi.e 247
conv.i.v
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
pop.v.i self.btimer

:[285]
push.v self.type
pushi.e 35
cmp.i.v EQ
bf [297]

:[286]
push.v self.btimer
pushi.e 22
cmp.i.v GTE
bf [297]

:[287]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.typechoice
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy
push.v self.typechoice
pushi.e 0
cmp.i.v EQ
bt [289]

:[288]
push.v self.typechoice
pushi.e 3
cmp.i.v EQ
b [290]

:[289]
push.e 1

:[290]
bf [292]

:[291]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
pushi.e 300
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 300
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.xx
pushi.e -60
pop.v.i self.yy

:[292]
push.v self.typechoice
pushi.e 1
cmp.i.v EQ
bf [294]

:[293]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 60
sub.i.v
pop.v.v self.xx
pushi.e 320
conv.i.v
call.i random(argc=1)
pop.v.v self.yy

:[294]
push.v self.typechoice
pushi.e 2
cmp.i.v EQ
bf [296]

:[295]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 700
add.i.v
pop.v.v self.xx
pushi.e 320
conv.i.v
call.i random(argc=1)
pop.v.v self.yy

:[296]
pushi.e 247
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.chain
push.v self.chain
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
pop.v.i self.btimer

:[297]
push.v self.type
pushi.e 36
cmp.i.v EQ
bf [309]

:[298]
push.v self.btimer
pushi.e 16
cmp.i.v GTE
bf [309]

:[299]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.typechoice
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy
push.v self.typechoice
pushi.e 0
cmp.i.v EQ
bt [301]

:[300]
push.v self.typechoice
pushi.e 3
cmp.i.v EQ
b [302]

:[301]
push.e 1

:[302]
bf [304]

:[303]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
pushi.e 300
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 300
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.xx
pushi.e -60
pop.v.i self.yy

:[304]
push.v self.typechoice
pushi.e 1
cmp.i.v EQ
bf [306]

:[305]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 60
sub.i.v
pop.v.v self.xx
pushi.e 320
conv.i.v
call.i random(argc=1)
pop.v.v self.yy

:[306]
push.v self.typechoice
pushi.e 2
cmp.i.v EQ
bf [308]

:[307]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 700
add.i.v
pop.v.v self.xx
pushi.e 320
conv.i.v
call.i random(argc=1)
pop.v.v self.yy

:[308]
pushi.e 247
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.chain
push.v self.chain
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
pop.v.i self.btimer

:[309]
push.v self.type
pushi.e 80
cmp.i.v GTE
bf [311]

:[310]
push.v self.type
pushi.e 84
cmp.i.v LTE
b [312]

:[311]
push.e 0

:[312]
bf [359]

:[313]
pushi.e 40
pop.v.i self.maxtimer
push.v self.type
pushi.e 81
cmp.i.v EQ
bf [315]

:[314]
pushi.e 30
pop.v.i self.maxtimer

:[315]
push.v self.type
pushi.e 82
cmp.i.v EQ
bf [317]

:[316]
pushi.e 26
pop.v.i self.maxtimer

:[317]
push.v self.type
pushi.e 83
cmp.i.v EQ
bf [319]

:[318]
pushi.e 19
pop.v.i self.maxtimer

:[319]
push.v self.type
pushi.e 84
cmp.i.v EQ
bf [321]

:[320]
pushi.e 14
pop.v.i self.maxtimer

:[321]
push.v self.btimer
push.v self.maxtimer
cmp.v.v GTE
bf [359]

:[322]
pushi.e 0
pop.v.i self.btimer
push.v 188.x
pop.v.v self.lx
push.v 188.y
pop.v.v self.ly
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.side
push.v self.type
pushi.e 81
cmp.i.v EQ
bt [324]

:[323]
push.v self.type
pushi.e 84
cmp.i.v EQ
b [325]

:[324]
push.e 1

:[325]
bf [329]

:[326]
push.v self.made
pop.v.v self.side
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [328]

:[327]
pushi.e 1
pop.v.i self.made
b [329]

:[328]
pushi.e 0
pop.v.i self.made

:[329]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [345]

:[330]
pushi.e 251
conv.i.v
push.v self.ly
pushi.e 150
sub.i.v
push.v 305.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
pop.v.v self.puzz1
pushi.e 3
push.v self.puzz1
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 251
conv.i.v
push.v self.ly
pushi.e 150
add.i.v
push.v 305.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
pop.v.v self.puzz2
pushi.e 1
push.v self.puzz2
conv.v.i
pop.v.i [stacktop]self.side
push.v self.type
pushi.e 82
cmp.i.v EQ
bf [332]

:[331]
pushi.e 10
push.v self.puzz1
conv.v.i
pop.v.i [stacktop]self.timer

:[332]
push.v self.type
pushi.e 82
cmp.i.v EQ
bf [334]

:[333]
pushi.e 10
push.v self.puzz2
conv.v.i
pop.v.i [stacktop]self.timer

:[334]
push.v self.type
pushi.e 83
cmp.i.v EQ
bt [336]

:[335]
push.v self.type
pushi.e 84
cmp.i.v EQ
b [337]

:[336]
push.e 1

:[337]
bf [339]

:[338]
pushi.e 15
push.v self.puzz1
conv.v.i
pop.v.i [stacktop]self.timer

:[339]
push.v self.type
pushi.e 83
cmp.i.v EQ
bt [341]

:[340]
push.v self.type
pushi.e 84
cmp.i.v EQ
b [342]

:[341]
push.e 1

:[342]
bf [344]

:[343]
pushi.e 15
push.v self.puzz2
conv.v.i
pop.v.i [stacktop]self.timer

:[344]
push.v self.puzz1
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.puzz2
call.i scr_bullet_inherit(argc=1)
popz.v

:[345]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [355]

:[346]
pushi.e 251
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v self.lx
pushi.e 150
add.i.v
call.i instance_create(argc=3)
pop.v.v self.puzz1
pushi.e 2
push.v self.puzz1
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 251
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v self.lx
pushi.e 150
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.puzz2
pushi.e 0
push.v self.puzz2
conv.v.i
pop.v.i [stacktop]self.side
push.v self.type
pushi.e 82
cmp.i.v EQ
bf [348]

:[347]
pushi.e 10
push.v self.puzz1
conv.v.i
pop.v.i [stacktop]self.timer

:[348]
push.v self.type
pushi.e 82
cmp.i.v EQ
bf [350]

:[349]
pushi.e 10
push.v self.puzz2
conv.v.i
pop.v.i [stacktop]self.timer

:[350]
push.v self.type
pushi.e 83
cmp.i.v EQ
bf [352]

:[351]
pushi.e 15
push.v self.puzz1
conv.v.i
pop.v.i [stacktop]self.timer

:[352]
push.v self.type
pushi.e 83
cmp.i.v EQ
bf [354]

:[353]
pushi.e 15
push.v self.puzz2
conv.v.i
pop.v.i [stacktop]self.timer

:[354]
push.v self.puzz1
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.puzz2
call.i scr_bullet_inherit(argc=1)
popz.v

:[355]
push.v self.type
pushi.e 83
cmp.i.v EQ
bf [359]

:[356]
pushi.e 251
pushenv [358]

:[357]
pushi.e 1
pop.v.i self.joker

:[358]
popenv [357]

:[359]
push.v self.type
pushi.e 85
cmp.i.v EQ
bf [411]

:[360]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [370]

:[361]
pushi.e 0
pop.v.i self.cheer
pushi.e 0
pop.v.i self.cheertimer
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e -1
pushi.e 0
pop.v.v [array]self.remhp
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e -1
pushi.e 1
pop.v.v [array]self.remhp
pushi.e 281
pushenv [363]

:[362]
pushi.e 0
pop.v.i self.visible

:[363]
popenv [362]
pushi.e 282
pushenv [365]

:[364]
pushi.e 0
pop.v.i self.visible

:[365]
popenv [364]
pushi.e 190
conv.i.v
push.v 188.y
pushi.e 160
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 580
add.i.v
call.i instance_create(argc=3)
pop.v.v self.fakelan
push.v self.fakelan
conv.v.i
pushenv [367]

:[366]
push.v self.depth
pushi.e 1
add.i.v
pop.v.v self.depth
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.visible
pushi.e 426
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.active
push.d 0.2
pop.v.d self.image_speed

:[367]
popenv [366]
pushi.e 190
conv.i.v
push.v 188.y
pushi.e 40
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 530
add.i.v
call.i instance_create(argc=3)
pop.v.v self.fakesus
push.v self.fakesus
conv.v.i
pushenv [369]

:[368]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.visible
pushi.e 606
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.image_speed

:[369]
popenv [368]
pushi.e 1
pop.v.i self.made

:[370]
push.v self.made
pushi.e 1
cmp.i.v EQ
bf [387]

:[371]
push.v self.fakelan
call.i instance_exists(argc=1)
conv.v.b
bf [382]

:[372]
push.v self.cheer
pushi.e 0
cmp.i.v EQ
bf [377]

:[373]
pushglb.v global.inv
pushi.e 10
cmp.i.v GT
bf [377]

:[374]
pushi.e 1
pop.v.i self.cheer
pushi.e 110
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.fakelan
conv.v.i
pushenv [376]

:[375]
pushi.e 429
pop.v.i self.sprite_index

:[376]
popenv [375]

:[377]
push.v self.cheer
pushi.e 1
cmp.i.v EQ
bf [382]

:[378]
push.v self.cheertimer
pushi.e 1
add.i.v
pop.v.v self.cheertimer
push.v self.cheertimer
pushi.e 30
cmp.i.v GTE
bf [382]

:[379]
pushi.e 0
pop.v.i self.cheertimer
push.v self.fakelan
conv.v.i
pushenv [381]

:[380]
pushi.e 426
pop.v.i self.sprite_index

:[381]
popenv [380]
pushi.e 0
pop.v.i self.cheer

:[382]
push.v self.fakesus
call.i instance_exists(argc=1)
conv.v.b
bf [387]

:[383]
push.v self.fakesus
conv.v.i
pushenv [386]

:[384]
push.v self.image_index
pushi.e 5
cmp.i.v LT
bf [386]

:[385]
push.v self.image_index
push.d 0.334
add.d.v
pop.v.v self.image_index

:[386]
popenv [384]

:[387]
push.v self.made
pushi.e 1
cmp.i.v EQ
bf [389]

:[388]
pushglb.v global.turntimer
pushi.e 10
cmp.i.v LTE
b [390]

:[389]
push.e 0

:[390]
bf [400]

:[391]
push.v self.fakesus
conv.v.i
pushenv [393]

:[392]
pushi.e 0
pop.v.i self.visible

:[393]
popenv [392]
push.v self.fakelan
conv.v.i
pushenv [395]

:[394]
pushi.e 0
pop.v.i self.visible

:[395]
popenv [394]
pushi.e 281
pushenv [397]

:[396]
pushi.e 1
pop.v.i self.visible

:[397]
popenv [396]
pushi.e 282
pushenv [399]

:[398]
pushi.e 1
pop.v.i self.visible

:[399]
popenv [398]

:[400]
push.v self.btimer
pushi.e 27
cmp.i.v GTE
bf [403]

:[401]
pushi.e 188
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [403]

:[402]
pushglb.v global.turntimer
pushi.e 10
cmp.i.v GT
b [404]

:[403]
push.e 0

:[404]
bf [411]

:[405]
push.v self.fakesus
conv.v.i
pushenv [407]

:[406]
pushi.e 0
pop.v.i self.image_index
pushi.e 99
conv.i.v
call.i snd_play(argc=1)
popz.v

:[407]
popenv [406]
pushi.e 0
pop.v.i self.i

:[408]
push.v self.i
pushi.e 1
cmp.i.v LT
bf [410]

:[409]
pushi.e 277
conv.i.v
push.v 188.y
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 540
add.i.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.axe
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.axe
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [408]

:[410]
pushi.e 0
pop.v.i self.btimer

:[411]
push.v self.joker
pushi.e 1
cmp.i.v EQ
bf [end]

:[412]
push.v self.type
pushi.e 45
cmp.i.v EQ
bf [423]

:[413]
push.v self.btimer
pushi.e 18
cmp.i.v GTE
bf [423]

:[414]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
pop.v.v self.basex
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [416]

:[415]
push.v 303.x
pop.v.v self.basex

:[416]
push.v self.xx
pushi.e 0
cmp.i.v EQ
bf [418]

:[417]
push.v self.basex
pushi.e 180
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.idealx

:[418]
push.v self.xx
pushi.e 1
cmp.i.v EQ
bf [420]

:[419]
push.v self.basex
pushi.e 180
add.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.idealx

:[420]
pushi.e 262
conv.i.v
pushi.e -20
conv.i.v
push.v self.idealx
call.i instance_create(argc=3)
pop.v.v self.bomb
push.v self.bomb
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.bomb
conv.v.i
push.v [stacktop]self.type
pushi.e 2
cmp.i.v EQ
bf [422]

:[421]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
push.v self.bomb
conv.v.i
pop.v.v [stacktop]self.type

:[422]
pushi.e 0
pop.v.i self.btimer

:[423]
push.v self.type
pushi.e 46
cmp.i.v EQ
bf [434]

:[424]
push.v self.btimer
pushi.e 12
cmp.i.v GTE
bf [434]

:[425]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
pop.v.v self.basex
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [427]

:[426]
push.v 303.x
pop.v.v self.basex

:[427]
push.v self.xx
pushi.e 0
cmp.i.v EQ
bf [429]

:[428]
push.v self.basex
pushi.e 180
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.idealx

:[429]
push.v self.xx
pushi.e 1
cmp.i.v EQ
bf [431]

:[430]
push.v self.basex
pushi.e 180
add.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.idealx

:[431]
pushi.e 262
conv.i.v
pushi.e -20
conv.i.v
push.v self.idealx
call.i instance_create(argc=3)
pop.v.v self.bomb
push.v self.bomb
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.bomb
conv.v.i
push.v [stacktop]self.type
pushi.e 2
cmp.i.v EQ
bf [433]

:[432]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
push.v self.bomb
conv.v.i
pop.v.v [stacktop]self.type

:[433]
pushi.e 0
pop.v.i self.btimer

:[434]
push.v self.type
pushi.e 47
cmp.i.v EQ
bf [443]

:[435]
push.v self.btimer
pushi.e 12
cmp.i.v GTE
bf [443]

:[436]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
pop.v.v self.basex
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [438]

:[437]
push.v 303.x
pop.v.v self.basex

:[438]
push.v self.xx
pushi.e 0
cmp.i.v EQ
bf [440]

:[439]
push.v self.basex
pushi.e 180
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.idealx

:[440]
push.v self.xx
pushi.e 1
cmp.i.v EQ
bf [442]

:[441]
push.v self.basex
pushi.e 180
add.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.idealx

:[442]
pushi.e 262
conv.i.v
pushi.e -20
conv.i.v
push.v self.idealx
call.i instance_create(argc=3)
pop.v.v self.bomb
push.v self.bomb
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 1
push.v self.bomb
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 0
pop.v.i self.btimer

:[443]
push.v self.type
pushi.e 48
cmp.i.v EQ
bf [452]

:[444]
push.v self.btimer
pushi.e 12
cmp.i.v GTE
bf [452]

:[445]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
pop.v.v self.basex
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [447]

:[446]
push.v 303.x
pop.v.v self.basex

:[447]
push.v self.xx
pushi.e 0
cmp.i.v EQ
bf [449]

:[448]
push.v self.basex
pushi.e 180
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.idealx

:[449]
push.v self.xx
pushi.e 1
cmp.i.v EQ
bf [451]

:[450]
push.v self.basex
pushi.e 180
add.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.idealx

:[451]
pushi.e 262
conv.i.v
pushi.e -20
conv.i.v
push.v self.idealx
call.i instance_create(argc=3)
pop.v.v self.bomb
push.v self.bomb
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
push.v self.bomb
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 0
pop.v.i self.btimer

:[452]
push.v self.type
pushi.e 49
cmp.i.v EQ
bf [461]

:[453]
push.v self.btimer
pushi.e 20
cmp.i.v GTE
bf [461]

:[454]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
pop.v.v self.basex
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [456]

:[455]
push.v 303.x
pop.v.v self.basex

:[456]
push.v self.xx
pushi.e 0
cmp.i.v EQ
bf [458]

:[457]
push.v self.basex
pushi.e 180
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.idealx

:[458]
push.v self.xx
pushi.e 1
cmp.i.v EQ
bf [460]

:[459]
push.v self.basex
pushi.e 180
add.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.idealx

:[460]
pushi.e 262
conv.i.v
pushi.e -20
conv.i.v
push.v self.idealx
call.i instance_create(argc=3)
pop.v.v self.bomb
push.v self.bomb
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 2
push.v self.bomb
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 0
pop.v.i self.btimer

:[461]
push.v self.type
pushi.e 50
cmp.i.v EQ
bf [470]

:[462]
push.v self.btimer
pushi.e 12
cmp.i.v GTE
bf [470]

:[463]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
pop.v.v self.basex
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [465]

:[464]
push.v 303.x
pop.v.v self.basex

:[465]
push.v self.xx
pushi.e 0
cmp.i.v EQ
bf [467]

:[466]
push.v self.basex
pushi.e 180
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.idealx

:[467]
push.v self.xx
pushi.e 1
cmp.i.v EQ
bf [469]

:[468]
push.v self.basex
pushi.e 180
add.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.idealx

:[469]
pushi.e 262
conv.i.v
pushi.e -20
conv.i.v
push.v self.idealx
call.i instance_create(argc=3)
pop.v.v self.bomb
push.v self.bomb
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 3
push.v self.bomb
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 0
pop.v.i self.btimer

:[470]
push.v self.type
pushi.e 55
cmp.i.v EQ
bf [476]

:[471]
push.v self.btimer
pushi.e 40
cmp.i.v GTE
bf [473]

:[472]
push.v self.made
pushi.e 0
cmp.i.v EQ
b [474]

:[473]
push.e 0

:[474]
bf [476]

:[475]
pushi.e 0
pop.v.i self.btimer
pushi.e 1
pop.v.i self.made
pushi.e 266
conv.i.v
push.v 188.y
push.v 188.x
pushi.e 200
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.scythe
push.v self.scythe
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 270
pushi.e 120
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.scythe
conv.v.i
pop.v.v [stacktop]self.image_angle

:[476]
push.v self.type
pushi.e 56
cmp.i.v EQ
bf [485]

:[477]
push.v self.btimer
pushi.e 29
cmp.i.v GTE
bf [479]

:[478]
push.v self.made
pushi.e 0
cmp.i.v EQ
b [480]

:[479]
push.e 0

:[480]
bf [485]

:[481]
pushi.e 0
pop.v.i self.btimer
pushi.e -250
conv.i.v
call.i choose(argc=1)
pop.v.v self.xchoose
pushi.e 266
conv.i.v
push.v 188.y
push.v 188.x
push.v self.xchoose
add.v.v
call.i instance_create(argc=3)
pop.v.v self.scythe
push.v self.scythe
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i random(argc=1)
push.v self.scythe
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e 3
push.v self.scythe
conv.v.i
pop.v.i [stacktop]self.type
push.d -0.25
push.v self.scythe
conv.v.i
pop.v.d [stacktop]self.friction
push.v self.xchoose
pushi.e 0
cmp.i.v GT
bf [483]

:[482]
pushi.e -1
push.v self.scythe
conv.v.i
pop.v.i [stacktop]self.hspeed

:[483]
push.v self.xchoose
pushi.e 0
cmp.i.v LT
bf [485]

:[484]
pushi.e 1
push.v self.scythe
conv.v.i
pop.v.i [stacktop]self.hspeed

:[485]
push.v self.type
pushi.e 57
cmp.i.v EQ
bf [491]

:[486]
push.v self.btimer
pushi.e 40
cmp.i.v GTE
bf [488]

:[487]
push.v self.made
pushi.e 0
cmp.i.v EQ
b [489]

:[488]
push.e 0

:[489]
bf [491]

:[490]
pushi.e 0
pop.v.i self.btimer
pushi.e 1
pop.v.i self.made
pushi.e 266
conv.i.v
push.v 188.y
push.v 188.x
pushi.e 140
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.scythe
push.v self.scythe
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e -12
push.v self.scythe
conv.v.i
pop.v.i [stacktop]self.anglespeed
pushi.e 270
pushi.e 120
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.scythe
conv.v.i
pop.v.v [stacktop]self.image_angle

:[491]
push.v self.type
pushi.e 58
cmp.i.v EQ
bf [497]

:[492]
push.v self.btimer
pushi.e 40
cmp.i.v GTE
bf [494]

:[493]
push.v self.made
pushi.e 0
cmp.i.v EQ
b [495]

:[494]
push.e 0

:[495]
bf [497]

:[496]
pushi.e 0
pop.v.i self.btimer
pushi.e 1
pop.v.i self.made
pushi.e 266
conv.i.v
push.v 188.y
push.v 188.x
pushi.e 150
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.scythe
pushi.e -17
push.v self.scythe
conv.v.i
pop.v.i [stacktop]self.anglespeed
pushi.e 270
pushi.e 120
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.scythe
conv.v.i
pop.v.v [stacktop]self.image_angle

:[497]
push.v self.type
pushi.e 60
cmp.i.v EQ
bf [508]

:[498]
push.v self.btimer
pushi.e 40
cmp.i.v GTE
bf [500]

:[499]
push.v self.made
pushi.e 0
cmp.i.v EQ
b [501]

:[500]
push.e 0

:[501]
bf [508]

:[502]
pushi.e 0
pop.v.i self.btimer
pushi.e 1
pop.v.i self.made
pushi.e 0
pop.v.i self.i

:[503]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [508]

:[504]
pushi.e 0
pop.v.i self.j

:[505]
push.v self.j
pushi.e 7
cmp.i.v LT
bf [507]

:[506]
pushi.e 267
conv.i.v
push.v 188.y
pushi.e 80
sub.i.v
push.v self.i
pushi.e 80
mul.i.v
add.v.v
push.v 188.x
pushi.e 150
add.i.v
call.i instance_create(argc=3)
pop.v.v self.horse1
push.v self.j
pushi.e 18
mul.i.v
push.v self.horse1
conv.v.i
pop.v.v [stacktop]self.siner
push.v self.j
pushi.e 9
mul.i.v
push.v self.horse1
conv.v.i
pop.v.v [stacktop]self.vsin
push.v self.horse1
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [505]

:[507]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [503]

:[508]
push.v self.type
pushi.e 61
cmp.i.v EQ
bf [524]

:[509]
push.v self.btimer
pushi.e 40
cmp.i.v GTE
bf [511]

:[510]
push.v self.made
pushi.e 0
cmp.i.v EQ
b [512]

:[511]
push.e 0

:[512]
bf [524]

:[513]
pushi.e 0
pop.v.i self.btimer
pushi.e 1
pop.v.i self.made
pushi.e 0
pop.v.i self.horse
pushi.e 300
conv.i.v
call.i random(argc=1)
pop.v.v self.vseed
pushi.e 0
pop.v.i self.j

:[514]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [524]

:[515]
pushi.e 0
pop.v.i self.i

:[516]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [520]

:[517]
pushi.e 267
conv.i.v
push.v 188.y
pushi.e 80
sub.i.v
push.v self.i
pushi.e 80
mul.i.v
add.v.v
push.v 188.x
pushi.e 150
add.i.v
call.i instance_create(argc=3)
pop.v.v self.horse1
push.v self.j
pushi.e 42
mul.i.v
push.v self.horse1
conv.v.i
pop.v.v [stacktop]self.siner
pushi.e 0
push.v self.vseed
add.v.i
push.v self.horse1
conv.v.i
pop.v.v [stacktop]self.vsin
pushi.e 0
push.v self.horse1
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 2
push.v self.horse1
conv.v.i
pop.v.i [stacktop]self.altmode
push.d 1.1
push.v self.horse1
conv.v.i
pop.v.d [stacktop]self.sinspeed
push.v self.horse1
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 267
conv.i.v
push.v 188.y
pushi.e 80
sub.i.v
push.v self.i
pushi.e 80
mul.i.v
add.v.v
push.v 188.x
pushi.e 150
add.i.v
call.i instance_create(argc=3)
pop.v.v self.horse1
push.v self.j
pushi.e 42
mul.i.v
pushi.e 21
add.i.v
push.v self.horse1
conv.v.i
pop.v.v [stacktop]self.siner
pushi.e 0
push.v self.vseed
add.v.i
push.v self.horse1
conv.v.i
pop.v.v [stacktop]self.vsin
pushi.e 1
push.v self.horse1
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1
push.v self.horse1
conv.v.i
pop.v.i [stacktop]self.altmode
push.d 1.1
push.v self.horse1
conv.v.i
pop.v.d [stacktop]self.sinspeed
push.v self.horse1
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 50
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.chance
push.v self.chance
pushi.e 1
cmp.i.v EQ
bf [519]

:[518]
pushi.e 2
push.v self.horse1
conv.v.i
pop.v.i [stacktop]self.image_index

:[519]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [516]

:[520]
push.v self.horse
pushi.e 0
cmp.i.v EQ
bf [522]

:[521]
pushi.e 1
pop.v.i self.horse
b [523]

:[522]
pushi.e 0
pop.v.i self.horse

:[523]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [514]

:[524]
push.v self.type
pushi.e 62
cmp.i.v EQ
bf [535]

:[525]
push.v self.btimer
pushi.e 40
cmp.i.v GTE
bf [527]

:[526]
push.v self.made
pushi.e 0
cmp.i.v EQ
b [528]

:[527]
push.e 0

:[528]
bf [535]

:[529]
pushi.e 0
pop.v.i self.btimer
pushi.e 1
pop.v.i self.made
pushi.e 0
pop.v.i self.i

:[530]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [535]

:[531]
pushi.e 0
pop.v.i self.j

:[532]
push.v self.j
pushi.e 7
cmp.i.v LT
bf [534]

:[533]
pushi.e 267
conv.i.v
push.v 188.y
pushi.e 80
sub.i.v
push.v self.i
pushi.e 80
mul.i.v
add.v.v
push.v 188.x
pushi.e 150
add.i.v
call.i instance_create(argc=3)
pop.v.v self.horse1
push.v self.j
pushi.e 18
mul.i.v
push.v self.horse1
conv.v.i
pop.v.v [stacktop]self.siner
push.v self.j
pushi.e 9
mul.i.v
push.v self.horse1
conv.v.i
pop.v.v [stacktop]self.vsin
push.d 1.15
push.v self.horse1
conv.v.i
pop.v.d [stacktop]self.sinspeed
pushi.e 3
push.v self.horse1
conv.v.i
pop.v.i [stacktop]self.altmode
push.v self.horse1
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [532]

:[534]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [530]

:[535]
push.v self.type
pushi.e 65
cmp.i.v EQ
bf [538]

:[536]
push.v self.btimer
pushi.e 60
cmp.i.v GTE
bf [538]

:[537]
pushi.e 269
conv.i.v
push.v 188.y
push.v 188.x
call.i instance_create(argc=3)
pop.v.v self.ring
pushi.e 10
push.v self.ring
conv.v.i
pop.v.i [stacktop]self.maxspade
push.d 0.4
push.v self.ring
conv.v.i
pop.v.d [stacktop]self.grav
push.v self.ring
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
pop.v.i self.btimer

:[538]
push.v self.type
pushi.e 66
cmp.i.v EQ
bf [541]

:[539]
push.v self.btimer
pushi.e 30
cmp.i.v GTE
bf [541]

:[540]
pushi.e 269
conv.i.v
push.v 188.y
push.v 188.x
call.i instance_create(argc=3)
pop.v.v self.ring
pushi.e 6
push.v self.ring
conv.v.i
pop.v.i [stacktop]self.maxspade
pushi.e 3
push.v self.ring
conv.v.i
pop.v.i [stacktop]self.grav
push.d 1.5
push.v self.ring
conv.v.i
pop.v.d [stacktop]self.size
push.v self.ring
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
pop.v.i self.btimer

:[541]
push.v self.type
pushi.e 67
cmp.i.v EQ
bf [544]

:[542]
push.v self.btimer
pushi.e 20
cmp.i.v GTE
bf [544]

:[543]
pushi.e 269
conv.i.v
push.v 188.y
push.v 188.x
call.i instance_create(argc=3)
pop.v.v self.ring
push.d 0.2
push.v self.ring
conv.v.i
pop.v.d [stacktop]self.grav
pushi.e 4
push.v self.ring
conv.v.i
pop.v.i [stacktop]self.maxspade
pushi.e 1
push.v self.ring
conv.v.i
pop.v.i [stacktop]self.special
push.v self.ring
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
pop.v.i self.btimer

:[544]
push.v self.type
pushi.e 68
cmp.i.v EQ
bf [549]

:[545]
pushi.e 305
pushenv [547]

:[546]
pushi.e 5
pop.v.i self.wspeed

:[547]
popenv [546]
push.v self.btimer
pushi.e 54
cmp.i.v GTE
bf [549]

:[548]
pushi.e 269
conv.i.v
push.v 188.y
push.v 188.x
call.i instance_create(argc=3)
pop.v.v self.ring
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
push.v self.ring
conv.v.i
pop.v.v [stacktop]self.side
push.d 0.45
push.v self.ring
conv.v.i
pop.v.d [stacktop]self.grav
pushi.e 10
push.v self.ring
conv.v.i
pop.v.i [stacktop]self.maxspade
push.v self.ring
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
pop.v.i self.btimer

:[549]
push.v self.type
pushi.e 70
cmp.i.v EQ
bf [555]

:[550]
push.v self.btimer
pushi.e 20
cmp.i.v GTE
bf [552]

:[551]
pushglb.v global.turntimer
pushi.e 30
cmp.i.v GTE
b [553]

:[552]
push.e 0

:[553]
bf [555]

:[554]
push.v 188.x
pushi.e 100
add.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
push.v 188.x
pushi.e 100
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
call.i choose(argc=2)
pop.v.v self.jokerx
push.v 188.y
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
push.v 188.y
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
call.i choose(argc=2)
pop.v.v self.jokery
pushi.e 268
conv.i.v
push.v self.jokery
push.v self.jokerx
call.i instance_create(argc=3)
pop.v.v self.jokern
pushi.e 1
push.v self.jokern
conv.v.i
pop.v.i [stacktop]self.type
push.v self.jokern
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
push.v self.jokern
conv.v.i
pop.v.i [stacktop]self.active
pushi.e 0
pop.v.i self.btimer

:[555]
push.v self.type
pushi.e 71
cmp.i.v EQ
bf [561]

:[556]
push.v self.btimer
pushi.e 9
cmp.i.v GTE
bf [558]

:[557]
pushglb.v global.turntimer
pushi.e 20
cmp.i.v GTE
b [559]

:[558]
push.e 0

:[559]
bf [561]

:[560]
push.v 188.x
pushi.e 100
add.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
push.v 188.x
pushi.e 100
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
call.i choose(argc=2)
pop.v.v self.jokerx
push.v 188.y
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
push.v 188.y
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
call.i choose(argc=2)
pop.v.v self.jokery
pushi.e 268
conv.i.v
push.v self.jokery
push.v self.jokerx
call.i instance_create(argc=3)
pop.v.v self.jokern
push.v self.jokern
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
push.v self.jokern
conv.v.i
pop.v.i [stacktop]self.active
pushi.e 0
pop.v.i self.btimer

:[561]
push.v self.type
pushi.e 72
cmp.i.v EQ
bf [572]

:[562]
push.v self.btimer
pushi.e 18
cmp.i.v GTE
bf [572]

:[563]
pushi.e 0
pop.v.i self.btimer
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [565]

:[564]
pushi.e 315
conv.i.v
pushi.e 225
conv.i.v
call.i choose(argc=2)
pop.v.v self.dir

:[565]
push.v self.side
pushi.e -1
cmp.i.v EQ
bf [567]

:[566]
pushi.e 135
conv.i.v
pushi.e 45
conv.i.v
call.i choose(argc=2)
pop.v.v self.dir

:[567]
pushi.e 360
pop.v.i self.radius
push.v self.dir
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.dir
push.v self.radius
call.i lengthdir_y(argc=2)
pop.v.v self.yy
pushi.e 228
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v self.yy
add.v.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.d
push.v self.dir
pushi.e 180
add.i.v
push.v self.d
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 20
push.v self.d
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.friction
pushi.e 2
push.v self.d
conv.v.i
pop.v.i [stacktop]self.type
push.v self.damage
push.v self.d
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
conv.v.i
pop.v.v [stacktop]self.target
push.v self.d
conv.v.i
pushenv [569]

:[568]
push.v self.direction
pop.v.v self.image_angle

:[569]
popenv [568]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [571]

:[570]
pushi.e -1
pop.v.i self.side
b [572]

:[571]
pushi.e 1
pop.v.i self.side

:[572]
push.v self.type
pushi.e 73
cmp.i.v EQ
bf [580]

:[573]
push.v self.btimer
pushi.e 4
cmp.i.v GTE
bf [580]

:[574]
pushi.e 0
pop.v.i self.btimer
pushi.e 140
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.radius
push.v self.radius
push.v self.side
mul.v.v
pop.v.v self.yy
pushi.e -100
pushi.e 200
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.xx
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.num
push.v self.num
pushi.e 3
cmp.i.v EQ
bf [576]

:[575]
pushi.e -10
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.xx

:[576]
pushi.e 188
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [580]

:[577]
pushi.e 230
conv.i.v
push.v 188.y
pushi.e 100
add.i.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.db
push.v self.db
conv.v.i
pushenv [579]

:[578]
pushi.e 1
pop.v.i self.type

:[579]
popenv [578]
push.v self.damage
push.v self.db
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.db
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.db
conv.v.i
pop.v.i [stacktop]self.timepoints

:[580]
push.v self.type
pushi.e 74
cmp.i.v EQ
bf [585]

:[581]
push.v self.btimer
pushi.e 9
cmp.i.v GTE
bf [585]

:[582]
pushi.e 0
pop.v.i self.btimer
pushi.e 140
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.radius
push.v self.radius
push.v self.side
mul.v.v
pop.v.v self.yy
pushi.e -100
pushi.e 200
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.xx
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.num
push.v self.num
pushi.e 3
cmp.i.v EQ
bf [584]

:[583]
pushi.e -10
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.xx

:[584]
pushi.e 230
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v self.yy
add.v.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 12
push.v self.d
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e 2
push.v self.d
conv.v.i
pop.v.i [stacktop]self.timepoints
push.v self.damage
push.v self.d
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
conv.v.i
pop.v.v [stacktop]self.target

:[585]
push.v self.type
pushi.e 75
cmp.i.v EQ
bt [587]

:[586]
push.v self.type
pushi.e 76
cmp.i.v EQ
b [588]

:[587]
push.e 1

:[588]
bf [594]

:[589]
push.v self.btimer
pushi.e 0
cmp.i.v GTE
bf [591]

:[590]
push.v self.special
pushi.e 0
cmp.i.v EQ
b [592]

:[591]
push.e 0

:[592]
bf [594]

:[593]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 264
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.scythe
pushi.e 264
conv.i.v
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 1
pop.v.i self.special

:[594]
push.v self.type
pushi.e 77
cmp.i.v EQ
bf [end]

:[595]
pushi.e 10
pop.v.i global.sp
pushi.e 305
pushenv [597]

:[596]
pushi.e 10
pop.v.i self.wspeed

:[597]
popenv [596]
push.v self.special
pushi.e 0
cmp.i.v EQ
bf [601]

:[598]
pushi.e 126
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.prevmake
pushi.e 1
pop.v.i self.special
pushi.e 16
pop.v.i self.rank
pushi.e 0
pop.v.i self.realtimer
pushi.e 0
pop.v.i self.chase
pushi.e 0
pop.v.i self.made
pushi.e 0
pop.v.i self.amount
pushi.e 0
pop.v.i self.jokertimer
pushi.e 572
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 10
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.darkfader
push.v self.darkfader
conv.v.i
pushenv [600]

:[599]
pushi.e 2
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.image_blend
pushi.e 200
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[600]
popenv [599]

:[601]
push.v self.realtimer
pushi.e 0
cmp.i.v GTE
bf [603]

:[602]
push.v self.realtimer
pushi.e 10
cmp.i.v LT
b [604]

:[603]
push.e 0

:[604]
bf [612]

:[605]
push.v self.darkfader
conv.v.i
pushenv [607]

:[606]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[607]
popenv [606]
pushi.e 188
pushenv [609]

:[608]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[609]
popenv [608]
pushi.e 305
pushenv [611]

:[610]
push.v self.y
pushi.e 16
add.i.v
pop.v.v self.y
pushi.e 160
pop.v.i self.boundaryup

:[611]
popenv [610]

:[612]
push.v self.realtimer
pushi.e 10
cmp.i.v EQ
bf [616]

:[613]
pushi.e 188
pushenv [615]

:[614]
call.i instance_destroy(argc=0)
popz.v

:[615]
popenv [614]

:[616]
push.v self.realtimer
pushi.e 20
cmp.i.v EQ
bf [618]

:[617]
pushi.e 265
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
add.i.v
call.i instance_create(argc=3)
popz.v

:[618]
push.v self.realtimer
pushi.e 40
cmp.i.v EQ
bf [620]

:[619]
pushi.e 265
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 570
add.i.v
call.i instance_create(argc=3)
popz.v

:[620]
push.v self.realtimer
pushi.e 60
cmp.i.v GTE
bf [622]

:[621]
push.v self.amount
pushi.e 30
cmp.i.v LT
b [623]

:[622]
push.e 0

:[623]
bf [636]

:[624]
push.v self.btimer
push.v self.rank
cmp.v.v GTE
bf [636]

:[625]
push.v self.rank
pushi.e 7
cmp.i.v GT
bf [627]

:[626]
push.v self.rank
pushi.e 1
sub.i.v
pop.v.v self.rank

:[627]
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.which
push.v self.which
push.v self.prevmake
cmp.v.v EQ
bf [629]

:[628]
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.which

:[629]
push.v self.chase
pushi.e 3
cmp.i.v EQ
bf [631]

:[630]
push.v 305.x
pushi.e 8
add.i.v
pushi.e 90
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.which
pushi.e 0
pop.v.i self.chase

:[631]
pushi.e 265
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
add.i.v
pushi.e 90
push.v self.which
mul.v.i
add.v.v
call.i instance_create(argc=3)
pop.v.v self.scythe
push.v self.which
pushi.e 1
cmp.i.v EQ
bf [633]

:[632]
pushi.e 265
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
add.i.v
pushi.e 450
add.i.v
call.i instance_create(argc=3)
pop.v.v self.scythe2

:[633]
push.v self.which
pushi.e 0
cmp.i.v EQ
bf [635]

:[634]
pushi.e 265
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
add.i.v
pushi.e 540
add.i.v
call.i instance_create(argc=3)
pop.v.v self.scythe2

:[635]
push.v self.which
pop.v.v self.prevmake
pushi.e 0
pop.v.i self.btimer
push.v self.chase
pushi.e 1
add.i.v
pop.v.v self.chase
push.v self.amount
pushi.e 1
add.i.v
pop.v.v self.amount

:[636]
push.v self.amount
pushi.e 29
push.v self.made
sub.v.i
cmp.v.v GTE
bf [638]

:[637]
push.v self.special
pushi.e 1
cmp.i.v EQ
b [639]

:[638]
push.e 0

:[639]
bf [643]

:[640]
pushi.e 0
pop.v.i self.jokertimer
pushi.e 268
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 100
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
call.i instance_create(argc=3)
pop.v.v self.jokerin
push.v self.jokerin
conv.v.i
pushenv [642]

:[641]
pushi.e 66
pop.v.i self.type
pushi.e -30
pop.v.i self.depth

:[642]
popenv [641]
pushi.e 2
pop.v.i self.special
pushi.e 0
pop.v.i self.which2

:[643]
push.v self.special
pushi.e 2
cmp.i.v EQ
bf [683]

:[644]
push.v self.jokertimer
pushi.e 1
add.i.v
pop.v.v self.jokertimer
push.v self.jokertimer
pushi.e 10
cmp.i.v EQ
bf [646]

:[645]
push.s "snd_joker_neochaos"@3398
conv.s.v
call.i scr_84_get_sound(argc=1)
call.i snd_play(argc=1)
popz.v

:[646]
push.v self.jokertimer
pushi.e 40
cmp.i.v EQ
bt [648]

:[647]
push.v self.jokertimer
pushi.e 98
cmp.i.v EQ
b [649]

:[648]
push.e 1

:[649]
bf [651]

:[650]
pushi.e 265
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.scythe
pushi.e 265
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 580
add.i.v
call.i instance_create(argc=3)
pop.v.v self.scythe

:[651]
push.v self.jokertimer
pushi.e 46
cmp.i.v EQ
bt [653]

:[652]
push.v self.jokertimer
pushi.e 86
cmp.i.v EQ
b [654]

:[653]
push.e 1

:[654]
bf [656]

:[655]
pushi.e 265
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 130
add.i.v
call.i instance_create(argc=3)
pop.v.v self.scythe
pushi.e 265
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 490
add.i.v
call.i instance_create(argc=3)
pop.v.v self.scythe

:[656]
push.v self.jokertimer
pushi.e 52
cmp.i.v EQ
bt [658]

:[657]
push.v self.jokertimer
pushi.e 80
cmp.i.v EQ
b [659]

:[658]
push.e 1

:[659]
bf [661]

:[660]
pushi.e 265
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 220
add.i.v
call.i instance_create(argc=3)
pop.v.v self.scythe
pushi.e 265
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 400
add.i.v
call.i instance_create(argc=3)
pop.v.v self.scythe

:[661]
push.v self.jokertimer
pushi.e 66
cmp.i.v EQ
bt [663]

:[662]
push.v self.jokertimer
pushi.e 98
cmp.i.v EQ
b [664]

:[663]
push.e 1

:[664]
bf [666]

:[665]
pushi.e 265
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 310
add.i.v
call.i instance_create(argc=3)
pop.v.v self.scythe

:[666]
push.v self.jokertimer
pushi.e 130
cmp.i.v EQ
bf [670]

:[667]
pushi.e 265
conv.i.v
pushi.e -320
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
call.i instance_create(argc=3)
pop.v.v self.lastscythe
pushi.e 0
pop.v.i self.p
pushi.e 0
pop.v.i self.vol
pushi.e 1
pop.v.i self.vol2
pushi.e 1
conv.i.v
pushi.e 50
conv.i.v
pushi.e 117
conv.i.v
call.i audio_play_sound(argc=3)
pop.v.v self.rumnoise
push.v self.lastscythe
conv.v.i
pushenv [669]

:[668]
pushi.e 1
pop.v.i self.vspeed
push.d 0.02
pop.v.d self.gravity
pushi.e 16
pop.v.i self.image_xscale
pushi.e 16
pop.v.i self.image_yscale
pushi.e 16
pop.v.i self.scale
pushi.e 0
pop.v.i self.rotspeed
pushi.e 160
pop.v.i self.remrot
pushi.e 160
pop.v.i self.image_angle

:[669]
popenv [668]
pushi.e 78
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
call.i instance_create(argc=3)
pop.v.v self.fadewhite
pushi.e 572
push.v self.fadewhite
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 400
push.v self.fadewhite
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fadewhite
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e -100
push.v self.fadewhite
conv.v.i
pop.v.i [stacktop]self.depth
push.d -0.3
push.v self.fadewhite
conv.v.i
pop.v.d [stacktop]self.image_alpha

:[670]
push.v self.jokertimer
pushi.e 131
cmp.i.v GTE
bf [683]

:[671]
push.v self.lastscythe
conv.v.i
pushenv [673]

:[672]
push.v self.xstart
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.x

:[673]
popenv [672]
push.v self.fadewhite
conv.v.i
pushenv [675]

:[674]
push.v self.image_alpha
push.d 0.01
add.d.v
pop.v.v self.image_alpha

:[675]
popenv [674]
push.v self.vol
push.d 0.01
add.d.v
pop.v.v self.vol
push.v self.fadewhite
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [681]

:[676]
push.v self.darkfader
conv.v.i
pushenv [678]

:[677]
call.i instance_destroy(argc=0)
popz.v

:[678]
popenv [677]
push.v self.lastscythe
conv.v.i
pushenv [680]

:[679]
call.i instance_destroy(argc=0)
popz.v

:[680]
popenv [679]

:[681]
push.v self.fadewhite
conv.v.i
push.v [stacktop]self.image_alpha
push.d 1.3
cmp.d.v GTE
bf [683]

:[682]
pushi.e 3
pop.v.i self.special

:[683]
push.v self.special
pushi.e 3
cmp.i.v EQ
bf [690]

:[684]
pushi.e 305
pushenv [686]

:[685]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
pop.v.v self.x
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 120
add.i.v
pop.v.v self.y

:[686]
popenv [685]
push.v self.vol
push.d 0.1
sub.d.v
pop.v.v self.vol
pushi.e 0
conv.i.v
push.v self.vol
push.v self.rumnoise
call.i audio_sound_gain(argc=3)
popz.v
push.v self.fadewhite
conv.v.i
pushenv [688]

:[687]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[688]
popenv [687]
push.v self.fadewhite
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [690]

:[689]
push.v self.rumnoise
call.i audio_stop_sound(argc=1)
popz.v
pushi.e 11
pop.v.i global.turntimer
pushi.e 4
pop.v.i self.special

:[690]
push.v self.realtimer
pushi.e 1
add.i.v
pop.v.v self.realtimer

:[end]