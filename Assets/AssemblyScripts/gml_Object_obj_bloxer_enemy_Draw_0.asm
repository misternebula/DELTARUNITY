.localvar 0 arguments

:[0]
push.v self.threebuffer
pushi.e 1
sub.i.v
pop.v.v self.threebuffer
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.ss
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.ssb
push.v self.swaptime
pushi.e 5
cmp.i.v EQ
bf [15]

:[1]
pushi.e 0
pop.v.i self.returncount
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [6]

:[3]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.movex
push.v self.xspeed
add.v.v
pop.i.v [array]self.movex
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.movex
pushi.e 0
cmp.i.v LTE
bf [5]

:[4]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.movex
push.v self.returncount
pushi.e 1
add.i.v
pop.v.v self.returncount

:[5]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[6]
push.v self.returncount
pushi.e 3
cmp.i.v GTE
bf [14]

:[7]
pushi.e 6
pop.v.i self.swaptime
pushi.e -1
pushi.e 0
push.v [array]self.selectpart
pushi.e -1
pushi.e 1
pop.v.v [array]self.part
pushi.e -1
pushi.e 1
push.v [array]self.selectpart
pushi.e -1
pushi.e 2
pop.v.v [array]self.part
pushi.e -1
pushi.e 2
push.v [array]self.selectpart
pushi.e -1
pushi.e 3
pop.v.v [array]self.part
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e -1
pushi.e 3
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 6
pushi.e -1
pushi.e 1
pop.v.i [array]self.part
pushi.e 100
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v

:[13]
b [15]

:[14]
push.v self.xspeed
pushi.e 2
sub.i.v
pop.v.v self.xspeed
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 2
push.v [array]self.partyb
push.v self.x
pushi.e -1
pushi.e 2
push.v [array]self.movex
add.v.v
pushi.e -1
pushi.e 3
push.v [array]self.part
pushi.e 595
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.partyb
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.movex
add.v.v
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 595
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.partyb
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.movex
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 595
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[15]
push.v self.swaptime
pushi.e 2
cmp.i.v EQ
bt [17]

:[16]
push.v self.swaptime
pushi.e 3
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [74]

:[19]
push.v self.sinmomentum
push.d 0.8
cmp.d.v LT
bf [21]

:[20]
push.v self.sinmomentum
push.d 0.05
add.d.v
pop.v.v self.sinmomentum

:[21]
push.v self.floatsin
push.v self.sinmomentum
add.v.v
pop.v.v self.floatsin
push.v self.threebuffer
pushi.e 0
cmp.i.v LTE
bf [23]

:[22]
push.v self.y
pushi.e 30
add.i.v
push.v self.selecttotal
pushi.e 26
mul.i.v
add.v.v
pop.v.v self.selecty

:[23]
pushi.e -1
pushi.e 0
push.v [array]self.select
pushi.e 0
cmp.i.v LT
bf [25]

:[24]
push.v self.y
pushi.e 53
add.i.v
push.v self.floatsin
pushi.e 8
conv.i.d
div.d.v
pushi.e -1
pushi.e 0
push.v [array]self.custom
add.v.v
call.i sin(argc=1)
pushi.e 25
mul.i.v
add.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.partyb

:[25]
pushi.e -1
pushi.e 1
push.v [array]self.select
pushi.e 0
cmp.i.v LT
bf [27]

:[26]
push.v self.y
pushi.e 53
add.i.v
push.v self.floatsin
pushi.e 8
conv.i.d
div.d.v
pushi.e -1
pushi.e 1
push.v [array]self.custom
add.v.v
call.i sin(argc=1)
pushi.e 25
mul.i.v
add.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.partyb

:[27]
pushi.e -1
pushi.e 2
push.v [array]self.select
pushi.e 0
cmp.i.v LT
bf [29]

:[28]
push.v self.y
pushi.e 53
add.i.v
push.v self.floatsin
pushi.e 8
conv.i.d
div.d.v
pushi.e -1
pushi.e 2
push.v [array]self.custom
add.v.v
call.i sin(argc=1)
pushi.e 25
mul.i.v
add.v.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.partyb

:[29]
pushi.e -1
pop.v.i self.closest
pushi.e 99
pop.v.i self.closefactor
pushi.e 0
pop.v.i self.i

:[30]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [47]

:[31]
push.i 8421504
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.scolor
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.select
pushi.e 0
cmp.i.v LT
bf [38]

:[32]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.partyb
push.v self.selecty
sub.v.v
call.i abs(argc=1)
pop.v.v self.cfactor
push.v self.cfactor
push.v self.closefactor
cmp.v.v LT
bf [34]

