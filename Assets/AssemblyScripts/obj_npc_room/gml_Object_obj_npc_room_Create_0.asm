.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.tempvar
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.depthcancel
pushi.e 1
pop.v.i self.normalanim
pushi.e 0
pop.v.i self.remanimspeed
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [67]

:[1]
pushbltn.v self.room
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
pushi.e 87
pop.v.i self.sprite_index

:[3]
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bf [6]

:[4]
pushi.e 85
pop.v.i self.sprite_index
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [6]

:[5]
pushi.e 84
pop.v.i self.sprite_index

:[6]
pushbltn.v self.room
pushi.e 16
cmp.i.v EQ
bf [10]

:[7]
pushi.e 303
pop.v.i self.sprite_index
pushi.e 301
conv.i.v
pushi.e 122
conv.i.v
pushi.e 81
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.fence
push.v self.fence
conv.v.i
pushenv [9]

:[8]
call.i scr_depth(argc=0)
popz.v

:[9]
popenv [8]

:[10]
pushbltn.v self.room
pushi.e 18
cmp.i.v EQ
bf [12]

:[11]
pushi.e 315
pop.v.i self.sprite_index

:[12]
pushbltn.v self.room
pushi.e 20
cmp.i.v EQ
bf [14]

:[13]
pushi.e 247
pop.v.i self.sprite_index

:[14]
pushbltn.v self.room
pushi.e 26
cmp.i.v EQ
bf [16]

:[15]
pushi.e 316
pop.v.i self.sprite_index

:[16]
pushbltn.v self.room
pushi.e 23
cmp.i.v EQ
bf [21]

:[17]
pushi.e 312
pop.v.i self.sprite_index
push.v self.x
pushi.e 100
cmp.i.v GT
bf [19]

:[18]
pushi.e 313
pop.v.i self.sprite_index

:[19]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [21]

:[20]
pushi.e 314
pop.v.i self.sprite_index

:[21]
pushbltn.v self.room
pushi.e 22
cmp.i.v EQ
bf [43]

:[22]
push.v self.x
pushi.e 120
cmp.i.v LT
bf [24]

:[23]
pushi.e 265
pop.v.i self.sprite_index

:[24]
push.v self.x
pushi.e 60
cmp.i.v LT
bf [26]

:[25]
pushi.e 263
pop.v.i self.sprite_index

:[26]
push.v self.x
pushi.e 120
cmp.i.v GTE
bf [28]

:[27]
push.v self.x
pushi.e 140
cmp.i.v LTE
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 259
pop.v.i self.sprite_index

:[31]
push.v self.y
pushi.e 130
cmp.i.v GT
bf [38]

:[32]
push.v self.x
pushi.e 180
cmp.i.v GT
bf [34]

:[33]
pushi.e 264
pop.v.i self.sprite_index

:[34]
push.v self.x
pushi.e 240
cmp.i.v GT
bf [36]

:[35]
pushi.e 261
pop.v.i self.sprite_index
pushi.e 4000
pop.v.i self.depth
pushi.e 1
pop.v.i self.depthcancel

:[36]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [38]

:[37]
pushi.e 262
pop.v.i self.sprite_index
pushi.e 4000
pop.v.i self.depth
pushi.e 1
pop.v.i self.depthcancel

:[38]
push.v self.y
pushi.e 120
cmp.i.v LT
bf [43]

:[39]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [41]

:[40]
pushi.e 260
pop.v.i self.sprite_index

:[41]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [43]

:[42]
pushi.e 258
pop.v.i self.sprite_index

:[43]
pushbltn.v self.room
pushi.e 13
cmp.i.v EQ
bf [48]

:[44]
push.v self.x
pushi.e 560
cmp.i.v GT
bf [46]

:[45]
pushi.e 307
pop.v.i self.sprite_index

:[46]
push.v self.x
pushi.e 720
cmp.i.v GT
bf [48]

:[47]
pushi.e 308
pop.v.i self.sprite_index

:[48]
pushbltn.v self.room
pushi.e 15
cmp.i.v EQ
bf [50]

:[49]
pushi.e 309
pop.v.i self.sprite_index

:[50]
pushbltn.v self.room
pushi.e 11
cmp.i.v EQ
bf [55]

:[51]
push.v self.x
pushi.e 1800
cmp.i.v GTE
bf [53]

:[52]
pushi.e 153
pop.v.i self.sprite_index

:[53]
push.v self.x
pushi.e 1900
cmp.i.v GTE
bf [55]

:[54]
pushi.e 149
pop.v.i self.sprite_index

