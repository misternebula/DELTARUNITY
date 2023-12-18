.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushglb.v global.entrance
pop.v.v self.entrance
pushi.e -1
pop.v.i self.rem_facing
pushi.e 0
pop.v.i self.facing_timer
pushbltn.v self.room
pushi.e 52
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 34
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
bt [7]

:[6]
pushbltn.v self.room
pushi.e 55
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [18]

:[9]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
bf [11]

:[10]
pushi.e 101
pop.v.i self.candyflag

:[11]
pushbltn.v self.room
pushi.e 55
cmp.i.v EQ
bf [13]

:[12]
pushi.e 102
pop.v.i self.candyflag

:[13]
pushi.e 0
pop.v.i self.siner
pushi.e -5
push.v self.candyflag
conv.v.i
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v
b [18]

:[15]
pushi.e 702
conv.i.v
push.v 84.y
push.v 84.x
call.i scr_dark_marker(argc=3)
pop.v.v self.candytree
push.v self.candytree
conv.v.i
pushenv [17]

:[16]
pushi.e 0
pop.v.i self.siner
call.i scr_depth(argc=0)
popz.v
push.v self.depth
pushi.e 5
sub.i.v
pop.v.v self.depth

:[17]
popenv [16]

:[18]
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bf [40]

:[19]
pushglb.v global.entrance
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.v 326.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
pushglb.v global.entrance
pushi.e 24
cmp.i.v EQ
bf [30]

:[29]
pushi.e 3
pop.v.i global.facing
pushi.e 3
pop.v.i self.rem_facing

:[30]
pushglb.v global.entrance
pushi.e 4
cmp.i.v EQ
bf [32]

:[31]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.rem_facing

:[32]
pushglb.v global.plot
pushi.e 250
cmp.i.v LT
bf [34]

:[33]
call.i instance_destroy(argc=0)
popz.v
b [40]

:[34]
pushi.e -5
pushi.e 262
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [36]

:[35]
pushi.e 4
pushi.e -5
pushi.e 262
pop.v.i [array]global.flag

:[36]
pushi.e 83
conv.i.v
pushi.e 96
conv.i.v
pushi.e 274
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.pie
push.v self.pie
conv.v.i
pushenv [38]

:[37]
push.i 100000
pop.v.i self.depth

:[38]
popenv [37]
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_is_playing(argc=1)
conv.v.b
not.b
bf [40]

:[39]
push.s "home.ogg"@6444
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.d 0.97
conv.d.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong

:[40]
pushbltn.v self.room
pushi.e 7
cmp.i.v EQ
bf [45]

:[41]
pushglb.v global.plot
pushi.e 250
cmp.i.v LT
bf [43]

:[42]
call.i instance_destroy(argc=0)
popz.v
b [45]

:[43]
pushglb.v global.entrance
pushi.e 24
cmp.i.v EQ
bf [45]

:[44]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.rem_facing

:[45]
pushbltn.v self.room
pushi.e 3
cmp.i.v EQ
bf [47]

:[46]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.rem_facing

:[47]
pushbltn.v self.room
pushi.e 111
cmp.i.v EQ
bf [71]

:[48]
pushi.e 0
pushi.e -5
pushi.e 31
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.songplayed
pushi.e 0
pop.v.i self.m
pushi.e 0
pop.v.i self.maxm
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_is_playing(argc=1)
conv.v.b
not.b
bf [50]

:[49]
pushi.e -5
pushi.e 241
push.v [array]global.flag
pushi.e 6
cmp.i.v LT
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 1
pop.v.i self.songplayed
push.s "prejoker.ogg"@4061
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
push.d 0.85
conv.d.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i mus_volume(argc=3)
popz.v

:[53]
pushi.e 337
conv.i.v
push.v self.y
pushi.e 170
sub.i.v
push.v self.x
pushi.e 48
sub.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.doorimg
push.v self.doorimg
conv.v.i
pushenv [55]

:[54]
push.i 500000
pop.v.i self.depth

:[55]
popenv [54]
pushi.e 331
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.doorsolid
pushi.e 80
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.doorevent
pushi.e -5
pushi.e 241
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [63]

:[56]
push.v self.doorimg
conv.v.i
pushenv [58]

:[57]
pushi.e 2
pop.v.i self.image_index

:[58]
popenv [57]
push.v self.doorsolid
conv.v.i
pushenv [60]

:[59]
call.i instance_destroy(argc=0)
popz.v

