.localvar 0 arguments
.localvar 1 xxx 1302

:[0]
pushi.e 0
pop.v.i self.button1
pushi.e 0
pop.v.i self.button2
pushi.e 0
pop.v.i self.button3
call.i button1_p(argc=0)
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.button1

:[2]
call.i button2_h(argc=0)
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.button2

:[4]
pushi.e -5
pushi.e 10
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [6]

:[5]
call.i scr_debug(argc=0)
conv.v.b
b [7]

:[6]
push.e 1

:[7]
bf [16]

:[8]
call.i button3_h(argc=0)
pushi.e 1
cmp.i.v EQ
bf [16]

:[9]
push.v self.automash_timer
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.automash_timer
b [12]

:[11]
pushi.e 0
pop.v.i self.automash_timer

:[12]
push.v self.automash_timer
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.button1

:[14]
push.v self.automash_timer
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.button2

:[16]
push.v self.dialoguer
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v self.formatted
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [24]

:[20]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.v self.originalcharline
pop.v.v self.charline
push.v self.x
pop.v.v self.writingx
b [24]

:[22]
pushi.e 26
pop.v.i self.charline
push.v self.x
pushi.e 58
push.v self.f
mul.v.i
add.v.v
pop.v.v self.writingx
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [24]

:[23]
push.v self.writingx
pushi.e 8
sub.i.v
pop.v.v self.writingx

:[24]
push.v self.formatted
pushi.e 0
cmp.i.v EQ
bf [131]

:[25]
push.v self.mystring
call.i string_length(argc=1)
pop.v.v self.length
pushi.e -1
pop.v.i self.charpos
pushi.e -1
pop.v.i self.remspace
pushi.e -1
pop.v.i self.remchar
pushi.e 0
pop.v.i self.linecount
pushi.e 0
pop.v.i self.stringmax
pushi.e 0
pop.v.i self.aster
push.s ""@2240
pop.v.s self.textalignment
pushi.e 0
pop.v.i self.i

:[26]
push.v self.i
push.v self.length
pushi.e 1
add.i.v
cmp.v.v LT
bf [127]

:[27]
pushi.e 0
pop.v.i self.skip
push.v self.i
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.thischar
push.v self.thischar
push.s "/"@357
cmp.s.v EQ
bt [29]

:[28]
push.v self.thischar
push.s "%"@3588
cmp.s.v EQ
b [30]

:[29]
push.e 1

:[30]
bf [33]

:[31]
push.v self.charpos
pushi.e -1
cmp.i.v GT
bf [33]

:[32]
push.v self.charpos
pushi.e 1
sub.i.v
pop.v.v self.charpos

:[33]
push.v self.thischar
push.s "^"@1541
cmp.s.v EQ
bf [36]

:[34]
push.v self.charpos
pushi.e -1
cmp.i.v GT
bf [36]

:[35]
push.v self.charpos
pushi.e 2
sub.i.v
pop.v.v self.charpos

:[36]
push.v self.thischar
push.s "\\"@1547
cmp.s.v EQ
bf [102]

:[37]
push.v self.charpos
pushi.e -1
cmp.i.v GT
bf [39]

:[38]
push.v self.charpos
pushi.e 3
sub.i.v
pop.v.v self.charpos

:[39]
push.v self.i
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.nextchar
push.v self.i
pushi.e 2
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.nextchar2
push.v self.dialoguer
pushi.e 1
cmp.i.v EQ
bf [100]

:[40]
push.v self.nextchar
push.s "E"@2532
cmp.s.v EQ
bf [71]

:[41]
push.v self.nextchar2
push.s "0"@2521
cmp.s.v EQ
bf [43]

:[42]
pushi.e 0
pop.v.i global.fe

:[43]
push.v self.nextchar2
push.s "1"@2522
cmp.s.v EQ
bf [45]

:[44]
pushi.e 1
pop.v.i global.fe

:[45]
push.v self.nextchar2
push.s "2"@2523
cmp.s.v EQ
bf [47]

:[46]
pushi.e 2
pop.v.i global.fe

:[47]
push.v self.nextchar2
push.s "3"@1174
cmp.s.v EQ
bf [49]

:[48]
pushi.e 3
pop.v.i global.fe

:[49]
push.v self.nextchar2
push.s "4"@1175
cmp.s.v EQ
bf [51]

:[50]
pushi.e 4
pop.v.i global.fe

:[51]
push.v self.nextchar2
push.s "5"@2524
cmp.s.v EQ
bf [53]

:[52]
pushi.e 5
pop.v.i global.fe

:[53]
push.v self.nextchar2
push.s "6"@2525
cmp.s.v EQ
bf [55]

:[54]
pushi.e 6
pop.v.i global.fe

:[55]
push.v self.nextchar2
push.s "7"@2526
cmp.s.v EQ
bf [57]

:[56]
pushi.e 7
pop.v.i global.fe

