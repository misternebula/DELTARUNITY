.localvar 0 arguments

:[0]
push.v self.maxdelaytimer
pushi.e 1
add.i.v
pop.v.v self.maxdelaytimer
push.v self.spelluse
pushi.e 1
cmp.i.v EQ
bf [14]

:[1]
call.i scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v GT
bf [14]

:[2]
pushi.e 0
pop.v.i self.xyz

:[3]
push.v self.xyz
pushi.e 3
cmp.i.v LT
bf [14]

:[4]
push.v self.maxdelaytimer
pushi.e -1
push.v self.xyz
conv.v.i
push.v [array]self.spelldelay
cmp.v.v EQ
bf [13]

:[5]
pushi.e -1
push.v self.xyz
conv.v.i
push.v [array]self.charitem
pushi.e 1
cmp.i.v EQ
bf [9]

:[6]
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [8]

:[7]
pushi.e 4
pop.v.i self.state

:[8]
popenv [7]

:[9]
pushi.e -1
push.v self.xyz
conv.v.i
push.v [array]self.charspell
pushi.e 1
cmp.i.v EQ
bf [13]

:[10]
pushi.e -5
push.v self.xyz
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [12]

:[11]
pushi.e 2
pop.v.i self.state

:[12]
popenv [11]

:[13]
push.v self.xyz
pushi.e 1
add.i.v
pop.v.v self.xyz
b [3]

:[14]
push.v self.maxdelaytimer
push.v self.maxdelay
cmp.v.v GTE
bf [16]

:[15]
pushi.e 1
pop.v.i self.active

:[16]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[17]
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [44]

:[19]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
push.v self.i
pushi.e 1
cmp.i.v EQ
bt [21]

:[20]
push.v self.i
pushi.e 2
cmp.i.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [24]

:[23]
pushi.e 0
conv.i.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
pushi.e 2
add.i.v
push.v self.x
pushi.e 300
add.i.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
push.v self.x
call.i draw_rectangle(argc=5)
popz.v

:[24]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [27]

:[25]
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charauto
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [43]

:[29]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pop.v.v self.j
pushi.e 0
pop.v.i self.fullbox
push.v self.j
pushi.e 1
cmp.i.v EQ
bf [32]

:[30]
push.i 16711680
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.pressbuffer
pushi.e 0
cmp.i.v GT
bf [32]

:[31]
pushi.e -1
pushi.e 1
push.v [array]self.pressbuffer
pushi.e 5
conv.i.d
div.d.v
push.i 16777215
conv.i.v
push.i 16711680
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[32]
push.v self.j
pushi.e 2
cmp.i.v EQ
bf [35]

:[33]
push.i 8388736
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.pressbuffer
pushi.e 0
cmp.i.v GT
bf [35]

:[34]
pushi.e -1
pushi.e 2
push.v [array]self.pressbuffer
pushi.e 5
conv.i.d
div.d.v
push.i 16777215
conv.i.v
push.i 8388736
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[35]
push.v self.j
pushi.e 3
cmp.i.v EQ
bf [38]

:[36]
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 3
push.v [array]self.pressbuffer
pushi.e 0
cmp.i.v GT
bf [38]

:[37]
pushi.e -1
pushi.e 3
push.v [array]self.pressbuffer
pushi.e 5
conv.i.d
div.d.v
push.i 16777215
conv.i.v
push.i 32768
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[38]
pushi.e 1
conv.i.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
pushi.e 36
add.i.v
push.v self.x
pushi.e 80
add.i.v
pushi.e 15
push.v self.boltspeed
mul.v.i
add.v.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
push.v self.x
pushi.e 78
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
pushi.e 35
add.i.v
push.v self.x
pushi.e 80
add.i.v
pushi.e 15
push.v self.boltspeed
mul.v.i
add.v.v
pushi.e 1
sub.i.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
pushi.e 1
add.i.v
push.v self.x
pushi.e 79
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
push.v self.x
push.v self.j
pushi.e 1
sub.i.v
pushi.e 431
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e -5
pushi.e 13
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 432
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[40]
pushi.e -5
pushi.e 13
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
push.v self.x
push.v self.i
pushi.e 432
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[42]
push.v self.y
pushi.e 38
push.v self.i
mul.v.i
add.v.v
push.v self.x
pushi.e 80
add.i.v
push.v self.j
pushi.e 1
sub.i.v
pushi.e 433
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[43]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[44]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.boltcount
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.boltcount
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.boltcount
push.v self.method
pushi.e 1
cmp.i.v EQ
bf [70]

