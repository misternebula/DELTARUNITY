.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [20]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.ux
pushi.e 30
add.i.v
pop.v.v self.ux
push.v self.dx
pushi.e 30
sub.i.v
pop.v.v self.dx
push.v self.lx
pushi.e 30
add.i.v
pop.v.v self.lx
push.v self.rx
pushi.e 30
sub.i.v
pop.v.v self.rx
push.d 0.4
pop.v.d self.con

:[3]
push.v self.con
push.d 0.4
cmp.d.v EQ
bf [6]

:[4]
push.v self.minitimer
pushi.e 1
add.i.v
pop.v.v self.minitimer
push.v self.minitimer
pushi.e 14
cmp.i.v GTE
bf [6]

:[5]
push.d 0.5
pop.v.d self.con

:[6]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [8]

:[7]
push.v self.speed
push.d 4.6
cmp.d.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v self.speed
push.d 0.2
add.d.v
pop.v.v self.speed

:[11]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [13]

:[12]
push.v self.speed
push.d 4.6
cmp.d.v GTE
b [14]

:[13]
push.e 0

:[14]
bf [17]

:[15]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 170
cmp.i.v GTE
bf [17]

:[16]
pushi.e 1
pop.v.i self.con

:[17]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [20]

:[18]
push.v self.speed
push.d 0.2
sub.d.v
pop.v.v self.speed
push.v self.speed
push.d 0.1
cmp.d.v LTE
bf [20]

:[19]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[20]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [53]

:[21]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.v self.direction
pushi.e 20
conv.i.v
call.i random(argc=1)
pushi.e 20
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.direction
push.d 0.5
pop.v.d self.con

:[23]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [25]

:[24]
push.v self.speed
push.d 5.2
cmp.d.v LT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.v self.speed
push.d 0.2
add.d.v
pop.v.v self.speed

:[28]
push.v self.hspeed
push.d 4.2
cmp.d.v GTE
bf [32]

:[29]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [31]

:[30]
push.v self.vspeed
push.d 0.1
add.d.v
pop.v.v self.vspeed
push.v self.hspeed
push.d 0.1
sub.d.v
pop.v.v self.hspeed
b [32]

:[31]
push.v self.vspeed
push.d 0.1
sub.d.v
pop.v.v self.vspeed
push.v self.hspeed
push.d 0.1
sub.d.v
pop.v.v self.hspeed

:[32]
push.v self.hspeed
push.d -4.2
cmp.d.v LTE
bf [36]

:[33]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [35]

:[34]
push.v self.vspeed
push.d 0.1
add.d.v
pop.v.v self.vspeed
push.v self.hspeed
push.d 0.1
add.d.v
pop.v.v self.hspeed
b [36]

:[35]
push.v self.vspeed
push.d 0.1
sub.d.v
pop.v.v self.vspeed
push.v self.hspeed
push.d 0.1
add.d.v
pop.v.v self.hspeed

:[36]
push.v self.vspeed
push.d 4.2
cmp.d.v GTE
bf [40]

:[37]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [39]

:[38]
push.v self.hspeed
push.d 0.1
add.d.v
pop.v.v self.hspeed
push.v self.vspeed
push.d 0.1
sub.d.v
pop.v.v self.vspeed
b [40]

:[39]
push.v self.hspeed
push.d 0.1
sub.d.v
pop.v.v self.hspeed
push.v self.vspeed
push.d 0.1
sub.d.v
pop.v.v self.vspeed

:[40]
push.v self.vspeed
push.d -4.2
cmp.d.v LTE
bf [44]

:[41]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [43]

:[42]
push.v self.hspeed
push.d 0.1
add.d.v
pop.v.v self.hspeed
push.v self.vspeed
push.d 0.1
add.d.v
pop.v.v self.vspeed
b [44]

:[43]
push.v self.hspeed
push.d 0.1
sub.d.v
pop.v.v self.hspeed
push.v self.vspeed
push.d 0.1
add.d.v
pop.v.v self.vspeed

:[44]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [46]

:[45]
push.v self.speed
push.d 5.2
cmp.d.v GTE
b [47]

:[46]
push.e 0