:[57]
push.v self.nextchar2
push.s "8"@2527
cmp.s.v EQ
bf [59]

:[58]
pushi.e 8
pop.v.i global.fe

:[59]
push.v self.nextchar2
push.s "9"@2528
cmp.s.v EQ
bf [61]

:[60]
pushi.e 9
pop.v.i global.fe

:[61]
push.v self.nextchar2
push.s "A"@366
cmp.s.v EQ
bf [63]

:[62]
pushi.e 10
pop.v.i global.fe

:[63]
push.v self.nextchar2
push.s "B"@2529
cmp.s.v EQ
bf [65]

:[64]
pushi.e 11
pop.v.i global.fe

:[65]
push.v self.nextchar2
push.s "C"@2530
cmp.s.v EQ
bf [67]

:[66]
pushi.e 12
pop.v.i global.fe

:[67]
push.v self.nextchar2
push.s "D"@2531
cmp.s.v EQ
bf [69]

:[68]
pushi.e 13
pop.v.i global.fe

:[69]
push.v self.nextchar2
push.s "E"@2532
cmp.s.v EQ
bf [71]

:[70]
pushi.e 14
pop.v.i global.fe

:[71]
push.v self.nextchar
push.s "F"@2533
cmp.s.v EQ
bf [100]

:[72]
push.v self.nextchar2
push.s "0"@2521
cmp.s.v EQ
bf [74]

:[73]
pushi.e 0
pop.v.i global.fc

:[74]
push.v self.nextchar2
push.s "S"@2546
cmp.s.v EQ
bf [76]

:[75]
pushi.e 1
pop.v.i global.fc

:[76]
push.v self.nextchar2
push.s "R"@2545
cmp.s.v EQ
bf [78]

:[77]
pushi.e 2
pop.v.i global.fc

:[78]
push.v self.nextchar2
push.s "N"@2541
cmp.s.v EQ
bf [80]

:[79]
pushi.e 3
pop.v.i global.fc

:[80]
push.v self.nextchar2
push.s "T"@2547
cmp.s.v EQ
bf [82]

:[81]
pushi.e 4
pop.v.i global.fc

:[82]
push.v self.nextchar2
push.s "L"@2539
cmp.s.v EQ
bf [84]

:[83]
pushi.e 5
pop.v.i global.fc

:[84]
push.v self.nextchar2
push.s "A"@366
cmp.s.v EQ
bf [86]

:[85]
pushi.e 10
pop.v.i global.fc

:[86]
push.v self.nextchar2
push.s "a"@3601
cmp.s.v EQ
bf [88]

:[87]
pushi.e 11
pop.v.i global.fc

:[88]
push.v self.nextchar2
push.s "B"@2529
cmp.s.v EQ
bf [90]

:[89]
pushi.e 12
pop.v.i global.fc

:[90]
push.v self.nextchar2
push.s "r"@1740
cmp.s.v EQ
bf [92]

:[91]
pushi.e 15
pop.v.i global.fc

:[92]
push.v self.nextchar2
push.s "u"@3602
cmp.s.v EQ
bf [94]

:[93]
pushi.e 18
pop.v.i global.fc

:[94]
push.v self.nextchar2
push.s "K"@2538
cmp.s.v EQ
bf [96]

:[95]
pushi.e 20
pop.v.i global.fc

:[96]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
push.v self.originalcharline
pop.v.v self.charline
push.v self.x
pop.v.v self.writingx
b [100]

:[98]
pushi.e 26
pop.v.i self.charline
push.v self.x
pushi.e 58
push.v self.f
mul.v.i
add.v.v
pop.v.v self.writingx
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [100]

:[99]
push.v self.writingx
pushi.e 8
sub.i.v
pop.v.v self.writingx

:[100]
push.v self.nextchar
push.s "a"@3601
cmp.s.v EQ
bf [102]

:[101]
push.v self.nextchar2
pop.v.v self.textalignment

:[102]
push.v self.thischar
push.s "&"@1540
cmp.s.v EQ
bf [111]

:[103]
push.v self.charpos
push.v self.stringmax
cmp.v.v GT
bf [105]

:[104]
push.v self.charpos
pop.v.v self.stringmax

:[105]
pushi.e -1
pop.v.i self.remspace
pushi.e 0
pop.v.i self.charpos
push.v self.linecount
pushi.e 1
add.i.v
pop.v.v self.linecount
pushi.e 1
pop.v.i self.skip
push.v self.i
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.nextchar
push.v self.aster
pushi.e 1
cmp.i.v EQ
bf [108]

:[106]
push.v self.autoaster
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
push.v self.nextchar
push.s "*"@1549
cmp.s.v NEQ
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
pushi.e 2
pop.v.i self.charpos
push.v self.length
pushi.e 2
add.i.v
pop.v.v self.length
push.v self.i
pushi.e 1
add.i.v
push.v self.mystring
push.s "obj_writer_slash_Draw_0_gml_147_0"@3603
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_insert(argc=3)
pop.v.v self.mystring
push.v self.i
pushi.e 2
add.i.v
pop.v.v self.i

