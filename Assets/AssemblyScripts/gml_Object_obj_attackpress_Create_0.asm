.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.active
pushi.e 1
pop.v.i self.fastmode
push.v self.fastmode
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.active

:[2]
pushi.e 0
pop.v.i self.goahead
pushi.e 2
pop.v.i self.linespeed
pushi.e -10
pop.v.i self.linex
pushi.e 0
pop.v.i self.spelluse
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.spelldelay
pushi.e 10
pushi.e -1
pushi.e 1
pop.v.i [array]self.spelldelay
pushi.e 10
pushi.e -1
pushi.e 2
pop.v.i [array]self.spelldelay
pushi.e 0
pop.v.i self.maxdelay
pushi.e 0
pop.v.i self.maxdelaytimer
push.v self.spelluse
pushi.e 0
cmp.i.v EQ
bf [29]

:[3]
pushi.e 0
pop.v.i self.xyz

:[4]
push.v self.xyz
pushi.e 3
cmp.i.v LT
bf [29]

:[5]
pushi.e 0
pushi.e -1
push.v self.xyz
conv.v.i
pop.v.i [array]self.havechar
pushi.e 0
pushi.e -1
push.v self.xyz
conv.v.i
pop.v.i [array]self.charitem
pushi.e 0
pushi.e -1
push.v self.xyz
conv.v.i
pop.v.i [array]self.charspell
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]global.charaction
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pushi.e -1
push.v self.xyz
conv.v.i
pop.v.i [array]self.havechar

:[7]
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]global.charaction
pushi.e 4
cmp.i.v EQ
bt [9]

:[8]
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]global.charaction
pushi.e 2
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [28]

:[11]
push.v self.maxdelay
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 25
pop.v.i self.maxdelay

:[13]
push.v self.maxdelay
pushi.e 15
add.i.v
pop.v.v self.maxdelay
push.v self.xyz
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
push.v self.spelluse
pushi.e 1
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [20]

:[17]
pushi.e -1
pushi.e 1
push.v [array]self.spelldelay
pushi.e 25
cmp.i.v EQ
bf [19]

:[18]
pushi.e 45
pushi.e -1
pushi.e 2
pop.v.i [array]self.spelldelay
b [20]

:[19]
pushi.e 25
pushi.e -1
pushi.e 2
pop.v.i [array]self.spelldelay

:[20]
push.v self.xyz
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.spelluse
pushi.e 1
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 25
pushi.e -1
pushi.e 1
pop.v.i [array]self.spelldelay

:[25]
pushi.e 1
pop.v.i self.spelluse
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]global.charaction
pushi.e 4
cmp.i.v EQ
bf [27]

:[26]
pushi.e 1
pushi.e -1
push.v self.xyz
conv.v.i
pop.v.i [array]self.charitem
b [28]

:[27]
pushi.e 1
pushi.e -1
push.v self.xyz
conv.v.i
pop.v.i [array]self.charspell

:[28]
push.v self.xyz
pushi.e 1
add.i.v
pop.v.v self.xyz
b [4]

:[29]
pushi.e 0
pop.v.i self.spelluse
pushi.e 0
pop.v.i self.fade
pushi.e 0
pop.v.i self.fadeamt
pushi.e 0
pop.v.i self.fakefade
push.i 8388608
pop.v.i self.bcolor
push.i 16776960
pushi.e -1
pushi.e 0
pop.v.i [array]self.charcolor
push.i 16711935
pushi.e -1
pushi.e 1
pop.v.i [array]self.charcolor
push.i 65280
pushi.e -1
pushi.e 2
pop.v.i [array]self.charcolor
pushi.e 0
pop.v.i self.target
pushi.e -5
pushi.e 0
push.v [array]global.chartarget
pushi.e -5
pushi.e 0
pop.v.v [array]global.hittarget
pushi.e -5
pushi.e 1
push.v [array]global.chartarget
pushi.e -5
pushi.e 1
pop.v.v [array]global.hittarget
pushi.e -5
pushi.e 2
push.v [array]global.chartarget
pushi.e -5
pushi.e 2
pop.v.v [array]global.hittarget
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 16776960
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.boltcolor
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 16711935
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.boltcolor
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 65280
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.boltcolor
pushi.e 0
pop.v.i self.imagetimer
pushi.e 0
pop.v.i self.posttimer
pushi.e 50
pop.v.i self.timermax
pushi.e -1
pushi.e 0
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bf [32]

