.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.wallcheck
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
push.v self.press_d
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.press_l
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
push.v self.press_u
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.press_r
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.nopress

:[7]
pushi.e 0
pop.v.i self.press_l
pushi.e 0
pop.v.i self.press_r
pushi.e 0
pop.v.i self.press_d
pushi.e 0
pop.v.i self.press_u
pushi.e 0
pop.v.i self.bkx
pushi.e 0
pop.v.i self.bky
pushi.e 0
pop.v.i self.bkxy
pushi.e 2
pop.v.i self.jelly
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [19]

:[8]
call.i button3_p(argc=0)
conv.v.b
bf [10]

:[9]
push.v self.threebuffer
pushi.e 0
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [19]

:[12]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.battlemode
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [19]

:[16]
pushi.e 325
pushenv [18]

:[17]
pushi.e 1
pop.v.i self.movenoise

:[18]
popenv [17]
pushi.e 0
pop.v.i global.menuno
pushi.e 5
pop.v.i global.interact
pushi.e 2
pop.v.i self.threebuffer
pushi.e 2
pop.v.i self.twobuffer

:[19]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [209]

:[20]
pushi.e -5
pushi.e 11
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [28]

:[21]
call.i button2_h(argc=0)
conv.v.b
bf [23]

:[22]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 0
pop.v.i self.run
b [27]

:[26]
pushi.e 1
pop.v.i self.run

:[27]
b [34]

:[28]
call.i button2_h(argc=0)
conv.v.b
bf [30]

:[29]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 1
pop.v.i self.run
b [34]

:[33]
pushi.e 0
pop.v.i self.run

:[34]
push.v self.autorun
pushi.e 0
cmp.i.v GT
bf [39]

:[35]
push.v self.autorun
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
pop.v.i self.run
pushi.e 200
pop.v.i self.runtimer

:[37]
push.v self.autorun
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
pushi.e 1
pop.v.i self.run
pushi.e 50
pop.v.i self.runtimer

:[39]
push.v self.run
pushi.e 1
cmp.i.v EQ
bf [50]

:[40]
push.v self.darkmode
pushi.e 0
cmp.i.v EQ
bf [45]

:[41]
push.v self.bwspeed
pushi.e 1
add.i.v
pop.v.v self.wspeed
push.v self.runtimer
pushi.e 10
cmp.i.v GT
bf [43]

:[42]
push.v self.bwspeed
pushi.e 2
add.i.v
pop.v.v self.wspeed

:[43]
push.v self.runtimer
pushi.e 60
cmp.i.v GT
bf [45]

:[44]
push.v self.bwspeed
pushi.e 3
add.i.v
pop.v.v self.wspeed

:[45]
push.v self.darkmode
pushi.e 1
cmp.i.v EQ
bf [50]

:[46]
push.v self.bwspeed
pushi.e 2
add.i.v
pop.v.v self.wspeed
push.v self.runtimer
pushi.e 10
cmp.i.v GT
bf [48]

:[47]
push.v self.bwspeed
pushi.e 4
add.i.v
pop.v.v self.wspeed

:[48]
push.v self.runtimer
pushi.e 60
cmp.i.v GT
bf [50]

:[49]
push.v self.bwspeed
pushi.e 5
add.i.v
pop.v.v self.wspeed

:[50]
push.v self.run
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
push.v self.bwspeed
pop.v.v self.wspeed

:[52]
call.i left_h(argc=0)
conv.v.b
bf [54]

:[53]
pushi.e 1
pop.v.i self.press_l

:[54]
call.i right_h(argc=0)
conv.v.b
bf [56]

:[55]
pushi.e 1
pop.v.i self.press_r

:[56]
call.i up_h(argc=0)
conv.v.b
bf [58]

:[57]
pushi.e 1
pop.v.i self.press_u

:[58]
call.i down_h(argc=0)
conv.v.b
bf [60]

:[59]
pushi.e 1
pop.v.i self.press_d

:[60]
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py
pushi.e -1
pop.v.i self.pressdir
push.v self.press_r
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.v self.wspeed
pop.v.v self.px
pushi.e 1
pop.v.i self.pressdir