:[45]
pushi.e 0
pop.v.i self.i

:[46]
push.v self.i
push.v self.bolttotal
cmp.v.v LT
bf [61]

:[47]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltchar
pop.v.v self.offset
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltframe
push.v self.boltx
sub.v.v
pushi.e -5
cmp.i.v LT
bf [49]

:[48]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.boltalive

:[49]
pushi.e 1
pop.v.i self.boltalpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltframe
push.v self.boltx
sub.v.v
pushi.e 0
cmp.i.v LT
bf [51]

:[50]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltframe
push.v self.boltx
sub.v.v
pushi.e 3
conv.i.d
div.d.v
add.v.i
pop.v.v self.boltalpha
b [58]

:[51]
push.v self.imagetimer
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltalive
pushi.e 1
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [58]

:[55]
pushi.e 183
conv.i.v
push.v self.y
pushi.e 38
push.v self.offset
mul.v.i
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltframe
push.v self.boltspeed
mul.v.v
add.v.v
push.v self.boltx
push.v self.boltspeed
mul.v.v
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.img
push.v self.img
conv.v.i
pushenv [57]

:[56]
pushi.e 414
pop.v.i self.sprite_index
push.d 0.4
pop.v.d self.image_alpha

:[57]
popenv [56]

:[58]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltalive
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.v self.boltalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 38
push.v self.offset
mul.v.i
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltframe
push.v self.boltspeed
mul.v.v
add.v.v
push.v self.boltx
push.v self.boltspeed
mul.v.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 414
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltchar
conv.v.i
dup.i 1
push.v [array]self.boltcount
pushi.e 1
add.i.v
pop.i.v [array]self.boltcount

:[60]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [46]

:[61]
pushi.e 0
pop.v.i self.i

:[62]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [70]

:[63]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltcount
pushi.e 0
cmp.i.v EQ
bf [66]

:[64]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.attacked
pushi.e 0
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.attacked
push.v self.i
pop.v.v self.target
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[69]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [62]

:[70]
call.i scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v GT
bf [91]

:[71]
pushi.e -5
pushi.e 13
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [88]

:[72]
call.i button1_p(argc=0)
conv.v.b
bf [74]

:[73]
pushi.e -1
pushi.e 0
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 0
conv.i.v
call.i scr_boltcheck(argc=1)
popz.v

:[77]
call.i button2_p(argc=0)
conv.v.b
bf [79]

:[78]
pushi.e -1
pushi.e 1
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e 1
conv.i.v
call.i scr_boltcheck(argc=1)
popz.v

:[82]
call.i button3_p(argc=0)
conv.v.b
bf [84]

:[83]
pushi.e -1
pushi.e 2
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
b [85]

:[84]
push.e 0

:[85]
bf [87]

:[86]
pushi.e 2
conv.i.v
call.i scr_boltcheck(argc=1)
popz.v

:[87]
b [90]

:[88]
call.i button1_p(argc=0)
conv.v.b
bf [90]

:[89]
pushi.e 0
conv.i.v
call.i scr_boltcheck_onebutton(argc=1)
popz.v

:[90]
b [93]

:[91]
pushi.e 1
pop.v.i self.fakefade
push.v self.posttimer
push.v self.timermax
pushi.e 35
sub.i.v
cmp.v.v LT
bf [93]

:[92]
push.v self.timermax
pushi.e 34
sub.i.v
pop.v.v self.posttimer

:[93]
push.v self.imagetimer
pushi.e 1
add.i.v
pop.v.v self.imagetimer
push.v self.boltx
pushi.e 1
add.i.v
pop.v.v self.boltx
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.pressbuffer
pushi.e 1
sub.i.v
pop.i.v [array]self.pressbuffer
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.pressbuffer
pushi.e 1
sub.i.v
pop.i.v [array]self.pressbuffer
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.pressbuffer
pushi.e 1
sub.i.v
pop.i.v [array]self.pressbuffer
push.v self.imagetimer
pushi.e 1
cmp.i.v GT
bf [95]