:[55]
pushbltn.v self.room
pushi.e 9
cmp.i.v EQ
bf [62]

:[56]
push.v self.x
pushi.e 480
cmp.i.v GTE
bf [58]

:[57]
pushi.e 288
pop.v.i self.sprite_index

:[58]
push.v self.x
pushi.e 640
cmp.i.v GTE
bf [60]

:[59]
pushi.e 286
pop.v.i self.sprite_index

:[60]
push.v self.x
pushi.e 880
cmp.i.v GTE
bf [62]

:[61]
pushi.e 287
pop.v.i self.sprite_index

:[62]
pushbltn.v self.room
pushi.e 10
cmp.i.v EQ
bf [67]

:[63]
push.v self.x
pushi.e 60
cmp.i.v GTE
bf [65]

:[64]
pushi.e 310
pop.v.i self.sprite_index

:[65]
push.v self.x
pushi.e 100
cmp.i.v GTE
bf [67]

:[66]
pushi.e 311
pop.v.i self.sprite_index

:[67]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [226]

:[68]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushbltn.v self.room
pushi.e 47
cmp.i.v EQ
bf [70]

:[69]
pushi.e 645
pop.v.i self.sprite_index

:[70]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
bt [73]

:[71]
pushbltn.v self.room
pushi.e 55
cmp.i.v EQ
bt [73]

:[72]
pushbltn.v self.room
pushi.e 63
cmp.i.v EQ
b [74]

:[73]
push.e 1

:[74]
bf [76]

:[75]
pushi.e 701
pop.v.i self.sprite_index

:[76]
pushbltn.v self.room
pushi.e 54
cmp.i.v EQ
bf [79]

:[77]
pushi.e 363
pop.v.i self.sprite_index
push.v self.y
pushi.e 120
cmp.i.v LTE
bf [79]

:[78]
pushi.e 246
pop.v.i self.sprite_index
pushi.e 1
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[79]
pushbltn.v self.room
pushi.e 60
cmp.i.v EQ
bf [82]

:[80]
pushi.e 323
pop.v.i self.sprite_index
pushi.e -5
pushi.e 251
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
call.i instance_destroy(argc=0)
popz.v

:[82]
pushbltn.v self.room
pushi.e 56
cmp.i.v EQ
bf [87]

:[83]
push.v self.x
pushi.e 1600
cmp.i.v LT
bf [85]

:[84]
pushi.e 602
pop.v.i self.sprite_index

:[85]
push.v self.x
pushi.e 1600
cmp.i.v GT
bf [87]

:[86]
pushi.e 211
pop.v.i self.sprite_index

:[87]
pushbltn.v self.room
pushi.e 62
cmp.i.v EQ
bf [89]

:[88]
pushi.e 366
pop.v.i self.sprite_index

:[89]
pushbltn.v self.room
pushi.e 71
cmp.i.v EQ
bf [95]

:[90]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [94]

:[91]
pushi.e 360
pop.v.i self.sprite_index
pushglb.v global.plot
pushi.e 60
cmp.i.v GTE
bf [93]

:[92]
call.i instance_destroy(argc=0)
popz.v

:[93]
b [95]

:[94]
pushi.e 361
pop.v.i self.sprite_index

:[95]
pushbltn.v self.room
pushi.e 73
cmp.i.v EQ
bf [101]

:[96]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [100]

:[97]
pushi.e 323
pop.v.i self.sprite_index
pushi.e -5
pushi.e 251
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [99]

:[98]
call.i instance_destroy(argc=0)
popz.v

:[99]
b [101]

:[100]
pushi.e 360
pop.v.i self.sprite_index

:[101]
pushbltn.v self.room
pushi.e 75
cmp.i.v EQ
bf [103]

:[102]
pushi.e 499
pop.v.i self.sprite_index

:[103]
pushbltn.v self.room
pushi.e 77
cmp.i.v EQ
bf [108]

:[104]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [106]

:[105]
pushi.e 338
pop.v.i self.sprite_index

:[106]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [108]

:[107]
pushi.e 339
pop.v.i self.sprite_index

:[108]
pushbltn.v self.room
pushi.e 80
cmp.i.v EQ
bf [113]

:[109]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [111]

:[110]
pushi.e 341
pop.v.i self.sprite_index

:[111]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [113]

:[112]
pushi.e 342
pop.v.i self.sprite_index

:[113]
pushbltn.v self.room
pushi.e 82
cmp.i.v EQ
bf [121]

:[114]
pushi.e 343
pop.v.i self.sprite_index
push.v self.x
pushi.e 800
cmp.i.v GTE
bf [116]