:[33]
push.v self.cfactor
pushi.e 24
cmp.i.v LT
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
push.v self.cfactor
pop.v.v self.closefactor
push.v self.i
pop.v.v self.closest

:[37]
b [46]

:[38]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.movex
pushi.e 60
cmp.i.v LT
bf [40]

:[39]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.movex
pushi.e 6
add.i.v
pop.i.v [array]self.movex

:[40]
push.i 65535
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.scolor
push.v self.y
pushi.e 28
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.select
pushi.e 25
mul.i.v
add.v.v
pop.v.v self.idealy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.partyb
push.v self.idealy
sub.v.v
call.i abs(argc=1)
pushi.e 6
cmp.i.v LT
bf [42]

:[41]
push.v self.idealy
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.partyb

:[42]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.partyb
push.v self.idealy
cmp.v.v LT
bf [44]

:[43]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.partyb
pushi.e 6
add.i.v
pop.i.v [array]self.partyb

:[44]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.partyb
push.v self.idealy
cmp.v.v GT
bf [46]

:[45]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.partyb
pushi.e 6
sub.i.v
pop.i.v [array]self.partyb

:[46]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [30]

:[47]
push.i 16777215
pop.v.i self.arrowcolor
pushi.e 0
pop.v.i self.i

:[48]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [52]

:[49]
push.v self.closest
push.v self.i
cmp.v.v EQ
bf [51]

:[50]
push.i 16777215
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.scolor
push.i 65535
pop.v.i self.arrowcolor

:[51]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [48]

:[52]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
push.v [array]self.scolor
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 2
push.v [array]self.partyb
push.v self.x
pushi.e -1
pushi.e 2
push.v [array]self.movex
add.v.v
pushi.e -1
pushi.e 3
push.v [array]self.part
pushi.e 595
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.scolor
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.partyb
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.movex
add.v.v
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 595
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.scolor
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.partyb
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.movex
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 595
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.threebuffer
pushi.e 4
mul.i.v
pop.v.v self.arrowpush
push.v self.arrowpush
pushi.e 0
cmp.i.v LT
bf [54]

:[53]
pushi.e 0
pop.v.i self.arrowpush

:[54]
pushi.e 0
pop.v.i self.ypush
push.v self.threebuffer
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 15
pop.v.i self.ypush

:[56]
push.v self.arrowcolor
call.i draw_set_color(argc=1)
popz.v
push.v self.finishtimer
pushi.e 8
cmp.i.v LT
bf [58]

:[57]
push.v self.selecttotal
push.v self.maxpart
pushi.e 2
sub.i.v
cmp.v.v LT
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 16
conv.i.v
push.v self.selecty
pushi.e 10
add.i.v
push.v self.ypush
add.v.v
push.v self.x
pushi.e 10
sub.i.v
push.v self.floatsin
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.arrowpush
add.v.v
push.v self.selecty
pushi.e 10
add.i.v
push.v self.ypush
add.v.v
push.v self.x
pushi.e 50
sub.i.v
push.v self.floatsin
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.arrowpush
add.v.v
call.i draw_arrow(argc=5)
popz.v

:[61]
call.i button3_p(argc=0)
conv.v.b
bf [64]

:[62]
push.v self.threebuffer
pushi.e 0
cmp.i.v LT
bf [64]

:[63]
push.v self.selecttotal
push.v self.maxpart
pushi.e 2
sub.i.v
cmp.v.v LT
b [65]

:[64]
push.e 0

:[65]
bf [70]

:[66]
push.v self.closest
pushi.e 0
cmp.i.v GTE
bf [68]

:[67]
pushi.e -1
pushi.e 1
push.v self.closest
add.v.i
conv.v.i
push.v [array]self.part
pushi.e -1
push.v self.selecttotal
conv.v.i
pop.v.v [array]self.selectpart
push.v self.selecttotal
pushi.e -1
push.v self.closest
conv.v.i
pop.v.v [array]self.select
push.v self.selecttotal
pushi.e 1
add.i.v
pop.v.v self.selecttotal
pushi.e 6
pop.v.i self.threebuffer

:[68]
push.v self.selecttotal
push.v self.maxpart
pushi.e 2
sub.i.v
cmp.v.v GTE
bf [70]

:[69]
pushi.e 3
pop.v.i self.swaptime

:[70]
push.v self.swaptime
pushi.e 3
cmp.i.v EQ
bf [72]

:[71]
push.v self.finishtimer
pushi.e 1
add.i.v
pop.v.v self.finishtimer