:[111]
push.v self.skip
pushi.e 0
cmp.i.v EQ
bf [126]

:[112]
push.v self.thischar
push.s " "@24
cmp.s.v EQ
bf [114]

:[113]
push.v self.i
pop.v.v self.remspace
push.v self.charpos
pop.v.v self.remchar

:[114]
push.v self.thischar
push.s "*"@1549
cmp.s.v EQ
bf [116]

:[115]
pushi.e 1
pop.v.i self.aster

:[116]
push.v self.charpos
push.v self.charline
cmp.v.v GTE
bf [125]

:[117]
push.v self.remspace
pushi.e 2
cmp.i.v GT
bf [121]

:[118]
pushi.e 1
conv.i.v
push.v self.remspace
push.v self.mystring
call.i string_delete(argc=3)
pop.v.v self.mystring
push.v self.remspace
push.v self.mystring
push.s "&"@1540
conv.s.v
call.i string_insert(argc=3)
pop.v.v self.mystring
push.v self.remspace
pushi.e 1
add.i.v
pop.v.v self.i
push.v self.remchar
push.v self.stringmax
cmp.v.v GT
bf [120]

:[119]
push.v self.remchar
pop.v.v self.stringmax

:[120]
pushi.e -1
pop.v.i self.remspace
pushi.e 1
pop.v.i self.charpos
push.v self.linecount
pushi.e 1
add.i.v
pop.v.v self.linecount
call.i scr_asterskip(argc=0)
popz.v
b [124]

:[121]
push.v self.charpos
push.v self.stringmax
cmp.v.v GT
bf [123]

:[122]
push.v self.charpos
pop.v.v self.stringmax

:[123]
push.v self.i
push.v self.mystring
push.s "&"@1540
conv.s.v
call.i string_insert(argc=3)
pop.v.v self.mystring
push.v self.length
pushi.e 1
add.i.v
pop.v.v self.length
pushi.e 1
pop.v.i self.charpos
pushi.e -1
pop.v.i self.remspace
push.v self.linecount
pushi.e 1
add.i.v
pop.v.v self.linecount
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
call.i scr_asterskip(argc=0)
popz.v

:[124]
b [126]

:[125]
push.v self.charpos
pushi.e 1
add.i.v
pop.v.v self.charpos

:[126]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [26]

:[127]
push.v self.charpos
push.v self.stringmax
cmp.v.v GT
bf [129]

:[128]
push.v self.charpos
pop.v.v self.stringmax

:[129]
pushi.e 1
pop.v.i self.formatted
push.v self.textalignment
push.s "c"@1810
cmp.s.v EQ
bf [131]

:[130]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v local.xxx
pushloc.v local.xxx
pushi.e 320
add.i.v
push.v self.stringmax
push.v self.hspace
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.writingx

:[131]
pushi.e 0
pop.v.i self.accept
push.v self.writingx
pop.v.v self.wx
push.v self.writingy
pop.v.v self.wy
pushi.e 0
pop.v.i self.colorchange
push.v self.myfont
call.i draw_set_font(argc=1)
popz.v
push.v self.mycolor
call.i draw_set_color(argc=1)
popz.v
push.v self.halt
pushi.e 0
cmp.i.v EQ
bf [135]

:[132]
push.v self.button2
pushi.e 1
cmp.i.v EQ
bf [135]

:[133]
push.v self.pos
push.v self.length
cmp.v.v LT
bf [135]

:[134]
push.v self.skippable
pushi.e 1
cmp.i.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [138]

:[137]
pushi.e 1
pop.v.i self.skipme

:[138]
push.v self.skipme
pushi.e 1
cmp.i.v EQ
bf [140]

:[139]
push.v self.mystring
call.i string_length(argc=1)
pushi.e 1
add.i.v
pop.v.v self.pos
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[140]
pushi.e 1
pop.v.i self.n

:[141]
push.v self.n
push.v self.pos
cmp.v.v LT
bf [383]

:[142]
pushi.e 1
pop.v.i self.accept
push.v self.n
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.mychar
push.v self.mychar
push.s "&"@1540
cmp.s.v EQ
bf [146]

:[143]
pushi.e 0
pop.v.i self.accept
push.v self.writingx
pop.v.v self.wx
push.v self.wxskip
pushi.e 1
cmp.i.v EQ
bf [145]

:[144]
push.v self.writingx
pushi.e 58
add.i.v
pop.v.v self.wx

:[145]
push.v self.wy
push.v self.vspace
add.v.v
pop.v.v self.wy

:[146]
push.v self.mychar
push.s "|"@1548
cmp.s.v EQ
bf [148]

:[147]
pushi.e 0
pop.v.i self.accept
push.v self.wx
push.v self.hspace
add.v.v
pop.v.v self.wx

:[148]
push.v self.mychar
push.s "^"@1541
cmp.s.v EQ
bf [150]