:[30]
pushi.e -1
pushi.e 1
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e -1
pushi.e 2
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [39]

:[34]
pushi.e 3
pop.v.i self.timermax
push.v self.spelluse
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.v self.fastmode
pushi.e 1
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.v self.timermax
push.v self.maxdelay
add.v.v
pop.v.v self.timermax

:[39]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.boltorder
pushi.e -1
pushi.e 1
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
pushi.e -1
pushi.e 2
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.boltorder

:[44]
pushi.e -1
pushi.e 0
push.v [array]self.boltorder
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.boltorder

:[46]
pushi.e -1
pushi.e 0
push.v [array]self.boltorder
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.boltorder

:[48]
pushi.e -1
pushi.e 0
push.v [array]self.boltorder
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.boltorder

:[50]
pushi.e -1
pushi.e 1
push.v [array]self.boltorder
pushi.e 2
cmp.i.v EQ
bf [52]

:[51]
pushi.e -1
pushi.e 0
push.v [array]self.boltorder
pushi.e 0
cmp.i.v EQ
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.boltorder

:[55]
pushi.e -1
pushi.e 1
push.v [array]self.boltorder
pushi.e 0
cmp.i.v EQ
bf [57]

:[56]
pushi.e -1
pushi.e 0
push.v [array]self.boltorder
pushi.e 2
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.boltorder

:[60]
pushi.e -1
pushi.e 1
push.v [array]self.boltorder
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
pushi.e -1
pushi.e 0
push.v [array]self.boltorder
pushi.e 0
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.boltorder

:[65]
pushi.e -1
pushi.e 1
push.v [array]self.boltorder
pushi.e 0
cmp.i.v EQ
bf [67]

:[66]
pushi.e -1
pushi.e 0
push.v [array]self.boltorder
pushi.e 1
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.boltorder

:[70]
pushi.e -1
pushi.e 1
push.v [array]self.boltorder
pushi.e 2
cmp.i.v EQ
bf [72]

:[71]
pushi.e -1
pushi.e 0
push.v [array]self.boltorder
pushi.e 1
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.boltorder

:[75]
pushi.e -1
pushi.e 1
push.v [array]self.boltorder
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
pushi.e -1
pushi.e 0
push.v [array]self.boltorder
pushi.e 2
cmp.i.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.boltorder

:[80]
pushi.e -1
pushi.e 1
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
pushi.e -1
pushi.e 2
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [87]

:[84]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.boltorder
pushi.e -1
pushi.e 0
push.v [array]self.boltorder
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.boltorder
b [87]

:[86]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.boltorder

:[87]
pushi.e 20
pop.v.i self.boltgap
pushi.e 8
pop.v.i self.boltspeed
pushi.e 0
pop.v.i self.boltx
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.points
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.points
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.points
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.pressbuffer
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.pressbuffer
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.pressbuffer
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.pressbuffer
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.charbolt
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.charbolt
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.charbolt
pushi.e 0
pop.v.i self.i

:[88]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [92]

:[89]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bf [91]

:[90]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.charbolt

:[91]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [88]

:[92]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.attacked
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.attacked
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.attacked
pushi.e -1
pushi.e 0
push.v [array]self.charbolt
pushi.e -1
pushi.e 1
push.v [array]self.charbolt
add.v.v
pushi.e -1
pushi.e 2
push.v [array]self.charbolt
add.v.v
pop.v.v self.bolttotal
pushi.e 0
pop.v.i self.boltxoff
pushi.e 1
pop.v.i self.method
pushi.e 1
pop.v.i self.boltnum
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.boltuse
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.boltuse
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.boltuse
pushi.e -1
pop.v.i self.lastbolt
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.boltchar
pushi.e 10
pop.v.i self.diff
pushi.e -5
pushi.e 13
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
push.v self.diff
pushi.e 2
add.i.v
pop.v.v self.diff

:[94]
push.v self.method
pushi.e 1
cmp.i.v EQ
bf [118]

:[95]
pushi.e 0
pop.v.i self.i

:[96]
push.v self.i
push.v self.bolttotal
cmp.v.v LT
bf [106]

:[97]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.boltalive
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.c

:[98]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bf [100]