:[62]
push.v self.press_l
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
push.v self.wspeed
neg.v
pop.v.v self.px
pushi.e 3
pop.v.i self.pressdir

:[64]
push.v self.press_d
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
push.v self.wspeed
pop.v.v self.py
pushi.e 0
pop.v.i self.pressdir

:[66]
push.v self.press_u
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
push.v self.wspeed
neg.v
pop.v.v self.py
pushi.e 2
pop.v.i self.pressdir

:[68]
push.v self.nopress
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
push.v self.pressdir
pop.v.v global.facing

:[73]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [81]

:[74]
push.v self.press_d
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
pushi.e 0
pop.v.i global.facing

:[76]
push.v self.press_u
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [79]

:[78]
push.e 0

:[79]
bf [81]

:[80]
push.v self.pressdir
pop.v.v global.facing

:[81]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [89]

:[82]
push.v self.press_u
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
pushi.e 2
pop.v.i global.facing

:[84]
push.v self.press_d
pushi.e 0
cmp.i.v EQ
bf [86]

:[85]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
push.v self.pressdir
pop.v.v global.facing

:[89]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [97]

:[90]
push.v self.press_r
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
pushi.e 1
pop.v.i global.facing

:[92]
push.v self.press_l
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [95]

:[94]
push.e 0

:[95]
bf [97]

:[96]
push.v self.pressdir
pop.v.v global.facing

:[97]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [105]

:[98]
push.v self.press_l
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
pushi.e 3
pop.v.i global.facing

:[100]
push.v self.press_r
pushi.e 0
cmp.i.v EQ
bf [102]

:[101]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
push.v self.pressdir
pop.v.v global.facing

:[105]
pushi.e 0
pop.v.i self.nopress
pushi.e 0
pop.v.i self.xmeet
pushi.e 0
pop.v.i self.ymeet
pushi.e 0
pop.v.i self.xymeet
pushi.e 336
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [107]

:[106]
pushi.e 1
pop.v.i self.xymeet

:[107]
pushi.e 336
conv.i.v
push.v self.y
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [138]

:[108]
pushi.e 336
conv.i.v
push.v self.y
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [124]

:[109]
push.v self.wspeed
pop.v.v self.g

:[110]
push.v self.g
pushi.e 0
cmp.i.v GT
bf [124]

:[111]
pushi.e 0
pop.v.i self.mvd
push.v self.press_d
pushi.e 0
cmp.i.v EQ
bf [113]

:[112]
pushi.e 336
conv.i.v
push.v self.y
push.v self.g
sub.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [114]

:[113]
push.e 0

:[114]
bf [117]

:[115]
push.v self.y
push.v self.g
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.py
b [124]

:[116]
pushi.e 1
pop.v.i self.mvd

:[117]
push.v self.press_u
pushi.e 0
cmp.i.v EQ
bf [120]

:[118]
push.v self.mvd
pushi.e 0
cmp.i.v EQ
bf [120]

:[119]
pushi.e 336
conv.i.v
push.v self.y
push.v self.g
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [121]

:[120]
push.e 0

:[121]
bf [123]

:[122]
push.v self.y
push.v self.g
add.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.py
b [124]

:[123]
push.v self.g
pushi.e 1
sub.i.v
pop.v.v self.g
b [110]

:[124]
pushi.e 1
pop.v.i self.xmeet
pushi.e 0
pop.v.i self.bkx
push.v self.px
pushi.e 0
cmp.i.v GT
bf [130]

:[125]
push.v self.px
pop.v.v self.i

:[126]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [130]

:[127]
pushi.e 336
conv.i.v
push.v self.y
push.v self.x
push.v self.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [129]

:[128]
push.v self.i
pop.v.v self.px
pushi.e 1
pop.v.i self.bkx
b [130]

:[129]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [126]

:[130]
push.v self.px
pushi.e 0
cmp.i.v LT
bf [136]

:[131]
push.v self.px
pop.v.v self.i

