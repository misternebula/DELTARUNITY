.localvar 0 arguments

:[0]
push.v self.chaincon
pushi.e 0
cmp.i.v EQ
bf [11]

:[1]
push.v self.chain_noise
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 58
conv.i.v
call.i snd_loop(argc=1)
pop.v.v self.chainsound
pushi.e 1
pop.v.i self.chain_noise

:[3]
push.v self.sons
pushi.e 40
cmp.i.v LT
bf [5]

:[4]
push.v self.sons
pushi.e 1
add.i.v
pop.v.v self.sons
pushi.e 241
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.sons
conv.v.i
pop.v.v [array]self.son
pushi.e 255
pushi.e -1
push.v self.sons
conv.v.i
push.v [array]self.son
conv.v.i
pop.v.i [stacktop]self.image_blend

:[5]
push.v self.x
push.v 246.x
cmp.v.v LTE
bf [11]

:[6]
push.v self.chain_noise
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2
pop.v.i self.chain_noise
push.v self.chainsound
call.i snd_stop(argc=1)
popz.v
pushi.e 33
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 103
conv.i.v
call.i snd_play(argc=1)
popz.v

:[8]
pushi.e 246
pop.v.i self.box
push.v 246.x
pop.v.v self.x
push.v 246.y
pop.v.v self.y
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.chaincon
pushi.e 16
pop.v.i self.shakeamt
push.v 305.x
pop.v.v self.remx
push.v 305.y
pop.v.v self.remy
push.v 246.x
pop.v.v self.remx_box
push.v 246.y
pop.v.v self.remy_box
push.d 2.1
pop.v.d self.chaincon
pushi.e 303
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.megakeep

:[10]
popenv [9]

:[11]
push.v self.chaincon
push.d 2.1
cmp.d.v EQ
bf [14]

:[12]
push.v self.remx_box
pop.v.v 246.x
push.v self.remy_box
pop.v.v 246.y
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.shakedir
push.v self.shakedir
push.v self.shakeamt
call.i lengthdir_x(argc=2)
pop.v.v self.xshake
push.v self.shakedir
push.v self.shakeamt
call.i lengthdir_y(argc=2)
pop.v.v self.yshake
push.v 246.x
push.v self.xshake
add.v.v
pop.v.v 246.x
push.v 246.y
push.v self.yshake
add.v.v
pop.v.v 246.y
push.v self.shakeamt
pushi.e 2
sub.i.v
pop.v.v self.shakeamt
push.v self.shakeamt
pushi.e 0
cmp.i.v LTE
bf [14]

:[13]
push.d 2.2
pop.v.d self.chaincon
push.v self.remx_box
pop.v.v 246.x
push.v self.remy_box
pop.v.v 246.y

:[14]
push.v self.chaincon
push.d 2.2
cmp.d.v EQ
bf [27]

:[15]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 160
add.i.v
pop.v.v self.yy
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy_2
push.d 2.3
pop.v.d self.chaincon
push.v self.type
pushi.e 1
cmp.i.v GTE
bf [19]

:[16]
pushi.e 194
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.spike
push.v self.spike
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
push.v self.spike
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.spike
conv.v.i
pop.v.i [stacktop]self.active
pushi.e 210
pushenv [18]

:[17]
pushi.e 0
pop.v.i self.basealpha

:[18]
popenv [17]
pushi.e 0
push.v self.spike
conv.v.i
pop.v.i [stacktop]self.image_alpha
push.v self.box
conv.v.i
push.v [stacktop]self.sprite_index
push.v self.spike
conv.v.i
pop.v.v [stacktop]self.mask_index
pushi.e 631
push.v self.spike
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.spikemake
push.v self.box
conv.v.i
push.v [stacktop]self.image_xscale
push.d 0.96
mul.d.v
push.v self.spike
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.box
conv.v.i
push.v [stacktop]self.image_yscale
push.d 0.96
mul.d.v
push.v self.spike
conv.v.i
pop.v.v [stacktop]self.image_yscale

:[19]
push.v self.type
pushi.e 1
cmp.i.v LTE
bf [27]

:[20]
pushi.e 0
pop.v.i self.i

:[21]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [26]

:[22]
pushi.e 0
pop.v.i self.j

:[23]
push.v self.j
pushi.e 5
cmp.i.v LT
bf [25]