:[47]
bf [50]

:[48]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 90
cmp.i.v GTE
bf [50]

:[49]
pushi.e 1
pop.v.i self.con

:[50]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [53]

:[51]
push.v self.speed
push.d 0.4
sub.d.v
pop.v.v self.speed
push.v self.speed
push.d 0.1
cmp.d.v LTE
bf [53]

:[52]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[53]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [70]

:[54]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
push.v self.direction
pushi.e 20
conv.i.v
call.i random(argc=1)
pushi.e 20
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.direction
push.d 0.5
pop.v.d self.con
push.v self.ux
pushi.e 50
add.i.v
pop.v.v self.ux
push.v self.dx
pushi.e 50
sub.i.v
pop.v.v self.dx
push.v self.lx
pushi.e 50
add.i.v
pop.v.v self.lx
push.v self.rx
pushi.e 50
sub.i.v
pop.v.v self.rx

:[56]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [58]

:[57]
push.v self.speed
push.d 5.2
cmp.d.v LT
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
push.v self.speed
push.d 0.2
add.d.v
pop.v.v self.speed

:[61]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [63]

:[62]
push.v self.speed
push.d 5.2
cmp.d.v GTE
b [64]

:[63]
push.e 0

:[64]
bf [67]

:[65]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 70
cmp.i.v GTE
bf [67]

:[66]
pushi.e 1
pop.v.i self.con

:[67]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [70]

:[68]
push.v self.speed
push.d 0.5
sub.d.v
pop.v.v self.speed
push.v self.speed
push.d 0.1
cmp.d.v LTE
bf [70]

:[69]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[70]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [90]

:[71]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
push.v self.direction
pushi.e 20
conv.i.v
call.i random(argc=1)
pushi.e 20
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.direction
push.d 0.4
pop.v.d self.con
push.v self.ux
pushi.e 50
add.i.v
pop.v.v self.ux
push.v self.dx
pushi.e 50
sub.i.v
pop.v.v self.dx
push.v self.lx
pushi.e 50
add.i.v
pop.v.v self.lx
push.v self.rx
pushi.e 50
sub.i.v
pop.v.v self.rx

:[73]
push.v self.con
push.d 0.4
cmp.d.v EQ
bf [76]

:[74]
push.v self.minitimer
pushi.e 1
add.i.v
pop.v.v self.minitimer
push.v self.minitimer
pushi.e 14
cmp.i.v GTE
bf [76]

:[75]
push.d 0.5
pop.v.d self.con

:[76]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [78]

:[77]
push.v self.speed
push.d 4.4
cmp.d.v LT
b [79]

:[78]
push.e 0

:[79]
bf [81]

:[80]
push.v self.speed
push.d 0.2
add.d.v
pop.v.v self.speed

:[81]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [83]

:[82]
push.v self.speed
push.d 4.4
cmp.d.v GTE
b [84]

:[83]
push.e 0

:[84]
bf [87]

:[85]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 170
cmp.i.v GTE
bf [87]

:[86]
pushi.e 1
pop.v.i self.con

:[87]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [90]

:[88]
push.v self.speed
push.d 0.5
sub.d.v
pop.v.v self.speed
push.v self.speed
push.d 0.1
cmp.d.v LTE
bf [90]

:[89]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[90]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [107]

:[91]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
push.v self.direction
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.direction
push.d 0.5
pop.v.d self.con
push.v self.ux
pushi.e 50
add.i.v
pop.v.v self.ux
push.v self.dx
pushi.e 50
sub.i.v
pop.v.v self.dx
push.v self.lx
pushi.e 50
add.i.v
pop.v.v self.lx
push.v self.rx
pushi.e 50
sub.i.v
pop.v.v self.rx

:[93]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [95]

:[94]
push.v self.speed
pushi.e 7
cmp.i.v LT
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
push.v self.speed
push.d 0.2
add.d.v
pop.v.v self.speed

:[98]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [100]

:[99]
push.v self.speed
pushi.e 7
cmp.i.v GTE
b [101]

:[100]
push.e 0

:[101]
bf [104]

:[102]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 90
cmp.i.v GTE
bf [104]