:[115]
push.v self.x
pushi.e 880
cmp.i.v LTE
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushi.e 344
pop.v.i self.sprite_index

:[119]
push.v self.x
pushi.e 980
cmp.i.v GTE
bf [121]

:[120]
pushi.e 345
pop.v.i self.sprite_index

:[121]
pushbltn.v self.room
pushi.e 84
cmp.i.v EQ
bf [123]

:[122]
pushi.e 362
pop.v.i self.sprite_index

:[123]
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [125]

:[124]
pushi.e 359
pop.v.i self.sprite_index

:[125]
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
bf [134]

:[126]
push.v self.x
pushi.e 200
cmp.i.v LTE
bf [128]

:[127]
pushi.e 499
pop.v.i self.sprite_index

:[128]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [134]

:[129]
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
bf [131]

:[130]
call.i instance_destroy(argc=0)
popz.v

:[131]
push.v self.y
pushi.e 240
cmp.i.v GTE
bf [133]

:[132]
pushi.e 226
pop.v.i self.sprite_index
b [134]

:[133]
pushi.e 156
pop.v.i self.sprite_index

:[134]
pushbltn.v self.room
pushi.e 97
cmp.i.v EQ
bf [137]

:[135]
pushi.e 211
pop.v.i self.sprite_index
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
bf [137]

:[136]
call.i instance_destroy(argc=0)
popz.v

:[137]
pushbltn.v self.room
pushi.e 105
cmp.i.v EQ
bf [139]

:[138]
pushi.e 505
pop.v.i self.sprite_index

:[139]
pushbltn.v self.room
pushi.e 108
cmp.i.v EQ
bf [160]

:[140]
pushi.e 1
pushi.e -5
pushi.e 296
pop.v.i [array]global.flag
pushi.e 340
pop.v.i self.sprite_index
push.v self.x
pushi.e 240
cmp.i.v GT
bf [142]

:[141]
push.v self.x
pushi.e 440
cmp.i.v LT
b [143]

:[142]
push.e 0

:[143]
bf [145]

:[144]
pushi.e 84
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.king
push.v self.x
push.v self.king
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.king
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 352
push.v self.king
conv.v.i
pop.v.i [stacktop]self.sprite_index
call.i scr_depth(argc=0)
popz.v
push.v self.depth
pushi.e 10
sub.i.v
push.v self.king
conv.v.i
pop.v.v [stacktop]self.depth

:[145]
push.v self.x
pushi.e 480
cmp.i.v GT
bf [147]

:[146]
push.v self.x
pushi.e 680
cmp.i.v LT
b [148]

:[147]
push.e 0

:[148]
bf [150]

:[149]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x
pushi.e 84
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.puzz
pushi.e 660
push.v self.puzz
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 130
push.v self.puzz
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 326
push.v self.puzz
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.tempvar

:[150]
push.v self.x
pushi.e 680
cmp.i.v GT
bf [152]

:[151]
push.v self.x
pushi.e 900
cmp.i.v LT
b [153]

:[152]
push.e 0

:[153]
bf [155]

:[154]
push.v self.x
pushi.e 8
add.i.v
pop.v.v self.x
pushi.e 84
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.rudinn
pushi.e 900
push.v self.rudinn
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 115
push.v self.rudinn
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 499
push.v self.rudinn
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.tempvar

:[155]
push.v self.x
pushi.e 900
cmp.i.v GT
bf [157]

:[156]
push.v self.x
pushi.e 1120
cmp.i.v LT
b [158]

:[157]
push.e 0

:[158]
bf [160]

:[159]
push.v self.x
pushi.e 12
add.i.v
pop.v.v self.x
pushi.e 3
pop.v.i self.tempvar
pushi.e 84
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.animal
push.v self.x
push.v self.animal
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.animal
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 353
push.v self.animal
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[160]
pushbltn.v self.room
pushi.e 115
cmp.i.v EQ
bf [162]

:[161]
pushi.e 499
pop.v.i self.sprite_index

:[162]
pushbltn.v self.room
pushi.e 117
cmp.i.v EQ
bf [164]

:[163]
pushi.e 499
pop.v.i self.sprite_index

:[164]
pushbltn.v self.room
pushi.e 119
cmp.i.v EQ
bf [166]

:[165]
pushi.e 517
pop.v.i self.sprite_index

:[166]
pushbltn.v self.room
pushi.e 121
cmp.i.v EQ
bf [168]

:[167]
pushi.e 499
pop.v.i self.sprite_index

:[168]
pushbltn.v self.room
pushi.e 122
cmp.i.v EQ
bf [173]