:[24]
pushi.e 194
conv.i.v
push.v self.yy_2
pushi.e 20
add.i.v
push.v self.j
pushi.e 70
mul.i.v
add.v.v
push.v self.xx
pushi.e 150
sub.i.v
push.v self.i
pushi.e 70
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
pushi.e 679
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
pop.v.i [stacktop]self.basealpha
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
pop.v.i [stacktop]self.active
pushi.e 90
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
pop.v.i [stacktop]self.image_angle
push.d 0.5
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
pop.v.d [stacktop]self.image_xscale
push.d 0.5
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
pop.v.d [stacktop]self.image_yscale
pushi.e 1
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
pop.v.i [stacktop]self.neveractive
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
pushi.e 1
add.i.v
pop.v.v self.j
b [23]

:[25]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [21]

:[26]
pushi.e 1
pop.v.i self.bulletpoint

:[27]
push.v self.chaincon
push.d 2.3
cmp.d.v EQ
bf [37]

:[28]
pushi.e 210
pushenv [30]

:[29]
push.v self.basealpha
push.d 0.04
add.d.v
pop.v.v self.basealpha

:[30]
popenv [29]
push.v self.spikemake
pushi.e 1
cmp.i.v EQ
bf [33]

:[31]
push.v self.box
conv.v.i
dup.i 0
push.v [stacktop]self.image_xscale
push.d 0.005
add.d.v
pop.i.v [stacktop]self.image_xscale
push.v self.box
conv.v.i
dup.i 0
push.v [stacktop]self.image_yscale
push.d 0.005
add.d.v
pop.i.v [stacktop]self.image_yscale
push.v self.spike
conv.v.i
dup.i 0
push.v [stacktop]self.image_xscale
push.d 0.005
add.d.v
pop.i.v [stacktop]self.image_xscale
push.v self.spike
conv.v.i
dup.i 0
push.v [stacktop]self.image_yscale
push.d 0.005
add.d.v
pop.i.v [stacktop]self.image_yscale
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
push.v self.box
conv.v.i
dup.i 0
push.v [stacktop]self.image_xscale
push.d 0.01
add.d.v
pop.i.v [stacktop]self.image_xscale
push.v self.box
conv.v.i
dup.i 0
push.v [stacktop]self.image_yscale
push.d 0.01
add.d.v
pop.i.v [stacktop]self.image_yscale
push.v self.spike
conv.v.i
dup.i 0
push.v [stacktop]self.image_xscale
push.d 0.01
add.d.v
pop.i.v [stacktop]self.image_xscale
push.v self.spike
conv.v.i
dup.i 0
push.v [stacktop]self.image_yscale
push.d 0.01
add.d.v
pop.i.v [stacktop]self.image_yscale

:[33]
push.v self.gotimer
pushi.e 1
add.i.v
pop.v.v self.gotimer
push.v self.gotimer
pushi.e 30
cmp.i.v GTE
bf [37]

:[34]
pushi.e 3
pop.v.i self.chaincon
pushi.e 0
pop.v.i self.gotimer
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 160
add.i.v
pop.v.v self.yy
push.v self.xx
pop.v.v self.pointx
push.v self.yy
pop.v.v self.pointy
pushi.e 210
pushenv [36]

:[35]
pushi.e 1
pop.v.i self.active

:[36]
popenv [35]

:[37]
push.v self.chaincon
pushi.e 3
cmp.i.v EQ
bf [89]

:[38]
push.v self.movecon
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
push.v self.ended
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [44]

:[42]
push.v self.mytimer
push.v self.maxtimer
pushi.e 10
sub.i.v
cmp.v.v GT
bf [44]

:[43]
pushi.e 1
pop.v.i self.ended

:[44]
push.v self.movecon
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
push.v self.ended
pushi.e 0
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [65]

:[48]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.pointdist
pushi.e 100
pop.v.i self.mind
pushi.e 130
pop.v.i self.maxd
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
pushi.e 110
pop.v.i self.maxd
pushi.e 30
pop.v.i self.movetime

:[50]
push.v self.type
pushi.e 1
cmp.i.v GTE
bf [52]

:[51]
pushi.e 140
pop.v.i self.maxd

:[52]
push.v self.type
pushi.e 3
cmp.i.v EQ
bt [54]

:[53]
push.v self.type
pushi.e 4
cmp.i.v EQ
b [55]

