.localvar 0 arguments

:[0]
pushi.e 326
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[1]
push.v self.loc_check
pushi.e 0
cmp.i.v EQ
bf [6]

:[2]
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [5]

:[3]
push.v 326.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [5]

:[4]
pushi.e 2200
pop.v.i self.x

:[5]
pushi.e 1
pop.v.i self.loc_check

:[6]
pushi.e 5
pop.v.i self.i

:[7]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.char_xcheck
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.char_xcheck
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.char_ycheck
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.char_ycheck
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [7]

:[9]
push.v 326.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.char_xcheck
push.v 326.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.char_ycheck
push.v 326.x
pushi.e -1
pushi.e 1
push.v [array]self.char_xcheck
sub.v.v
push.v 326.x
pushi.e -1
pushi.e 2
push.v [array]self.char_xcheck
sub.v.v
add.v.v
push.v 326.x
pushi.e -1
pushi.e 3
push.v [array]self.char_xcheck
sub.v.v
add.v.v
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.xcheck_average
push.v self.xcheck_average
pushi.e 2
cmp.i.v GTE
bf [11]

:[10]
push.v self.x
push.v 326.x
cmp.v.v GTE
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 0
pop.v.i self.xcheck_average

:[14]
push.v self.xcheck_average
pushi.e -2
cmp.i.v LTE
bf [16]

:[15]
push.v self.x
push.v 326.x
cmp.v.v LTE
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 0
pop.v.i self.xcheck_average

:[19]
push.v 326.y
pushi.e -1
pushi.e 1
push.v [array]self.char_ycheck
sub.v.v
push.v 326.y
pushi.e -1
pushi.e 2
push.v [array]self.char_ycheck
sub.v.v
add.v.v
push.v 326.y
pushi.e -1
pushi.e 3
push.v [array]self.char_ycheck
sub.v.v
add.v.v
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.ycheck_average

:[20]
pushi.e 8
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [23]

:[21]
push.v self.beatcon
push.i 89898
cmp.i.v EQ
bf [23]

:[22]
call.i scr_debug(argc=0)
conv.v.b
b [24]

:[23]
push.e 0

:[24]
bf [32]

:[25]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pop.v.i self.beatcon
pushi.e 0
pop.v.i self.beattimer
pushi.e 326
pushenv [27]

:[26]
pushi.e 0
pop.v.i self.battlemode

:[27]
popenv [26]
pushi.e 170
conv.i.v
push.v self.y
pushi.e 74
sub.i.v
push.v self.x
pushi.e 92
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.dead
push.v self.dead
conv.v.i
pushenv [29]

:[28]
pushi.e 1
pop.v.i self.walkcon
pushi.e 0
pop.v.i self.walktimer

:[29]
popenv [28]
push.v self.shadow
conv.v.i
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]

:[32]
push.v 326.x
push.v 326.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.targetx
push.v 326.y
push.v 326.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.targety
push.v self.mazemode
pushi.e 0
cmp.i.v EQ
bf [56]

:[33]
push.v self.targetx
push.v self.x
sub.v.v
call.i abs(argc=1)
pushi.e 200
cmp.i.v LTE
bf [35]

:[34]
push.v self.introcon
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [40]

:[37]
pushi.e 1
pop.v.i self.introcon
pushi.e 326
pushenv [39]

:[38]
pushi.e 1
pop.v.i self.battlemode

:[39]
popenv [38]

:[40]
push.v self.introcon
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 0
pop.v.i self.attackcon
pushi.e -2
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.introcon

:[42]
push.v self.introcon
pushi.e 2
cmp.i.v EQ
bf [45]

:[43]
pushi.e 0
pop.v.i self.attacktimer
push.v self.introtimer
pushi.e 1
add.i.v
pop.v.v self.introtimer
push.v self.introtimer
pushi.e 20
cmp.i.v GTE
bf [45]

:[44]
pushi.e 3
pop.v.i self.introcon
pushi.e 0
pop.v.i self.vspeed

