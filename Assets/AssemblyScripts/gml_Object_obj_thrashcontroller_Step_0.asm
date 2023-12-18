.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.logocon
pushi.e 2
cmp.i.v EQ
bf [4]

:[2]
push.v self.introtimer
pushi.e 1
add.i.v
pop.v.v self.introtimer
push.v self.introtimer
pushi.e 180
cmp.i.v GTE
bf [4]

:[3]
pushi.e 1
pop.v.i self.con

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[5]
push.v self.thrash
conv.v.i
pushenv [8]

:[6]
push.v self.a
pushi.e 1
cmp.i.v LT
bf [8]

:[7]
push.v self.a
push.d 0.1
add.d.v
pop.v.v self.a

:[8]
popenv [6]
push.v self.thrash
conv.v.i
push.v [stacktop]self.a
pushi.e 1
cmp.i.v GTE
bf [10]

:[9]
pushi.e 2
pop.v.i self.con

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [136]

:[11]
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [14]

:[13]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.stat
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [12]

:[14]
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [22]

:[16]
pushi.e -5
pushi.e 220
push.v self.i
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 0
cmp.i.v GTE
bf [21]

:[17]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e -5
pushi.e 220
push.v self.i
add.v.i
conv.v.i
push.v [array]global.flag
conv.v.i
chkindex.e
add.i.i
push.v [array]self.stat1
pop.v.v self.addstat1
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e -5
pushi.e 220
push.v self.i
add.v.i
conv.v.i
push.v [array]global.flag
conv.v.i
chkindex.e
add.i.i
push.v [array]self.stat2
pop.v.v self.addstat2
push.v self.addstat1
pushi.e 6
cmp.i.v LT
bf [19]

:[18]
pushi.e -1
push.v self.addstat1
conv.v.i
dup.i 1
push.v [array]self.stat
pushi.e 1
add.i.v
pop.i.v [array]self.stat

:[19]
push.v self.addstat2
pushi.e 6
cmp.i.v LT
bf [21]

:[20]
pushi.e -1
push.v self.addstat2
conv.v.i
dup.i 1
push.v [array]self.stat
pushi.e 1
add.i.v
pop.i.v [array]self.stat

:[21]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[22]
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [56]

:[23]
call.i left_p(argc=0)
conv.v.b
bf [25]

:[24]
pushi.e 0
pop.v.i self.menucoord1x

:[25]
call.i right_p(argc=0)
conv.v.b
bf [28]

:[26]
push.v self.menucoord1y
pushi.e 3
cmp.i.v LT
bf [28]

:[27]
pushi.e 1
pop.v.i self.menucoord1x

:[28]
call.i up_p(argc=0)
conv.v.b
bf [31]

:[29]
push.v self.menucoord1y
pushi.e 1
sub.i.v
pop.v.v self.menucoord1y
push.v self.menucoord1y
pushi.e 0
cmp.i.v LT
bf [31]

:[30]
pushi.e 0
pop.v.i self.menucoord1y

:[31]
call.i down_p(argc=0)
conv.v.b
bf [39]

:[32]
push.v self.menucoord1y
pushi.e 1
add.i.v
pop.v.v self.menucoord1y
push.v self.menucoord1y
pushi.e 3
cmp.i.v GTE
bf [34]

:[33]
push.v self.menucoord1x
pushi.e 1
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 2
pop.v.i self.menucoord1y

:[37]
push.v self.menucoord1y
pushi.e 3
cmp.i.v GTE
bf [39]

:[38]
pushi.e 3
pop.v.i self.menucoord1y

:[39]
push.v self.buffer1
pushi.e 0
cmp.i.v LT
bf [41]

:[40]
call.i button1_p(argc=0)
conv.v.b
b [42]

:[41]
push.e 0

:[42]
bf [56]

:[43]
pushi.e 3
pop.v.i self.buffer1
pushi.e 3
pop.v.i self.buffer2
push.v self.menucoord1x
pushi.e 0
cmp.i.v EQ
bf [53]

:[44]
push.v self.menucoord1y
pushi.e 3
cmp.i.v LT
bf [46]

:[45]
pushi.e 4
push.v self.menucoord1y
add.v.i
pop.v.v self.menu

:[46]
push.v self.menucoord1y
pushi.e 3
cmp.i.v EQ
bf [53]

:[47]
pushi.e -5
pushi.e 220
push.v [array]global.flag
pushi.e 0
cmp.i.v GTE
bf [50]

:[48]
pushi.e -5
pushi.e 221
push.v [array]global.flag
pushi.e 0
cmp.i.v GTE
bf [50]

:[49]
pushi.e -5
pushi.e 222
push.v [array]global.flag
pushi.e 0
cmp.i.v GTE
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 7
pop.v.i self.menu

:[53]
push.v self.menucoord1x
pushi.e 1
cmp.i.v EQ
bf [56]

:[54]
pushi.e -5
pushi.e 220
push.v self.menucoord1y
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 0
cmp.i.v GTE
bf [56]