:[54]
push.e 1

:[55]
bf [57]

:[56]
pushi.e 120
pop.v.i self.maxd

:[57]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [59]

:[58]
pushi.e 130
pop.v.i self.maxd
pushi.e 30
pop.v.i self.movetime

:[59]
push.v self.pointdist
push.v self.mind
cmp.v.v LT
bt [61]

:[60]
push.v self.pointdist
push.v self.maxd
cmp.v.v GT
b [62]

:[61]
push.e 1

:[62]
bf [64]

:[63]
push.v self.xx
pushi.e 140
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 140
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.pointx
push.v self.yy
pushi.e 120
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 120
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.pointy
push.v self.pointy
push.v self.pointx
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pop.v.v self.pointdist
b [59]

:[64]
pushi.e 241
conv.i.v
push.v self.pointy
push.v self.pointx
call.i instance_create(argc=3)
pop.v.v self.target
pushi.e 423
push.v self.target
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 30
push.v self.target
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.pointdist
push.v self.movetime
div.v.v
push.v self.pointy
push.v self.pointx
call.i move_towards_point(argc=3)
popz.v
pushi.e 0
pop.v.i self.movetimer
pushi.e 1
pop.v.i self.movecon
pushi.e 58
conv.i.v
call.i snd_loop(argc=1)
pop.v.v self.chainnoise

:[65]
push.v self.movecon
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.v self.ended
pushi.e 0
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [71]

:[69]
push.v self.movetimer
pushi.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
push.v self.movetime
cmp.v.v GT
bf [71]

:[70]
push.v self.pointx
pop.v.v self.x
push.v self.pointy
pop.v.v self.y
pushi.e 2
pop.v.i self.movecon
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.movetimer

:[71]
push.v self.movecon
pushi.e 2
cmp.i.v EQ
bf [73]

:[72]
push.v self.ended
pushi.e 0
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [89]

:[75]
pushi.e 20
pop.v.i self.maxmove
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
pushi.e 22
pop.v.i self.maxmove

:[77]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [79]

:[78]
pushi.e 16
pop.v.i self.maxmove

:[79]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [81]

:[80]
pushi.e 7
pop.v.i self.maxmove

:[81]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [83]

:[82]
pushi.e 3
pop.v.i self.maxmove

:[83]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [85]

:[84]
pushi.e 22
pop.v.i self.maxmove

:[85]
push.v self.movetimer
pushi.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
push.v self.maxmove
cmp.v.v GTE
bf [89]

:[86]
push.v self.target
conv.v.i
pushenv [88]

:[87]
call.i instance_destroy(argc=0)
popz.v

:[88]
popenv [87]
pushi.e 0
pop.v.i self.movecon
push.v self.chainnoise
call.i snd_stop(argc=1)
popz.v

:[89]
push.v self.chaincon
pushi.e 0
cmp.i.v GTE
bf [98]

:[90]
push.v self.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.kingx
push.v self.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.kingy
pushi.e 40
pop.v.i self.i

:[91]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [93]

:[92]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.kingx
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.kingx
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.kingy
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.kingy
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [91]

:[93]
pushi.e 0
pop.v.i self.i

:[94]
push.v self.i
push.v self.sons
cmp.v.v LTE
bf [96]

:[95]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.kingx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.son
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.kingy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.son
conv.v.i
pop.v.v [stacktop]self.y
push.v self.direction
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.son
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [94]

:[96]
push.v self.chaincon
pushi.e 3
cmp.i.v GTE
bf [98]

:[97]
pushi.e -1
push.v self.sons
conv.v.i
push.v [array]self.kingx
pop.v.v 246.x
pushi.e -1
push.v self.sons
conv.v.i
push.v [array]self.kingy
pop.v.v 246.y

:[98]
push.v self.bulletpoint
pushi.e 1
cmp.i.v EQ
bf [118]

:[99]
pushi.e 210
pushenv [117]

:[100]
push.v self.sprite_index
pushi.e 679
cmp.i.v EQ
bf [117]

:[101]
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.image_angle
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pop.v.v self.pointdist
push.v self.pointdist
pushi.e 80
cmp.i.v GT
bf [103]

:[102]
push.v self.neveractive
push.d 0.02
sub.d.v
pop.v.v self.neveractive

:[103]
push.v self.neveractive
pushi.e 0
cmp.i.v GT
bf [105]

