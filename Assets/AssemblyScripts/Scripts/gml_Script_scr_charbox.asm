.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.c

:[1]
push.v self.c
pushi.e 3
cmp.i.v LT
bf [end]

:[2]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
bf [119]

:[3]
push.v self.c
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e -1
pushi.e 0
push.v [array]self.hpcolor
pop.v.v self.charcolor

:[5]
push.v self.c
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e -1
pushi.e 1
push.v [array]self.hpcolor
pop.v.v self.charcolor

:[7]
push.v self.c
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e -1
pushi.e 2
push.v [array]self.hpcolor
pop.v.v self.charcolor

:[9]
pushglb.v global.charturn
pop.v.v self.gc
pushi.e 0
pop.v.i self.xchunk
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 0
pop.v.i self.xchunk

:[14]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 212
pop.v.i self.xchunk

:[19]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 424
pop.v.i self.xchunk

:[24]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
push.v self.chartotal
pushi.e 2
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 106
pop.v.i self.xchunk

:[29]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.v self.chartotal
pushi.e 2
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 326
pop.v.i self.xchunk

:[34]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.v self.chartotal
pushi.e 1
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 212
pop.v.i self.xchunk

:[39]
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
bf [53]

:[40]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 480
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
call.i scr_selectionmatrix(argc=2)
popz.v

:[42]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -32
cmp.i.v GT
bf [44]

:[43]
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 2
sub.i.v
pop.i.v [array]self.mmy

:[44]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -24
cmp.i.v GT
bf [46]

:[45]
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 4
sub.i.v
pop.i.v [array]self.mmy

:[46]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -16
cmp.i.v GT
bf [48]

:[47]
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 6
sub.i.v
pop.i.v [array]self.mmy

:[48]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -8
cmp.i.v GT
bf [50]

:[49]
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 8
sub.i.v
pop.i.v [array]self.mmy

:[50]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -32
cmp.i.v LT
bf [52]

:[51]
pushi.e -64
pushi.e -1
push.v self.c
conv.v.i
pop.v.i [array]self.mmy

:[52]
b [56]

:[53]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -14
cmp.i.v LT
bf [55]

:[54]
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 15
add.i.v
pop.i.v [array]self.mmy
b [56]

:[55]
pushi.e 0
pushi.e -1
push.v self.c
conv.v.i
pop.v.i [array]self.mmy

:[56]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.btc
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.btc
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.btc
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.btc
pushi.e 0
pushi.e -1
pushi.e 4
pop.v.i [array]self.btc
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
bf [58]

:[57]
pushi.e 1
pushi.e -1
pushi.e -5
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
conv.v.i
pop.v.i [array]self.btc

:[58]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [92]

:[59]
pushi.e 0
pop.v.i self.spare_glow
pushi.e 0
pop.v.i self.sglowi

:[60]
push.v self.sglowi
pushi.e 3
cmp.i.v LT
bf [67]

:[61]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]global.mercymod
pushi.e 100
cmp.i.v GTE
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 1
pop.v.i self.spare_glow

:[66]
push.v self.sglowi
pushi.e 1
add.i.v
pop.v.v self.sglowi
b [60]

:[67]
pushi.e 0
pop.v.i self.pacify_glow
push.v self.c
pushi.e 2
cmp.i.v EQ
bf [79]

:[68]
pushi.e 0
pop.v.i self.sglowi

:[69]
push.v self.sglowi
pushi.e 3
cmp.i.v LT
bf [79]

:[70]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [73]

:[71]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]global.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
pushglb.v global.tension
pushi.e 40
cmp.i.v GTE
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
pushi.e 1
pop.v.i self.pacify_glow

:[76]
pushglb.v global.encounterno
pushi.e 31
cmp.i.v EQ
bf [78]

:[77]
pushi.e 0
pop.v.i self.pacify_glow

:[78]
push.v self.sglowi
pushi.e 1
add.i.v
pop.v.v self.sglowi
b [69]

:[79]
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 15
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.btc
push.s "spr_btfight"@1825
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v
push.v self.c
pushi.e 0
cmp.i.v EQ
bf [81]

:[80]
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 50
add.i.v
pushi.e -1
pushi.e 1
push.v [array]self.btc
push.s "spr_btact"@1828
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v
b [82]