:[132]
push.v self.i
pushi.e 0
cmp.i.v LTE
bf [136]

:[133]
pushi.e 336
conv.i.v
push.v self.y
push.v self.x
push.v self.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [135]

:[134]
push.v self.i
pop.v.v self.px
pushi.e 1
pop.v.i self.bkx
b [136]

:[135]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [132]

:[136]
push.v self.bkx
pushi.e 0
cmp.i.v EQ
bf [138]

:[137]
pushi.e 0
pop.v.i self.px

:[138]
pushi.e 336
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [169]

:[139]
pushi.e 1
pop.v.i self.ymeet
pushi.e 0
pop.v.i self.bky
pushi.e 336
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [155]

:[140]
push.v self.wspeed
pop.v.v self.g

:[141]
push.v self.g
pushi.e 0
cmp.i.v GT
bf [155]

:[142]
pushi.e 0
pop.v.i self.mvd
push.v self.press_r
pushi.e 0
cmp.i.v EQ
bf [144]

:[143]
pushi.e 336
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.g
sub.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [145]

:[144]
push.e 0

:[145]
bf [148]

:[146]
push.v self.x
push.v self.g
sub.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.px
b [155]

:[147]
pushi.e 1
pop.v.i self.mvd

:[148]
push.v self.mvd
pushi.e 0
cmp.i.v EQ
bf [151]

:[149]
push.v self.press_l
pushi.e 0
cmp.i.v EQ
bf [151]

:[150]
pushi.e 336
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.g
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [152]

:[151]
push.e 0

:[152]
bf [154]

:[153]
push.v self.x
push.v self.g
add.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.px
b [155]

:[154]
push.v self.g
pushi.e 1
sub.i.v
pop.v.v self.g
b [141]

:[155]
push.v self.py
pushi.e 0
cmp.i.v GT
bf [161]

:[156]
push.v self.py
pop.v.v self.i

:[157]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [161]

:[158]
pushi.e 336
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [160]

:[159]
push.v self.i
pop.v.v self.py
pushi.e 1
pop.v.i self.bky
b [161]

:[160]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [157]

:[161]
push.v self.py
pushi.e 0
cmp.i.v LT
bf [167]

:[162]
push.v self.py
pop.v.v self.i

:[163]
push.v self.i
pushi.e 0
cmp.i.v LTE
bf [167]

:[164]
pushi.e 336
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [166]

:[165]
push.v self.i
pop.v.v self.py
pushi.e 1
pop.v.i self.bky
b [167]

:[166]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [163]

:[167]
push.v self.bky
pushi.e 0
cmp.i.v EQ
bf [169]

:[168]
pushi.e 0
pop.v.i self.py

:[169]
pushi.e 336
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [194]

:[170]
pushi.e 1
pop.v.i self.xymeet
pushi.e 0
pop.v.i self.bkxy
push.v self.px
pop.v.v self.i
push.v self.py
pop.v.v self.j

:[171]
push.v self.j
pushi.e 0
cmp.i.v NEQ
bt [173]

:[172]
push.v self.i
pushi.e 0
cmp.i.v NEQ
b [174]

:[173]
push.e 1

:[174]
bf [192]

:[175]
pushi.e 336
conv.i.v
push.v self.y
push.v self.j
add.v.v
push.v self.x
push.v self.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [177]

:[176]
push.v self.i
pop.v.v self.px
push.v self.j
pop.v.v self.py
pushi.e 1
pop.v.i self.bkxy
b [192]

:[177]
push.v self.j
call.i abs(argc=1)
pushi.e 1
cmp.i.v GTE
bf [183]

:[178]
push.v self.j
pushi.e 0
cmp.i.v GT
bf [180]

:[179]
push.v self.j
pushi.e 1
sub.i.v
pop.v.v self.j

:[180]
push.v self.j
pushi.e 0
cmp.i.v LT
bf [182]

:[181]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j

:[182]
b [184]

:[183]
pushi.e 0
pop.v.i self.j

:[184]
push.v self.i
call.i abs(argc=1)
pushi.e 1
cmp.i.v GTE
bf [190]