:[55]
push.v self.menucoord1y
pushi.e 1
add.i.v
pop.v.v self.menu

:[56]
push.v self.menu
pushi.e 1
cmp.i.v GTE
bf [58]

:[57]
push.v self.menu
pushi.e 3
cmp.i.v LTE
b [59]

:[58]
push.e 0

:[59]
bf [88]

:[60]
pushi.e 0
pop.v.i self.press
call.i right_h(argc=0)
conv.v.b
bf [65]

:[61]
pushi.e 1
pop.v.i self.press
push.v self.colorbuffer
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
pushi.e -5
pushi.e 222
push.v self.menu
add.v.i
conv.v.i
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[63]
push.v self.colorbuffer
pushi.e 1
add.i.v
pop.v.v self.colorbuffer
push.v self.colorbuffer
pushi.e 3
cmp.i.v GTE
bf [65]

:[64]
pushi.e -5
pushi.e 222
push.v self.menu
add.v.i
conv.v.i
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 1
pop.v.i self.colorbuffer

:[65]
call.i left_h(argc=0)
conv.v.b
bf [70]

:[66]
pushi.e 1
pop.v.i self.press
push.v self.colorbuffer
pushi.e 0
cmp.i.v EQ
bf [68]

:[67]
pushi.e -5
pushi.e 222
push.v self.menu
add.v.i
conv.v.i
dup.i 1
push.v [array]global.flag
pushi.e 1
sub.i.v
pop.i.v [array]global.flag

:[68]
push.v self.colorbuffer
pushi.e 1
add.i.v
pop.v.v self.colorbuffer
push.v self.colorbuffer
pushi.e 3
cmp.i.v GTE
bf [70]

:[69]
pushi.e -5
pushi.e 222
push.v self.menu
add.v.i
conv.v.i
dup.i 1
push.v [array]global.flag
pushi.e 1
sub.i.v
pop.i.v [array]global.flag
pushi.e 1
pop.v.i self.colorbuffer

:[70]
push.v self.press
pushi.e 0
cmp.i.v EQ
bf [72]

:[71]
pushi.e 0
pop.v.i self.colorbuffer

:[72]
pushi.e -5
pushi.e 222
push.v self.menu
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 31
cmp.i.v GT
bf [74]

:[73]
pushi.e 0
pushi.e -5
pushi.e 222
push.v self.menu
add.v.i
conv.v.i
pop.v.i [array]global.flag

:[74]
pushi.e -5
pushi.e 222
push.v self.menu
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 0
cmp.i.v LT
bf [76]

:[75]
pushi.e 31
pushi.e -5
pushi.e 222
push.v self.menu
add.v.i
conv.v.i
pop.v.i [array]global.flag

:[76]
pushi.e 0
pop.v.i self.press
call.i button1_p(argc=0)
conv.v.b
bf [78]

:[77]
push.v self.buffer1
pushi.e 0
cmp.i.v LT
b [79]

:[78]
push.e 0

:[79]
bf [81]

:[80]
pushi.e 1
pop.v.i self.press

:[81]
call.i button2_p(argc=0)
conv.v.b
bf [83]

:[82]
push.v self.buffer2
pushi.e 0
cmp.i.v LT
b [84]

:[83]
push.e 0

:[84]
bf [86]

:[85]
pushi.e 1
pop.v.i self.press

:[86]
push.v self.press
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
pushi.e 0
pop.v.i self.menu
pushi.e 3
pop.v.i self.buffer2
pushi.e 3
pop.v.i self.buffer1

:[88]
push.v self.menu
pushi.e 4
cmp.i.v GTE
bf [90]

:[89]
push.v self.menu
pushi.e 6
cmp.i.v LTE
b [91]

:[90]
push.e 0

:[91]
bf [110]

:[92]
push.v self.menu
pushi.e 4
sub.i.v
pop.v.v self.tm
pushi.e -1
push.v self.tm
conv.v.i
push.v [array]self.menucoord2
pushi.e -5
pushi.e 216
push.v self.menu
add.v.i
conv.v.i
pop.v.v [array]global.flag
call.i up_p(argc=0)
conv.v.b
bf [95]

:[93]
pushi.e -1
push.v self.tm
conv.v.i
push.v [array]self.menucoord2
pushi.e 0
cmp.i.v GT
bf [95]

:[94]
pushi.e -1
push.v self.tm
conv.v.i
dup.i 1
push.v [array]self.menucoord2
pushi.e 1
sub.i.v
pop.i.v [array]self.menucoord2

:[95]
call.i down_p(argc=0)
conv.v.b
bf [98]

:[96]
pushi.e -1
push.v self.tm
conv.v.i
push.v [array]self.menucoord2
pushi.e 3
cmp.i.v LT
bf [98]

:[97]
pushi.e -1
push.v self.tm
conv.v.i
dup.i 1
push.v [array]self.menucoord2
pushi.e 1
add.i.v
pop.i.v [array]self.menucoord2

