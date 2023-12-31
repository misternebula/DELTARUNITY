.localvar 0 arguments

:[0]
push.v self.leapmode
pushi.e 0
cmp.i.v EQ
bf [22]

:[1]
push.v self.jumpcon
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
push.v self.vspeed
pushi.e 0
cmp.i.v GTE
bf [5]

:[3]
push.v self.y
push.v 303.y
push.v 303.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
sub.v.v
cmp.v.v GTE
bf [5]

:[4]
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v 303.y
push.v 303.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.jumptimer
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.hspeed
pushi.e 546
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.jumpcon

:[5]
push.v self.jumpcon
pushi.e 3
cmp.i.v EQ
bf [9]

:[6]
push.v self.vspeed
pushi.e 0
cmp.i.v GTE
bf [9]

:[7]
push.v self.y
push.v self.floory
pushi.e 2
sub.i.v
cmp.v.v GTE
bf [9]

:[8]
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.floory
pop.v.v self.y
push.v self.xstart
pop.v.v self.x
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.hspeed
pushi.e 546
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.jumpcon

:[9]
push.v self.jumpcon
pushi.e 0
cmp.i.v EQ
bf [17]

:[10]
pushi.e 546
pop.v.i self.sprite_index
push.v self.jumptimer
pushi.e 1
add.i.v
pop.v.v self.jumptimer
pushi.e 20
pop.v.i self.jumpmax
push.v self.amt
pushi.e 1
cmp.i.v GTE
bf [12]

:[11]
pushi.e 10
pop.v.i self.jumpmax

:[12]
push.v self.jumptimer
push.v self.jumpmax
cmp.v.v GTE
bf [17]

:[13]
pushi.e 84
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.y
pop.v.v self.floory
pushi.e 0
pop.v.i self.jumptimer
pushi.e 1
pop.v.i self.jumpcon
push.v self.amt
pushi.e 1
add.i.v
pop.v.v self.amt
pushi.e 550
pop.v.i self.sprite_index
push.v 305.x
pushi.e 8
add.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.targetx
pushi.e -15
pop.v.i self.vspeed
push.v self.amt
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e -17
pop.v.i self.vspeed

:[15]
pushi.e 1
pop.v.i self.gravity
push.v self.targetx
push.v self.x
sub.v.v
pushi.e 28
conv.i.d
div.d.v
pop.v.v self.hspeed
push.v self.amt
pushi.e 4
cmp.i.v GTE
bf [17]

:[16]
pushi.e 0
pop.v.i self.active
pushi.e 3
pop.v.i self.jumpcon
push.v self.xstart
pop.v.v self.targetx
pushi.e 2
pop.v.i self.gravity
push.v self.targetx
push.v self.x
sub.v.v
pushi.e 16
conv.i.d
div.d.v
pop.v.v self.hspeed

:[17]
push.v self.jumpcon
pushi.e 4
cmp.i.v EQ
bf [22]

:[18]
push.v self.jumptimer
pushi.e 1
add.i.v
pop.v.v self.jumptimer
push.v self.jumptimer
pushi.e 10
cmp.i.v GTE
bf [22]

:[19]
pushi.e -1
pop.v.i global.turntimer
pushi.e 253
pushenv [21]

:[20]
pushi.e 1
pop.v.i self.visible

:[21]
popenv [20]
call.i instance_destroy(argc=0)
popz.v

:[22]
push.v self.leapmode
pushi.e 1
cmp.i.v EQ
bf [51]

:[23]
push.v self.jumpcon
pushi.e 7
cmp.i.v EQ
bf [32]

:[24]
push.v self.jumptimer
pushi.e 1
add.i.v
pop.v.v self.jumptimer
push.v self.jumptimer
pushi.e 10
cmp.i.v GTE
bf [28]

:[25]
pushi.e 210
pushenv [27]

:[26]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[27]
popenv [26]

:[28]
push.v self.jumptimer
pushi.e 20
cmp.i.v GTE
bf [32]

:[29]
pushi.e -1
pop.v.i global.turntimer
pushi.e 253
pushenv [31]

:[30]
pushi.e 1
pop.v.i self.visible

:[31]
popenv [30]
call.i instance_destroy(argc=0)
popz.v

:[32]
push.v self.jumpcon
pushi.e 6
cmp.i.v EQ
bf [35]

:[33]
push.v self.y
push.v self.floory
pushi.e 2
sub.i.v
cmp.v.v GTE
bf [35]

:[34]
push.v self.floory
pop.v.v self.y
push.v self.xstart
pop.v.v self.x
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.hspeed
pushi.e 546
pop.v.i self.sprite_index
pushi.e 7
pop.v.i self.jumpcon

:[35]
push.v self.jumpcon
pushi.e 0
cmp.i.v EQ
bf [39]