:[185]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [187]

:[186]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i

:[187]
push.v self.i
pushi.e 0
cmp.i.v LT
bf [189]

:[188]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i

:[189]
b [191]

:[190]
pushi.e 0
pop.v.i self.i

:[191]
b [171]

:[192]
push.v self.bkxy
pushi.e 0
cmp.i.v EQ
bf [194]

:[193]
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py

:[194]
pushi.e 0
pop.v.i self.runmove
push.v self.run
pushi.e 1
cmp.i.v EQ
bf [198]

:[195]
push.v self.xmeet
pushi.e 0
cmp.i.v EQ
bf [198]

:[196]
push.v self.ymeet
pushi.e 0
cmp.i.v EQ
bf [198]

:[197]
push.v self.xymeet
pushi.e 0
cmp.i.v EQ
b [199]

:[198]
push.e 0

:[199]
bf [207]

:[200]
push.v self.px
call.i abs(argc=1)
pushi.e 0
cmp.i.v GT
bt [202]

:[201]
push.v self.py
call.i abs(argc=1)
pushi.e 0
cmp.i.v GT
b [203]

:[202]
push.e 1

:[203]
bf [205]

:[204]
pushi.e 1
pop.v.i self.runmove
push.v self.runtimer
pushi.e 1
add.i.v
pop.v.v self.runtimer
b [206]

:[205]
pushi.e 0
pop.v.i self.runtimer

:[206]
b [208]

:[207]
pushi.e 0
pop.v.i self.runtimer

:[208]
push.v self.x
push.v self.px
add.v.v
pop.v.v self.x
push.v self.y
push.v self.py
add.v.v
pop.v.v self.y

:[209]
pushi.e 0
pop.v.i self.walk
push.v self.x
push.v self.nowx
cmp.v.v NEQ
bf [211]

:[210]
push.v self.nopress
pushi.e 0
cmp.i.v EQ
b [212]

:[211]
push.e 0

:[212]
bf [214]

:[213]
pushi.e 1
pop.v.i self.walk

:[214]
push.v self.y
push.v self.nowy
cmp.v.v NEQ
bf [216]

:[215]
push.v self.nopress
pushi.e 0
cmp.i.v EQ
b [217]

:[216]
push.e 0

:[217]
bf [219]

:[218]
pushi.e 1
pop.v.i self.walk

:[219]
push.v self.walk
pushi.e 1
cmp.i.v EQ
bf [221]

:[220]
pushi.e 6
pop.v.i self.walkbuffer

:[221]
push.v self.walkbuffer
pushi.e 3
cmp.i.v GT
bf [223]

:[222]
push.v self.fun
pushi.e 0
cmp.i.v EQ
b [224]

:[223]
push.e 0

:[224]
bf [237]

:[225]
push.v self.walktimer
push.d 1.5
add.d.v
pop.v.v self.walktimer
push.v self.runmove
pushi.e 1
cmp.i.v EQ
bf [227]

:[226]
push.v self.walktimer
push.d 1.5
add.d.v
pop.v.v self.walktimer

:[227]
push.v self.walktimer
pushi.e 40
cmp.i.v GTE
bf [229]

:[228]
push.v self.walktimer
pushi.e 40
sub.i.v
pop.v.v self.walktimer

:[229]
push.v self.walktimer
pushi.e 10
cmp.i.v LT
bf [231]

:[230]
pushi.e 0
pop.v.i self.image_index

:[231]
push.v self.walktimer
pushi.e 10
cmp.i.v GTE
bf [233]

:[232]
pushi.e 1
pop.v.i self.image_index

:[233]
push.v self.walktimer
pushi.e 20
cmp.i.v GTE
bf [235]

:[234]
pushi.e 2
pop.v.i self.image_index

:[235]
push.v self.walktimer
pushi.e 30
cmp.i.v GTE
bf [237]

:[236]
pushi.e 3
pop.v.i self.image_index

:[237]
push.v self.walkbuffer
pushi.e 0
cmp.i.v LTE
bf [239]