:[149]
pushi.e 0
pop.v.i self.accept
push.v self.n
pushi.e 1
add.i.v
pop.v.v self.n

:[150]
push.v self.mychar
push.s "/"@357
cmp.s.v EQ
bf [154]

:[151]
pushi.e 1
pop.v.i self.halt
push.v self.n
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
push.s "%"@3588
cmp.s.v EQ
bf [153]

:[152]
pushi.e 2
pop.v.i self.halt

:[153]
pushi.e 0
pop.v.i self.accept

:[154]
push.v self.mychar
push.s "%"@3588
cmp.s.v EQ
bf [161]

:[155]
pushi.e 0
pop.v.i self.accept
push.v self.n
pushi.e 1
sub.i.v
push.v self.mystring
call.i string_char_at(argc=2)
push.s "/"@357
cmp.s.v EQ
bf [157]

:[156]
pushi.e 2
pop.v.i self.halt

:[157]
push.v self.n
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
push.s "%"@3588
cmp.s.v EQ
bf [159]

:[158]
call.i instance_destroy(argc=0)
popz.v
b [161]

:[159]
push.v self.halt
pushi.e 2
cmp.i.v NEQ
bf [161]

:[160]
call.i scr_nextmsg(argc=0)
popz.v

:[161]
push.v self.mychar
push.s "\\"@1547
cmp.s.v EQ
bf [350]

:[162]
push.v self.n
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.nextchar
push.v self.n
pushi.e 2
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.nextchar2
push.v self.nextchar
push.s "E"@2532
cmp.s.v EQ
bf [193]

:[163]
push.v self.nextchar2
push.s "0"@2521
cmp.s.v EQ
bf [165]

:[164]
pushi.e 0
pop.v.i global.fe

:[165]
push.v self.nextchar2
push.s "1"@2522
cmp.s.v EQ
bf [167]

:[166]
pushi.e 1
pop.v.i global.fe

:[167]
push.v self.nextchar2
push.s "2"@2523
cmp.s.v EQ
bf [169]

:[168]
pushi.e 2
pop.v.i global.fe

:[169]
push.v self.nextchar2
push.s "3"@1174
cmp.s.v EQ
bf [171]

:[170]
pushi.e 3
pop.v.i global.fe

:[171]
push.v self.nextchar2
push.s "4"@1175
cmp.s.v EQ
bf [173]

:[172]
pushi.e 4
pop.v.i global.fe

:[173]
push.v self.nextchar2
push.s "5"@2524
cmp.s.v EQ
bf [175]

:[174]
pushi.e 5
pop.v.i global.fe

:[175]
push.v self.nextchar2
push.s "6"@2525
cmp.s.v EQ
bf [177]

:[176]
pushi.e 6
pop.v.i global.fe

:[177]
push.v self.nextchar2
push.s "7"@2526
cmp.s.v EQ
bf [179]

:[178]
pushi.e 7
pop.v.i global.fe

:[179]
push.v self.nextchar2
push.s "8"@2527
cmp.s.v EQ
bf [181]

:[180]
pushi.e 8
pop.v.i global.fe

:[181]
push.v self.nextchar2
push.s "9"@2528
cmp.s.v EQ
bf [183]

:[182]
pushi.e 9
pop.v.i global.fe

:[183]
push.v self.nextchar2
push.s "A"@366
cmp.s.v EQ
bf [185]

:[184]
pushi.e 10
pop.v.i global.fe

:[185]
push.v self.nextchar2
push.s "B"@2529
cmp.s.v EQ
bf [187]

:[186]
pushi.e 11
pop.v.i global.fe

:[187]
push.v self.nextchar2
push.s "C"@2530
cmp.s.v EQ
bf [189]

:[188]
pushi.e 12
pop.v.i global.fe

:[189]
push.v self.nextchar2
push.s "D"@2531
cmp.s.v EQ
bf [191]

:[190]
pushi.e 13
pop.v.i global.fe

:[191]
push.v self.nextchar2
push.s "E"@2532
cmp.s.v EQ
bf [193]

:[192]
pushi.e 14
pop.v.i global.fe

:[193]
push.v self.nextchar
push.s "F"@2533
cmp.s.v EQ
bf [222]

:[194]
push.v self.nextchar2
push.s "0"@2521
cmp.s.v EQ
bf [196]

:[195]
pushi.e 0
pop.v.i global.fc

:[196]
push.v self.nextchar2
push.s "S"@2546
cmp.s.v EQ
bf [198]

:[197]
pushi.e 1
pop.v.i global.fc

:[198]
push.v self.nextchar2
push.s "R"@2545
cmp.s.v EQ
bf [200]

:[199]
pushi.e 2
pop.v.i global.fc

:[200]
push.v self.nextchar2
push.s "N"@2541
cmp.s.v EQ
bf [202]

:[201]
pushi.e 3
pop.v.i global.fc

