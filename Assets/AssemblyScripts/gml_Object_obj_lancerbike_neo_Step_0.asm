.localvar 0 arguments

:[0]
push.v self.racecon
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.x
pop.v.v self.orx
push.v self.y
pop.v.v self.ory
pushi.e 0
pop.v.i self.ang
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.vdir
pushi.e 1
pop.v.i self.racecon
pushi.e 0
pop.v.i self.rtimer
pushi.e 281
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.visible

:[3]
popenv [2]
pushi.e 194
conv.i.v
push.v self.susiey
push.v self.susiex
call.i instance_create(argc=3)
pop.v.v self.s
push.v self.s
call.i scr_bullet_inherit(argc=1)
popz.v
pushi.e 0
push.v self.s
conv.v.i
pop.v.i [stacktop]self.wall_destroy
pushi.e 180
push.v self.s
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.s
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.s
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.s
conv.v.i
pop.v.i [stacktop]self.active
push.v self.depth
pushi.e 1
sub.i.v
push.v self.s
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.s
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.s
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.x
push.v self.s
conv.v.i
pop.v.v [stacktop]self.lx
push.v self.y
pushi.e 108
sub.i.v
push.v self.s
conv.v.i
pop.v.v [stacktop]self.ly
pushi.e 84
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.s
conv.v.i
pushenv [5]

:[4]
pushi.e -2
pop.v.i self.hspeed
push.v self.vspeed
pushi.e 7
sub.i.v
pop.v.v self.vspeed
pushi.e 1
pop.v.i self.gravity

:[5]
popenv [4]

:[6]
push.v self.racecon
pushi.e 1
cmp.i.v EQ
bf [15]

:[7]
pushi.e 0
pop.v.i self.siner
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 13
cmp.i.v EQ
bf [9]

:[8]
pushi.e 84
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i snd_play(argc=1)
popz.v

:[9]
push.v self.rtimer
pushi.e 13
cmp.i.v GTE
bf [11]

:[10]
push.v self.image_xscale
push.d 0.1
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.15
sub.d.v
pop.v.v self.image_yscale

:[11]
push.v self.rtimer
pushi.e 16
cmp.i.v EQ
bf [15]

:[12]
push.v self.s
conv.v.i
pushenv [14]

:[13]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.image_index

:[14]
popenv [13]
push.v self.s
conv.v.i
push.v [stacktop]self.x
push.v self.x
sub.v.v
pop.v.v self.sfitx
push.v self.s
conv.v.i
push.v [stacktop]self.y
push.v self.y
sub.v.v
pop.v.v self.sfity
pushi.e 1
pop.v.i self.s_tracking
pushi.e 0
pop.v.i self.ax_timer
pushi.e 0
pop.v.i self.s_timer
pushi.e 2
pop.v.i self.racecon
pushi.e 0
pop.v.i self.rtimer

:[15]
push.v self.s_attack
pushi.e 1
cmp.i.v EQ
bf [32]

:[16]
push.v self.ax_timer
pushi.e 1
add.i.v
pop.v.v self.ax_timer
push.v self.s_timer
pushi.e 1
add.i.v
pop.v.v self.s_timer
push.v self.s_timer
pushi.e 1
cmp.i.v EQ
bf [23]

:[17]
pushi.e 277
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 15
sub.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.axe
push.v self.axe
call.i scr_bullet_inherit(argc=1)
popz.v
push.v self.depth
pushi.e 2
add.i.v
push.v self.axe
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.axe
conv.v.i
pushenv [22]

:[18]
pushi.e -16
pop.v.i self.hspeed
push.v 305.y
push.v self.y
cmp.v.v GTE
bf [20]

:[19]
pushi.e -15
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.gravity_direction
pushi.e 2
pop.v.i self.vspeed
b [21]

:[20]
pushi.e 5
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.gravity_direction
pushi.e -2
pop.v.i self.vspeed

:[21]
push.d 0.5
pop.v.d self.gravity

:[22]
popenv [18]
push.v self.axe
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.d 0.3
push.v self.ax_timer
mul.v.d
add.v.v
pop.i.v [stacktop]self.hspeed
pushi.e 99
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 606
push.v self.s
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.s
conv.v.i
pop.v.i [stacktop]self.active
pushi.e 0
push.v self.s
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.5
push.v self.s
conv.v.i
pop.v.d [stacktop]self.image_speed