:[81]
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 50
add.i.v
pushi.e -1
pushi.e 1
push.v [array]self.btc
push.s "spr_bttech"@1829
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[82]
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 85
add.i.v
pushi.e -1
pushi.e 2
push.v [array]self.btc
push.s "spr_btitem"@1830
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 120
add.i.v
pushi.e -1
pushi.e 3
push.v [array]self.btc
push.s "spr_btspare"@1831
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 155
add.i.v
pushi.e -1
pushi.e 4
push.v [array]self.btc
push.s "spr_btdefend"@1832
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v
push.v self.spare_glow
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
b [85]

:[84]
push.e 0

:[85]
bf [87]

:[86]
push.d 0.4
pushglb.v global.time
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.4
mul.d.v
add.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 120
add.i.v
pushi.e 2
conv.i.v
push.s "spr_btspare"@1831
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[87]
push.v self.pacify_glow
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
push.d 0.4
pushglb.v global.time
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.4
mul.d.v
add.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 50
add.i.v
pushi.e 2
conv.i.v
push.s "spr_bttech"@1829
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[92]
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
bf [94]

:[93]
push.v self.charcolor
call.i draw_set_color(argc=1)
popz.v
b [95]

:[94]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v

:[95]
pushglb.v global.charselect
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
bt [97]

:[96]
pushglb.v global.charselect
pushi.e 3
cmp.i.v EQ
b [98]

:[97]
push.e 1

:[98]
bf [100]

:[99]
push.v self.charcolor
call.i draw_set_color(argc=1)
popz.v

:[100]
pushi.e 0
conv.i.v
pushi.e 480
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 212
add.i.v
pushi.e 480
push.v self.bp
sub.v.i
pushi.e 2
sub.i.v
push.v self.yy
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 480
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
pushi.e 33
add.i.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 210
add.i.v
pushi.e 480
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 2
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 480
pop.v.i self.b_offset
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
bf [102]

:[101]
pushi.e 430
pop.v.i self.b_offset

:[102]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
pushi.e 336
pop.v.i self.b_offset

:[104]
push.v self.c
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 13
add.i.v
push.v self.xchunk
add.v.v
pushi.e -5
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
conv.v.i
push.v [array]global.faceaction
pushi.e 672
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 3
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 51
add.i.v
push.v self.xchunk
add.v.v
pushi.e 0
conv.i.v
push.s "spr_bnamekris"@1838
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[106]
push.v self.c
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 13
add.i.v
push.v self.xchunk
add.v.v
pushi.e -5
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
conv.v.i
push.v [array]global.faceaction
pushi.e 674
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 3
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 51
add.i.v
push.v self.xchunk
add.v.v
pushi.e 0
conv.i.v
push.s "spr_bnamesusie"@1839
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[108]
push.v self.c
pushi.e 2
cmp.i.v EQ
bf [110]

:[109]
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 13
add.i.v
push.v self.xchunk
add.v.v
pushi.e -5
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
conv.v.i
push.v [array]global.faceaction
pushi.e 673
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 3
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 51
add.i.v
push.v self.xchunk
add.v.v
pushi.e 0
conv.i.v
push.s "spr_bnameralsei"@1840
conv.s.v
call.i scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[110]
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 11
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 109
add.i.v
push.v self.xchunk
add.v.v
pushi.e 0
conv.i.v
pushi.e 675
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.hpfont
call.i draw_set_font(argc=1)
popz.v
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.hp
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.maxhp
div.v.v
push.d 0.25
cmp.d.v LTE
bf [112]

:[111]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[112]
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v LTE
bf [114]

:[113]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[114]
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.hp
call.i string_hash_to_newline(argc=1)
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 2
sub.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 160
add.i.v
push.v self.xchunk
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 4
sub.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 159
add.i.v
push.v self.xchunk
add.v.v
pushi.e 0
conv.i.v
pushi.e 676
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.maxhp
call.i string_hash_to_newline(argc=1)
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 2
sub.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 205
add.i.v
push.v self.xchunk
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 128
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 19
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 203
add.i.v
push.v self.xchunk
add.v.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 11
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 128
add.i.v
push.v self.xchunk
add.v.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.hp
pushi.e 0
cmp.i.v GT
bf [116]

:[115]
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.maxhp
pushi.e 0
cmp.i.v GT
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
push.v self.charcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 19
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 128
add.i.v
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.hp
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.maxhp
div.v.v
pushi.e 75
mul.i.v
call.i ceil(argc=1)
add.v.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 11
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 128
add.i.v
push.v self.xchunk
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[119]
push.v self.c
pushi.e 1
add.i.v
pop.v.v self.c
b [1]

:[end]