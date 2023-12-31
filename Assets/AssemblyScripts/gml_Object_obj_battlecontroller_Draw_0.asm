.localvar 0 arguments
.localvar 1 spell_offset 2893

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pop.v.v self.yy
push.v self.tp
push.v self.tpy
sub.v.v
push.v self.yy
add.v.v
pop.v.v self.tpoff
push.v self.bp
neg.v
push.v self.bpy
add.v.v
push.v self.yy
add.v.v
pop.v.v self.bpoff
pushi.e 500
pop.v.i local.spell_offset
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [2]

:[1]
pushi.e 496
pop.v.i local.spell_offset

:[2]
push.v self.intro
pushi.e 1
cmp.i.v EQ
bf [11]

:[3]
push.v self.bp
push.v self.bpy
pushi.e 1
sub.i.v
cmp.v.v LT
bf [8]

:[4]
push.v self.bpy
push.v self.bp
sub.v.v
pushi.e 40
cmp.i.v LT
bf [6]

:[5]
push.v self.bp
push.v self.bpy
push.v self.bp
sub.v.v
push.d 2.5
div.d.v
call.i round(argc=1)
add.v.v
pop.v.v self.bp
b [7]

:[6]
push.v self.bp
pushi.e 30
add.i.v
pop.v.v self.bp

:[7]
b [9]

:[8]
push.v self.bpy
pop.v.v self.bp

:[9]
push.v self.bp
push.v self.bpy
cmp.v.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.intro

:[11]
push.v self.intro
pushi.e 2
cmp.i.v EQ
bf [18]

:[12]
push.v self.bp
pushi.e 0
cmp.i.v GT
bf [17]

:[13]
push.v self.bpy
push.v self.bp
sub.v.v
pushi.e 5
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 15
cmp.i.v GT
bf [15]

:[14]
push.v self.bp
push.v self.bpy
push.v self.bp
sub.v.v
push.d 2.5
div.d.v
call.i round(argc=1)
sub.v.v
pop.v.v self.bp
b [16]

:[15]
push.v self.bp
pushi.e 30
sub.i.v
pop.v.v self.bp

:[16]
b [18]

:[17]
pushi.e 0
pop.v.i self.bp

:[18]
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
push.v self.xx
pushi.e 700
add.i.v
pushi.e 481
push.v self.yy
add.v.i
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 480
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
pushi.e 700
add.i.v
pushi.e 480
push.v self.bp
sub.v.i
pushi.e 2
sub.i.v
push.v self.yy
add.v.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 480
push.v self.bp
sub.v.i
pushi.e 36
add.i.v
push.v self.yy
add.v.v
push.v self.xx
pushi.e 700
add.i.v
pushi.e 480
push.v self.bp
sub.v.i
pushi.e 34
add.i.v
push.v self.yy
add.v.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
call.i scr_charbox(argc=0)
popz.v
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [22]

:[19]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bt [22]

:[20]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [22]

:[21]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [47]

:[24]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [47]

:[25]
push.v self.yy
pushi.e 385
add.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 55
add.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[26]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [47]

:[27]
pushi.e -5
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [31]

:[28]
push.v self.flash
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
pop.v.i self.fsiner

:[30]
pushi.e 1
pop.v.i self.flash
pushi.e 1
pop.v.i self.becomeflash

:[31]
popenv [28]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [46]

:[32]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.mercydraw
pushi.e 0
pop.v.i self.tireddraw
push.i 16777215
pop.v.i self.mnamecolor1
push.i 16777215
pop.v.i self.mnamecolor2
push.d 0.3
conv.d.v
push.i 16711680
conv.i.v
push.i 16776960
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.aqcolor
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i self.tireddraw

:[34]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.mercymod
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.mercymax
cmp.v.v GTE
bf [36]

:[35]
pushi.e 1
pop.v.i self.mercydraw

:[36]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monstername
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pop.v.v self.namewidth
push.v self.tireddraw
pushi.e 1
cmp.i.v EQ
bf [40]

:[37]
pushglb.v global.encounterno
pushi.e 31
cmp.i.v NEQ
bf [39]