:[45]
push.v self.introcon
pushi.e 3
cmp.i.v EQ
bf [56]

:[46]
push.d 0.5
pop.v.d self.friction
push.v self.targetx
push.v self.x
cmp.v.v LT
bf [51]

:[47]
push.v self.x
push.v self.targetx
pushi.e 150
add.i.v
cmp.v.v LTE
bf [49]

:[48]
push.v self.hspeed
pushi.e 1
add.i.v
pop.v.v self.hspeed

:[49]
push.v self.x
push.v self.targetx
pushi.e 250
add.i.v
cmp.v.v GTE
bf [51]

:[50]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed

:[51]
push.v self.targetx
push.v self.x
cmp.v.v GT
bf [56]

:[52]
push.v self.x
push.v self.targetx
pushi.e 150
sub.i.v
cmp.v.v GTE
bf [54]

:[53]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed

:[54]
push.v self.x
push.v self.targetx
pushi.e 250
sub.i.v
cmp.v.v LTE
bf [56]

:[55]
push.v self.hspeed
pushi.e 1
add.i.v
pop.v.v self.hspeed

:[56]
push.v self.mazemode
pushi.e 1
cmp.i.v EQ
bf [74]

:[57]
push.v self.targety
push.v self.y
cmp.v.v LTE
bf [59]

:[58]
push.v self.introcon
pushi.e 0
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [64]

:[61]
pushi.e 1
pop.v.i self.introcon
pushi.e 326
pushenv [63]

:[62]
pushi.e 1
pop.v.i self.battlemode

:[63]
popenv [62]

:[64]
push.v self.introcon
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
pushi.e 0
pop.v.i self.attackcon
pushi.e -8
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.introcon

:[66]
push.v self.introcon
pushi.e 2
cmp.i.v EQ
bf [69]

:[67]
pushi.e 0
pop.v.i self.attacktimer
push.v self.introtimer
pushi.e 1
add.i.v
pop.v.v self.introtimer
push.v self.introtimer
pushi.e 5
cmp.i.v GTE
bf [69]

:[68]
pushi.e 3
pop.v.i self.introcon
pushi.e 0
pop.v.i self.vspeed
pushi.e 36
pop.v.i self.attacktimer

:[69]
push.v self.introcon
pushi.e 3
cmp.i.v EQ
bf [74]

:[70]
push.d 0.7
pop.v.d self.friction
push.v self.targety
push.v self.y
pushi.e 20
sub.i.v
cmp.v.v LT
bf [72]

:[71]
push.v self.vspeed
push.d 1.5
sub.d.v
pop.v.v self.vspeed

:[72]
push.v self.targety
push.v self.y
pushi.e 20
add.i.v
cmp.v.v GT
bf [74]

:[73]
push.v self.vspeed
push.d 1.5
add.d.v
pop.v.v self.vspeed

:[74]
push.v self.beatcon
pushi.e 0
cmp.i.v EQ
bf [101]

:[75]
push.v self.attackcon
pushi.e 0
cmp.i.v GTE
bf [78]

:[76]
push.v 326.battlemode
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer

:[78]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [81]

:[79]
push.v self.wingtimer
pushi.e 1
add.i.v
pop.v.v self.wingtimer
push.v self.wingtimer
pushi.e 0
cmp.i.v GTE
bf [81]

:[80]
pushi.e 25
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -16
pop.v.i self.wingtimer

:[81]
push.v self.attacktimer
pushi.e 42
cmp.i.v GTE
bf [83]

:[82]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
b [84]

:[83]
push.e 0

:[84]
bf [91]

:[85]
pushi.e 0
pop.v.i self.wingtimer
pushi.e 6
pop.v.i self.shakefactor
pushi.e 1
pop.v.i self.attackcon
push.v self.shot
pushi.e 1
cmp.i.v EQ
bf [91]

:[86]
pushi.e 0
pop.v.i self.i

:[87]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [91]