:[36]
pushi.e 546
pop.v.i self.sprite_index
push.v self.jumptimer
pushi.e 1
add.i.v
pop.v.v self.jumptimer
push.v self.jumptimer
pushi.e 20
cmp.i.v GTE
bf [39]

:[37]
push.v self.y
pop.v.v self.floory
pushi.e 0
pop.v.i self.jumptimer
pushi.e 1
pop.v.i self.jumpcon
pushi.e 550
pop.v.i self.sprite_index
push.v 305.x
pushi.e 8
add.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.targetx
push.v self.targetx
push.v self.x
sub.v.v
pushi.e 17
conv.i.d
div.d.v
pop.v.v self.hspeed
pushi.e -17
pop.v.i self.vspeed
pushi.e 84
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.gravity
push.v self.amt
pushi.e 1
add.i.v
pop.v.v self.amt
push.v self.amt
pushi.e 3
cmp.i.v GTE
bf [39]

:[38]
pushi.e 0
pop.v.i self.active
pushi.e 6
pop.v.i self.jumpcon
push.v self.xstart
pop.v.v self.targetx
pushi.e 2
pop.v.i self.gravity
push.v self.targetx
push.v self.x
sub.v.v
pushi.e 16
conv.i.d
div.d.v
pop.v.v self.hspeed

:[39]
push.v self.jumpcon
pushi.e 1
cmp.i.v EQ
bf [42]

:[40]
push.v self.vspeed
pushi.e 0
cmp.i.v GTE
bf [42]

:[41]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 2
pop.v.i self.jumpcon
pushi.e 71
conv.i.v
call.i snd_play(argc=1)
popz.v

:[42]
push.v self.jumpcon
pushi.e 2
cmp.i.v EQ
bf [45]

:[43]
push.d 0.25
pop.v.d self.image_speed
push.v self.jumptimer
pushi.e 1
add.i.v
pop.v.v self.jumptimer
push.v self.jumptimer
pushi.e 15
cmp.i.v GTE
bf [45]

:[44]
pushi.e 82
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 32
pop.v.i self.vspeed
pushi.e 3
pop.v.i self.jumpcon
pushi.e 0
pop.v.i self.jumptimer

:[45]
push.v self.jumpcon
pushi.e 3
cmp.i.v EQ
bf [51]

:[46]
call.i scr_afterimage(argc=0)
pop.v.v self.a
push.d 0.7
push.v self.a
conv.v.i
pop.v.d [stacktop]self.image_alpha
push.v self.y
push.v 303.y
push.v 303.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
sub.v.v
cmp.v.v GTE
bf [51]

:[47]
pushi.e 6
pop.v.i self.shrapmax
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[48]
push.v self.i
push.v self.shrapmax
cmp.v.v LT
bf [50]

:[49]
pushi.e 210
conv.i.v
push.v 303.y
push.v 303.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 15
sub.i.v
push.v self.i
pushi.e 5
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.shrap
push.d 1.5
push.v self.shrap
conv.v.i
pop.v.d [stacktop]self.image_xscale
push.d 1.5
push.v self.shrap
conv.v.i
pop.v.d [stacktop]self.image_yscale
pushi.e 130
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e 70
push.v self.i
push.v self.shrapmax
pushi.e 1
sub.i.v
div.v.v
mul.v.i
sub.v.v
push.v self.shrap
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 553
push.v self.shrap
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 6
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.shrap
conv.v.i
pop.v.v [stacktop]self.speed
push.d 0.25
push.v self.shrap
conv.v.i
pop.v.d [stacktop]self.gravity
push.v self.target
push.v self.shrap
conv.v.i
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.shrap
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [48]

:[50]
push.v 303.y
push.v 303.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.hspeed
pushi.e 546
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.jumpcon

:[51]
push.v self.leapmode
pushi.e 2
cmp.i.v EQ
bf [85]

:[52]
push.v self.jumpcon
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
pushi.e 552
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.jumpcon
pushi.e 0
pop.v.i self.magamt

:[54]
push.v self.jumpcon
pushi.e 1
cmp.i.v EQ
bf [59]

:[55]
push.v self.image_index
pushi.e 2
cmp.i.v EQ
bf [57]

:[56]
pushi.e 82
conv.i.v
call.i snd_play(argc=1)
popz.v

:[57]
push.v self.image_index
pushi.e 4
cmp.i.v GTE
bf [59]

:[58]
pushi.e 4
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e -4
pop.v.i self.hspeed
push.d -0.12
pop.v.d self.gravity
pushi.e 2
pop.v.i self.jumpcon
pushi.e 0
pop.v.i self.siner

:[59]
push.v self.jumpcon
pushi.e 2
cmp.i.v EQ
bf [73]