:[238]
push.v self.fun
pushi.e 0
cmp.i.v EQ
b [240]

:[239]
push.e 0

:[240]
bf [256]

:[241]
push.v self.walktimer
pushi.e 10
cmp.i.v LT
bf [243]

:[242]
push.d 9.5
pop.v.d self.walktimer

:[243]
push.v self.walktimer
pushi.e 10
cmp.i.v GTE
bf [245]

:[244]
push.v self.walktimer
pushi.e 20
cmp.i.v LT
b [246]

:[245]
push.e 0

:[246]
bf [248]

:[247]
push.d 19.5
pop.v.d self.walktimer

:[248]
push.v self.walktimer
pushi.e 20
cmp.i.v GTE
bf [250]

:[249]
push.v self.walktimer
pushi.e 30
cmp.i.v LT
b [251]

:[250]
push.e 0

:[251]
bf [253]

:[252]
push.d 29.5
pop.v.d self.walktimer

:[253]
push.v self.walktimer
pushi.e 30
cmp.i.v GTE
bf [255]

:[254]
push.d 39.5
pop.v.d self.walktimer

:[255]
pushi.e 0
pop.v.i self.image_index

:[256]
push.v self.walkbuffer
push.d 0.75
sub.d.v
pop.v.v self.walkbuffer
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [265]

:[257]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [259]

:[258]
push.v self.dsprite
pop.v.v self.sprite_index

:[259]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [261]

:[260]
push.v self.rsprite
pop.v.v self.sprite_index

:[261]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [263]

:[262]
push.v self.usprite
pop.v.v self.sprite_index

:[263]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [265]

:[264]
push.v self.lsprite
pop.v.v self.sprite_index

:[265]
push.v self.stepping
pushi.e 1
cmp.i.v EQ
bf [284]

:[266]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [268]

:[267]
push.v self.stepped
pushi.e 0
cmp.i.v EQ
b [269]

:[268]
push.e 0

:[269]
bf [273]

:[270]
pushi.e -5
pushi.e 31
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [272]

:[271]
pushi.e 114
conv.i.v
call.i snd_play(argc=1)
popz.v

:[272]
pushi.e 1
pop.v.i self.stepped

:[273]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bt [275]

:[274]
push.v self.image_index
pushi.e 2
cmp.i.v EQ
b [276]

:[275]
push.e 1

:[276]
bf [278]

:[277]
pushi.e 0
pop.v.i self.stepped

:[278]
push.v self.image_index
pushi.e 3
cmp.i.v EQ
bf [280]

:[279]
push.v self.stepped
pushi.e 0
cmp.i.v EQ
b [281]

:[280]
push.e 0

:[281]
bf [284]

:[282]
pushi.e 1
pop.v.i self.stepped
pushi.e -5
pushi.e 31
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [284]

:[283]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[284]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [351]

:[285]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [351]

:[286]
call.i button1_p(argc=0)
conv.v.b
bf [351]

:[287]
pushi.e 0
pop.v.i self.thisinteract
pushglb.v global.darkzone
pushi.e 1
add.i.v
pop.v.v self.d
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [292]

:[288]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 89
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
push.v self.d
mul.v.i
add.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
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
call.i collision_rectangle(argc=7)
conv.v.b
bf [290]

:[289]
pushi.e 1
pop.v.i self.thisinteract

:[290]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 81
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
push.v self.d
mul.v.i
add.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
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
call.i collision_rectangle(argc=7)
conv.v.b
bf [292]

:[291]
pushi.e 2
pop.v.i self.thisinteract

:[292]
push.v self.thisinteract
pushi.e 0
cmp.i.v GT
bf [303]

:[293]
push.v self.thisinteract
pushi.e 1
cmp.i.v EQ
bf [295]

:[294]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 89
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
push.v self.d
mul.v.i
add.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
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
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[295]
push.v self.thisinteract
pushi.e 2
cmp.i.v EQ
bf [297]

:[296]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 81
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
push.v self.d
mul.v.i
add.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
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
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[297]
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [303]