:[72]
push.v self.finishtimer
pushi.e 13
cmp.i.v GTE
bf [74]

:[73]
pushi.e 5
pop.v.i self.swaptime
pushi.e 4
pop.v.i self.xspeed

:[74]
push.v self.swaptime
pushi.e 0
cmp.i.v EQ
bt [77]

:[75]
push.v self.swaptime
pushi.e 1
cmp.i.v EQ
bt [77]

:[76]
push.v self.swaptime
pushi.e 6
cmp.i.v EQ
b [78]

:[77]
push.e 1

:[78]
bf [138]

:[79]
pushi.e 0
pop.v.i self.hurk
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [93]

:[80]
pushi.e 1
pop.v.i self.hurk
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e 3
conv.i.d
div.d.v
cmp.v.v LTE
bf [83]

:[81]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterstatus
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstercomment
push.s " "@24
cmp.s.v EQ
bf [83]

:[82]
push.s "obj_bloxer_enemy_slash_Draw_0_gml_141_0"@8548
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstercomment

:[83]
push.v self.hurttimer
pushi.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
pushi.e 0
cmp.i.v LT
bf [85]

:[84]
pushi.e 0
pop.v.i self.state
b [93]

:[85]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [87]

:[86]
pushi.e 10
pop.v.i self.hspeed

:[87]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [93]

:[88]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [90]

:[89]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[90]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [92]

:[91]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[92]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

:[93]
push.v self.swaptime
pushi.e 0
cmp.i.v EQ
bf [95]

:[94]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[95]
push.v self.swaptime
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
push.v self.swapx
pushi.e 2
add.i.v
pop.v.v self.swapx

:[97]
push.v self.swaptime
pushi.e 6
cmp.i.v EQ
bf [102]

:[98]
push.v self.swapx
pushi.e 0
cmp.i.v GT
bf [100]

:[99]
push.v self.swapx
pushi.e 2
sub.i.v
pop.v.v self.swapx

:[100]
push.v self.swapx
pushi.e 0
cmp.i.v LTE
bf [102]

:[101]
pushi.e 0
pop.v.i self.swaptime

:[102]
push.v self.swapx
pushi.e 16
cmp.i.v GTE
bf [104]

:[103]
push.v self.swaptime
pushi.e 1
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [107]

:[106]
pushi.e 2
pop.v.i self.swaptime

:[107]
push.v self.swaptime
pushi.e 0
cmp.i.v EQ
bf [114]

:[108]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [111]

:[109]
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [111]

:[110]
pushi.e -1
pushi.e 3
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
pushi.e 6
pushi.e -1
pushi.e 1
pop.v.i [array]self.part

:[114]
push.v self.swaptime
pushi.e 1
cmp.i.v EQ
bf [116]

:[115]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 6
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.part

:[119]
pushi.e 595
pop.v.i self.thissprite
push.v self.hurk
pushi.e 1
cmp.i.v EQ
bf [121]

:[120]
pushi.e 596
pop.v.i self.thissprite

:[121]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 54
add.i.v
push.v self.ssb
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 24
sub.i.v
push.v self.ss
pushi.e 2
mul.i.v
add.v.v
push.v self.swapx
push.d 1.5
mul.d.v
add.v.v
push.v self.shakex
add.v.v
pushi.e 5
conv.i.v
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.swapx
sub.v.v
push.v self.x
push.v self.ss
sub.v.v
push.v self.shakex
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.part
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.swaptime
pushi.e 1
cmp.i.v EQ
bt [123]

:[122]
push.v self.swaptime
pushi.e 6
cmp.i.v EQ
b [124]

:[123]
push.e 1

:[124]
bf [126]

:[125]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.swapx
add.v.v
push.v self.x
push.v self.ss
pushi.e 2
mul.i.v
add.v.v
push.v self.shakex
add.v.v
pushi.e -1
pushi.e 0
push.v [array]self.part
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v

:[126]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 78
add.i.v
push.v self.x
pushi.e 4
sub.i.v
push.v self.ss
pushi.e 2
mul.i.v
add.v.v
push.v self.shakex
add.v.v
pushi.e -1
pushi.e 3
push.v [array]self.part
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 54
add.i.v
push.v self.x
pushi.e 4
add.i.v
push.v self.ss
pushi.e 2
mul.i.v
sub.v.v
push.v self.shakex
add.v.v
pushi.e -1
pushi.e 2
push.v [array]self.part
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 28
add.i.v
push.v self.x
push.v self.ss
pushi.e 2
mul.i.v
add.v.v
push.v self.shakex
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.part
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.swaptime
pushi.e 0
cmp.i.v EQ
bf [128]