:[104]
pushi.e 0
pop.v.i self.active
b [106]

:[105]
pushi.e 1
pop.v.i self.active

:[106]
push.d 0.7
pop.v.d self.alphafactor
pushi.e 1
push.v self.neveractive
sub.v.i
pop.v.v self.activefactor
push.v self.activefactor
pushi.e 1
cmp.i.v GT
bf [108]

:[107]
pushi.e 1
pop.v.i self.activefactor

:[108]
push.v self.pointdist
pushi.e 80
cmp.i.v GT
bf [111]

:[109]
push.d 1.7
push.v self.pointdist
pushi.e 1
mul.i.v
pushi.e 80
conv.i.d
div.d.v
sub.v.d
pop.v.v self.alphafactor
push.v self.alphafactor
pushi.e 0
cmp.i.v LT
bf [111]

:[110]
pushi.e 0
pop.v.i self.alphafactor

:[111]
push.d 0.3
push.v self.alphafactor
add.v.d
push.v self.basealpha
mul.v.v
push.v self.activefactor
mul.v.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.d 0.68
cmp.d.v LT
bf [113]

:[112]
push.v 243.ended
pushi.e 0
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
bf [116]

:[115]
push.v self.image_xscale
push.d 0.0005
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.0005
add.d.v
pop.v.v self.image_yscale
b [117]

:[116]
pushi.e 0
pop.v.i self.active
push.v self.basealpha
push.d 0.1
sub.d.v
pop.v.v self.basealpha
pushi.e 1
pop.v.i 243.ended

:[117]
popenv [100]

:[118]
push.v self.spikemake
pushi.e 1
cmp.i.v EQ
bf [123]

:[119]
push.v self.spike
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.04
add.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.box
conv.v.i
push.v [stacktop]self.x
push.v self.spike
conv.v.i
pop.v.v [stacktop]self.x
push.v self.box
conv.v.i
push.v [stacktop]self.y
push.v self.spike
conv.v.i
pop.v.v [stacktop]self.y
push.v self.ended
pushi.e 1
cmp.i.v EQ
bf [123]

:[120]
push.v self.spike
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [122]

:[121]
pushi.e 1
push.v self.spike
conv.v.i
pop.v.i [stacktop]self.image_alpha

:[122]
push.v self.spike
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.14
sub.d.v
pop.i.v [stacktop]self.image_alpha

:[123]
push.v self.ended
pushi.e 1
cmp.i.v EQ
bf [132]

:[124]
push.v self.endtimer
pushi.e 1
add.i.v
pop.v.v self.endtimer
push.v self.endtimer
pushi.e 10
cmp.i.v GTE
bf [132]

:[125]
pushi.e 58
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 241
pushenv [127]

:[126]
call.i instance_destroy(argc=0)
popz.v

:[127]
popenv [126]
pushi.e 210
pushenv [129]

:[128]
call.i instance_destroy(argc=0)
popz.v

:[129]
popenv [128]
pushi.e 240
pushenv [131]

:[130]
call.i instance_destroy(argc=0)
popz.v

:[131]
popenv [130]
pushi.e 3
pop.v.i global.turntimer
call.i instance_destroy(argc=0)
popz.v

:[132]
push.v self.spikemake
pushi.e 1
cmp.i.v EQ
bf [139]

:[133]
push.v self.spike
call.i instance_exists(argc=1)
conv.v.b
bf [139]

:[134]
push.v self.spike
conv.v.i
push.v [stacktop]self.grazed
pushi.e 1
cmp.i.v EQ
bf [139]

:[135]
push.v self.timerbonus
pushi.e 0
cmp.i.v EQ
bf [137]

:[136]
push.v self.mytimer
pushi.e 2
add.i.v
pop.v.v self.mytimer
pushi.e 1
pop.v.i self.timerbonus

:[137]
push.v self.grazetimer
pushi.e 1
add.i.v
pop.v.v self.grazetimer
push.v self.grazetimer
pushi.e 15
cmp.i.v GTE
bf [139]

:[138]
pushi.e 0
pop.v.i self.timerbonus
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
push.v self.spike
conv.v.i
pop.v.i [stacktop]self.grazed

:[139]
push.v self.mytimer
pushi.e 1
add.i.v
pop.v.v self.mytimer
push.v self.direction
pop.v.v self.image_angle

:[end]