:[98]
pushi.e 0
pop.v.i self.press
call.i button1_p(argc=0)
conv.v.b
bf [100]

:[99]
push.v self.buffer1
pushi.e 0
cmp.i.v LT
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
pushi.e 1
pop.v.i self.press

:[103]
call.i button2_p(argc=0)
conv.v.b
bf [105]

:[104]
push.v self.buffer2
pushi.e 0
cmp.i.v LT
b [106]

:[105]
push.e 0

:[106]
bf [108]

:[107]
pushi.e 1
pop.v.i self.press

:[108]
push.v self.press
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
pushi.e 0
pop.v.i self.menu
pushi.e 3
pop.v.i self.buffer2
pushi.e 3
pop.v.i self.buffer1

:[110]
push.v self.menu
pushi.e 7
cmp.i.v EQ
bf [136]

:[111]
call.i right_p(argc=0)
conv.v.b
bt [113]

:[112]
call.i left_p(argc=0)
conv.v.b
b [114]

:[113]
push.e 1

:[114]
bf [118]

:[115]
push.v self.endcoord
pushi.e 0
cmp.i.v EQ
bf [117]

:[116]
pushi.e 1
pop.v.i self.endcoord
b [118]

:[117]
pushi.e 0
pop.v.i self.endcoord

:[118]
pushi.e 0
pop.v.i self.quit
call.i button1_p(argc=0)
conv.v.b
bf [120]

:[119]
push.v self.buffer1
pushi.e 0
cmp.i.v LT
b [121]

:[120]
push.e 0

:[121]
bf [129]

:[122]
pushi.e 3
pop.v.i self.buffer1
pushi.e 3
pop.v.i self.buffer2
push.v self.endcoord
pushi.e 0
cmp.i.v EQ
bf [128]

:[123]
pushi.e 41
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [127]

:[124]
pushi.e 0
pop.v.i self.i

:[125]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [127]

:[126]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stat
pushi.e 41
push.v self.i
conv.v.i
pop.v.v [array]self.stat
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [125]

:[127]
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]global.currentsong
call.i snd_volume(argc=3)
popz.v
pushi.e 0
pop.v.i self.ctimer
pushi.e -1
pop.v.i self.menu
pushi.e 1
pop.v.i self.ended
pushi.e 5
pop.v.i self.con
b [129]

:[128]
pushi.e 1
pop.v.i self.quit

:[129]
call.i button2_p(argc=0)
conv.v.b
bf [131]

:[130]
push.v self.buffer2
pushi.e 0
cmp.i.v LT
b [132]

:[131]
push.e 0

:[132]
bf [134]

:[133]
pushi.e 3
pop.v.i self.buffer2
pushi.e 3
pop.v.i self.buffer1
pushi.e 1
pop.v.i self.quit

:[134]
push.v self.quit
pushi.e 1
cmp.i.v EQ
bf [136]

:[135]
pushi.e 0
pop.v.i self.menu

:[136]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [143]

:[137]
push.v self.thrash
conv.v.i
pushenv [139]

:[138]
push.v self.a
push.d 0.03
sub.d.v
pop.v.v self.a

:[139]
popenv [138]
pushi.e 3
pop.v.i self.logocon
push.v self.ctimer
pushi.e 1
add.i.v
pop.v.v self.ctimer
push.v self.ctimer
pushi.e 40
cmp.i.v GTE
bf [143]

:[140]
push.v self.thrash
conv.v.i
pushenv [142]

:[141]
call.i instance_destroy(argc=0)
popz.v

:[142]
popenv [141]
call.i instance_destroy(argc=0)
popz.v

:[143]
push.v self.buffer1
pushi.e 1
sub.i.v
pop.v.v self.buffer1
push.v self.buffer2
pushi.e 1
sub.i.v
pop.v.v self.buffer2
pushi.e 0
pop.v.i self.i

:[144]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [148]

:[145]
push.s "obj_thrashcontroller_slash_Step_0_gml_259_0"@4564
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.mtxt
pushi.e -5
pushi.e 220
push.v self.i
add.v.i
conv.v.i
push.v [array]global.flag
pushi.e 0
cmp.i.v GTE
bf [147]

:[146]
pushi.e -1
push.v self.i
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e -5
pushi.e 220
push.v self.i
add.v.i
conv.v.i
push.v [array]global.flag
conv.v.i
chkindex.e
add.i.i
push.v [array]self.menutext2
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.mtxt

:[147]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [144]

:[148]
push.s "obj_thrashcontroller_slash_Step_0_gml_264_0"@4566
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.mtxt
add.v.v
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]self.menutext1
push.s "obj_thrashcontroller_slash_Step_0_gml_265_0"@4567
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 1
push.v [array]self.mtxt
add.v.v
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.v [array]self.menutext1
push.s "obj_thrashcontroller_slash_Step_0_gml_266_0"@4568
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
pushi.e 2
push.v [array]self.mtxt
add.v.v
pushi.e -1
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]self.menutext1

:[end]