:[94]
pushi.e 0
pop.v.i self.imagetimer

:[95]
pushi.e 0
pop.v.i self.goahead
pushi.e -1
pushi.e 0
push.v [array]self.attacked
pushi.e 1
cmp.i.v EQ
bt [97]

:[96]
pushi.e -1
pushi.e 0
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
b [98]

:[97]
push.e 1

:[98]
bf [108]

:[99]
pushi.e -1
pushi.e 1
push.v [array]self.attacked
pushi.e 1
cmp.i.v EQ
bt [101]

:[100]
pushi.e -1
pushi.e 1
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
b [102]

:[101]
push.e 1

:[102]
bf [108]

:[103]
pushi.e -1
pushi.e 2
push.v [array]self.attacked
pushi.e 1
cmp.i.v EQ
bt [105]

:[104]
pushi.e -1
pushi.e 2
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
b [106]

:[105]
push.e 1

:[106]
bf [108]

:[107]
pushi.e 1
pop.v.i self.goahead

:[108]
call.i scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [110]

:[109]
pushi.e 1
pop.v.i self.goahead

:[110]
push.v self.goahead
pushi.e 1
cmp.i.v EQ
bf [132]

:[111]
push.v self.posttimer
pushi.e 1
add.i.v
pop.v.v self.posttimer
push.v self.posttimer
push.v self.timermax
pushi.e 35
sub.i.v
cmp.v.v GT
bf [115]

:[112]
push.v self.haveauto
pushi.e 1
cmp.i.v EQ
bf [115]

:[113]
push.v self.autoed
pushi.e 0
cmp.i.v EQ
bf [115]

:[114]
call.i scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v GT
b [116]

:[115]
push.e 0

:[116]
bf [122]

:[117]
pushi.e 160
pushi.e -5
push.v self.sus
conv.v.i
push.v [array]global.charinstance
conv.v.i
pop.v.i [stacktop]self.points
pushi.e -5
pushi.e -5
push.v self.sus
conv.v.i
push.v [array]global.chartarget
conv.v.i
push.v [array]global.automiss
pushi.e 1
cmp.i.v EQ
bf [119]

:[118]
pushi.e 0
pushi.e -5
push.v self.sus
conv.v.i
push.v [array]global.charinstance
conv.v.i
pop.v.i [stacktop]self.points

:[119]
pushi.e -5
push.v self.sus
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [121]

:[120]
pushi.e 1
pop.v.i self.state
pushi.e 0
pop.v.i self.attacktimer
pushi.e 1
pop.v.i self.is_auto_susie

:[121]
popenv [120]
push.v self.posttimer
pushi.e 25
sub.i.v
pop.v.v self.posttimer
pushi.e 1
pop.v.i self.autoed

:[122]
push.v self.posttimer
push.v self.timermax
cmp.v.v GT
bf [132]

:[123]
pushi.e 1
pop.v.i self.fade
pushi.e 205
pushenv [127]

:[124]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
pushi.e 0
pop.v.i self.state

:[126]
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.itemed

:[127]
popenv [124]
pushi.e 0
pop.v.i self.techwon
call.i scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [129]

:[128]
pushi.e 1
pop.v.i self.techwon

:[129]
push.v self.techwon
pushi.e 0
cmp.i.v EQ
bf [131]

:[130]
pushi.e 1
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight
b [132]

:[131]
call.i scr_wincombat(argc=0)
popz.v

:[132]
push.v self.fade
pushi.e 1
cmp.i.v EQ
bt [134]

:[133]
push.v self.fakefade
pushi.e 1
cmp.i.v EQ
b [135]

:[134]
push.e 1

:[135]
bf [end]

:[136]
push.v self.fadeamt
push.d 0.08
add.d.v
pop.v.v self.fadeamt
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.fadeamt
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 300
add.i.v
push.v self.x
pushi.e 640
add.i.v
push.v self.y
pushi.e 1
sub.i.v
push.v self.x
pushi.e 1
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.fade
pushi.e 1
cmp.i.v EQ
bf [end]

:[137]
push.v self.fadeamt
pushi.e 1
cmp.i.v GT
bf [end]

:[138]
call.i instance_destroy(argc=0)
popz.v

:[end]