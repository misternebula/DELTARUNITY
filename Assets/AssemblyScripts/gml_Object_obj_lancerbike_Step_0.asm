.localvar 0 arguments

:[0]
push.v self.lcon
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.x
pop.v.v self.orx
push.v self.y
pop.v.v self.ory
pushi.e 0
pop.v.i self.ang
pushi.e 0
pop.v.i self.ltimer
pushi.e 0
pop.v.i self.shrinktimer
push.d 1.5
pop.v.d self.lcon

:[2]
push.v self.lcon
push.d 1.5
cmp.d.v EQ
bf [5]

:[3]
push.v self.ltimer
pushi.e 1
add.i.v
pop.v.v self.ltimer
push.v self.ltimer
pushi.e 10
cmp.i.v GTE
bf [5]

:[4]
pushi.e 0
pop.v.i self.ltimer
pushi.e 2
pop.v.i self.lcon
pushi.e 78
conv.i.v
call.i snd_play(argc=1)
popz.v

:[5]
push.v self.lcon
pushi.e 6
cmp.i.v GTE
bf [7]

:[6]
push.v self.lcon
pushi.e 10
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [16]

:[9]
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 10
cmp.i.v GTE
bf [16]

:[10]
push.v self.image_angle
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xoff
push.v self.image_angle
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yoff
pushi.e 19
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 210
conv.i.v
push.v self.y
push.v self.yoff
sub.v.v
push.v self.x
push.v self.xoff
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.bullet
push.v self.bullet
conv.v.i
pushenv [15]

:[11]
push.v 201.target
pop.v.v self.target
push.v 201.damage
pop.v.v self.damage
push.v self.target
pushi.e 0
cmp.i.v EQ
bf [14]

:[12]
pushi.e -5
pushi.e 1
push.v [array]global.hp
pushi.e -5
pushi.e 1
push.v [array]global.maxhp
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [14]

:[13]
pushi.e -5
pushi.e 1
push.v [array]global.hp
pushi.e 3
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.damage

:[14]
pushi.e 0
pop.v.i self.timepoints
pushi.e 679
pop.v.i self.sprite_index
pushi.e 4
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pop.v.v self.image_angle
push.d -0.4
pop.v.d self.friction

:[15]
popenv [11]
push.v self.depth
pushi.e 1
add.i.v
push.v self.bullet
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.btimer

:[16]
push.v self.lcon
pushi.e 2
cmp.i.v EQ
bf [26]

:[17]
push.v self.ltimer
pushi.e 1
add.i.v
pop.v.v self.ltimer
push.v self.shrinktimer
pushi.e 1
add.i.v
pop.v.v self.shrinktimer
push.v self.ltimer
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
pop.v.v self.hspeed
pushi.e 2
push.v self.ltimer
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
sub.v.i
pop.v.v self.image_yscale
push.v self.shrinktimer
pushi.e 4
cmp.i.v GT
bf [19]

:[18]
pushi.e 2
push.v self.ltimer
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
pushi.e 8
conv.i.d
push.v self.shrinktimer
div.v.d
mul.v.v
sub.v.i
pop.v.v self.image_yscale

:[19]
push.v self.ltimer
pushi.e 7
cmp.i.v GT
bf [21]

:[20]
push.v self.image_angle
push.v self.ltimer
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pushi.e 4
mul.i.v
sub.v.v
pop.v.v self.image_angle
push.v self.image_angle
neg.v
pop.v.v self.ang

:[21]
push.v self.ltimer
pushi.e 4
cmp.i.v GT
bf [23]

:[22]
push.v self.ltimer
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.d 0.06
cmp.d.v LTE
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 5
pop.v.i self.lcon
pushi.e 2
pop.v.i self.image_yscale
pushi.e 180
pop.v.i self.direction
pushi.e 4
pop.v.i self.speed

:[26]
push.v self.lcon
pushi.e 5
cmp.i.v EQ
bf [33]

:[27]
push.v self.speed
pushi.e 16
cmp.i.v LT
bf [29]

:[28]
push.v self.speed
pushi.e 2
add.i.v
pop.v.v self.speed

:[29]
push.v self.ang
pushi.e 45
cmp.i.v LT
bf [31]

:[30]
push.v self.ang
pushi.e 4
add.i.v
pop.v.v self.ang

:[31]
push.v self.ang
neg.v
pop.v.v self.image_angle
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 80
add.i.v
cmp.v.v LT
bf [33]

:[32]
pushi.e 6
pop.v.i self.lcon

:[33]
push.v self.lcon
pushi.e 6
cmp.i.v EQ
bf [38]

:[34]
push.v self.ang
pushi.e 135
cmp.i.v LT
bf [36]

:[35]
push.v self.ang
pushi.e 10
add.i.v
pop.v.v self.ang