:[88]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
conv.v.i
pushenv [90]

:[89]
call.i instance_destroy(argc=0)
popz.v

:[90]
popenv [89]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [87]

:[91]
push.v self.attacktimer
pushi.e 60
cmp.i.v GTE
bf [93]

:[92]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [98]

:[95]
pushi.e 24
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.attackcon
pushi.e 1
pop.v.i self.shot
pushi.e 0
pop.v.i self.i

:[96]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [98]

:[97]
pushi.e 182
conv.i.v
push.v self.y
pushi.e 42
add.i.v
push.v self.x
pushi.e 17
push.v self.xmake
mul.v.i
add.v.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.starbullet
pushi.e 611
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 15
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
conv.v.i
pop.v.i [stacktop]self.damage
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
conv.v.i
pop.v.i [stacktop]self.active
pushi.e 3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
conv.v.i
pop.v.i [stacktop]self.target
pushi.e 10
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
conv.v.i
pop.v.i [stacktop]self.speed
push.d -0.2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
conv.v.i
pop.v.d [stacktop]self.friction
push.v 326.y
push.v 326.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v 326.x
push.v self.xcheck_average
pushi.e 10
mul.i.v
add.v.v
push.v 326.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.y
pushi.e 42
add.i.v
push.v self.x
pushi.e 17
push.v self.xmake
mul.v.i
add.v.v
call.i point_direction(argc=4)
pushi.e 17
sub.i.v
pushi.e 17
push.v self.i
mul.v.i
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 1000
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.starbullet
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [96]

:[98]
push.v self.attacktimer
pushi.e 80
cmp.i.v GTE
bf [101]

:[99]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.wing_index
pushi.e 0
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer
push.v self.mazemode
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
pushi.e 38
pop.v.i self.attacktimer

:[101]
push.v self.shadow
call.i instance_exists(argc=1)
conv.v.b
bf [111]

:[102]
push.v self.attackcon
pushi.e -1
cmp.i.v EQ
bf [104]

:[103]
pushi.e 0
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.visible
b [105]

:[104]
pushi.e 1
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.visible

:[105]
push.v self.mazemode
pushi.e 1
cmp.i.v EQ
bf [107]

:[106]
pushi.e 0
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.visible

:[107]
push.v self.x
push.v self.shadow
conv.v.i
pop.v.v [stacktop]self.x
push.v self.shadowy
push.v self.shadow
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 616
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.wing_index
push.v self.shadow
conv.v.i
pop.v.v [stacktop]self.image_index
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
pushi.e 612
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.xmake
push.v self.shadow
conv.v.i
pop.v.v [stacktop]self.image_xscale

:[109]
push.v self.attackcon
pushi.e 2
cmp.i.v EQ
bf [111]

:[110]
pushi.e 612
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.xmake
push.v self.shadow
conv.v.i
pop.v.v [stacktop]self.image_xscale

:[111]
push.v self.beatcon
pushi.e 1
cmp.i.v EQ
bf [116]

:[112]
pushi.e 326
pushenv [114]

:[113]
pushi.e 0
pop.v.i self.battlemode

:[114]
popenv [113]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [116]

:[115]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.beattimer
pushi.e 2
pop.v.i self.beatcon

:[116]
push.v self.beatcon
pushi.e 2
cmp.i.v EQ
bf [end]

:[117]
push.v self.beattimer
pushi.e 1
add.i.v
pop.v.v self.beattimer
push.v self.dead
conv.v.i
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i __view_get(argc=2)
add.v.v
cmp.v.v GTE
bf [119]

:[118]
pushglb.v global.interact
pushi.e 0
cmp.i.v NEQ
b [120]

:[119]
push.e 0

:[120]
bf [end]

:[121]
push.v self.dead
conv.v.i
pushenv [123]

:[122]
call.i instance_destroy(argc=0)
popz.v

:[123]
popenv [122]
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.beatcon
call.i instance_destroy(argc=0)
popz.v

:[end]