:[298]
push.v self.interactedobject
conv.v.i
pushenv [300]

:[299]
pushi.e 3
pop.v.i self.facing

:[300]
popenv [299]
push.v self.interactedobject
conv.v.i
pushenv [302]

:[301]
call.i scr_interact(argc=0)
popz.v

:[302]
popenv [301]

:[303]
pushi.e 0
pop.v.i self.thisinteract
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [308]

:[304]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 89
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
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
call.i collision_rectangle(argc=7)
conv.v.b
bf [306]

:[305]
pushi.e 1
pop.v.i self.thisinteract

:[306]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 81
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
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
call.i collision_rectangle(argc=7)
conv.v.b
bf [308]

:[307]
pushi.e 2
pop.v.i self.thisinteract

:[308]
push.v self.thisinteract
pushi.e 0
cmp.i.v GT
bf [319]

:[309]
push.v self.thisinteract
pushi.e 1
cmp.i.v EQ
bf [311]

:[310]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 89
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
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
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[311]
push.v self.thisinteract
pushi.e 2
cmp.i.v EQ
bf [313]

:[312]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 81
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
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
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[313]
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [319]

:[314]
push.v self.interactedobject
conv.v.i
pushenv [316]

:[315]
pushi.e 1
pop.v.i self.facing

:[316]
popenv [315]
push.v self.interactedobject
conv.v.i
pushenv [318]

:[317]
call.i scr_interact(argc=0)
popz.v

:[318]
popenv [317]

:[319]
pushi.e 0
pop.v.i self.thisinteract
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [324]

:[320]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 89
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 28
push.v self.d
mul.v.i
add.v.v
push.v self.x
pushi.e 4
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [322]

:[321]
pushi.e 1
pop.v.i self.thisinteract

:[322]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 81
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 28
push.v self.d
mul.v.i
add.v.v
push.v self.x
pushi.e 4
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [324]

:[323]
pushi.e 2
pop.v.i self.thisinteract

:[324]
push.v self.thisinteract
pushi.e 0
cmp.i.v GT
bf [335]

:[325]
push.v self.thisinteract
pushi.e 1
cmp.i.v EQ
bf [327]

:[326]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 89
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 28
push.v self.d
mul.v.i
add.v.v
push.v self.x
pushi.e 4
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[327]
push.v self.thisinteract
pushi.e 2
cmp.i.v EQ
bf [329]

:[328]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 81
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 28
push.v self.d
mul.v.i
add.v.v
push.v self.x
pushi.e 4
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[329]
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [335]

:[330]
push.v self.interactedobject
conv.v.i
pushenv [332]

:[331]
pushi.e 2
pop.v.i self.facing

:[332]
popenv [331]
push.v self.interactedobject
conv.v.i
pushenv [334]

:[333]
call.i scr_interact(argc=0)
popz.v

:[334]
popenv [333]

:[335]
pushi.e 0
pop.v.i self.thisinteract
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [340]

:[336]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 89
conv.i.v
push.v self.y
pushi.e 5
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.x
pushi.e 3
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [338]

:[337]
pushi.e 1
pop.v.i self.thisinteract

:[338]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 81
conv.i.v
push.v self.y
pushi.e 5
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.x
pushi.e 3
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [340]

:[339]
pushi.e 2
pop.v.i self.thisinteract

:[340]
push.v self.thisinteract
pushi.e 0
cmp.i.v GT
bf [351]

:[341]
push.v self.thisinteract
pushi.e 1
cmp.i.v EQ
bf [343]

:[342]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 89
conv.i.v
push.v self.y
pushi.e 5
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.x
pushi.e 3
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[343]
push.v self.thisinteract
pushi.e 2
cmp.i.v EQ
bf [345]

:[344]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 81
conv.i.v
push.v self.y
pushi.e 5
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.x
pushi.e 3
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[345]
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [351]

:[346]
push.v self.interactedobject
conv.v.i
pushenv [348]

:[347]
pushi.e 0
pop.v.i self.facing