:[202]
push.v self.nextchar2
push.s "T"@2547
cmp.s.v EQ
bf [204]

:[203]
pushi.e 4
pop.v.i global.fc

:[204]
push.v self.nextchar2
push.s "L"@2539
cmp.s.v EQ
bf [206]

:[205]
pushi.e 5
pop.v.i global.fc

:[206]
push.v self.nextchar2
push.s "A"@366
cmp.s.v EQ
bf [208]

:[207]
pushi.e 10
pop.v.i global.fc

:[208]
push.v self.nextchar2
push.s "a"@3601
cmp.s.v EQ
bf [210]

:[209]
pushi.e 11
pop.v.i global.fc

:[210]
push.v self.nextchar2
push.s "B"@2529
cmp.s.v EQ
bf [212]

:[211]
pushi.e 12
pop.v.i global.fc

:[212]
push.v self.nextchar2
push.s "r"@1740
cmp.s.v EQ
bf [214]

:[213]
pushi.e 15
pop.v.i global.fc

:[214]
push.v self.nextchar2
push.s "u"@3602
cmp.s.v EQ
bf [216]

:[215]
pushi.e 18
pop.v.i global.fc

:[216]
push.v self.nextchar2
push.s "K"@2538
cmp.s.v EQ
bf [218]

:[217]
pushi.e 20
pop.v.i global.fc

:[218]
push.v self.dialoguer
pushi.e 1
cmp.i.v EQ
bf [222]

:[219]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [221]

:[220]
push.v self.originalcharline
pop.v.v self.charline
push.v self.x
pop.v.v self.wx
b [222]

:[221]
pushi.e 26
pop.v.i self.charline
push.v self.x
pushi.e 58
push.v self.f
mul.v.i
add.v.v
pop.v.v self.wx

:[222]
push.v self.nextchar
push.s "f"@141
cmp.s.v EQ
bf [224]

:[223]
push.v self.faced
pushi.e 0
cmp.i.v EQ
b [225]

:[224]
push.e 0

:[225]
bf [228]

:[226]
pushi.e 0
pop.v.i self.fam
push.v self.nextchar2
call.i real(argc=1)
pop.v.v self.fam
pushi.e 1
pop.v.i self.faced
pushi.e 4
conv.i.v
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]global.smyy
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]global.smxx
call.i instance_create(argc=3)
pop.v.v self.smallface
push.v self.smallface
call.i instance_exists(argc=1)
conv.v.b
bf [228]

:[227]
push.v self.smallface
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.x
add.v.v
pop.i.v [stacktop]self.x
push.v self.smallface
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.v self.y
add.v.v
pop.i.v [stacktop]self.y
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]global.smspeed
push.v self.smallface
conv.v.i
pop.v.v [stacktop]self.speed
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]global.smdir
push.v self.smallface
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]global.smtype
push.v self.smallface
conv.v.i
pop.v.v [stacktop]self.type
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]global.smsprite
push.v self.smallface
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]global.smalarm
push.v self.smallface
conv.v.i
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]global.smstring
push.v self.smallface
conv.v.i
pop.v.v [stacktop]self.mystring
pushi.e -5
push.v self.fam
conv.v.i
push.v [array]global.smcolor
push.v self.smallface
conv.v.i
pop.v.v [stacktop]self.mycolor
push.v self.id
push.v self.smallface
conv.v.i
pop.v.v [stacktop]self.writergod

:[228]
push.v self.nextchar
push.s "T"@2547
cmp.s.v EQ
bf [279]

:[229]
push.v self.nextchar2
push.s "0"@2521
cmp.s.v EQ
bf [234]

:[230]
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [233]

:[231]
pushi.e 6
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [233]

:[232]
pushi.e 4
pop.v.i global.typer

:[233]
call.i scr_texttype(argc=0)
popz.v

:[234]
push.v self.nextchar2
push.s "1"@2522
cmp.s.v EQ
bf [236]

:[235]
pushi.e 2
pop.v.i global.typer
call.i scr_texttype(argc=0)
popz.v

:[236]
push.v self.nextchar2
push.s "A"@366
cmp.s.v EQ
bf [238]

:[237]
pushi.e 18
pop.v.i global.typer
call.i scr_texttype(argc=0)
popz.v

:[238]
push.v self.nextchar2
push.s "a"@3601
cmp.s.v EQ
bf [240]

:[239]
pushi.e 20
pop.v.i global.typer
call.i scr_texttype(argc=0)
popz.v

:[240]
push.v self.nextchar2
push.s "N"@2541
cmp.s.v EQ
bf [242]

:[241]
pushi.e 12
pop.v.i global.typer
call.i scr_texttype(argc=0)
popz.v

:[242]
push.v self.nextchar2
push.s "n"@3609
cmp.s.v EQ
bf [244]

:[243]
pushi.e 23
pop.v.i global.typer
call.i scr_texttype(argc=0)
popz.v

