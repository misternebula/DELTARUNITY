.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.d 0.25
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.con
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 5
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [8]

:[7]
push.d 0.334
pop.v.d self.image_speed
pushi.e 7
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 9
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
pushi.e 0
pop.v.i self.shaketimer

:[10]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [12]

:[11]
pushi.e 11
pop.v.i self.con
push.d 0.5
pop.v.d self.image_speed
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [14]

:[13]
push.v self.shaketimer
push.d 0.05
add.d.v
pop.v.v self.shaketimer
push.v self.remx
push.v self.shaketimer
pushi.e 2
conv.i.d
div.d.v
call.i random(argc=1)
add.v.v
push.v self.shaketimer
pushi.e 2
conv.i.d
div.d.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.remy
push.v self.shaketimer
pushi.e 4
conv.i.d
div.d.v
call.i random(argc=1)
add.v.v
push.v self.shaketimer
pushi.e 4
conv.i.d
div.d.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[14]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [16]

:[15]
push.v self.remx
pushi.e 10
add.i.v
pop.v.v self.x
push.v self.remy
pushi.e 20
add.i.v
pop.v.v self.y
pushi.e 878
conv.i.v
push.v self.remy
push.v self.remx
call.i scr_marker(argc=3)
pop.v.v self.underbed
push.i 100000
push.v self.underbed
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 886
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_index
pushi.e 81
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e -6
pop.v.i self.hspeed
push.d 0.3
pop.v.d self.friction
pushi.e 13
pop.v.i self.con
pushi.e 7
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
pop.v.i self.gravity
pushi.e 15
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[18]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.gravity
push.d 0.4
pop.v.d self.friction
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_index
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
pushi.e 17
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[20]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [22]

:[21]
pushi.e 886
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index
pushi.e 180
pop.v.i self.x
pushi.e 119
pop.v.i self.y
pushi.e 19
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
call.i scr_minishakeobj(argc=0)
popz.v

:[22]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [24]

