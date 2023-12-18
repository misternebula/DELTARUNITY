.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
push.v 326.x
push.v 326.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.targetx
push.v 326.y
push.v 326.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.targety
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.frozen

:[2]
pushi.e 200
conv.i.v
call.i scr_outside_camera(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.offscreen_frozen
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.frozen
b [8]

:[7]
pushi.e 0
pop.v.i self.frozen

:[8]
pushglb.v global.interact
pushi.e 0
cmp.i.v NEQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.frozen

:[10]
push.v self.frozen
pushi.e 1
cmp.i.v EQ
bf [13]

:[11]
push.v self.hadfrozen
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.speed
pop.v.v self.remspeed
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.hadfrozen

:[13]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [end]

:[14]
push.v self.hadfrozen
pushi.e 1
cmp.i.v EQ
bf [18]

:[15]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.v self.remspeed
pop.v.v self.speed

:[17]
pushi.e 0
pop.v.i self.hadfrozen

:[18]
push.v self.pacecon
pushi.e 0
cmp.i.v EQ
bf [61]

:[19]
push.v self.pacetimer
pushi.e 1
add.i.v
pop.v.v self.pacetimer
push.v self.pacetype
pushi.e 0
cmp.i.v EQ
bf [20]

:[20]
push.v self.pacetype
pushi.e 1
cmp.i.v EQ
bf [31]

:[21]
push.v self.pacetimer
pushi.e 10
cmp.i.v EQ
bf [23]

:[22]
pushi.e 2
pop.v.i self.hspeed

:[23]
push.v self.pacetimer
pushi.e 34
cmp.i.v EQ
bf [25]

:[24]
pushi.e 0
pop.v.i self.hspeed

:[25]
push.v self.pacetimer
pushi.e 50
cmp.i.v EQ
bf [27]

:[26]
pushi.e -2
pop.v.i self.hspeed

:[27]
push.v self.pacetimer
pushi.e 74
cmp.i.v EQ
bf [29]

:[28]
pushi.e 0
pop.v.i self.hspeed

:[29]
push.v self.pacetimer
pushi.e 80
cmp.i.v EQ
bf [31]

:[30]
pushi.e 0
pop.v.i self.pacetimer

:[31]
push.v self.pacetype
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
push.v self.pacetimer
pushi.e 24
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.hspeed
push.v self.pacetimer
pushi.e 24
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.vspeed

:[33]
push.v self.pacetype
pushi.e 5
cmp.i.v EQ
bf [40]

:[34]
push.v self.pacetimer
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e 6
pop.v.i self.vspeed

:[36]
push.v self.pacetimer
pushi.e 25
cmp.i.v EQ
bf [38]

:[37]
pushi.e -6
pop.v.i self.vspeed

:[38]
push.v self.y
push.v self.ystart
cmp.v.v LT
bf [40]

:[39]
pushi.e 0
pop.v.i self.pacetimer

:[40]
push.v self.pacetype
pushi.e 6
cmp.i.v EQ
bf [42]

:[41]
pushi.e 1
pop.v.i self.cancelwalk
push.v self.walk_index
push.d 0.25
add.d.v
pop.v.v self.walk_index

:[42]
push.v self.pacetype
pushi.e 7
cmp.i.v EQ
bf [44]

:[43]
push.v self.pacetimer
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 10
mul.i.v
pop.v.v self.hspeed

:[44]
push.v self.pacetype
push.d 7.5
cmp.d.v EQ
bf [46]

:[45]
push.v self.pacetimer
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
pop.v.v self.hspeed

:[46]
push.v self.pacetype
pushi.e 8
cmp.i.v EQ
bf [48]

:[47]
push.v self.pacetimer
pushi.e 25
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
push.d 12.5
mul.d.v
pop.v.v self.vspeed

:[48]
push.v self.pacetype
pushi.e 9
cmp.i.v EQ
bf [50]

:[49]
push.v self.pacetimer
push.v self.pacespeed
pushi.e 30
mul.i.v
div.v.v
call.i sin(argc=1)
push.v self.moveradius
pushi.e 20
conv.i.d
div.d.v
mul.v.v
pop.v.v self.hspeed
push.d 0.8
pop.v.d self.pacespeed

:[50]
push.v self.pacetype
pushi.e 10
cmp.i.v EQ
bf [61]

:[51]
push.v self.pacecon2
pushi.e 0
cmp.i.v EQ
bf [59]

:[52]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [54]

:[53]
push.v self.vspeed
push.d 0.9
mul.d.v
pop.v.v self.vspeed

:[54]
push.v self.vspeed
push.d 0.5
cmp.d.v LTE
bf [56]

:[55]
push.v self.pacecon2
pushi.e 0
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
pushi.e 1
pop.v.i self.pacecon2

:[59]
push.v self.pacecon2
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 4
conv.i.v
push.v 326.y
push.v 326.x
call.i move_towards_point(argc=3)
popz.v

:[61]
push.v self.alertcon
pushi.e 0
cmp.i.v EQ
bf [65]

:[62]
push.v self.alerttimer
pushi.e 1
add.i.v
pop.v.v self.alerttimer
push.v self.alerttimer
pushi.e 6
cmp.i.v GTE
bf [65]

:[63]
push.v self.alerttimer
pushi.e 6
sub.i.v
pop.v.v self.alerttimer
push.v self.targety
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.targetx
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i distance_to_point(argc=2)
push.v self.radius
cmp.v.v LTE
bf [65]

:[64]
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.pacecon
pushi.e 0
pop.v.i self.alerttimer
pushi.e 1
pop.v.i self.alertcon
pushi.e 88
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 162
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[65]
push.v self.alertcon
pushi.e 2
cmp.i.v EQ
bf [110]

:[66]
push.v self.chasetype
pushi.e 0
cmp.i.v EQ
bf [72]

:[67]
push.v self.speed
pushi.e 4
cmp.i.v LT
bf [69]

:[68]
pushi.e 4
pop.v.i self.speed

:[69]
push.v self.speed
pushi.e 7
cmp.i.v LT
bf [71]

:[70]
push.v self.speed
push.d 0.5
add.d.v
pop.v.v self.speed

:[71]
push.v self.speed
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[72]
push.v self.chasetype
pushi.e 1
cmp.i.v EQ
bf [81]

:[73]
push.v self.alerttimer
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
pushi.e 10
conv.i.v
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[75]
push.v self.alerttimer
pushi.e 1
add.i.v
pop.v.v self.alerttimer
push.v self.alerttimer
pushi.e 20
cmp.i.v GTE
bf [77]

:[76]
push.v self.speed
push.d 0.75
mul.d.v
pop.v.v self.speed

:[77]
push.v self.alerttimer
pushi.e 25
cmp.i.v GTE
bf [79]

:[78]
pushi.e 0
pop.v.i self.speed

:[79]
push.v self.alerttimer
pushi.e 27
cmp.i.v GTE
bf [81]

:[80]
pushi.e 0
pop.v.i self.alerttimer

:[81]
push.v self.chasetype
pushi.e 2
cmp.i.v EQ
bf [98]

:[82]
push.v self.alerttimer
pushi.e 0
cmp.i.v EQ
bf [92]

:[83]
pushi.e 0
pop.v.i self.xnext
pushi.e 0
pop.v.i self.ynext
call.i right_h(argc=0)
conv.v.b
bf [85]

:[84]
pushi.e 132
pop.v.i self.xnext

:[85]
call.i left_h(argc=0)
conv.v.b
bf [87]

:[86]
pushi.e -132
pop.v.i self.xnext

:[87]
call.i down_h(argc=0)
conv.v.b
bf [89]

:[88]
pushi.e 132
pop.v.i self.ynext

:[89]
call.i up_h(argc=0)
conv.v.b
bf [91]

:[90]
pushi.e -132
pop.v.i self.ynext

:[91]
pushi.e 10
conv.i.v
push.v self.targety
push.v self.ynext
add.v.v
push.v self.targetx
push.v self.xnext
add.v.v
call.i move_towards_point(argc=3)
popz.v

:[92]
push.v self.alerttimer
pushi.e 1
add.i.v
pop.v.v self.alerttimer
push.v self.alerttimer
pushi.e 20
cmp.i.v GTE
bf [94]

:[93]
push.v self.speed
push.d 0.75
mul.d.v
pop.v.v self.speed

:[94]
push.v self.alerttimer
pushi.e 25
cmp.i.v GTE
bf [96]

:[95]
pushi.e 0
pop.v.i self.speed

:[96]
push.v self.alerttimer
pushi.e 27
cmp.i.v GTE
bf [98]

:[97]
pushi.e 0
pop.v.i self.alerttimer

:[98]
push.v self.chasetype
pushi.e 3
cmp.i.v EQ
bf [104]

:[99]
push.v self.speed
pushi.e 2
cmp.i.v LT
bf [101]

:[100]
pushi.e 2
pop.v.i self.speed

:[101]
push.v self.speed
pushi.e 4
cmp.i.v LT
bf [103]

:[102]
push.v self.speed
push.d 0.5
add.d.v
pop.v.v self.speed

:[103]
push.v self.speed
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[104]
push.v self.chasetype
pushi.e 4
cmp.i.v EQ
bf [110]

:[105]
push.v self.speed
pushi.e 6
cmp.i.v LT
bf [107]

:[106]
pushi.e 6
pop.v.i self.speed

:[107]
push.v self.speed
pushi.e 14
cmp.i.v LT
bf [109]

:[108]
push.v self.speed
push.d 0.5
add.d.v
pop.v.v self.speed

:[109]
push.v self.speed
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[110]
push.v self.facetimer
pushi.e 1
add.i.v
pop.v.v self.facetimer
push.v self.facetimer
pushi.e 10
cmp.i.v GTE
bf [121]

:[111]
push.v self.hspeed
push.d -0.2
cmp.d.v LTE
bf [113]

:[112]
push.v self.facing
pushi.e 1
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
bf [116]

:[115]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.facetimer

:[116]
push.v self.hspeed
push.d 0.2
cmp.d.v GTE
bf [118]

:[117]
push.v self.facing
pushi.e 0
cmp.i.v EQ
b [119]

:[118]
push.e 0

:[119]
bf [121]

:[120]
pushi.e 1
pop.v.i self.facing
pushi.e 0
pop.v.i self.facetimer

:[121]
push.v self.cancelwalk
pushi.e 0
cmp.i.v EQ
bf [end]

:[122]
push.v self.walk_index
push.v self.speed
pushi.e 20
conv.i.d
div.d.v
add.v.v
pop.v.v self.walk_index
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [end]

:[123]
pushi.e 0
pop.v.i self.walk_index

:[end]