:[36]
push.v self.ang
neg.v
pop.v.v self.image_angle
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 5
add.i.v
cmp.v.v LTE
bf [38]

:[37]
pushi.e 7
pop.v.i self.lcon
pushi.e 90
pop.v.i self.direction

:[38]
push.v self.lcon
pushi.e 7
cmp.i.v EQ
bf [48]

:[39]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 80
add.i.v
cmp.v.v LT
bf [45]

:[40]
push.v self.ang
pushi.e 225
cmp.i.v LT
bf [42]

:[41]
push.v self.ang
pushi.e 10
add.i.v
pop.v.v self.ang

:[42]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 5
add.i.v
cmp.v.v LTE
bf [44]

:[43]
pushi.e 0
pop.v.i self.direction
pushi.e 8
pop.v.i self.lcon

:[44]
b [47]

:[45]
push.v self.ang
pushi.e 135
cmp.i.v LT
bf [47]

:[46]
push.v self.ang
pushi.e 10
add.i.v
pop.v.v self.ang

:[47]
push.v self.ang
neg.v
pop.v.v self.image_angle

:[48]
push.v self.lcon
pushi.e 8
cmp.i.v EQ
bf [58]

:[49]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 540
add.i.v
cmp.v.v GTE
bf [55]

:[50]
push.v self.ang
pushi.e 315
cmp.i.v LT
bf [52]

:[51]
push.v self.ang
pushi.e 10
add.i.v
pop.v.v self.ang

:[52]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 630
add.i.v
cmp.v.v GTE
bf [54]

:[53]
pushi.e 270
pop.v.i self.direction
pushi.e 9
pop.v.i self.lcon

:[54]
b [57]

:[55]
push.v self.ang
pushi.e 225
cmp.i.v LT
bf [57]

:[56]
push.v self.ang
pushi.e 10
add.i.v
pop.v.v self.ang

:[57]
push.v self.ang
neg.v
pop.v.v self.image_angle

:[58]
push.v self.lcon
pushi.e 9
cmp.i.v EQ
bf [68]

:[59]
push.v self.y
push.v self.ory
pushi.e 70
sub.i.v
cmp.v.v GT
bf [65]

:[60]
push.v self.ang
pushi.e 360
cmp.i.v LT
bf [62]

:[61]
push.v self.ang
pushi.e 10
add.i.v
pop.v.v self.ang

:[62]
push.v self.y
push.v self.ory
pushi.e 5
sub.i.v
cmp.v.v GTE
bf [64]

:[63]
push.v self.ory
pop.v.v self.y
pushi.e 180
pop.v.i self.direction
pushi.e 10
pop.v.i self.lcon

:[64]
b [67]

:[65]
push.v self.ang
pushi.e 315
cmp.i.v LT
bf [67]

:[66]
push.v self.ang
pushi.e 10
add.i.v
pop.v.v self.ang

:[67]
push.v self.ang
neg.v
pop.v.v self.image_angle

:[68]
push.v self.lcon
pushi.e 10
cmp.i.v EQ
bf [71]

:[69]
pushi.e 0
pop.v.i self.ang
pushi.e 0
pop.v.i self.image_angle
push.v self.x
push.v self.orx
cmp.v.v LTE
bf [71]

:[70]
pushi.e 0
pop.v.i self.speed
push.v self.orx
pop.v.v self.x
pushi.e 11
pop.v.i self.lcon
pushi.e 0
pop.v.i self.ltimer

:[71]
push.v self.lcon
pushi.e 11
cmp.i.v EQ
bf [78]

:[72]
pushi.e 429
pop.v.i self.sprite_index
push.v self.ltimer
pushi.e 1
add.i.v
pop.v.v self.ltimer
push.v self.ltimer
pushi.e 25
cmp.i.v GTE
bf [76]

:[73]
pushi.e 210
pushenv [75]

:[74]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha

:[75]
popenv [74]
pushi.e 1
pop.v.i self.image_alpha

:[76]
push.v self.ltimer
pushi.e 30
cmp.i.v GTE
bf [78]

:[77]
pushi.e 0
pop.v.i self.lcon
pushi.e 1
pop.v.i self.endcon

:[78]
push.v self.racecon
pushi.e 1
cmp.i.v EQ
bf [84]

:[79]
pushi.e 0
pop.v.i self.sy
pushi.e 0
pop.v.i self.s_moveup
pushi.e 38
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [81]

:[80]
push.v 38.s
pop.v.v self.s
push.v self.s
conv.v.i
push.v [stacktop]self.y
pop.v.v self.sy
pushi.e 1
pop.v.i self.s_moveup
b [83]

:[81]
pushi.e 281
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [83]

:[82]
pushi.e 281
pop.v.i self.s
push.v self.s
conv.v.i
push.v [stacktop]self.y
pop.v.v self.sy
pushi.e 1
pop.v.i self.s_moveup