:[60]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.v.v self.y
push.v self.s_timer
pushi.e 1
add.i.v
pop.v.v self.s_timer
push.v self.s_timer
pushi.e 20
cmp.i.v EQ
bf [62]

:[61]
pushi.e 70
conv.i.v
call.i snd_play(argc=1)
popz.v

:[62]
push.v self.s_timer
pushi.e 24
cmp.i.v GTE
bf [71]

:[63]
pushi.e 210
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 50
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bul
pushi.e 553
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 3
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 1.5
push.v self.bul
conv.v.i
pop.v.d [stacktop]self.image_xscale
push.d 1.5
push.v self.bul
conv.v.i
pop.v.d [stacktop]self.image_yscale
push.v self.depth
pushi.e 1
add.i.v
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 135
pushi.e 180
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.gravity_direction
push.d 0.06
push.v self.bul
conv.v.i
pop.v.d [stacktop]self.gravity
push.v self.target
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.magamt
pushi.e 6
cmp.i.v EQ
bt [65]

:[64]
push.v self.magamt
pushi.e 12
cmp.i.v EQ
b [66]

:[65]
push.e 1

:[66]
bf [70]

:[67]
push.v self.bul
conv.v.i
pushenv [69]

:[68]
pushi.e 0
pop.v.i self.gravity
pushi.e 3
conv.i.v
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[69]
popenv [68]

:[70]
pushi.e 21
pop.v.i self.s_timer
push.v self.magamt
pushi.e 1
add.i.v
pop.v.v self.magamt

:[71]
push.v self.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 200
sub.i.v
cmp.v.v LT
bf [73]

:[72]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
push.v self.ystart
pushi.e 100
sub.i.v
pop.v.v self.y
push.v self.xstart
pushi.e 300
add.i.v
pop.v.v self.x
pushi.e -30
pop.v.i self.hspeed
pushi.e 10
pop.v.i self.vspeed
pushi.e 3
pop.v.i self.jumpcon

:[73]
push.v self.jumpcon
pushi.e 3
cmp.i.v EQ
bf [76]

:[74]
pushi.e 0
pop.v.i self.magamt
push.v self.jumptimer
pushi.e 1
add.i.v
pop.v.v self.jumptimer
push.v self.jumptimer
pushi.e 10
cmp.i.v GTE
bf [76]

:[75]
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.amt
pushi.e 1
add.i.v
pop.v.v self.amt
pushi.e 0
pop.v.i self.s_timer
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.jumpcon
pushi.e 4
pop.v.i self.jumpcon
pushi.e 0
pop.v.i self.jumptimer
pushi.e 547
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[76]
push.v self.jumpcon
pushi.e 4
cmp.i.v EQ
bf [85]

:[77]
push.v self.jumptimer
pushi.e 1
add.i.v
pop.v.v self.jumptimer
push.v self.jumptimer
pushi.e 20
cmp.i.v GTE
bf [81]

:[78]
pushi.e 210
pushenv [80]

:[79]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[80]
popenv [79]

:[81]
push.v self.jumptimer
pushi.e 30
cmp.i.v GTE
bf [85]

:[82]
pushi.e -1
pop.v.i global.turntimer
call.i instance_destroy(argc=0)
popz.v
pushi.e 253
pushenv [84]

:[83]
pushi.e 1
pop.v.i self.visible

:[84]
popenv [83]

:[85]
push.v self.leapmode
pushi.e 3
cmp.i.v EQ
bf [112]

:[86]
pushi.e 210
pushenv [88]

:[87]
push.v self.image_xscale
push.d 0.01
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.01
add.d.v
pop.v.v self.image_yscale

:[88]
popenv [87]
push.v self.jumpcon
pushi.e 0
cmp.i.v EQ
bf [90]

:[89]
pushi.e 551
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.jumpcon

:[90]
push.v self.jumpcon
pushi.e 1
cmp.i.v EQ
bf [97]

:[91]
push.v self.image_index
pushi.e 3
cmp.i.v EQ
bf [95]

:[92]
pushi.e 79
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 70
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[93]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [95]

:[94]
pushi.e 210
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.x
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.bul
pushi.e 553
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.bul
conv.v.i
push.v [stacktop]self.y
push.v self.bul
conv.v.i
push.v [stacktop]self.x
call.i point_direction(argc=4)
pushi.e 10
push.v self.i
mul.v.i
sub.v.v
push.v self.i
pushi.e 20
mul.i.v
call.i random(argc=1)
add.v.v
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.direction
push.d 3.5
push.d 1.8
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.speed
push.v self.target
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [93]

:[95]
push.v self.image_index
pushi.e 5
cmp.i.v GTE
bf [97]