:[244]
push.v self.nextchar2
push.s "B"@2529
cmp.s.v EQ
bf [246]

:[245]
pushi.e 13
pop.v.i global.typer
call.i scr_texttype(argc=0)
popz.v

:[246]
push.v self.nextchar2
push.s "S"@2546
cmp.s.v EQ
bf [251]

:[247]
pushi.e 10
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [250]

:[248]
pushi.e 30
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [250]

:[249]
pushi.e 47
pop.v.i global.typer

:[250]
call.i scr_texttype(argc=0)
popz.v

:[251]
push.v self.nextchar2
push.s "R"@2545
cmp.s.v EQ
bf [257]

:[252]
pushi.e 31
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [254]

:[253]
pushi.e 45
pop.v.i global.typer

:[254]
pushi.e -5
pushi.e 30
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [256]

:[255]
pushi.e 6
pop.v.i global.typer

:[256]
call.i scr_texttype(argc=0)
popz.v

:[257]
push.v self.nextchar2
push.s "L"@2539
cmp.s.v EQ
bf [261]

:[258]
pushi.e 32
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [260]

:[259]
pushi.e 46
pop.v.i global.typer

:[260]
call.i scr_texttype(argc=0)
popz.v

:[261]
push.v self.nextchar2
push.s "X"@2551
cmp.s.v EQ
bf [263]

:[262]
pushi.e 40
pop.v.i global.typer
call.i scr_texttype(argc=0)
popz.v

:[263]
push.v self.nextchar2
push.s "r"@1740
cmp.s.v EQ
bf [265]

:[264]
pushi.e 55
pop.v.i global.typer
call.i scr_texttype(argc=0)
popz.v

:[265]
push.v self.nextchar2
push.s "T"@2547
cmp.s.v EQ
bf [267]

:[266]
pushi.e 7
pop.v.i global.typer
call.i scr_texttype(argc=0)
popz.v

:[267]
push.v self.nextchar2
push.s "J"@2537
cmp.s.v EQ
bf [269]

:[268]
pushi.e 35
pop.v.i global.typer
call.i scr_texttype(argc=0)
popz.v

:[269]
push.v self.nextchar2
push.s "K"@2538
cmp.s.v EQ
bf [275]

:[270]
pushi.e 33
pop.v.i global.typer
pushglb.v global.plot
pushi.e 235
cmp.i.v LT
bf [272]

:[271]
pushi.e 36
pop.v.i global.typer

:[272]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [274]

:[273]
pushi.e 48
pop.v.i global.typer

:[274]
call.i scr_texttype(argc=0)
popz.v

:[275]
push.v self.dialoguer
pushi.e 1
cmp.i.v EQ
bf [279]

:[276]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [278]

:[277]
push.v self.originalcharline
pop.v.v self.charline
push.v self.x
pop.v.v self.wx
b [279]

:[278]
pushi.e 1
pop.v.i self.wxskip

:[279]
push.v self.nextchar
push.s "s"@1733
cmp.s.v EQ
bf [284]

:[280]
push.v self.nextchar2
push.s "0"@2521
cmp.s.v EQ
bf [282]

:[281]
pushi.e 0
pop.v.i self.skippable

:[282]
push.v self.nextchar2
push.s "1"@2522
cmp.s.v EQ
bf [284]

:[283]
pushi.e 1
pop.v.i self.skippable

:[284]
push.v self.nextchar
push.s "c"@1810
cmp.s.v EQ
bf [299]

:[285]
pushi.e 1
pop.v.i self.colorchange
push.v self.nextchar2
push.s "R"@2545
cmp.s.v EQ
bf [287]

:[286]
pushi.e 255
pop.v.i self.xcolor

:[287]
push.v self.nextchar2
push.s "B"@2529
cmp.s.v EQ
bf [289]

:[288]
push.i 16711680
pop.v.i self.xcolor

:[289]
push.v self.nextchar2
push.s "Y"@2552
cmp.s.v EQ
bf [291]

:[290]
push.i 65535
pop.v.i self.xcolor

:[291]
push.v self.nextchar2
push.s "G"@2534
cmp.s.v EQ
bf [293]

:[292]
push.i 65280
pop.v.i self.xcolor

:[293]
push.v self.nextchar2
push.s "W"@2550
cmp.s.v EQ
bf [295]

:[294]
push.i 16777215
pop.v.i self.xcolor

:[295]
push.v self.nextchar2
push.s "X"@2551
cmp.s.v EQ
bf [297]

:[296]
pushi.e 0
pop.v.i self.xcolor

:[297]
push.v self.nextchar2
push.s "0"@2521
cmp.s.v EQ
bf [299]

:[298]
push.v self.mycolor
pop.v.v self.xcolor

:[299]
push.v self.nextchar
push.s "C"@2530
cmp.s.v EQ
bf [312]

:[300]
push.v self.nextchar2
push.s "1"@2522
cmp.s.v EQ
bf [304]

:[301]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [303]

:[302]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.choicer