:[83]
push.v self.x
pop.v.v self.orx
push.v self.y
pop.v.v self.ory
pushi.e 0
pop.v.i self.ang
pushi.e 2
pop.v.i self.racecon
pushi.e -14
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.i
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
pushi.e 25
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.maxr

:[84]
push.v self.racecon
pushi.e 2
cmp.i.v EQ
bf [94]

:[85]
push.v self.s_moveup
pushi.e 1
cmp.i.v EQ
bf [88]

:[86]
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e -20
cmp.i.v GT
bf [88]

:[87]
push.v self.s
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.y

:[88]
push.v self.y
push.v self.topy
pushi.e 10
add.i.v
cmp.v.v LT
bf [90]

:[89]
pushi.e 12
pop.v.i self.vspeed

:[90]
push.v self.y
push.v self.bottomy
pushi.e 10
sub.i.v
cmp.v.v GT
bf [92]

:[91]
pushi.e -12
pop.v.i self.vspeed

:[92]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
push.v self.maxr
cmp.v.v GT
bf [94]

:[93]
pushi.e 0
pop.v.i self.vspeed
pushi.e 3
pop.v.i self.racecon
pushi.e 0
pop.v.i self.rtimer

:[94]
push.v self.racecon
pushi.e 3
cmp.i.v EQ
bf [104]

:[95]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 5
cmp.i.v EQ
bt [97]

:[96]
push.v self.rtimer
pushi.e 10
cmp.i.v EQ
b [98]

:[97]
push.e 1

:[98]
bf [102]

:[99]
pushi.e 98
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 184
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 60
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.honkimg
push.v self.honkimg
conv.v.i
pushenv [101]

:[100]
pushi.e 430
pop.v.i self.sprite_index

:[101]
popenv [100]

:[102]
push.v self.rtimer
pushi.e 25
cmp.i.v GTE
bf [104]

:[103]
pushi.e 109
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 4
pop.v.i self.racecon
pushi.e -20
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.rtimer
pushi.e 0
pop.v.i self.ang

:[104]
push.v self.racecon
pushi.e 4
cmp.i.v EQ
bf [112]

:[105]
push.v self.s_moveup
pushi.e 1
cmp.i.v EQ
bf [108]

:[106]
push.v self.s
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 10
add.i.v
pop.i.v [stacktop]self.y
push.v self.s
conv.v.i
push.v [stacktop]self.y
push.v self.sy
cmp.v.v GTE
bf [108]

:[107]
push.v self.sy
push.v self.s
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 0
pop.v.i self.s_moveup

:[108]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.ang
push.v self.rtimer
pushi.e 2
mul.i.v
pushi.e 4
add.i.v
add.v.v
pop.v.v self.ang
push.v self.ang
pushi.e 50
cmp.i.v GT
bf [110]

:[109]
pushi.e 50
pop.v.i self.ang

:[110]
push.v self.ang
neg.v
pop.v.v self.image_angle
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
sub.i.v
cmp.v.v LTE
bf [112]

:[111]
pushi.e 0
pop.v.i self.ang
pushi.e 0
pop.v.i self.image_angle
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 740
add.i.v
pop.v.v self.x
push.v self.ory
pop.v.v self.y
pushi.e -12
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.racecon

:[112]
push.v self.racecon
pushi.e 5
cmp.i.v EQ
bf [115]

:[113]
push.v self.x
push.v self.orx
pushi.e 5
add.i.v
cmp.v.v LTE
bf [115]

:[114]
pushi.e 0
pop.v.i self.hspeed
push.v self.orx
pop.v.v self.x
pushi.e 0
pop.v.i self.racecon
pushi.e 1
pop.v.i self.endcon

:[115]
push.v self.endcon
pushi.e 1
cmp.i.v EQ
bf [124]

:[116]
pushi.e 2
pop.v.i global.turntimer
pushi.e 278
pushenv [121]

:[117]
pushi.e 1
pop.v.i self.visible
push.v self.turns
pushi.e 4
cmp.i.v GTE
bf [121]

:[118]
pushi.e 1
pop.v.i self.con
pushi.e 187
pushenv [120]

:[119]
pushi.e 1
pop.v.i self.noreturn

:[120]
popenv [119]

:[121]
popenv [117]
pushi.e 282
pushenv [123]

:[122]
pushi.e 1
pop.v.i self.visible

:[123]
popenv [122]
call.i instance_destroy(argc=0)
popz.v

:[124]
pushi.e 278
pushenv [129]

:[125]
push.v self.compliment
pushi.e 3
cmp.i.v GTE
bf [129]

:[126]
pushi.e 304
pushenv [128]

:[127]
pushi.e 1
pop.v.i self.spec

:[128]
popenv [127]

:[129]
popenv [125]

:[end]