:[99]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.c
b [98]

:[100]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.boltuse
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charbolt
cmp.v.v GTE
bf [105]

:[101]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.c

:[102]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bf [104]

:[103]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.c
b [102]

:[104]
b [100]

:[105]
push.v self.c
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.boltchar
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.boltuse
pushi.e 1
add.i.v
pop.i.v [array]self.boltuse
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [96]

:[106]
pushi.e 0
pop.v.i self.i

:[107]
push.v self.i
push.v self.bolttotal
cmp.v.v LT
bf [118]

:[108]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.boltred
push.v self.boltxoff
push.v self.lastbolt
add.v.v
pop.v.v self.boltxoff
pushi.e 30
push.v self.boltxoff
add.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.boltframe
push.v self.i
push.v self.bolttotal
pushi.e 1
sub.i.v
cmp.v.v LT
bf [116]

:[109]
push.v self.lastbolt
pushi.e 0
cmp.i.v NEQ
bf [111]

:[110]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltchar
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.boltchar
cmp.v.v NEQ
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
push.v self.diff
push.d 1.5
mul.d.v
push.v self.diff
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.lastbolt
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.boltred
b [115]

:[114]
push.v self.diff
push.d 1.5
mul.d.v
push.v self.diff
call.i choose(argc=2)
pop.v.v self.lastbolt

:[115]
b [117]

:[116]
push.v self.diff
push.d 1.5
mul.d.v
push.v self.diff
call.i choose(argc=2)
pop.v.v self.lastbolt

:[117]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [107]

:[118]
push.v self.method
pushi.e 2
cmp.i.v EQ
bf [132]

:[119]
pushi.e 0
pop.v.i self.c

:[120]
push.v self.c
pushi.e 3
cmp.i.v LT
bf [132]

:[121]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
bf [131]

:[122]
pushi.e 0
pop.v.i self.i

:[123]
push.v self.i
push.v self.boltnum
cmp.v.v LT
bf [131]

:[124]
pushi.e 30
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.boltorder
push.v self.boltgap
mul.v.v
add.v.i
push.v self.i
pushi.e 15
conv.i.v
pushi.e 10
conv.i.v
pushi.e 5
conv.i.v
call.i choose(argc=3)
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.c
conv.v.i
chkindex.e
add.i.i
pop.v.v [array]self.boltframe
push.v self.i
pushi.e 2
cmp.i.v EQ
bf [130]

:[125]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]self.boltframe
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]self.boltframe
cmp.v.v EQ
bf [127]

:[126]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]self.boltframe
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]self.boltframe
cmp.v.v EQ
b [128]

:[127]
push.e 0

:[128]
bf [130]

:[129]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
dup.i 1
push.v [array]self.boltframe
pushi.e 10
add.i.v
pop.i.v [array]self.boltframe

:[130]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [123]

:[131]
push.v self.c
pushi.e 1
add.i.v
pop.v.v self.c
b [120]

:[132]
pushi.e 0
pop.v.i self.haveauto
pushi.e 0
pop.v.i self.autoed
pushi.e -5
pushi.e 2
push.v [array]global.charauto
pushi.e 1
cmp.i.v EQ
bf [end]

:[133]
pushi.e -5
pushi.e 0
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bt [136]

:[134]
pushi.e -5
pushi.e 1
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bt [136]

:[135]
pushi.e -5
pushi.e 2
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
b [137]

:[136]
push.e 1

:[137]
bf [end]

:[138]
pushi.e 0
pop.v.i self.sus
pushi.e -5
pushi.e 1
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [140]

:[139]
pushi.e 1
pop.v.i self.sus

:[140]
pushi.e -5
pushi.e 2
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [142]

:[141]
pushi.e 2
pop.v.i self.sus

:[142]
pushi.e -5
pushi.e 2
push.v [array]global.hp
pushi.e 0
cmp.i.v GTE
bf [144]

:[143]
pushi.e -5
push.v self.sus
conv.v.i
push.v [array]global.charmove
pushi.e 1
cmp.i.v EQ
b [145]

:[144]
push.e 0

:[145]
bf [end]

:[146]
pushi.e 1
pop.v.i self.haveauto
push.v self.timermax
pushi.e 3
cmp.i.v EQ
bf [end]

:[147]
pushi.e 50
pop.v.i self.timermax

:[end]