:[303]
pushi.e 5
pop.v.i self.halt

:[304]
push.v self.nextchar2
push.s "2"@2523
cmp.s.v EQ
bt [307]

:[305]
push.v self.nextchar2
push.s "3"@1174
cmp.s.v EQ
bt [307]

:[306]
push.v self.nextchar2
push.s "4"@1175
cmp.s.v EQ
b [308]

:[307]
push.e 1

:[308]
bf [312]

:[309]
pushi.e 1
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [311]

:[310]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.choicer
push.v self.nextchar2
call.i real(argc=1)
pushi.e 1
sub.i.v
push.v self.choicer
conv.v.i
pop.v.v [stacktop]self.choicetotal

:[311]
pushi.e 5
pop.v.i self.halt

:[312]
push.v self.nextchar
push.s "M"@2540
cmp.s.v EQ
bf [333]

:[313]
push.v self.nextchar2
push.s "0"@2521
cmp.s.v EQ
bf [315]

:[314]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag

:[315]
push.v self.nextchar2
push.s "1"@2522
cmp.s.v EQ
bf [317]

:[316]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag

:[317]
push.v self.nextchar2
push.s "2"@2523
cmp.s.v EQ
bf [319]

:[318]
pushi.e 2
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag

:[319]
push.v self.nextchar2
push.s "3"@1174
cmp.s.v EQ
bf [321]

:[320]
pushi.e 3
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag

:[321]
push.v self.nextchar2
push.s "4"@1175
cmp.s.v EQ
bf [323]

:[322]
pushi.e 4
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag

:[323]
push.v self.nextchar2
push.s "5"@2524
cmp.s.v EQ
bf [325]

:[324]
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag

:[325]
push.v self.nextchar2
push.s "6"@2525
cmp.s.v EQ
bf [327]

:[326]
pushi.e 6
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag

:[327]
push.v self.nextchar2
push.s "7"@2526
cmp.s.v EQ
bf [329]

:[328]
pushi.e 7
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag

:[329]
push.v self.nextchar2
push.s "8"@2527
cmp.s.v EQ
bf [331]

:[330]
pushi.e 8
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag

:[331]
push.v self.nextchar2
push.s "9"@2528
cmp.s.v EQ
bf [333]

:[332]
pushi.e 9
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag

:[333]
push.v self.nextchar
push.s "S"@2546
cmp.s.v EQ
bf [343]

:[334]
push.v self.sound_played
pushi.e 0
cmp.i.v EQ
bf [343]

:[335]
pushi.e 0
pop.v.i self.i

:[336]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [343]

:[337]
push.v self.nextchar2
push.v self.i
call.i string(argc=1)
cmp.v.v EQ
bf [339]

:[338]
push.v self.sound_played
pushi.e 0
cmp.i.v EQ
b [340]

:[339]
push.e 0

:[340]
bf [342]

:[341]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.writersnd
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.sound_played

:[342]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [336]

:[343]
push.v self.nextchar
push.s "I"@2536
cmp.s.v EQ
bf [349]

:[344]
pushi.e 0
pop.v.i self.i

:[345]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [349]

:[346]
push.v self.nextchar2
push.v self.i
call.i string(argc=1)
cmp.v.v EQ
bf [348]

:[347]
push.v self.wy
pushi.e 4
add.i.v
push.v self.wx
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.writerimg
call.i draw_sprite(argc=4)
popz.v

:[348]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [345]

:[349]
pushi.e 0
pop.v.i self.accept
push.v self.n
pushi.e 2
add.i.v
pop.v.v self.n

:[350]
push.v self.accept
pushi.e 1
cmp.i.v EQ
bf [382]

:[351]
push.v self.colorchange
pushi.e 1
cmp.i.v EQ
bf [353]

:[352]
push.v self.xcolor
call.i draw_set_color(argc=1)
popz.v

:[353]
push.v self.special
pushi.e 0
cmp.i.v EQ
bf [355]