:[23]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 880
pop.v.i self.sprite_index
push.v self.x
pushi.e 5
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 12
sub.i.v
pop.v.v self.y
call.i scr_minishakeobj(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_index
pushi.e 21
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [26]

:[25]
pushi.e 23
pop.v.i self.con
pushi.e 153
pop.v.i self.goalx
pushi.e 125
pop.v.i self.goaly
pushi.e 0
pop.v.i self.stepcycle
pushi.e 8
pop.v.i self.stepmax
push.v self.goalx
push.v self.x
sub.v.v
push.v self.stepmax
div.v.v
pop.v.v self.stepx
push.v self.goaly
push.v self.y
sub.v.v
push.v self.stepmax
div.v.v
pop.v.v self.stepy
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [28]

:[27]
push.v self.x
push.v self.stepx
add.v.v
pop.v.v self.x
push.v self.y
push.v self.stepy
add.v.v
pop.v.v self.y
pushi.e 114
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.image_index
call.i scr_minishakeobj(argc=0)
popz.v
pushi.e 25
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [32]

:[29]
pushi.e 0
pop.v.i self.image_index
push.v self.stepcycle
pushi.e 1
add.i.v
pop.v.v self.stepcycle
push.v self.stepcycle
push.v self.stepmax
cmp.v.v GTE
bf [31]

:[30]
pushi.e 27
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [32]

:[31]
pushi.e 23
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [34]

:[33]
pushi.e 158
pop.v.i self.x
pushi.e 125
pop.v.i self.y
call.i scr_minishakeobj(argc=0)
popz.v
pushi.e 881
pop.v.i self.sprite_index
pushi.e 114
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 29
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [36]

:[35]
pushi.e 892
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.1
pop.v.d self.image_speed
pushi.e 31
pop.v.i self.con
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[36]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [38]

:[37]
pushi.e 0
pop.v.i self.image_speed
pushi.e 33
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[38]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [40]

:[39]
pushi.e 0
pop.v.i self.flashobj
pushi.e 0
pop.v.i self.image_index
pushi.e 883
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.animtimer
pushi.e 0
pop.v.i self.htimer
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
push.d 33.1
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[40]
push.v self.con
push.d 33.1
cmp.d.v EQ
bf [45]

:[41]
push.v self.animtimer
pushi.e 1
add.i.v
pop.v.v self.animtimer
push.v self.animtimer
pushi.e 13
cmp.i.v EQ
bf [43]

:[42]
pushi.e 81
conv.i.v
call.i snd_play(argc=1)
popz.v

:[43]
push.v self.animtimer
pushi.e 14
cmp.i.v EQ
bf [45]

:[44]
pushi.e 34
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 95
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
call.i scr_minishakeobj(argc=0)
popz.v

:[45]
push.v self.con
push.d 34.1
cmp.d.v EQ
bf [47]

:[46]
push.d 0.4
pop.v.d self.image_speed
pushi.e 885
pop.v.i self.sprite_index
call.i scr_minishakeobj(argc=0)
popz.v
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 35
pop.v.i self.con
pushi.e 0
pop.v.i self.shakeamt

:[47]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [53]

:[48]
push.v self.htimer
pushi.e 1
add.i.v
pop.v.v self.htimer
push.v self.htimer
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
pushi.e 95
conv.i.v
call.i snd_play(argc=1)
popz.v

:[50]
push.v self.htimer
pushi.e 8
cmp.i.v GTE
bf [52]

:[51]
pushi.e 0
pop.v.i self.htimer

:[52]
push.v self.remx
push.d 0.8
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.8
conv.d.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.remy
push.d 0.8
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.8
conv.d.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[53]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [55]

:[54]
push.v self.remx
pop.v.v self.x
push.v self.remy
pop.v.v self.y
pushi.e 0
pop.v.i self.gnoise
pushi.e 0
pop.v.i self.image_index
pushi.e 890
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed
pushi.e 37
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[55]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [61]

:[56]
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [58]

:[57]
push.v self.gnoise
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 199
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i instance_create(argc=3)
pop.v.v self.burst
pushi.e 1
pop.v.i self.gnoise
pushi.e 34
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i snd_play(argc=1)
popz.v

:[61]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [63]

:[62]
pushi.e 0
pop.v.i self.image_speed
push.d 37.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[63]
push.v self.con
push.d 38.1
cmp.d.v EQ
bf [65]

:[64]
pushi.e 882
pop.v.i self.sprite_index
push.d 37.2
pop.v.d self.con
pushi.e 0
pop.v.i self.image_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 90
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[65]
push.v self.con
push.d 38.2
cmp.d.v EQ
bf [67]

:[66]
pushi.e 0
pop.v.i self.image_speed
pushi.e 39
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[67]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [69]

:[68]
pushi.e 158
pop.v.i self.x
pushi.e 125
pop.v.i self.y
pushi.e 889
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
push.v self.wagon
conv.v.i
push.v [stacktop]self.x
pushi.e 47
sub.i.v
pop.v.v self.goalx
push.v self.wagon
conv.v.i
push.v [stacktop]self.y
pushi.e 9
sub.i.v
pop.v.v self.goaly
push.v self.goalx
push.v self.x
sub.v.v
pushi.e 100
conv.i.d
div.d.v
pop.v.v self.stepx
push.v self.goaly
push.v self.y
sub.v.v
pushi.e 100
conv.i.d
div.d.v
pop.v.v self.stepy
pushi.e 41
pop.v.i self.con
pushi.e 0
pop.v.i self.steps
pushi.e 0
pop.v.i self.samt

:[69]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [76]

:[70]
push.v self.samt
pushi.e 1
add.i.v
pop.v.v self.samt
push.v self.samt
pushi.e 10
cmp.i.v EQ
bf [72]

:[71]
pushi.e 114
conv.i.v
call.i snd_play(argc=1)
popz.v

:[72]
push.v self.samt
pushi.e 20
cmp.i.v EQ
bf [74]

:[73]
pushi.e 0
pop.v.i self.samt

:[74]
push.v self.steps
pushi.e 1
add.i.v
pop.v.v self.steps
push.v self.x
push.v self.stepx
add.v.v
pop.v.v self.x
push.v self.y
push.v self.stepy
add.v.v
pop.v.v self.y
push.v self.steps
pushi.e 100
cmp.i.v GTE
bf [76]

:[75]
pushi.e 52
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.goalx
pop.v.v self.x
push.v self.goaly
pop.v.v self.y
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[76]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [80]

:[77]
push.v self.wagon
conv.v.i
pushenv [79]

:[78]
pushi.e 0
pop.v.i self.visible

:[79]
popenv [78]
pushi.e 887
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 54
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[80]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [83]

:[81]
push.v self.image_index
pushi.e 5
cmp.i.v EQ
bf [83]

:[82]
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 95
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 33
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

:[83]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [85]

:[84]
pushi.e 1
pop.v.i self.heartwagon
pushi.e 888
pop.v.i self.sprite_index
pushi.e 56
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[85]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [87]

:[86]
pushi.e 158
pop.v.i self.x
pushi.e 125
pop.v.i self.y
pushi.e 893
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
push.v self.wagon
conv.v.i
push.v [stacktop]self.x
pushi.e 47
sub.i.v
pop.v.v self.goalx
push.v self.wagon
conv.v.i
push.v [stacktop]self.y
pushi.e 9
sub.i.v
pop.v.v self.goaly
push.v self.goalx
push.v self.x
sub.v.v
pushi.e 100
conv.i.d
div.d.v
pop.v.v self.stepx
push.v self.goaly
push.v self.y
sub.v.v
pushi.e 100
conv.i.d
div.d.v
pop.v.v self.stepy
push.v self.goalx
pop.v.v self.x
push.v self.goaly
pop.v.v self.y
pushi.e 0
pop.v.i self.steps
pushi.e 0
pop.v.i self.samt
pushi.e 58
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[87]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [94]

:[88]
push.v self.samt
pushi.e 1
add.i.v
pop.v.v self.samt
push.v self.samt
pushi.e 10
cmp.i.v EQ
bf [90]

:[89]
pushi.e 114
conv.i.v
call.i snd_play(argc=1)
popz.v

:[90]
push.v self.samt
pushi.e 20
cmp.i.v EQ
bf [92]

:[91]
pushi.e 0
pop.v.i self.samt

:[92]
push.d 0.1
pop.v.d self.image_speed
push.v self.x
push.v self.stepx
sub.v.v
pop.v.v self.x
push.v self.y
push.v self.stepy
sub.v.v
pop.v.v self.y
push.v self.steps
pushi.e 1
add.i.v
pop.v.v self.steps
push.v self.steps
pushi.e 100
cmp.i.v GTE
bf [94]

:[93]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 60
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[94]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [96]

:[95]
pushi.e 895
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 62
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[96]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [98]

:[97]
push.d 0.1
pop.v.d self.image_speed
pushi.e 64
pop.v.i self.con
pushi.e 285
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[98]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [102]

:[99]
pushi.e 877
conv.i.v
push.v self.y
pushi.e 9
add.i.v
push.v self.x
pushi.e 15
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.eyeflash
pushi.e 255
push.v self.eyeflash
conv.v.i
pop.v.i [stacktop]self.image_blend
push.v self.eyeflash
conv.v.i
pushenv [101]

:[100]
push.d 0.2
pop.v.d self.image_speed

:[101]
popenv [100]
pushi.e 0
pop.v.i self.image_speed
pushi.e 90
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 66
pop.v.i self.con
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[102]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [106]

:[103]
push.v self.eyeflash
conv.v.i
pushenv [105]

:[104]
call.i instance_destroy(argc=0)
popz.v

:[105]
popenv [104]
pushi.e 68
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[106]
push.v self.con
pushi.e 69
cmp.i.v EQ
bf [110]

:[107]
pushi.e 909
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.pix
push.v self.pix
conv.v.i
pushenv [109]

:[108]
pushi.e 0
pop.v.i self.image_blend
pushi.e 700
pop.v.i self.image_xscale
pushi.e 700
pop.v.i self.image_yscale

:[109]
popenv [108]
pushi.e 70
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[110]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [112]

:[111]
pushi.e 137
conv.i.v
call.i room_goto(argc=1)
popz.v

:[112]
push.v self.heartwagon
pushi.e 1
cmp.i.v EQ
bf [133]

:[113]
call.i left_p(argc=0)
conv.v.b
bf [115]

:[114]
push.v self.heartx
pushi.e -4
cmp.i.v GT
b [116]

:[115]
push.e 0

:[116]
bf [118]

:[117]
push.v self.heartx
pushi.e 1
sub.i.v
pop.v.v self.heartx

:[118]
call.i right_p(argc=0)
conv.v.b
bf [120]

:[119]
push.v self.heartx
pushi.e 4
cmp.i.v LT
b [121]

:[120]
push.e 0

:[121]
bf [123]

:[122]
push.v self.heartx
pushi.e 1
add.i.v
pop.v.v self.heartx

:[123]
call.i down_p(argc=0)
conv.v.b
bf [125]

:[124]
push.v self.hearty
pushi.e 4
cmp.i.v LT
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
push.v self.hearty
pushi.e 1
add.i.v
pop.v.v self.hearty

:[128]
call.i up_p(argc=0)
conv.v.b
bf [130]

:[129]
push.v self.hearty
pushi.e -4
cmp.i.v GT
b [131]

:[130]
push.e 0

:[131]
bf [133]

:[132]
push.v self.hearty
pushi.e 1
sub.i.v
pop.v.v self.hearty

:[133]
push.v self.heartwagon
pushi.e 2
cmp.i.v EQ
bf [end]

:[134]
pushi.e 0
pop.v.i self.moved
call.i left_p(argc=0)
conv.v.b
bf [136]

:[135]
pushi.e 1
pop.v.i self.moved

:[136]
call.i right_p(argc=0)
conv.v.b
bf [138]

:[137]
pushi.e 1
pop.v.i self.moved

:[138]
call.i down_p(argc=0)
conv.v.b
bf [140]

:[139]
pushi.e 1
pop.v.i self.moved

:[140]
call.i up_p(argc=0)
conv.v.b
bf [142]

:[141]
pushi.e 1
pop.v.i self.moved

:[142]
push.v self.moved
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
push.v self.shaketimer
pushi.e 0
cmp.i.v LTE
b [145]

:[144]
push.e 0

:[145]
bf [147]

:[146]
pushi.e 24
pop.v.i self.shaketimer
pushi.e 4
pop.v.i self.cageamt
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v

:[147]
push.v self.cageamt
pushi.e 0
cmp.i.v GT
bf [149]

:[148]
push.v self.cageamt
push.d 0.5
sub.d.v
pop.v.v self.cageamt
b [150]

:[149]
pushi.e 0
pop.v.i self.cageamt

:[150]
push.v self.shaketimer
pushi.e 1
sub.i.v
pop.v.v self.shaketimer

:[end]