:[103]
pushi.e 1
pop.v.i self.con

:[104]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [107]

:[105]
push.v self.speed
push.d 0.5
sub.d.v
pop.v.v self.speed
push.v self.speed
push.d 0.1
cmp.d.v LTE
bf [107]

:[106]
pushi.e 0
pop.v.i self.active
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[107]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [127]

:[108]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [110]

:[109]
push.v self.ux
pushi.e 30
add.i.v
pop.v.v self.ux
push.v self.dx
pushi.e 30
sub.i.v
pop.v.v self.dx
push.v self.lx
pushi.e 30
add.i.v
pop.v.v self.lx
push.v self.rx
pushi.e 30
sub.i.v
pop.v.v self.rx
push.d 0.4
pop.v.d self.con

:[110]
push.v self.con
push.d 0.4
cmp.d.v EQ
bf [113]

:[111]
push.v self.minitimer
pushi.e 1
add.i.v
pop.v.v self.minitimer
push.v self.minitimer
pushi.e 14
cmp.i.v GTE
bf [113]

:[112]
push.d 0.5
pop.v.d self.con

:[113]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [115]

:[114]
push.v self.speed
pushi.e 4
cmp.i.v LT
b [116]

:[115]
push.e 0

:[116]
bf [118]

:[117]
push.v self.speed
push.d 0.2
add.d.v
pop.v.v self.speed

:[118]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [120]

:[119]
push.v self.speed
pushi.e 4
cmp.i.v GTE
b [121]

:[120]
push.e 0

:[121]
bf [124]

:[122]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 170
cmp.i.v GTE
bf [124]

:[123]
pushi.e 1
pop.v.i self.con

:[124]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [127]

:[125]
push.v self.speed
push.d 0.2
sub.d.v
pop.v.v self.speed
push.v self.speed
push.d 0.1
cmp.d.v LTE
bf [127]

:[126]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[127]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [151]

:[128]
push.v self.x
pop.v.v 303.x
push.v self.y
pop.v.v 303.y
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.lborder
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.rborder
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.uborder
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.dborder
push.v self.lborder
push.v self.lx
cmp.v.v LT
bf [130]

:[129]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [131]

:[130]
push.e 0

:[131]
bf [133]

:[132]
push.v self.hspeed
neg.v
pop.v.v self.hspeed
pushi.e 1
pop.v.i self.bumpnoise

:[133]
push.v self.rborder
push.v self.rx
cmp.v.v GT
bf [135]

:[134]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [136]

:[135]
push.e 0

:[136]
bf [138]

:[137]
push.v self.hspeed
neg.v
pop.v.v self.hspeed
pushi.e 1
pop.v.i self.bumpnoise

:[138]
push.v self.uborder
push.v self.ux
cmp.v.v LT
bf [140]

:[139]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
b [141]

:[140]
push.e 0

:[141]
bf [143]

:[142]
push.v self.vspeed
neg.v
pop.v.v self.vspeed
pushi.e 1
pop.v.i self.bumpnoise

:[143]
push.v self.dborder
push.v self.dx
cmp.v.v GT
bf [145]

:[144]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
b [146]

:[145]
push.e 0

:[146]
bf [148]

:[147]
push.v self.vspeed
neg.v
pop.v.v self.vspeed
pushi.e 1
pop.v.i self.bumpnoise

:[148]
push.v self.bumpnoise
pushi.e 1
cmp.i.v EQ
bf [151]

:[149]
pushi.e 56
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 103
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.bumpnoise
pushi.e 140
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [151]

:[150]
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[151]
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [end]

:[152]
push.v self.timerbonus
pushi.e 0
cmp.i.v EQ
bf [154]

:[153]
push.v self.timer
pushi.e 2
add.i.v
pop.v.v self.timer
pushi.e 1
pop.v.i self.timerbonus

:[154]
push.v self.grazetimer
pushi.e 1
add.i.v
pop.v.v self.grazetimer
push.v self.grazetimer
pushi.e 15
cmp.i.v GTE
bf [end]

:[155]
pushi.e 0
pop.v.i self.timerbonus
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.grazed

:[end]