:[38]
push.v self.aqcolor
call.i draw_set_color(argc=1)
popz.v
push.v self.aqcolor
pop.v.v self.mnamecolor1
push.v self.aqcolor
pop.v.v self.mnamecolor2

:[39]
push.v self.yy
pushi.e 385
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
push.v self.namewidth
add.v.v
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 652
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[40]
push.v self.mercydraw
pushi.e 1
cmp.i.v EQ
bf [44]

:[41]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.i 65535
pop.v.i self.mnamecolor1
push.v self.tireddraw
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.i 65535
pop.v.i self.mnamecolor2

:[43]
push.v self.yy
pushi.e 385
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
push.v self.namewidth
add.v.v
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 651
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[44]
pushi.e 1
conv.i.v
push.v self.mnamecolor1
push.v self.mnamecolor2
push.v self.mnamecolor2
push.v self.mnamecolor1
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monstername
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
call.i draw_text_colour(argc=8)
popz.v
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monstercomment
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
push.v self.namewidth
add.v.v
pushi.e 60
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 128
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 15
add.i.v
push.v self.xx
pushi.e 590
add.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 510
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 15
add.i.v
push.v self.xx
pushi.e 510
add.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monstermaxhp
div.v.v
pushi.e 80
mul.i.v
add.v.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 510
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.mercymod
pop.v.v self.mercyamt
push.v self.mercyamt
pushi.e 100
cmp.i.v GTE
bf [46]

:[45]
pushi.e 100
pop.v.i self.mercyamt

:[46]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [26]

:[47]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
bf [49]

:[48]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [86]

:[51]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]global.char
pop.v.v self.thischar
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
pop.v.v self.spellcoord
pushi.e 0
pop.v.i self.page
push.v self.spellcoord
pushi.e 5
cmp.i.v GT
bf [53]

:[52]
pushi.e 1
pop.v.i self.page
push.v self.spellcoord
pushi.e 6
sub.i.v
pop.v.v self.spellcoord

:[53]
pushi.e 10
pop.v.i self.icx
pushi.e 385
pop.v.i self.icy
push.v self.spellcoord
pushi.e 1
cmp.i.v EQ
bt [56]

:[54]
push.v self.spellcoord
pushi.e 3
cmp.i.v EQ
bt [56]

:[55]
push.v self.spellcoord
pushi.e 5
cmp.i.v EQ
b [57]

:[56]
push.e 1

:[57]
bf [59]

:[58]
pushi.e 230
pop.v.i self.icx

:[59]
push.v self.spellcoord
pushi.e 1
cmp.i.v GT
bf [61]

:[60]
push.v self.spellcoord
pushi.e 4
cmp.i.v LT
b [62]

:[61]
push.e 0

:[62]
bf [64]

:[63]
pushi.e 415
pop.v.i self.icy

:[64]
push.v self.spellcoord
pushi.e 3
cmp.i.v GT
bf [66]

:[65]
pushi.e 445
pop.v.i self.icy

:[66]
push.v self.yy
push.v self.icy
add.v.v
push.v self.xx
push.v self.icx
add.v.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[67]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [85]

:[68]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.tension
pushi.e -5
push.v self.thischar
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spellcost
cmp.v.v LT
bf [70]

:[69]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [82]

:[70]
pushi.e -5
push.v self.thischar
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spell
pushi.e 3
cmp.i.v EQ
bf [82]

:[71]
pushi.e 0
pop.v.i self.pacify_glow
pushi.e 0
pop.v.i self.sglowi

:[72]
push.v self.sglowi
pushi.e 3
cmp.i.v LT
bf [80]

:[73]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [75]

:[74]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]global.monsterstatus
pushi.e 1
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [79]

:[77]
pushglb.v global.encounterno
pushi.e 31
cmp.i.v NEQ
bf [79]

:[78]
pushi.e 1
pop.v.i self.pacify_glow

:[79]
push.v self.sglowi
pushi.e 1
add.i.v
pop.v.v self.sglowi
b [72]