:[348]
popenv [347]
push.v self.interactedobject
conv.v.i
pushenv [350]

:[349]
call.i scr_interact(argc=0)
popz.v

:[350]
popenv [349]

:[351]
push.v self.onebuffer
pushi.e 1
sub.i.v
pop.v.v self.onebuffer
push.v self.twobuffer
pushi.e 1
sub.i.v
pop.v.v self.twobuffer
push.v self.threebuffer
pushi.e 1
sub.i.v
pop.v.v self.threebuffer
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 103
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.i
pushenv [353]

:[352]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[353]
popenv [352]
push.v self.battlemode
pushi.e 1
cmp.i.v EQ
bf [362]

:[354]
push.v global.inv
pushi.e 1
sub.i.v
pop.v.v global.inv
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [362]

:[355]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 182
conv.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 27
add.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i collision_rectangle(argc=7)
conv.v.i
pushenv [357]

:[356]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[357]
popenv [356]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 182
conv.i.v
push.v self.y
pushi.e 57
add.i.v
push.v self.x
pushi.e 19
add.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i collision_line(argc=7)
conv.v.i
pushenv [359]

:[358]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[359]
popenv [358]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 182
conv.i.v
push.v self.y
pushi.e 57
add.i.v
push.v self.x
pushi.e 19
add.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 26
add.i.v
call.i collision_line(argc=7)
conv.v.i
pushenv [361]

:[360]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[361]
popenv [360]

:[362]
call.i scr_debug(argc=0)
conv.v.b
bf [end]

:[363]
pushi.e 80
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [365]

:[364]
pushi.e 60
pop.v.i self.room_speed

:[365]
pushi.e 79
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [367]

:[366]
pushi.e 3
pop.v.i self.room_speed

:[367]
pushi.e 51
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [369]

:[368]
pushi.e 68
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [370]

:[369]
push.e 0

:[370]
bf [372]

:[371]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.char
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.char
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i global.darkzone
pushi.e 34
conv.i.v
call.i room_goto(argc=1)
popz.v

:[372]
pushi.e 52
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [374]

:[373]
pushi.e 68
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [375]

:[374]
push.e 0

:[375]
bf [377]

:[376]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 3
pushi.e -5
pushi.e 1
pop.v.i [array]global.char
pushi.e 2
pushi.e -5
pushi.e 2
pop.v.i [array]global.char
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i global.darkzone
pushi.e 70
conv.i.v
call.i room_goto(argc=1)
popz.v

:[377]
pushi.e 53
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [379]

:[378]
pushi.e 68
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [380]

:[379]
push.e 0

:[380]
bf [382]

:[381]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.char
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.char
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i global.darkzone
pushi.e 47
conv.i.v
call.i room_goto(argc=1)
popz.v

:[382]
pushi.e 54
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [384]

:[383]
pushi.e 68
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [385]

:[384]
push.e 0

:[385]
bf [387]

:[386]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 3
pushi.e -5
pushi.e 1
pop.v.i [array]global.char
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.char
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i global.darkzone
pushi.e 51
conv.i.v
call.i room_goto(argc=1)
popz.v

:[387]
pushi.e 55
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [389]

:[388]
pushi.e 68
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [390]

:[389]
push.e 0

:[390]
bf [392]

:[391]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 3
pushi.e -5
pushi.e 1
pop.v.i [array]global.char
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.char
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i global.darkzone
pushi.e 81
conv.i.v
call.i room_goto(argc=1)
popz.v

:[392]
pushi.e 56
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [394]

:[393]
pushi.e 68
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [395]

:[394]
push.e 0

:[395]
bf [397]

:[396]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 3
pushi.e -5
pushi.e 1
pop.v.i [array]global.char
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.char
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i global.darkzone
pushi.e 97
conv.i.v
call.i room_goto(argc=1)
popz.v

:[397]
pushi.e 57
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [399]

:[398]
pushi.e 68
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [400]

:[399]
push.e 0

:[400]
bf [402]

:[401]
pushi.e 2
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.char
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.char
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i global.darkzone
pushi.e 154
pop.v.i global.plot
pushi.e 105
conv.i.v
call.i room_goto(argc=1)
popz.v

