.localvar 0 arguments

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
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.heromakex
push.v self.yy
pushi.e 50
add.i.v
pushi.e 80
push.v self.i
mul.v.i
add.v.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.heromakey
pushi.e 278
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monsterinstancetype
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 540
add.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 160
add.i.v
pushi.e 80
push.v self.i
mul.v.i
add.v.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.monstermakey
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e -5
pushi.e 0
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [6]

:[4]
pushi.e -5
pushi.e 1
push.v [array]global.char
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e -5
pushi.e 2
push.v [array]global.char
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.heromakey

:[9]
pushi.e -5
pushi.e 0
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [12]

:[10]
pushi.e -5
pushi.e 1
push.v [array]global.char
pushi.e 0
cmp.i.v NEQ
bf [12]

:[11]
pushi.e -5
pushi.e 2
push.v [array]global.char
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.yy
pushi.e 100
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.heromakey
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.heromakey

:[15]
pushbltn.v self.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [48]

:[16]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [49]

:[17]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [50]

:[18]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [51]

:[19]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [54]

:[20]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [59]

:[21]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [60]

:[22]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [61]

:[23]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [62]

:[24]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [63]

:[25]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [64]

:[26]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [65]

:[27]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [66]

:[28]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [67]

:[29]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [68]

:[30]
dup.v 0
pushi.e 17
cmp.i.v EQ
bt [69]

:[31]
dup.v 0
pushi.e 18
cmp.i.v EQ
bt [70]

:[32]
dup.v 0
pushi.e 19
cmp.i.v EQ
bt [71]

:[33]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [72]

:[34]
dup.v 0
pushi.e 21
cmp.i.v EQ
bt [73]

:[35]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [78]

:[36]
dup.v 0
pushi.e 23
cmp.i.v EQ
bt [79]

:[37]
dup.v 0
pushi.e 24
cmp.i.v EQ
bt [80]

:[38]
dup.v 0
pushi.e 25
cmp.i.v EQ
bt [81]

:[39]
dup.v 0
pushi.e 27
cmp.i.v EQ
bt [82]

:[40]
dup.v 0
pushi.e 28
cmp.i.v EQ
bt [83]

:[41]
dup.v 0
pushi.e 29
cmp.i.v EQ
bt [84]

:[42]
dup.v 0
pushi.e 30
cmp.i.v EQ
bt [85]

:[43]
dup.v 0
pushi.e 31
cmp.i.v EQ
bt [86]

:[44]
dup.v 0
pushi.e 32
cmp.i.v EQ
bt [87]

:[45]
dup.v 0
pushi.e 33
cmp.i.v EQ
bt [88]

:[46]
dup.v 0
pushi.e 40
cmp.i.v EQ
bt [89]

:[47]
b [90]

:[48]
b [90]

:[49]
pushi.e 238
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 238
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
b [90]

:[50]
pushi.e 278
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 2
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 540
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
b [90]

:[51]
pushi.e 236
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 3
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 84
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [53]

:[52]
push.v 84.xstart
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v 84.ystart
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey

:[53]
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
b [90]

:[54]
pushi.e 280
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 5
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_82_0"@2139
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
pushi.e -5
pushi.e 500
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [56]

:[55]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_83_0"@2140
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[56]
pushi.e -5
pushi.e 500
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [58]

:[57]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_84_0"@2141
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[58]
b [90]

:[59]
pushi.e 280
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 5
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 280
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 5
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_100_0"@2142
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[60]
pushi.e 280
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 5
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 287
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 6
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_116_0"@2143
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[61]
pushi.e 289
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 9
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 440
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 150
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_128_0"@2144
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[62]
pushi.e 285
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 16
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 400
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_139_0"@2145
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[63]
pushi.e 287
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 6
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 287
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 6
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 287
pushi.e -5
pushi.e 2
pop.v.i [array]global.monsterinstancetype
pushi.e 6
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakey
push.s "scr_encountersetup_slash_scr_encountersetup_gml_158_0"@2146
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[64]
pushi.e 253
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 10
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_172_0"@2147
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[65]
pushi.e 260
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 11
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 260
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 11
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
push.s "scr_encountersetup_slash_scr_encountersetup_gml_185_0"@2148
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
b [90]