:[80]
push.v self.pacify_glow
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.d 0.3
conv.d.v
push.i 16711680
conv.i.v
push.i 16776960
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[82]
pushi.e -5
push.v self.thischar
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spellnameb
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 30
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.tension
pushi.e -5
push.v self.thischar
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
add.i.v
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spellcost
cmp.v.v LT
bf [84]

:[83]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[84]
pushi.e -5
push.v self.thischar
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
add.i.v
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spellnameb
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 260
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [67]

:[85]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.thischar
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.page
pushi.e 6
mul.i.v
push.v self.spellcoord
add.v.v
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spelldescb
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.xx
pushloc.v local.spell_offset
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.thischar
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.page
pushi.e 6
mul.i.v
push.v self.spellcoord
add.v.v
conv.v.i
chkindex.e
add.i.i
push.v [array]global.spellcost
pushglb.v global.maxtension
div.v.v
pushi.e 100
mul.i.v
call.i round(argc=1)
pop.v.v self.thiscost
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.thiscost
call.i string(argc=1)
push.s "obj_battlecontroller_slash_Draw_0_gml_171_0"@7330
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 440
add.i.v
push.v self.xx
pushloc.v local.spell_offset
add.v.v
call.i draw_text(argc=3)
popz.v

:[86]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v EQ
bf [88]

:[87]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [132]

:[90]
pushi.e -5
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
pop.v.v self.itemcoord
pushi.e 0
pop.v.i self.page
push.v self.itemcoord
pushi.e 5
cmp.i.v GT
bf [92]

:[91]
pushi.e 1
pop.v.i self.page
push.v self.itemcoord
pushi.e 6
sub.i.v
pop.v.v self.itemcoord

:[92]
pushi.e 10
pop.v.i self.icx
pushi.e 385
pop.v.i self.icy
push.v self.itemcoord
pushi.e 1
cmp.i.v EQ
bt [95]

:[93]
push.v self.itemcoord
pushi.e 3
cmp.i.v EQ
bt [95]

:[94]
push.v self.itemcoord
pushi.e 5
cmp.i.v EQ
b [96]

:[95]
push.e 1

:[96]
bf [98]

:[97]
pushi.e 230
pop.v.i self.icx

:[98]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [105]

:[99]
push.v self.itemcoord
pushi.e 1
cmp.i.v EQ
bt [102]

:[100]
push.v self.itemcoord
pushi.e 3
cmp.i.v EQ
bt [102]

:[101]
push.v self.itemcoord
pushi.e 5
cmp.i.v EQ
b [103]

:[102]
push.e 1

:[103]
bf [105]

:[104]
pushi.e 240
pop.v.i self.icx

:[105]
push.v self.itemcoord
pushi.e 1
cmp.i.v GT
bf [107]

:[106]
push.v self.itemcoord
pushi.e 4
cmp.i.v LT
b [108]

:[107]
push.e 0

:[108]
bf [110]

:[109]
pushi.e 415
pop.v.i self.icy

:[110]
push.v self.itemcoord
pushi.e 3
cmp.i.v GT
bf [112]

:[111]
pushi.e 445
pop.v.i self.icy

:[112]
push.v self.yy
push.v self.icy
add.v.v
push.v self.xx
push.v self.icx
add.v.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[113]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [124]

:[114]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [122]

:[115]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]self.tempitemnameb
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.jp_string_lengthtest
pushi.e -1
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
add.i.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]self.tempitemnameb
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.jp_string_lengthtest
pushi.e -1
pushi.e 0
push.v [array]self.jp_string_lengthtest
pushi.e 200
cmp.i.v GTE
bf [117]

:[116]
pushi.e 200
conv.i.d
pushi.e -1
pushi.e 0
push.v [array]self.jp_string_lengthtest
div.v.d
pop.v.v self.jp_string_xscale
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.jp_string_xscale
pushi.e -1
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]self.tempitemnameb
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 30
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
b [118]

:[117]
pushi.e -1
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]self.tempitemnameb
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 30
add.i.v
call.i draw_text(argc=3)
popz.v

:[118]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.jp_string_lengthtest
pushi.e 200
cmp.i.v GTE
bf [120]