:[402]
pushi.e 54
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [404]

:[403]
pushi.e 74
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [405]

:[404]
push.e 0

:[405]
bf [407]

:[406]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 3
pushi.e -5
pushi.e 1
pop.v.i [array]global.char
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.char
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i global.darkzone
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.charauto
pushi.e 144
conv.i.v
call.i room_goto(argc=1)
popz.v

:[407]
pushi.e 55
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [409]

:[408]
pushi.e 74
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [410]

:[409]
push.e 0

:[410]
bf [412]

:[411]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 2
pushi.e -5
pushi.e 1
pop.v.i [array]global.char
pushi.e 3
pushi.e -5
pushi.e 2
pop.v.i [array]global.char
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i global.darkzone
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.charauto
pushi.e 144
conv.i.v
call.i room_goto(argc=1)
popz.v

:[412]
pushi.e 56
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [414]

:[413]
pushi.e 74
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [415]

:[414]
push.e 0

:[415]
bf [419]

:[416]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 2
pushi.e -5
pushi.e 1
pop.v.i [array]global.char
pushi.e 3
pushi.e -5
pushi.e 2
pop.v.i [array]global.char
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i global.darkzone
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.charauto
pushi.e 165
pop.v.i global.plot
pushi.e 5
conv.i.v
call.i scr_keyitemget(argc=1)
popz.v
pushi.e 1
pushi.e -5
pushi.e 4
pop.v.i [array]global.tempflag
pushi.e 13
dup.i 0
push.i 0
cmp.i.i LTE
bt [418]

:[417]
pushi.e 5
conv.i.v
call.i scr_weaponget(argc=1)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [417]

:[418]
popz.i
pushi.e 111
conv.i.v
call.i room_goto(argc=1)
popz.v

:[419]
pushi.e 57
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [421]

:[420]
pushi.e 74
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [422]

:[421]
push.e 0

:[422]
bf [424]

:[423]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.char
pushi.e 2
pushi.e -5
pushi.e 1
pop.v.i [array]global.char
pushi.e 3
pushi.e -5
pushi.e 2
pop.v.i [array]global.char
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i global.darkzone
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.charauto
pushi.e 0
pushi.e -5
pushi.e 248
pop.v.i [array]global.flag
pushi.e 128
conv.i.v
call.i room_goto(argc=1)
popz.v

:[424]
pushi.e 50
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [426]

:[425]
pushi.e 87
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [427]

:[426]
push.e 0

:[427]
bf [429]

:[428]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.darkzone
pushi.e 7
conv.i.v
call.i room_goto(argc=1)
popz.v

:[429]
pushi.e 51
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [431]

:[430]
pushi.e 87
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [432]

:[431]
push.e 0

:[432]
bf [434]

:[433]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.darkzone
pushi.e 31
conv.i.v
call.i room_goto(argc=1)
popz.v

:[434]
pushi.e 52
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [436]

:[435]
pushi.e 87
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [437]

:[436]
push.e 0

:[437]
bf [439]

:[438]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.darkzone
pushi.e 33
conv.i.v
call.i room_goto(argc=1)
popz.v

:[439]
pushi.e 53
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [441]

:[440]
pushi.e 87
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [442]

:[441]
push.e 0

:[442]
bf [444]

:[443]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.darkzone
pushi.e 251
pop.v.i global.plot
pushi.e 14
conv.i.v
call.i room_goto(argc=1)
popz.v

:[444]
pushi.e 54
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [446]

:[445]
pushi.e 87
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [447]

:[446]
push.e 0

:[447]
bf [449]

:[448]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.darkzone
pushi.e 251
pop.v.i global.plot
pushi.e 9
conv.i.v
call.i room_goto(argc=1)
popz.v

:[449]
pushi.e 45
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [451]

:[450]
call.i room_goto_next(argc=0)
popz.v

:[451]
pushi.e 46
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[452]
call.i room_goto_previous(argc=0)
popz.v

:[end]