:[66]
pushi.e 260
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 11
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 260
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 11
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 260
pushi.e -5
pushi.e 2
pop.v.i [array]global.monsterinstancetype
pushi.e 11
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakey
push.s "scr_encountersetup_slash_scr_encountersetup_gml_206_0"@2149
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[67]
pushi.e 285
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 7
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 400
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 30
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 287
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 6
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 420
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_223_0"@2150
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[68]
pushi.e 273
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 13
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_234_0"@2151
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[69]
pushi.e 273
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 13
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 273
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 13
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_250_0"@2152
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[70]
pushi.e 275
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 14
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_261_0"@2153
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[71]
pushi.e 275
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 14
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 275
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 14
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_277_0"@2154
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[72]
pushi.e 279
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 12
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.heromakex
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_292_0"@2155
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[73]
pushi.e 252
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 15
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 140
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_303_0"@2156
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
pushi.e -5
pushi.e 500
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [75]

:[74]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_304_0"@2157
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[75]
pushi.e -5
pushi.e 500
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [77]

:[76]
push.s "scr_encountersetup_slash_scr_encountersetup_gml_305_0"@2158
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[77]
b [90]

:[78]
pushi.e 252
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 15
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 252
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 15
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 252
pushi.e -5
pushi.e 2
pop.v.i [array]global.monsterinstancetype
pushi.e 15
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakey
push.s "scr_encountersetup_slash_scr_encountersetup_gml_324_0"@2159
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[79]
pushi.e 252
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 15
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 280
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 5
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 287
pushi.e -5
pushi.e 2
pop.v.i [array]global.monsterinstancetype
pushi.e 6
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakey
push.s "scr_encountersetup_slash_scr_encountersetup_gml_343_0"@2160
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[80]
pushi.e 273
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 13
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 280
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 5
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 180
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_358_0"@2161
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[81]
push.v self.xx
pushi.e 80
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.heromakex
push.v self.yy
pushi.e 100
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.heromakey
push.v self.xx
pushi.e 90
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.heromakex
push.v self.yy
pushi.e 150
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.heromakey
push.v self.xx
pushi.e 100
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.heromakex
push.v self.yy
pushi.e 210
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.heromakey
pushi.e 284
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 20
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_384_0"@2162
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[82]
pushi.e 253
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 21
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_397_0"@2163
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
push.v self.yy
pushi.e 65
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.heromakey
b [90]

:[83]
pushi.e 250
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 22
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 250
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 22
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_414_0"@2164
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[84]
pushi.e 288
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 23
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 110
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 288
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 23
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 200
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_430_0"@2165
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[85]
pushi.e 288
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 23
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 288
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 23
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 288
pushi.e -5
pushi.e 2
pop.v.i [array]global.monsterinstancetype
pushi.e 23
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakey
push.s "scr_encountersetup_slash_scr_encountersetup_gml_449_0"@2166
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[86]
pushi.e 281
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 19
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 520
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 80
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 282
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 18
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 540
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 240
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_463_0"@2167
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[87]
pushi.e 273
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 13
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 273
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 13
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 273
pushi.e -5
pushi.e 2
pop.v.i [array]global.monsterinstancetype
pushi.e 13
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakey
push.s "scr_encountersetup_slash_scr_encountersetup_gml_484_0"@2168
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[88]
pushi.e 280
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 5
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 480
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 287
pushi.e -5
pushi.e 1
pop.v.i [array]global.monsterinstancetype
pushi.e 6
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 500
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 120
add.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.monstermakey
pushi.e 280
pushi.e -5
pushi.e 2
pop.v.i [array]global.monsterinstancetype
pushi.e 5
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 220
add.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.monstermakey
push.s "scr_encountersetup_slash_scr_encountersetup_gml_505_0"@2169
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[89]
pushi.e 283
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterinstancetype
pushi.e 25
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
push.v self.xx
pushi.e 460
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakex
push.v self.yy
pushi.e 70
add.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstermakey
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
push.s "scr_encountersetup_slash_scr_encountersetup_gml_517_0"@2170
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
b [90]

:[90]
popz.v

:[end]