:[119]
pushi.e 200
conv.i.d
pushi.e -1
pushi.e 1
push.v [array]self.jp_string_lengthtest
div.v.d
pop.v.v self.jp_string_xscale
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.jp_string_xscale
pushi.e -1
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
add.i.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]self.tempitemnameb
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 260
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
b [121]

:[120]
pushi.e -1
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
add.i.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]self.tempitemnameb
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 260
add.i.v
call.i draw_text(argc=3)
popz.v

:[121]
b [123]

:[122]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]self.tempitemnameb
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 30
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
add.i.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]self.tempitemnameb
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 260
add.i.v
call.i draw_text(argc=3)
popz.v

:[123]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [113]

:[124]
push.v self.page
pushi.e 0
cmp.i.v EQ
bf [126]

:[125]
pushi.e -5
pushi.e 6
push.v [array]global.item
pushi.e 0
cmp.i.v NEQ
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
push.v self.yy
pushi.e 445
add.i.v
push.v self.s_siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 470
add.i.v
pushi.e 0
conv.i.v
pushi.e 370
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[129]
push.v self.page
pushi.e 1
cmp.i.v EQ
bf [131]

:[130]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 395
add.i.v
push.v self.s_siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
push.v self.xx
pushi.e 470
add.i.v
pushi.e 0
conv.i.v
pushi.e 370
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[131]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.page
pushi.e 6
mul.i.v
push.v self.itemcoord
add.v.v
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]self.tempitemdescb
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.xx
pushloc.v local.spell_offset
add.v.v
call.i draw_text(argc=3)
popz.v

:[132]
pushglb.v global.bmenuno
pushi.e 9
cmp.i.v EQ
bf [134]

:[133]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
b [135]

:[134]
push.e 0

:[135]
bf [216]

:[136]
pushi.e -5
pushi.e 9
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
pop.v.v self.actcoord
pushi.e 0
pop.v.i self.page
pushi.e 10
pop.v.i self.icx
pushi.e 385
pop.v.i self.icy
push.v self.actcoord
pushi.e 1
cmp.i.v EQ
bt [139]

:[137]
push.v self.actcoord
pushi.e 3
cmp.i.v EQ
bt [139]

:[138]
push.v self.actcoord
pushi.e 5
cmp.i.v EQ
b [140]

:[139]
push.e 1

:[140]
bf [142]

:[141]
pushi.e 240
pop.v.i self.icx

:[142]
push.v self.actcoord
pushi.e 1
cmp.i.v GT
bf [144]

:[143]
push.v self.actcoord
pushi.e 4
cmp.i.v LT
b [145]

:[144]
push.e 0

:[145]
bf [147]

:[146]
pushi.e 415
pop.v.i self.icy

:[147]
push.v self.actcoord
pushi.e 3
cmp.i.v GT
bf [149]

:[148]
pushi.e 445
pop.v.i self.icy

:[149]
push.v self.yy
push.v self.icy
add.v.v
push.v self.xx
push.v self.icx
add.v.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[150]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [209]

:[151]
pushi.e 0
pop.v.i self.cant
pushi.e -5
pushi.e -5
pushi.e 11
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]global.actactor
pop.v.v self.chartime
pushi.e 0
pop.v.i self.charoffset
pushi.e 0
pop.v.i self.xoffset
push.v self.i
pushi.e 1
cmp.i.v EQ
bt [154]

:[152]
push.v self.i
pushi.e 3
cmp.i.v EQ
bt [154]

:[153]
push.v self.i
pushi.e 5
cmp.i.v EQ
b [155]

:[154]
push.e 1

:[155]
bf [157]

:[156]
pushi.e 230
pop.v.i self.xoffset

:[157]
pushi.e 0
pop.v.i self.yoffset
push.v self.i
pushi.e 2
cmp.i.v EQ
bt [159]

:[158]
push.v self.i
pushi.e 3
cmp.i.v EQ
b [160]

:[159]
push.e 1

:[160]
bf [162]

:[161]
pushi.e 30
pop.v.i self.yoffset

:[162]
push.v self.i
pushi.e 4
cmp.i.v EQ
bt [164]