:[127]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.swapx
add.v.v
push.v self.x
push.v self.ss
pushi.e 2
mul.i.v
add.v.v
push.v self.shakex
add.v.v
pushi.e -1
pushi.e 0
push.v [array]self.part
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v

:[128]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [130]

:[129]
push.v self.flash
pushi.e 1
cmp.i.v EQ
b [131]

:[130]
push.e 0

:[131]
bf [138]

:[132]
push.v self.fsiner
pushi.e 1
add.i.v
pop.v.v self.fsiner
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
call.i d3d_set_fog(argc=4)
popz.v
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 54
add.i.v
push.v self.ssb
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 24
sub.i.v
push.v self.ss
pushi.e 2
mul.i.v
add.v.v
push.v self.swapx
push.d 1.5
mul.d.v
add.v.v
push.v self.shakex
add.v.v
pushi.e 5
conv.i.v
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.swapx
sub.v.v
push.v self.x
push.v self.ss
sub.v.v
push.v self.shakex
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.part
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.swaptime
pushi.e 1
cmp.i.v EQ
bt [134]

:[133]
push.v self.swaptime
pushi.e 6
cmp.i.v EQ
b [135]

:[134]
push.e 1

:[135]
bf [137]

:[136]
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.swapx
add.v.v
push.v self.x
push.v self.ss
pushi.e 2
mul.i.v
add.v.v
push.v self.shakex
add.v.v
pushi.e -1
pushi.e 0
push.v [array]self.part
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v

:[137]
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 78
add.i.v
push.v self.x
pushi.e 4
sub.i.v
push.v self.ss
pushi.e 2
mul.i.v
add.v.v
push.v self.shakex
add.v.v
pushi.e -1
pushi.e 3
push.v [array]self.part
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 54
add.i.v
push.v self.x
pushi.e 4
add.i.v
push.v self.ss
pushi.e 2
mul.i.v
sub.v.v
push.v self.shakex
add.v.v
pushi.e -1
pushi.e 2
push.v [array]self.part
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 28
add.i.v
push.v self.x
push.v self.ss
pushi.e 2
mul.i.v
add.v.v
push.v self.shakex
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.part
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i d3d_set_fog(argc=4)
popz.v

:[138]
push.v self.swaptime
pushi.e 10
cmp.i.v EQ
bf [143]

:[139]
pushi.e 0
pop.v.i self.introtimer
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.idealy
pushi.e 28
pushi.e -1
pushi.e 1
pop.v.i [array]self.idealy
pushi.e 54
pushi.e -1
pushi.e 2
pop.v.i [array]self.idealy
pushi.e 78
pushi.e -1
pushi.e 3
pop.v.i [array]self.idealy
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.idealy
pushi.e 0
pop.v.i self.i

:[140]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [142]

:[141]
pushi.e 100
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.cury
pushi.e 100
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.idealy
sub.v.i
pushi.e 16
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.yfactor
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [140]

:[142]
pushi.e 78
pushi.e -1
pushi.e 0
pop.v.i [array]self.cury
push.d 4.875
pushi.e -1
pushi.e 0
pop.v.d [array]self.yfactor
pushi.e 11
pop.v.i self.swaptime

:[143]
push.v self.swaptime
pushi.e 11
cmp.i.v EQ
bf [149]

:[144]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 2
push.v [array]self.cury
add.v.v
push.v self.x
push.v self.introtimer
pushi.e 2
mul.i.v
sub.v.v
pushi.e 6
add.i.v
pushi.e 5
conv.i.v
pushi.e 595
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 4
pop.v.i self.i

:[145]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [147]

:[146]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.cury
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.yfactor
sub.v.v
pop.i.v [array]self.cury
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cury
add.v.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
pushi.e 595
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [145]

:[147]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
push.v self.headpart
conv.v.i
push.v [array]self.cury
add.v.v
push.v self.x
pushi.e -1
push.v self.headpart
conv.v.i
push.v [array]self.part
pushi.e 595
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.cury
add.v.v
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.part
pushi.e 595
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.introtimer
pushi.e 1
add.i.v
pop.v.v self.introtimer
push.v self.introtimer
pushi.e 16
cmp.i.v GTE
bf [149]

:[148]
pushi.e 0
pop.v.i self.swaptime

:[149]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [151]

:[150]
pushi.e 0
pop.v.i self.flash

:[151]
pushi.e 0
pop.v.i self.becomeflash

:[end]