:[60]
popenv [59]
push.v self.doorevent
conv.v.i
pushenv [62]

:[61]
call.i instance_destroy(argc=0)
popz.v

:[62]
popenv [61]
pushi.e 90
conv.i.v
push.v self.y
push.v self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.door_door

:[63]
pushi.e -5
pushi.e 241
push.v [array]global.flag
pushi.e 6
cmp.i.v GTE
bf [71]

:[64]
push.v self.doorsolid
conv.v.i
pushenv [66]

:[65]
call.i instance_destroy(argc=0)
popz.v

:[66]
popenv [65]
push.v self.doorevent
conv.v.i
pushenv [68]

:[67]
call.i instance_destroy(argc=0)
popz.v

:[68]
popenv [67]
push.v self.doorimg
conv.v.i
pushenv [70]

:[69]
call.i instance_destroy(argc=0)
popz.v

:[70]
popenv [69]
pushi.e 331
conv.i.v
pushi.e 1040
conv.i.v
pushi.e 1600
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.finalsolid

:[71]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [82]

:[72]
pushglb.v global.plot
pushi.e 240
cmp.i.v GTE
bf [82]

:[73]
pushi.e 331
conv.i.v
pushi.e 740
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.block
pushi.e 8
push.v self.block
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 80
pushenv [75]

:[74]
call.i instance_destroy(argc=0)
popz.v

:[75]
popenv [74]
pushi.e 351
conv.i.v
push.v 87.y
push.v 87.x
call.i scr_dark_marker(argc=3)
pop.v.v self.th
push.v self.th
conv.v.i
pushenv [77]

:[76]
call.i scr_depth(argc=0)
popz.v

:[77]
popenv [76]
pushi.e 87
pushenv [81]

:[78]
pushi.e 336
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.chairsolid
push.v self.sprite_index
push.v self.chairsolid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
push.v self.chairsolid
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.chairsolid
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pop.v.i self.visible
push.v self.chairsolid
conv.v.i
pushenv [80]

:[79]
call.i scr_depth(argc=0)
popz.v

:[80]
popenv [79]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [78]

:[82]
pushbltn.v self.room
pushi.e 96
cmp.i.v EQ
bf [92]

:[83]
pushi.e -5
pushi.e 9
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [91]

:[84]
pushi.e -5
pushi.e 1
push.v [array]global.hp
pushi.e 1
cmp.i.v LT
bf [86]

:[85]
pushi.e 10
pushi.e -5
pushi.e 1
pop.v.i [array]global.hp

:[86]
pushi.e -5
pushi.e 3
push.v [array]global.hp
pushi.e 1
cmp.i.v LT
bf [88]

:[87]
pushi.e 10
pushi.e -5
pushi.e 3
pop.v.i [array]global.hp

:[88]
pushi.e 0
pop.v.i global.fighting
pushi.e 1
pop.v.i global.interact
pushi.e 909
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.blackmarker
push.v self.blackmarker
conv.v.i
pushenv [90]

:[89]
pushi.e 0
pop.v.i self.image_blend
pushi.e 600
pop.v.i self.image_xscale
pushi.e 600
pop.v.i self.image_yscale
pushi.e 1000
pop.v.i self.depth

:[90]
popenv [89]
pushi.e 10
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [92]

:[91]
call.i instance_destroy(argc=0)
popz.v

:[92]
pushbltn.v self.room
pushi.e 64
cmp.i.v EQ
bf [102]

:[93]
pushi.e 0
pop.v.i self.pcon
pushi.e 0
pop.v.i self.ptimer
pushi.e 217
conv.i.v
pushi.e 100
conv.i.v
pushi.e 1000
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.puzzle
push.v self.puzzle
conv.v.i
pushenv [95]

:[94]
pushi.e 4
pop.v.i self.max_suit
pushi.e 0
pop.v.i self.drawclue
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.sol
pushi.e 4
pushi.e -1
pushi.e 1
pop.v.i [array]self.sol
pushi.e 3
pushi.e -1
pushi.e 2
pop.v.i [array]self.sol
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.sol

:[95]
popenv [94]
pushi.e 244
conv.i.v
pushi.e 240
conv.i.v
pushi.e 1300
conv.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.spikee
pushi.e 244
conv.i.v
pushi.e 280
conv.i.v
pushi.e 1300
conv.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.spikee
pushi.e -1
pushi.e 0
push.v [array]self.spikee
conv.v.i
pushenv [97]

:[96]
push.i 900000
pop.v.i self.depth