:[23]
push.v self.s_timer
pushi.e 4
cmp.i.v EQ
bf [25]

:[24]
pushi.e 0
push.v self.s
conv.v.i
pop.v.i [stacktop]self.active

:[25]
push.v self.s_timer
pushi.e 8
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
push.v self.s
conv.v.i
pop.v.i [stacktop]self.image_speed

:[27]
push.v self.s_timer
pushi.e 8
cmp.i.v EQ
bf [29]

:[28]
push.v self.ax_timer
pushi.e 60
cmp.i.v LTE
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 0
pop.v.i self.s_timer

:[32]
push.v self.racecon
pushi.e 2
cmp.i.v EQ
bf [57]

:[33]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 1
cmp.i.v GTE
bf [48]

:[34]
push.v self.y
push.v self.ory
pushi.e 120
sub.i.v
cmp.v.v LTE
bt [36]

:[35]
push.v self.y
push.v self.ory
pushi.e 120
add.i.v
cmp.v.v GTE
b [37]

:[36]
push.e 1

:[37]
bf [48]

:[38]
push.v self.y
push.v self.ory
pushi.e 120
sub.i.v
cmp.v.v LTE
bf [40]

:[39]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[43]
push.v self.y
push.v self.ory
pushi.e 120
add.i.v
cmp.v.v GTE
bf [45]

:[44]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[48]
push.v self.rtimer
pushi.e 5
cmp.i.v EQ
bt [50]

:[49]
push.v self.rtimer
pushi.e 10
cmp.i.v EQ
b [51]

:[50]
push.e 1

:[51]
bf [55]

:[52]
pushi.e 0
pop.v.i self.vspeed
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
pushenv [54]

:[53]
pushi.e 430
pop.v.i self.sprite_index

:[54]
popenv [53]

:[55]
push.v self.rtimer
pushi.e 30
cmp.i.v EQ
bf [57]

:[56]
pushi.e 1
pop.v.i self.active
pushi.e 1
pop.v.i self.s_attack
pushi.e 3
pop.v.i self.racecon
pushi.e 0
pop.v.i self.rtimer
pushi.e 0
pop.v.i self.ang
pushi.e 109
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -10
pop.v.i self.hspeed
pushi.e -11
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.gravity

:[57]
push.v self.racecon
pushi.e 3
cmp.i.v EQ
bf [60]

:[58]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 40
sub.i.v
cmp.v.v LTE
bf [60]

:[59]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.s_attack
pushi.e 0
pop.v.i self.s_tracking
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
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
push.v self.susiex
pushi.e 200
add.i.v
push.v self.s
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -8
push.v self.s
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.susiey
push.v self.s
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 609
push.v self.s
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -6
pop.v.i self.hspeed
pushi.e 4
pop.v.i self.racecon

:[60]
push.v self.racecon
pushi.e 4
cmp.i.v EQ
bf [71]

:[61]
pushi.e 0
pop.v.i self.donecount
push.v self.s
conv.v.i
push.v [stacktop]self.x
push.v self.susiex
cmp.v.v LTE
bf [63]

:[62]
push.v self.donecount
pushi.e 1
add.i.v
pop.v.v self.donecount
pushi.e 0
push.v self.s
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.susiex
push.v self.s
conv.v.i
pop.v.v [stacktop]self.x

:[63]
push.v self.x
push.v self.orx
pushi.e 5
add.i.v
cmp.v.v LTE
bf [65]

:[64]
push.v self.donecount
pushi.e 1
add.i.v
pop.v.v self.donecount
pushi.e 0
pop.v.i self.hspeed
push.v self.orx
pop.v.v self.x

:[65]
push.v self.donecount
pushi.e 2
cmp.i.v GTE
bf [71]

:[66]
pushi.e 5
pop.v.i global.turntimer
pushi.e 281
pushenv [68]

:[67]
pushi.e 1
pop.v.i self.visible

:[68]
popenv [67]
pushi.e 282
pushenv [70]

:[69]
pushi.e 1
pop.v.i self.visible

:[70]
popenv [69]
pushi.e -1
pop.v.i self.racecon

:[71]
push.v self.s_tracking
pushi.e 1
cmp.i.v EQ
bf [end]

:[72]
push.v self.x
push.v self.sfitx
add.v.v
push.v self.s
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.sfity
add.v.v
push.v self.s
conv.v.i
pop.v.v [stacktop]self.y

:[end]