:[354]
pushi.e 0
conv.i.v
push.v self.textscale
push.v self.textscale
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.wx
push.v self.shake
call.i random(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v

:[355]
push.v self.special
pushi.e 1
cmp.i.v GTE
bf [373]

:[356]
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [363]

:[357]
call.i draw_get_color(argc=0)
push.i 16777215
cmp.i.v NEQ
bf [359]

:[358]
call.i draw_get_color(argc=0)
pushi.e 0
cmp.i.v NEQ
b [360]

:[359]
push.e 0

:[360]
bf [362]

:[361]
push.d 0.3
conv.d.v
push.v self.xcolor
push.v self.xcolor
push.v self.xcolor
push.v self.xcolor
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.shake
call.i random(argc=1)
add.v.v
pushi.e 1
add.i.v
push.v self.wx
push.v self.shake
call.i random(argc=1)
add.v.v
pushi.e 1
add.i.v
call.i draw_text_color(argc=8)
popz.v
pushi.e 1
conv.i.v
push.v self.xcolor
push.v self.xcolor
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.wx
push.v self.shake
call.i random(argc=1)
add.v.v
call.i draw_text_color(argc=8)
popz.v
b [363]

:[362]
pushi.e 1
conv.i.v
push.i 8388608
conv.i.v
push.i 8388608
conv.i.v
push.i 4210752
conv.i.v
push.i 4210752
conv.i.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.shake
call.i random(argc=1)
add.v.v
pushi.e 1
add.i.v
push.v self.wx
push.v self.shake
call.i random(argc=1)
add.v.v
pushi.e 1
add.i.v
call.i draw_text_color(argc=8)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.wx
push.v self.shake
call.i random(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v

:[363]
push.v self.special
pushi.e 2
cmp.i.v EQ
bf [365]

:[364]
pushi.e 1
push.v self.specfade
mul.v.i
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.wx
call.i draw_text(argc=3)
popz.v
push.d 0.3
push.v self.siner
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.v self.specfade
mul.v.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.wx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.wx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e 1
add.i.v
push.v self.wx
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e 1
sub.i.v
push.v self.wx
call.i draw_text(argc=3)
popz.v
push.d 0.08
push.v self.siner
pushi.e 14
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.04
mul.d.v
add.v.d
push.v self.specfade
mul.v.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e 1
add.i.v
push.v self.wx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e 1
sub.i.v
push.v self.wx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e 1
add.i.v
push.v self.wx
pushi.e 1
sub.i.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e 1
sub.i.v
push.v self.wx
pushi.e 1
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[365]
push.v self.special
pushi.e 3
cmp.i.v EQ
bf [373]

:[366]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.wx
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.wx
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.wx
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.wx
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[367]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [372]

:[368]
pushi.e 315
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.ddir
push.v self.n
pushi.e 1
cmp.i.v EQ
bf [371]

:[369]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.specx
push.v self.ddir
pushi.e 2
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.i.v [array]self.specx
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.specy
push.v self.ddir
pushi.e 2
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.i.v [array]self.specy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.specx
pushi.e 40
cmp.i.v GTE
bf [371]

:[370]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.specx
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.specy

:[371]
pushi.e 40
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.specx
sub.v.i
pushi.e 40
conv.i.d
div.d.v
push.d 0.7
mul.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.mychar
call.i string_hash_to_newline(argc=1)
push.v self.wy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.specy
add.v.v
push.v self.wx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.specx
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [367]

:[372]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[373]
push.v self.wx
push.v self.hspace
add.v.v
pop.v.v self.wx
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [382]

:[374]
push.v self.mychar
call.i ord(argc=1)
pushi.e 256
cmp.i.v LT
bt [379]

:[375]
push.v self.mychar
call.i ord(argc=1)
push.i 65377
cmp.i.v GTE
bf [377]

:[376]
push.v self.mychar
call.i ord(argc=1)
push.i 65439
cmp.i.v LTE
b [378]

:[377]
push.e 0

:[378]
b [380]

:[379]
push.e 1

:[380]
bf [382]

:[381]
push.v self.wx
push.v self.hspace
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.wx

:[382]
push.v self.n
pushi.e 1
add.i.v
pop.v.v self.n
b [141]

:[383]
push.v self.halt
pushi.e 0
cmp.i.v NEQ
bf [386]

:[384]
push.v self.button1
pushi.e 1
cmp.i.v EQ
bf [386]

:[385]
push.v self.siner
pushi.e 0
cmp.i.v GT
b [387]

:[386]
push.e 0

:[387]
bf [404]

:[388]
push.v self.halt
pushi.e 1
cmp.i.v EQ
bf [394]

:[389]
call.i scr_nextmsg(argc=0)
popz.v
push.v self.faced
pushi.e 1
cmp.i.v EQ
bf [394]

:[390]
push.v self.smallface
conv.v.i
pushenv [393]

:[391]
push.v self.getrid
pushi.e 0
cmp.i.v EQ
bf [393]

:[392]
pushi.e 1
pop.v.i self.getrid

:[393]
popenv [391]
pushi.e 0
pop.v.i self.faced

:[394]
push.v self.halt
pushi.e 2
cmp.i.v EQ
bf [404]

:[395]
push.v self.faced
pushi.e 1
cmp.i.v EQ
bf [399]

:[396]
push.v self.smallface
conv.v.i
pushenv [398]

:[397]
call.i instance_destroy(argc=0)
popz.v

:[398]
popenv [397]
pushi.e 0
pop.v.i self.faced

:[399]
push.v self.facer
pushi.e 1
cmp.i.v EQ
bf [403]

:[400]
pushi.e 2
pushenv [402]

:[401]
call.i instance_destroy(argc=0)
popz.v

:[402]
popenv [401]

:[403]
call.i instance_destroy(argc=0)
popz.v

:[404]
pushi.e 0
pop.v.i self.skipme
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[end]