:[96]
pushi.e 5
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.jumpcon

:[97]
push.v self.jumpcon
pushi.e 2
cmp.i.v EQ
bf [103]

:[98]
push.v self.jumptimer
pushi.e 1
add.i.v
pop.v.v self.jumptimer
push.v self.jumptimer
pushi.e 10
cmp.i.v GTE
bf [100]

:[99]
pushi.e 547
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[100]
push.v self.jumptimer
pushi.e 20
cmp.i.v GTE
bf [103]

:[101]
pushi.e 0
pop.v.i self.jumptimer
pushi.e 0
pop.v.i self.jumpcon
push.v self.amt
pushi.e 1
add.i.v
pop.v.v self.amt
push.v self.amt
pushi.e 4
cmp.i.v GTE
bf [103]

:[102]
pushi.e 3
pop.v.i self.jumpcon
pushi.e 0
pop.v.i self.jumptimer

:[103]
push.v self.jumpcon
pushi.e 3
cmp.i.v EQ
bf [112]

:[104]
push.v self.jumptimer
pushi.e 1
add.i.v
pop.v.v self.jumptimer
push.v self.jumptimer
pushi.e 20
cmp.i.v GTE
bf [108]

:[105]
pushi.e 210
pushenv [107]

:[106]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
pushi.e 0
pop.v.i self.active

:[107]
popenv [106]

:[108]
push.v self.jumptimer
pushi.e 30
cmp.i.v GTE
bf [112]

:[109]
pushi.e -1
pop.v.i global.turntimer
call.i instance_destroy(argc=0)
popz.v
pushi.e 253
pushenv [111]

:[110]
pushi.e 1
pop.v.i self.visible

:[111]
popenv [110]

:[112]
push.v self.leapmode
pushi.e 4
cmp.i.v EQ
bf [128]

:[113]
push.v self.jumpcon
pushi.e 1
cmp.i.v EQ
bf [116]

:[114]
push.v self.y
push.v self.floory
pushi.e 2
sub.i.v
cmp.v.v GTE
bf [116]

:[115]
push.v self.floory
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.hspeed
pushi.e 546
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.jumpcon
pushi.e 10
pop.v.i self.jumptimer

:[116]
push.v self.jumpcon
pushi.e 3
cmp.i.v EQ
bf [119]

:[117]
push.v self.y
push.v self.floory
pushi.e 2
sub.i.v
cmp.v.v GTE
bf [119]

:[118]
push.v self.floory
pop.v.v self.y
push.v self.xstart
pop.v.v self.x
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.hspeed
pushi.e 546
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.jumpcon

:[119]
push.v self.jumpcon
pushi.e 0
cmp.i.v EQ
bf [123]

:[120]
push.v self.jumptimer
pushi.e 1
add.i.v
pop.v.v self.jumptimer
push.v self.jumptimer
pushi.e 16
cmp.i.v GTE
bf [123]

:[121]
push.v self.y
pop.v.v self.floory
pushi.e 0
pop.v.i self.jumptimer
pushi.e 1
pop.v.i self.jumpcon
pushi.e 550
pop.v.i self.sprite_index
push.v 305.x
pushi.e 8
add.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.targetx
pushi.e -12
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.gravity
push.v self.targetx
push.v self.x
sub.v.v
pushi.e 24
conv.i.d
div.d.v
pop.v.v self.hspeed
push.v self.amt
pushi.e 1
add.i.v
pop.v.v self.amt
push.v self.amt
pushi.e 4
cmp.i.v GTE
bf [123]

:[122]
pushi.e 0
pop.v.i self.active
pushi.e 3
pop.v.i self.jumpcon
pushi.e 0
pop.v.i self.jumptimer
push.v self.xstart
pop.v.v self.targetx
pushi.e 2
pop.v.i self.gravity
push.v self.targetx
push.v self.x
sub.v.v
pushi.e 12
conv.i.d
div.d.v
pop.v.v self.hspeed

:[123]
push.v self.jumpcon
pushi.e 4
cmp.i.v EQ
bf [128]

:[124]
push.v self.jumptimer
pushi.e 1
add.i.v
pop.v.v self.jumptimer
push.v self.jumptimer
pushi.e 10
cmp.i.v GTE
bf [128]

:[125]
pushi.e -1
pop.v.i global.turntimer
pushi.e 253
pushenv [127]

:[126]
pushi.e 1
pop.v.i self.visible

:[127]
popenv [126]
call.i instance_destroy(argc=0)
popz.v

:[128]
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [end]

:[129]
push.v self.grazetimer
pushi.e 1
add.i.v
pop.v.v self.grazetimer
push.v self.grazetimer
pushi.e 10
cmp.i.v GTE
bf [end]

:[130]
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.grazed

:[end]