:[163]
push.v self.i
pushi.e 5
cmp.i.v EQ
b [165]

:[164]
push.e 1

:[165]
bf [167]

:[166]
pushi.e 60
pop.v.i self.yoffset

:[167]
pushi.e 0
pop.v.i self.drawsus
pushi.e 0
pop.v.i self.drawral
push.i 16777215
pop.v.i self.susblend
push.i 16777215
pop.v.i self.ralblend
push.v self.chartime
pushi.e 2
cmp.i.v EQ
bt [169]

:[168]
push.v self.chartime
pushi.e 4
cmp.i.v EQ
b [170]

:[169]
push.e 1

:[170]
bf [177]

:[171]
pushi.e 1
pop.v.i self.drawsus
pushi.e -1
pushi.e 1
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bt [173]

:[172]
pushi.e -5
pushi.e 2
push.v [array]global.hp
pushi.e 0
cmp.i.v LTE
b [174]

:[173]
push.e 1

:[174]
bf [176]

:[175]
push.i 8421504
pop.v.i self.susblend
pushi.e 1
pop.v.i self.cant

:[176]
pushi.e 36
pop.v.i self.charoffset

:[177]
push.v self.chartime
pushi.e 3
cmp.i.v EQ
bt [179]

:[178]
push.v self.chartime
pushi.e 4
cmp.i.v EQ
b [180]

:[179]
push.e 1

:[180]
bf [187]

:[181]
pushi.e 1
pop.v.i self.drawral
pushi.e -1
pushi.e 2
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bt [183]

:[182]
pushi.e -5
pushi.e 3
push.v [array]global.hp
pushi.e 0
cmp.i.v LTE
b [184]

:[183]
push.e 1

:[184]
bf [186]

:[185]
push.i 8421504
pop.v.i self.ralblend
pushi.e 1
pop.v.i self.cant

:[186]
pushi.e 36
pop.v.i self.charoffset

:[187]
pushglb.v global.tension
pushi.e -5
pushi.e -5
pushi.e 11
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]global.actcost
cmp.v.v LT
bf [189]

:[188]
pushi.e 1
pop.v.i self.cant

:[189]
push.v self.chartime
pushi.e 4
cmp.i.v EQ
bf [191]

:[190]
push.v self.charoffset
push.d 1.8
mul.d.v
call.i round(argc=1)
pop.v.v self.charoffset

:[191]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.cant
pushi.e 1
cmp.i.v EQ
bf [193]

:[192]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[193]
push.v self.chartime
pushi.e 2
cmp.i.v EQ
bf [195]

:[194]
pushi.e 1
conv.i.v
push.v self.susblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 375
add.i.v
push.v self.yoffset
add.v.v
push.v self.xx
pushi.e 30
add.i.v
push.v self.xoffset
add.v.v
pushi.e 0
conv.i.v
pushi.e 674
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[195]
push.v self.chartime
pushi.e 3
cmp.i.v EQ
bf [197]

:[196]
pushi.e 1
conv.i.v
push.v self.susblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 375
add.i.v
push.v self.yoffset
add.v.v
push.v self.xx
pushi.e 30
add.i.v
push.v self.xoffset
add.v.v
pushi.e 0
conv.i.v
pushi.e 673
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[197]
push.v self.chartime
pushi.e 4
cmp.i.v EQ
bf [199]

:[198]
pushi.e 1
conv.i.v
push.v self.susblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 375
add.i.v
push.v self.yoffset
add.v.v
push.v self.xx
pushi.e 30
add.i.v
push.v self.xoffset
add.v.v
pushi.e 0
conv.i.v
pushi.e 674
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.susblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 375
add.i.v
push.v self.yoffset
add.v.v
push.v self.xx
pushi.e 60
add.i.v
push.v self.xoffset
add.v.v
pushi.e 0
conv.i.v
pushi.e 673
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[199]
pushglb.v global.lang
push.s "ja"@1566
cmp.s.v EQ
bf [207]