:[97]
popenv [96]
pushi.e -1
pushi.e 1
push.v [array]self.spikee
conv.v.i
pushenv [99]

:[98]
push.i 900000
pop.v.i self.depth

:[99]
popenv [98]
pushi.e 331
conv.i.v
pushi.e 240
conv.i.v
pushi.e 1300
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.spike_solid
push.v self.spike_solid
conv.v.i
pushenv [101]

:[100]
pushi.e 3
pop.v.i self.image_yscale

:[101]
popenv [100]

:[102]
pushbltn.v self.room
pushi.e 79
cmp.i.v EQ
bf [127]

:[103]
pushi.e 0
pop.v.i self.pcon
pushi.e 0
pop.v.i self.ptimer
pushi.e 232
conv.i.v
pushi.e 680
conv.i.v
pushi.e 320
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.hinta
pushi.e 232
conv.i.v
pushi.e 680
conv.i.v
pushi.e 840
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.hintb
pushi.e 232
conv.i.v
pushi.e 680
conv.i.v
pushi.e 1400
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.hintc
push.v self.hinta
conv.v.i
pushenv [105]

:[104]
push.i 800000
pop.v.i self.depth

:[105]
popenv [104]
push.v self.hintb
conv.v.i
pushenv [107]

:[106]
pushi.e 1
pop.v.i self.image_index
push.i 800000
pop.v.i self.depth

:[107]
popenv [106]
push.v self.hintc
conv.v.i
pushenv [109]

:[108]
pushi.e 2
pop.v.i self.image_index
push.i 800000
pop.v.i self.depth

:[109]
popenv [108]
pushi.e 217
conv.i.v
pushi.e 140
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.puzzle
push.v self.puzzle
conv.v.i
pushenv [111]

:[110]
pushi.e 3
pop.v.i self.max_suit
pushi.e 0
pop.v.i self.drawclue
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.sol
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.sol
pushi.e 3
pushi.e -1
pushi.e 2
pop.v.i [array]self.sol

:[111]
popenv [110]
pushi.e 244
conv.i.v
pushi.e 240
conv.i.v
pushi.e 400
conv.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.spikee
pushi.e 244
conv.i.v
pushi.e 240
conv.i.v
pushi.e 440
conv.i.v
call.i scr_dark_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.spikee
pushi.e -1
pushi.e 0
push.v [array]self.spikee
conv.v.i
pushenv [113]

:[112]
push.i 900000
pop.v.i self.depth

:[113]
popenv [112]
pushi.e -1
pushi.e 1
push.v [array]self.spikee
conv.v.i
pushenv [115]

:[114]
push.i 900000
pop.v.i self.depth

:[115]
popenv [114]
pushi.e 331
conv.i.v
pushi.e 240
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.spike_solid
push.v self.spike_solid
conv.v.i
pushenv [117]

:[116]
pushi.e 2
pop.v.i self.image_xscale

:[117]
popenv [116]
pushi.e -5
pushi.e 290
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [127]

:[118]
pushi.e -1
pushi.e 0
push.v [array]self.spikee
conv.v.i
pushenv [120]

:[119]
pushi.e 1
pop.v.i self.image_index

:[120]
popenv [119]
pushi.e -1
pushi.e 1
push.v [array]self.spikee
conv.v.i
pushenv [122]

:[121]
pushi.e 1
pop.v.i self.image_index

:[122]
popenv [121]
push.v self.spike_solid
conv.v.i
pushenv [124]

:[123]
call.i instance_destroy(argc=0)
popz.v

:[124]
popenv [123]
push.v self.puzzle
conv.v.i
pushenv [126]

:[125]
pushi.e 1
pop.v.i self.won

:[126]
popenv [125]

:[127]
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
bf [131]

:[128]
pushglb.v global.plot
pushi.e 85
cmp.i.v GTE
bf [130]

:[129]
call.i instance_destroy(argc=0)
popz.v
b [131]

:[130]
pushi.e 1
pop.v.i self.con

:[131]
pushbltn.v self.room
pushi.e 93
cmp.i.v EQ
bf [135]

:[132]
pushi.e 5
pushi.e -5
pushi.e 291
pop.v.i [array]global.flag
pushglb.v global.plot
pushi.e 100
cmp.i.v GTE
bf [134]

:[133]
call.i instance_destroy(argc=0)
popz.v
b [135]

:[134]
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.visible
call.i scr_depth(argc=0)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 189
pop.v.i self.sprite_index

:[135]
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.timer

:[end]