:[169]
pushi.e 525
pop.v.i self.sprite_index
push.v self.x
pushi.e 160
cmp.i.v LT
bf [171]

:[170]
pushi.e 499
pop.v.i self.sprite_index

:[171]
push.v self.x
pushi.e 400
cmp.i.v GT
bf [173]

:[172]
pushi.e 517
pop.v.i self.sprite_index

:[173]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [190]

:[174]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [176]

:[175]
call.i instance_destroy(argc=0)
popz.v
b [190]

:[176]
push.v self.y
pushi.e 300
cmp.i.v LT
bf [178]

:[177]
push.v self.y
pushi.e 80
cmp.i.v GT
b [179]

:[178]
push.e 0

:[179]
bf [187]

:[180]
pushi.e 340
pop.v.i self.sprite_index
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [184]

:[181]
pushi.e 84
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.king
push.v self.x
push.v self.king
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.king
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 352
push.v self.king
conv.v.i
pop.v.i [stacktop]self.sprite_index
call.i scr_depth(argc=0)
popz.v
push.v self.depth
pushi.e 10
sub.i.v
push.v self.king
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e -5
pushi.e 296
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [183]

:[182]
call.i instance_destroy(argc=0)
popz.v

:[183]
b [186]

:[184]
pushi.e 1
pop.v.i self.tempvar
pushi.e 84
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.animal
push.v self.x
push.v self.animal
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.animal
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 353
push.v self.animal
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -5
pushi.e 296
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [186]

:[185]
call.i instance_destroy(argc=0)
popz.v

:[186]
b [190]

:[187]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [189]

:[188]
pushi.e 499
pop.v.i self.sprite_index
b [190]

:[189]
pushi.e 363
pop.v.i self.sprite_index

:[190]
pushbltn.v self.room
pushi.e 127
cmp.i.v EQ
bf [201]

:[191]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [193]

:[192]
call.i instance_destroy(argc=0)
popz.v

:[193]
push.v self.x
pushi.e 180
cmp.i.v GT
bf [195]

:[194]
pushi.e 499
pop.v.i self.sprite_index

:[195]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [197]

:[196]
pushi.e 517
pop.v.i self.sprite_index

:[197]
push.v self.x
pushi.e 460
cmp.i.v GT
bf [199]

:[198]
pushi.e 525
pop.v.i self.sprite_index

:[199]
push.v self.x
pushi.e 680
cmp.i.v GT
bf [201]

:[200]
pushi.e 499
pop.v.i self.sprite_index

:[201]
pushbltn.v self.room
pushi.e 128
cmp.i.v EQ
bf [226]

:[202]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [204]

:[203]
call.i instance_destroy(argc=0)
popz.v

:[204]
push.v self.x
pushi.e 440
cmp.i.v LT
bf [206]

:[205]
pushi.e 317
pop.v.i self.sprite_index

:[206]
push.v self.y
pushi.e 160
cmp.i.v LT
bf [223]

:[207]
push.v self.x
pushi.e 398
cmp.i.v EQ
bf [209]

:[208]
pushi.e 361
pop.v.i self.sprite_index

:[209]
push.v self.x
pushi.e 522
cmp.i.v EQ
bf [211]

:[210]
pushi.e 360
pop.v.i self.sprite_index

:[211]
push.v self.x
pushi.e 740
cmp.i.v EQ
bf [213]

:[212]
pushi.e 341
pop.v.i self.sprite_index

:[213]
push.v self.x
pushi.e 820
cmp.i.v EQ
bf [215]

:[214]
pushi.e 342
pop.v.i self.sprite_index

:[215]
push.v self.x
pushi.e 940
cmp.i.v EQ
bf [217]

:[216]
pushi.e 342
pop.v.i self.sprite_index

:[217]
push.v self.x
pushi.e 1020
cmp.i.v EQ
bf [219]

:[218]
pushi.e 341
pop.v.i self.sprite_index

:[219]
push.v self.x
pushi.e 1140
cmp.i.v GT
bf [222]

:[220]
pushi.e 324
pop.v.i self.sprite_index
pushi.e -5
pushi.e 216
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [222]

:[221]
pushi.e 325
pop.v.i self.sprite_index

:[222]
b [226]

:[223]
push.v self.x
pushi.e 900
cmp.i.v LT
bf [225]

:[224]
pushi.e 338
pop.v.i self.sprite_index
b [226]

:[225]
pushi.e 339
pop.v.i self.sprite_index

:[226]
push.v self.depthcancel
pushi.e 0
cmp.i.v EQ
bf [end]

:[227]
call.i scr_depth(argc=0)
popz.v

:[end]