:[200]
pushi.e -5
pushi.e -5
pushi.e 11
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]global.actname
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pop.v.v self.jp_string_lengthtest_act
push.v self.jp_string_lengthtest_act
pushi.e 30
add.i.v
push.v self.charoffset
add.v.v
pushi.e 235
cmp.i.v GTE
bf [202]

:[201]
push.v self.xoffset
pushi.e 0
cmp.i.v EQ
b [203]

:[202]
push.e 0

:[203]
bf [205]

:[204]
pushi.e 206
push.v self.charoffset
sub.v.i
push.v self.jp_string_lengthtest_act
div.v.v
pop.v.v self.jp_string_xscale
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.jp_string_xscale
pushi.e -5
pushi.e -5
pushi.e 11
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]global.actname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.yoffset
add.v.v
push.v self.xx
pushi.e 30
add.i.v
push.v self.charoffset
add.v.v
push.v self.xoffset
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
b [206]

:[205]
pushi.e -5
pushi.e -5
pushi.e 11
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]global.actname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.yoffset
add.v.v
push.v self.xx
pushi.e 30
add.i.v
push.v self.charoffset
add.v.v
push.v self.xoffset
add.v.v
call.i draw_text(argc=3)
popz.v

:[206]
b [208]

:[207]
pushi.e -5
pushi.e -5
pushi.e 11
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.i
conv.v.i
chkindex.e
add.i.i
push.v [array]global.actname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.yoffset
add.v.v
push.v self.xx
pushi.e 30
add.i.v
push.v self.charoffset
add.v.v
push.v self.xoffset
add.v.v
call.i draw_text(argc=3)
popz.v

:[208]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [150]

:[209]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e -5
pushi.e 11
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.actcoord
conv.v.i
chkindex.e
add.i.i
push.v [array]global.actdesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.xx
pushi.e 500
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.tensionselect
pushi.e 0
cmp.i.v GT
bf [211]

:[210]
pushi.e -5
pushi.e -5
pushi.e 11
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v self.actcoord
conv.v.i
chkindex.e
add.i.i
push.v [array]global.actcost
pushglb.v global.maxtension
div.v.v
pushi.e 100
mul.i.v
call.i round(argc=1)
pop.v.v self.thiscost
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.thiscost
call.i string(argc=1)
push.s "obj_battlecontroller_slash_Draw_0_gml_280_0"@7343
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 440
add.i.v
push.v self.xx
pushi.e 500
add.i.v
call.i draw_text(argc=3)
popz.v

:[211]
pushi.e -5
pushi.e -5
pushi.e 11
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [215]

:[212]
push.v self.flash
pushi.e 0
cmp.i.v EQ
bf [214]

:[213]
pushi.e 0
pop.v.i self.fsiner

:[214]
pushi.e 1
pop.v.i self.flash
pushi.e 1
pop.v.i self.becomeflash

:[215]
popenv [212]

:[216]
pushglb.v global.bmenuno
pushi.e 7
cmp.i.v EQ
bt [218]

:[217]
pushglb.v global.bmenuno
pushi.e 8
cmp.i.v EQ
b [219]

:[218]
push.e 1

:[219]
bf [end]

:[220]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [end]

:[221]
push.v self.yy
pushi.e 385
add.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 55
add.i.v
pushi.e 0
conv.i.v
pushi.e 908
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.s "mainbig"@1561
conv.s.v
call.i scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[222]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[223]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [229]

:[224]
pushi.e -5
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushglb.v global.charturn
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
conv.v.i
push.v [array]global.charinstance
conv.v.i
pushenv [228]

:[225]
push.v self.flash
pushi.e 0
cmp.i.v EQ
bf [227]

:[226]
pushi.e 0
pop.v.i self.fsiner

:[227]
pushi.e 1
pop.v.i self.flash
pushi.e 1
pop.v.i self.becomeflash

:[228]
popenv [225]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 128
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 15
add.i.v
push.v self.xx
pushi.e 500
add.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 400
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 15
add.i.v
push.v self.xx
pushi.e 400
add.i.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.hp
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.maxhp
div.v.v
pushi.e 100
mul.i.v
add.v.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 400
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[229]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [222]

:[end]