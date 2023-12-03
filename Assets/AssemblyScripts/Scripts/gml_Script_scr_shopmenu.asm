.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [57]

:[1]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [3]

:[2]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [57]

:[5]
pushi.e 255
conv.i.v
pushi.e 640
conv.i.v
push.v self.minimenuy
pushi.e 400
conv.i.v
call.i scr_darkbox_black(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e -1
pushi.e 0
push.v [array]self.shopdesc
call.i string_hash_to_newline(argc=1)
push.v self.minimenuy
pushi.e 28
add.i.v
pushi.e 440
conv.i.v
call.i draw_text(argc=3)
popz.v

:[7]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e -1
pushi.e 1
push.v [array]self.shopdesc
call.i string_hash_to_newline(argc=1)
push.v self.minimenuy
pushi.e 28
add.i.v
pushi.e 440
conv.i.v
call.i draw_text(argc=3)
popz.v

:[9]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
pushi.e -1
pushi.e 2
push.v [array]self.shopdesc
call.i string_hash_to_newline(argc=1)
push.v self.minimenuy
pushi.e 28
add.i.v
pushi.e 440
conv.i.v
call.i draw_text(argc=3)
popz.v

:[11]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
pushi.e -1
pushi.e 3
push.v [array]self.shopdesc
call.i string_hash_to_newline(argc=1)
push.v self.minimenuy
pushi.e 28
add.i.v
pushi.e 440
conv.i.v
call.i draw_text(argc=3)
popz.v

:[13]
push.s "dotumche"@1564
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@166
cmp.s.v EQ
bt [15]

:[14]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@167
cmp.s.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [57]

:[17]
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [57]

:[19]
pushi.e 0
pop.v.i self.can_index
pushi.e 672
pop.v.i self.facetype
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pop.v.v self.which
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 672
pop.v.i self.facetype

:[21]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
pushi.e 674
pop.v.i self.facetype

:[23]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 3
cmp.i.v EQ
bf [25]

:[24]
pushi.e 673
pop.v.i self.facetype

:[25]
push.v self.which
pushi.e 0
cmp.i.v NEQ
bf [56]

:[26]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
pushi.e 0
pop.v.i self.locx
pushi.e 0
pop.v.i self.locy

:[28]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 100
pop.v.i self.locx
pushi.e 0
pop.v.i self.locy

:[30]
push.v self.i
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
pushi.e 0
pop.v.i self.locx
pushi.e 45
pop.v.i self.locy

:[32]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.which
conv.v.i
chkindex.e
add.i.i
push.v [array]self.canequip
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
pushi.e 8
pop.v.i self.can_index

:[34]
push.v self.minimenuy
pushi.e 140
add.i.v
push.v self.locy
add.v.v
pushi.e 426
push.v self.locx
add.v.i
push.v self.can_index
push.v self.facetype
call.i draw_sprite(argc=4)
popz.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@166
cmp.s.v EQ
bf [36]

:[35]
push.v self.can_index
pushi.e 8
cmp.i.v NEQ
b [37]

:[36]
push.e 0

:[37]
bf [45]

:[38]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itematk
pushi.e -5
push.v self.which
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemat
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.sum
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemmagic
pushi.e -5
push.v self.which
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemmag
sub.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.sum
pushi.e 0
pop.v.i self.j

:[39]
push.v self.j
pushi.e 2
cmp.i.v LT
bf [45]

:[40]
push.i 16777215
pop.v.i self.dcolor
push.s ""@2240
pop.v.s self.addt
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sum
pushi.e 0
cmp.i.v GT
bf [42]

:[41]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "+"@2672
pop.v.s self.addt

:[42]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sum
pushi.e 0
cmp.i.v LT
bf [44]

:[43]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[44]
pushi.e 1
conv.i.v
push.v self.dcolor
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.minimenuy
push.v self.locy
add.v.v
pushi.e 135
add.i.v
pushi.e 20
push.v self.j
mul.v.i
add.v.v
pushi.e 470
push.v self.locx
add.v.i
push.v self.j
pushi.e 371
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.addt
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sum
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.minimenuy
push.v self.locy
add.v.v
pushi.e 135
add.i.v
pushi.e 20
push.v self.j
mul.v.i
add.v.v
pushi.e 490
push.v self.locx
add.v.i
call.i draw_text(argc=3)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [39]

:[45]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@167
cmp.s.v EQ
bf [47]

:[46]
push.v self.can_index
pushi.e 8
cmp.i.v NEQ
b [48]

:[47]
push.e 0

:[48]
bf [56]

:[49]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemdef
pushi.e -5
push.v self.which
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemdf
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.sum
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemdef
pushi.e -5
push.v self.which
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemdf
sub.v.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.sum
pushi.e 0
pop.v.i self.j

:[50]
push.v self.j
pushi.e 2
cmp.i.v LT
bf [56]

:[51]
push.i 16777215
pop.v.i self.dcolor
push.s ""@2240
pop.v.s self.addt
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sum
pushi.e 0
cmp.i.v GT
bf [53]

:[52]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "+"@2672
pop.v.s self.addt

:[53]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sum
pushi.e 0
cmp.i.v LT
bf [55]

:[54]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[55]
pushi.e 1
conv.i.v
push.v self.dcolor
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.minimenuy
push.v self.locy
add.v.v
pushi.e 135
add.i.v
pushi.e 20
push.v self.j
mul.v.i
add.v.v
pushi.e 470
push.v self.locx
add.v.i
pushi.e 2
push.v self.j
add.v.i
pushi.e 371
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.addt
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.sum
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.minimenuy
pushi.e 135
add.i.v
pushi.e 20
push.v self.j
mul.v.i
add.v.v
push.v self.locy
add.v.v
pushi.e 490
push.v self.locx
add.v.i
call.i draw_text(argc=3)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [50]

:[56]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[57]
pushbltn.v self.argument0
pushi.e 4
cmp.i.v EQ
bf [241]

:[58]
push.v self.menu
pushi.e 11
cmp.i.v EQ
bt [60]

:[59]
push.v self.menu
pushi.e 15
cmp.i.v EQ
b [61]

:[60]
push.e 1

:[61]
bf [119]

:[62]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i scr_itemcheck(argc=1)
popz.v
pushi.e 11
push.v self.itemcount
sub.v.i
pop.v.v self.menumax
push.v self.menumax
pushi.e 0
cmp.i.v LT
bf [64]

:[63]
pushi.e 0
pop.v.i self.menumax

:[64]
push.v self.menu
pushi.e 11
cmp.i.v EQ
bf [87]

:[65]
pushi.e 0
pop.v.i self._up_pressed
pushi.e 0
pop.v.i self._down_pressed
call.i down_h(argc=0)
conv.v.b
bf [75]

:[66]
pushi.e 0
pop.v.i self.hold_up
call.i down_p(argc=0)
conv.v.b
bf [68]

:[67]
pushi.e 1
pop.v.i self._down_pressed

:[68]
push.v self.hold_down
pushi.e 1
add.i.v
pop.v.v self.hold_down
push.v self.hold_down
pushi.e 8
cmp.i.v GTE
bf [70]

:[69]
pushi.e 1
pop.v.i self._down_pressed
pushi.e 6
pop.v.i self.hold_down

:[70]
push.v self._down_pressed
pushi.e 1
cmp.i.v EQ
bf [74]

:[71]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [74]

:[72]
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
add.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.pagemax
pushi.e 4
add.i.v
cmp.v.v GT
bf [74]

:[73]
push.v self.pagemax
pushi.e 1
add.i.v
pop.v.v self.pagemax

:[74]
b [76]

:[75]
pushi.e 0
pop.v.i self.hold_down

:[76]
call.i up_h(argc=0)
conv.v.b
bf [86]

:[77]
pushi.e 0
pop.v.i self.hold_down
call.i up_p(argc=0)
conv.v.b
bf [79]

:[78]
pushi.e 1
pop.v.i self._up_pressed

:[79]
push.v self.hold_up
pushi.e 1
add.i.v
pop.v.v self.hold_up
push.v self.hold_up
pushi.e 8
cmp.i.v GTE
bf [81]

:[80]
pushi.e 1
pop.v.i self._up_pressed
pushi.e 6
pop.v.i self.hold_up

:[81]
push.v self._up_pressed
pushi.e 1
cmp.i.v EQ
bf [85]

:[82]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 0
cmp.i.v GT
bf [85]

:[83]
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
sub.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.pagemax
cmp.v.v LT
bf [85]

:[84]
push.v self.pagemax
pushi.e 1
sub.i.v
pop.v.v self.pagemax

:[85]
b [87]

:[86]
pushi.e 0
pop.v.i self.hold_up

:[87]
pushi.e 0
pop.v.i self.j
push.v self.pagemax
pop.v.v self.i

:[88]
push.v self.i
pushi.e 5
push.v self.pagemax
add.v.i
cmp.v.v LT
bf [94]

:[89]
pushi.e 270
pushi.e -1
pushi.e 11
push.v [array]self.menuc
push.v self.pagemax
sub.v.v
pushi.e 40
mul.i.v
add.v.i
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.g
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.itemnameb
pop.v.v self._itempname
push.v self._itempname
push.s " "@24
cmp.s.v EQ
bf [91]

:[90]
push.s "--------"@2685
pop.v.s self._itempname
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[91]
push.v self._itempname
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.j
pushi.e 40
mul.i.v
add.v.i
pushi.e 60
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.itemvalue
pushi.e 1
cmp.i.v GT
bf [93]

:[92]
push.s "$"@2686
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.itemvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i string(argc=1)
add.v.s
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.j
pushi.e 40
mul.i.v
add.v.i
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v

:[93]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [88]

:[94]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.menu
pushi.e 11
cmp.i.v EQ
bf [113]

:[95]
call.i button1_p(argc=0)
conv.v.b
bf [97]

:[96]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [98]

:[97]
push.e 0

:[98]
bf [105]

:[99]
pushi.e -5
pushi.e -1
pushi.e 11
push.v [array]self.menuc
conv.v.i
push.v [array]global.itemvalue
pushi.e 1
cmp.i.v GT
bf [101]

:[100]
pushi.e 15
pop.v.i self.menu
b [102]

:[101]
pushi.e 3
pop.v.i self.sidemessage2

:[102]
pushi.e -5
pushi.e -1
pushi.e 11
push.v [array]self.menuc
conv.v.i
push.v [array]global.itemvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.sellvalue
pushi.e 11
pop.v.i self.tempmenu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 6
pushenv [104]

:[103]
call.i instance_destroy(argc=0)
popz.v

:[104]
popenv [103]

:[105]
call.i button2_p(argc=0)
conv.v.b
bf [108]

:[106]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [108]

:[107]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [109]

:[108]
push.e 0

:[109]
bf [113]

:[110]
pushi.e 0
pop.v.i self.sidemessage
pushi.e 10
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 6
pushenv [112]

:[111]
call.i instance_destroy(argc=0)
popz.v

:[112]
popenv [111]

:[113]
call.i scr_shopmorearrow(argc=0)
popz.v
push.v self.menumax
pushi.e 4
cmp.i.v GT
bf [119]

:[114]
pushi.e 0
pop.v.i self.i

:[115]
push.v self.i
push.v self.menumax
cmp.v.v LTE
bf [119]

:[116]
pushi.e 0
pop.v.i self.buff
pushi.e -1
pushi.e 11
push.v [array]self.menuc
push.v self.i
cmp.v.v EQ
bf [118]

:[117]
pushi.e 3
pop.v.i self.buff

:[118]
pushi.e 0
conv.i.v
pushi.e 297
push.v self.i
pushi.e 130
conv.i.d
push.v self.menumax
div.v.d
mul.v.v
add.v.i
push.v self.buff
add.v.v
pushi.e 377
push.v self.buff
add.v.i
pushi.e 295
push.v self.i
pushi.e 130
conv.i.d
push.v self.menumax
div.v.d
mul.v.v
add.v.i
push.v self.buff
sub.v.v
pushi.e 375
push.v self.buff
sub.v.i
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [115]

:[119]
push.v self.menu
pushi.e 12
cmp.i.v EQ
bt [121]

:[120]
push.v self.menu
pushi.e 16
cmp.i.v EQ
b [122]

:[121]
push.e 1

:[122]
bf [180]

:[123]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 11
pop.v.i self.menumax
push.v self.menu
pushi.e 12
cmp.i.v EQ
bf [146]

:[124]
pushi.e 0
pop.v.i self._up_pressed
pushi.e 0
pop.v.i self._down_pressed
call.i down_h(argc=0)
conv.v.b
bf [134]

:[125]
pushi.e 0
pop.v.i self.hold_up
call.i down_p(argc=0)
conv.v.b
bf [127]

:[126]
pushi.e 1
pop.v.i self._down_pressed

:[127]
push.v self.hold_down
pushi.e 1
add.i.v
pop.v.v self.hold_down
push.v self.hold_down
pushi.e 8
cmp.i.v GTE
bf [129]

:[128]
pushi.e 1
pop.v.i self._down_pressed
pushi.e 6
pop.v.i self.hold_down

:[129]
push.v self._down_pressed
pushi.e 1
cmp.i.v EQ
bf [133]

:[130]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [133]

:[131]
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
add.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.pagemax
pushi.e 4
add.i.v
cmp.v.v GT
bf [133]

:[132]
push.v self.pagemax
pushi.e 1
add.i.v
pop.v.v self.pagemax

:[133]
b [135]

:[134]
pushi.e 0
pop.v.i self.hold_down

:[135]
call.i up_h(argc=0)
conv.v.b
bf [145]

:[136]
pushi.e 0
pop.v.i self.hold_down
call.i up_p(argc=0)
conv.v.b
bf [138]

:[137]
pushi.e 1
pop.v.i self._up_pressed

:[138]
push.v self.hold_up
pushi.e 1
add.i.v
pop.v.v self.hold_up
push.v self.hold_up
pushi.e 8
cmp.i.v GTE
bf [140]

:[139]
pushi.e 1
pop.v.i self._up_pressed
pushi.e 6
pop.v.i self.hold_up

:[140]
push.v self._up_pressed
pushi.e 1
cmp.i.v EQ
bf [144]

:[141]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 0
cmp.i.v GT
bf [144]

:[142]
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
sub.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.pagemax
cmp.v.v LT
bf [144]

:[143]
push.v self.pagemax
pushi.e 1
sub.i.v
pop.v.v self.pagemax

:[144]
b [146]

:[145]
pushi.e 0
pop.v.i self.hold_up

:[146]
pushi.e 0
pop.v.i self.j
push.v self.pagemax
pop.v.v self.i

:[147]
push.v self.i
pushi.e 5
push.v self.pagemax
add.v.i
cmp.v.v LT
bf [153]

:[148]
pushi.e 270
pushi.e -1
pushi.e 12
push.v [array]self.menuc
push.v self.pagemax
sub.v.v
pushi.e 40
mul.i.v
add.v.i
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.g
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponname
pop.v.v self._itempname
push.v self._itempname
push.s " "@24
cmp.s.v EQ
bf [150]

:[149]
push.s "--------"@2685
pop.v.s self._itempname
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[150]
push.v self._itempname
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.j
pushi.e 40
mul.i.v
add.v.i
pushi.e 60
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponvalue
pushi.e 1
cmp.i.v GT
bf [152]

:[151]
push.s "$"@2686
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i string(argc=1)
add.v.s
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.j
pushi.e 40
mul.i.v
add.v.i
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v

:[152]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [147]

:[153]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.menu
pushi.e 12
cmp.i.v EQ
bf [172]

:[154]
call.i button1_p(argc=0)
conv.v.b
bf [156]

:[155]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [157]

:[156]
push.e 0

:[157]
bf [164]

:[158]
pushi.e -1
pushi.e -1
pushi.e 12
push.v [array]self.menuc
conv.v.i
push.v [array]self.weaponvalue
pushi.e 1
cmp.i.v GT
bf [160]

:[159]
pushi.e 16
pop.v.i self.menu
b [161]

:[160]
pushi.e 4
pop.v.i self.sidemessage2

:[161]
pushi.e -1
pushi.e -1
pushi.e 12
push.v [array]self.menuc
conv.v.i
push.v [array]self.weaponvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.sellvalue
pushi.e 12
pop.v.i self.tempmenu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 6
pushenv [163]

:[162]
call.i instance_destroy(argc=0)
popz.v

:[163]
popenv [162]

:[164]
call.i button2_p(argc=0)
conv.v.b
bf [167]

:[165]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [167]

:[166]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [168]

:[167]
push.e 0

:[168]
bf [172]

:[169]
pushi.e 0
pop.v.i self.sidemessage
pushi.e 10
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 6
pushenv [171]

:[170]
call.i instance_destroy(argc=0)
popz.v

:[171]
popenv [170]

:[172]
call.i scr_shopmorearrow(argc=0)
popz.v
push.v self.menumax
pushi.e 1
cmp.i.v GT
bf [180]

:[173]
pushi.e 0
pop.v.i self.i

:[174]
push.v self.i
push.v self.menumax
cmp.v.v LTE
bf [180]

:[175]
pushi.e 0
pop.v.i self.buff
pushi.e -1
pushi.e 12
push.v [array]self.menuc
push.v self.i
cmp.v.v EQ
bf [177]

:[176]
push.v self.buff
pushi.e 3
add.i.v
pop.v.v self.buff

:[177]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.weapon
pushi.e 0
cmp.i.v EQ
bf [179]

:[178]
push.v self.buff
pushi.e 1
sub.i.v
pop.v.v self.buff

:[179]
pushi.e 0
conv.i.v
pushi.e 297
push.v self.i
pushi.e 130
conv.i.d
push.v self.menumax
div.v.d
mul.v.v
add.v.i
push.v self.buff
add.v.v
pushi.e 377
push.v self.buff
add.v.i
pushi.e 295
push.v self.i
pushi.e 130
conv.i.d
push.v self.menumax
div.v.d
mul.v.v
add.v.i
push.v self.buff
sub.v.v
pushi.e 375
push.v self.buff
sub.v.i
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [174]

:[180]
push.v self.menu
pushi.e 13
cmp.i.v EQ
bt [182]

:[181]
push.v self.menu
pushi.e 17
cmp.i.v EQ
b [183]

:[182]
push.e 1

:[183]
bf [241]

:[184]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 11
pop.v.i self.menumax
push.v self.menu
pushi.e 13
cmp.i.v EQ
bf [207]

:[185]
pushi.e 0
pop.v.i self._up_pressed
pushi.e 0
pop.v.i self._down_pressed
call.i down_h(argc=0)
conv.v.b
bf [195]

:[186]
pushi.e 0
pop.v.i self.hold_up
call.i down_p(argc=0)
conv.v.b
bf [188]

:[187]
pushi.e 1
pop.v.i self._down_pressed

:[188]
push.v self.hold_down
pushi.e 1
add.i.v
pop.v.v self.hold_down
push.v self.hold_down
pushi.e 8
cmp.i.v GTE
bf [190]

:[189]
pushi.e 1
pop.v.i self._down_pressed
pushi.e 6
pop.v.i self.hold_down

:[190]
push.v self._down_pressed
pushi.e 1
cmp.i.v EQ
bf [194]

:[191]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [194]

:[192]
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
add.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.pagemax
pushi.e 4
add.i.v
cmp.v.v GT
bf [194]

:[193]
push.v self.pagemax
pushi.e 1
add.i.v
pop.v.v self.pagemax

:[194]
b [196]

:[195]
pushi.e 0
pop.v.i self.hold_down

:[196]
call.i up_h(argc=0)
conv.v.b
bf [206]

:[197]
pushi.e 0
pop.v.i self.hold_down
call.i up_p(argc=0)
conv.v.b
bf [199]

:[198]
pushi.e 1
pop.v.i self._up_pressed

:[199]
push.v self.hold_up
pushi.e 1
add.i.v
pop.v.v self.hold_up
push.v self.hold_up
pushi.e 8
cmp.i.v GTE
bf [201]

:[200]
pushi.e 1
pop.v.i self._up_pressed
pushi.e 6
pop.v.i self.hold_up

:[201]
push.v self._up_pressed
pushi.e 1
cmp.i.v EQ
bf [205]

:[202]
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 0
cmp.i.v GT
bf [205]

:[203]
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
sub.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.pagemax
cmp.v.v LT
bf [205]

:[204]
push.v self.pagemax
pushi.e 1
sub.i.v
pop.v.v self.pagemax

:[205]
b [207]

:[206]
pushi.e 0
pop.v.i self.hold_up

:[207]
pushi.e 0
pop.v.i self.j
push.v self.pagemax
pop.v.v self.i

:[208]
push.v self.i
pushi.e 5
push.v self.pagemax
add.v.i
cmp.v.v LT
bf [214]

:[209]
pushi.e 270
pushi.e -1
pushi.e 13
push.v [array]self.menuc
push.v self.pagemax
sub.v.v
pushi.e 40
mul.i.v
add.v.i
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.g
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorname
pop.v.v self._itempname
push.v self._itempname
push.s " "@24
cmp.s.v EQ
bf [211]

:[210]
push.s "--------"@2685
pop.v.s self._itempname
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[211]
push.v self._itempname
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.j
pushi.e 40
mul.i.v
add.v.i
pushi.e 60
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorvalue
pushi.e 1
cmp.i.v GT
bf [213]

:[212]
push.s "$"@2686
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i string(argc=1)
add.v.s
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.j
pushi.e 40
mul.i.v
add.v.i
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v

:[213]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [208]

:[214]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.menu
pushi.e 13
cmp.i.v EQ
bf [233]

:[215]
call.i button1_p(argc=0)
conv.v.b
bf [217]

:[216]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [218]

:[217]
push.e 0

:[218]
bf [225]

:[219]
pushi.e -1
pushi.e -1
pushi.e 13
push.v [array]self.menuc
conv.v.i
push.v [array]self.armorvalue
pushi.e 1
cmp.i.v GT
bf [221]

:[220]
pushi.e 17
pop.v.i self.menu
b [222]

:[221]
pushi.e 4
pop.v.i self.sidemessage2

:[222]
pushi.e -1
pushi.e -1
pushi.e 13
push.v [array]self.menuc
conv.v.i
push.v [array]self.armorvalue
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.sellvalue
pushi.e 13
pop.v.i self.tempmenu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 6
pushenv [224]

:[223]
call.i instance_destroy(argc=0)
popz.v

:[224]
popenv [223]

:[225]
call.i button2_p(argc=0)
conv.v.b
bf [228]

:[226]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [228]

:[227]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [229]

:[228]
push.e 0

:[229]
bf [233]

:[230]
pushi.e 0
pop.v.i self.sidemessage
pushi.e 10
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 6
pushenv [232]

:[231]
call.i instance_destroy(argc=0)
popz.v

:[232]
popenv [231]

:[233]
call.i scr_shopmorearrow(argc=0)
popz.v
push.v self.menumax
pushi.e 1
cmp.i.v GT
bf [241]

:[234]
pushi.e 0
pop.v.i self.i

:[235]
push.v self.i
push.v self.menumax
cmp.v.v LTE
bf [241]

:[236]
pushi.e 0
pop.v.i self.buff
pushi.e -1
pushi.e 13
push.v [array]self.menuc
push.v self.i
cmp.v.v EQ
bf [238]

:[237]
push.v self.buff
pushi.e 3
add.i.v
pop.v.v self.buff

:[238]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.armor
pushi.e 0
cmp.i.v EQ
bf [240]

:[239]
push.v self.buff
pushi.e 1
sub.i.v
pop.v.v self.buff

:[240]
pushi.e 0
conv.i.v
pushi.e 297
push.v self.i
pushi.e 130
conv.i.d
push.v self.menumax
div.v.d
mul.v.v
add.v.i
push.v self.buff
add.v.v
pushi.e 377
push.v self.buff
add.v.i
pushi.e 295
push.v self.i
pushi.e 130
conv.i.d
push.v self.menumax
div.v.d
mul.v.v
add.v.i
push.v self.buff
sub.v.v
pushi.e 375
push.v self.buff
sub.v.i
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [235]

:[241]
pushbltn.v self.argument0
pushi.e 5
cmp.i.v EQ
bf [end]

:[242]
push.v self.menu
pushi.e 15
cmp.i.v EQ
bf [262]

:[243]
call.i button2_p(argc=0)
conv.v.b
bf [245]

:[244]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [246]

:[245]
push.e 0

:[246]
bf [248]

:[247]
push.v self.tempmenu
pop.v.v self.menu
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[248]
call.i button1_p(argc=0)
conv.v.b
bf [251]

:[249]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [251]

:[250]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [252]

:[251]
push.e 0

:[252]
bf [262]

:[253]
pushi.e -1
pushi.e 15
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [260]

:[254]
pushi.e 33
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v global.gold
push.v self.sellvalue
add.v.v
pop.v.v global.gold
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 11
push.v [array]self.menuc
call.i scr_itemshift(argc=2)
popz.v
call.i scr_iteminfo_all(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i scr_itemcheck(argc=1)
popz.v
pushi.e -5
pushi.e -1
pushi.e 11
push.v [array]self.menuc
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v EQ
bf [257]

:[255]
pushi.e -1
pushi.e 11
dup.i 1
push.v [array]self.menuc
pushi.e 1
sub.i.v
pop.i.v [array]self.menuc
push.v self.pagemax
pushi.e 0
cmp.i.v GT
bf [257]

:[256]
push.v self.pagemax
pushi.e 1
sub.i.v
pop.v.v self.pagemax

:[257]
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [259]

:[258]
pushi.e 10
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage
b [260]

:[259]
pushi.e 11
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage2

:[260]
pushi.e -1
pushi.e 15
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [262]

:[261]
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 11
pop.v.i self.menu

:[262]
push.v self.menu
pushi.e 16
cmp.i.v EQ
bf [279]

:[263]
call.i button2_p(argc=0)
conv.v.b
bf [265]

:[264]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [266]

:[265]
push.e 0

:[266]
bf [268]

:[267]
push.v self.tempmenu
pop.v.v self.menu
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[268]
call.i button1_p(argc=0)
conv.v.b
bf [271]

:[269]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [271]

:[270]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [272]

:[271]
push.e 0

:[272]
bf [279]

:[273]
pushi.e -1
pushi.e 16
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [277]

:[274]
pushi.e 33
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v global.gold
push.v self.sellvalue
add.v.v
pop.v.v global.gold
pushi.e 0
pushi.e -5
pushi.e -1
pushi.e 12
push.v [array]self.menuc
conv.v.i
pop.v.i [array]global.weapon
call.i scr_weaponinfo_all(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i scr_weaponcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [276]

:[275]
pushi.e 10
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage
b [277]

:[276]
pushi.e 12
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage2

:[277]
pushi.e -1
pushi.e 16
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [279]

:[278]
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 12
pop.v.i self.menu

:[279]
push.v self.menu
pushi.e 17
cmp.i.v EQ
bf [end]

:[280]
call.i button2_p(argc=0)
conv.v.b
bf [282]

:[281]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [283]

:[282]
push.e 0

:[283]
bf [285]

:[284]
push.v self.tempmenu
pop.v.v self.menu
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[285]
call.i button1_p(argc=0)
conv.v.b
bf [288]

:[286]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [288]

:[287]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [289]

:[288]
push.e 0

:[289]
bf [end]

:[290]
pushi.e -1
pushi.e 17
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [294]

:[291]
pushi.e 33
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v global.gold
push.v self.sellvalue
add.v.v
pop.v.v global.gold
pushi.e 0
pushi.e -5
pushi.e -1
pushi.e 13
push.v [array]self.menuc
conv.v.i
pop.v.i [array]global.armor
call.i scr_armorinfo_all(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i scr_armorcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [293]

:[292]
pushi.e 10
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage
b [294]

:[293]
pushi.e 13
pop.v.i self.menu
pushi.e 1
pop.v.i self.sidemessage2

:[294]
pushi.e -1
pushi.e 17
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [end]

:[295]
pushi.e 2
pop.v.i self.sidemessage2
pushi.e 13
pop.v.i self.menu

:[end]