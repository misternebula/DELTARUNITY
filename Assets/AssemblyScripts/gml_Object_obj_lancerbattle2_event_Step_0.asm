.localvar 0 arguments

:[0]
push.v self.mcon
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
push.s "basement.ogg"@4037
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
pushi.e 4
pop.v.i self.mcon

:[2]
push.v self.mcon
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
call.i snd_free_all(argc=0)
popz.v
pushi.e 3
pop.v.i self.mcon

:[4]
push.v self.mcon
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2
pop.v.i self.mcon

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [14]

:[7]
pushi.e 618
conv.i.v
push.v self.y
pushi.e 47
sub.i.v
push.v self.x
pushi.e 80
add.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.diamond
pushi.e 229
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1000
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.puzzwall
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.image_speed
pushi.e 326
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.visible

:[9]
popenv [8]
pushi.e 326
pushenv [11]

:[10]
pushi.e 1
pop.v.i self.cutscene

:[11]
popenv [10]
pushi.e 20
pop.v.i global.encounterno
pushglb.v global.encounterno
call.i scr_encountersetup(argc=1)
popz.v
pushi.e 189
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
sub.i.v
pushi.e 500
conv.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.s
push.v self.s
conv.v.i
pushenv [13]

:[12]
call.i scr_depth(argc=0)
popz.v
pushi.e 5
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[13]
popenv [12]
pushi.e 2
pop.v.i self.con

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [19]

:[15]
pushi.e 1
pop.v.i global.interact
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]global.heromakey
pushi.e 4
sub.i.v
cmp.v.v GTE
bf [19]

:[16]
push.v self.s
conv.v.i
pushenv [18]

:[17]
call.i scr_halt(argc=0)
popz.v
pushi.e -5
pushi.e 0
push.v [array]global.heromakey
pop.v.v self.y

:[18]
popenv [17]
pushi.e 3
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[19]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 310
pop.v.i global.msc
pushglb.v global.msc
call.i scr_text(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 150
pop.v.i self.con

:[21]
push.v self.con
pushi.e 150
cmp.i.v EQ
bf [26]

:[22]
pushglb.v global.msc
pushi.e 311
cmp.i.v EQ
bf [26]

:[23]
push.v self.s
conv.v.i
pushenv [25]

:[24]
pushi.e 190
pop.v.i self.sprite_index

:[25]
popenv [24]

:[26]
push.v self.con
pushi.e 150
cmp.i.v EQ
bf [28]

:[27]
call.i d_ex(argc=0)
conv.v.b
not.b
b [29]

:[28]
push.e 0

:[29]
bf [33]

:[30]
push.v self.s
conv.v.i
pushenv [32]

:[31]
pushi.e 182
pop.v.i self.sprite_index

:[32]
popenv [31]
push.s "obj_lancerbattle2_event_slash_Step_0_gml_79_0"@4293
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 151
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[33]
push.v self.con
pushi.e 151
cmp.i.v EQ
bf [35]

:[34]
call.i d_ex(argc=0)
conv.v.b
not.b
b [36]

:[35]
push.e 0

:[36]
bf [40]

:[37]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
conv.i.v
call.i scr_pan(argc=3)
popz.v
push.v self.s
conv.v.i
pushenv [39]

:[38]
pushi.e -5
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[39]
popenv [38]
pushi.e 152
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[40]
push.v self.con
pushi.e 153
cmp.i.v EQ
bf [44]

:[41]
push.v self.s
conv.v.i
pushenv [43]

:[42]
call.i scr_halt(argc=0)
popz.v

:[43]
popenv [42]
pushi.e 154
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[44]
push.v self.con
pushi.e 155
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_lancerbattle2_event_slash_Step_0_gml_105_0"@4294
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 160
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.rep

:[46]
push.v self.con
pushi.e 160
cmp.i.v EQ
bf [48]

:[47]
call.i d_ex(argc=0)
conv.v.b
not.b
b [49]

:[48]
push.e 0

:[49]
bf [53]

:[50]
push.v self.s
conv.v.i
pushenv [52]

:[51]
pushi.e 185
pop.v.i self.sprite_index

:[52]
popenv [51]
pushi.e 162
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.exc
pushi.e 161
pop.v.i self.con

:[53]
push.v self.con
pushi.e 162
cmp.i.v EQ
bf [55]

:[54]
pushi.e 163
pop.v.i self.con

:[55]
push.v self.con
pushi.e 161
cmp.i.v EQ
bf [57]

:[56]
push.v self.rep
pushi.e 1
add.i.v
pop.v.v self.rep
pushi.e 10
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 162
pop.v.i self.con

:[57]
push.v self.con
pushi.e 163
cmp.i.v EQ
bf [63]

:[58]
push.v self.rep
pushi.e 20
cmp.i.v LTE
bf [60]

:[59]
pushi.e 161
pop.v.i self.con
b [63]

:[60]
pushi.e 164
pop.v.i self.con
push.v self.exc
conv.v.i
pushenv [62]

:[61]
call.i instance_destroy(argc=0)
popz.v

:[62]
popenv [61]

:[63]
push.v self.con
pushi.e 164
cmp.i.v EQ
bf [65]

:[64]
pushi.e 9
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
push.s "obj_lancerbattle2_event_slash_Step_0_gml_147_0"@4296
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 165
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[65]
push.v self.con
pushi.e 165
cmp.i.v EQ
bf [67]

:[66]
call.i d_ex(argc=0)
conv.v.b
not.b
b [68]

:[67]
push.e 0

:[68]
bf [72]

:[69]
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i scr_pan(argc=3)
popz.v
push.v self.s
conv.v.i
pushenv [71]

:[70]
pushi.e 185
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 10
pop.v.i self.hspeed

:[71]
popenv [70]
pushi.e 166
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[72]
push.v self.con
pushi.e 167
cmp.i.v EQ
bf [76]

:[73]
push.v self.s
conv.v.i
pushenv [75]

:[74]
call.i scr_halt(argc=0)
popz.v

:[75]
popenv [74]
pushi.e 168
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[76]
push.v self.con
pushi.e 169
cmp.i.v EQ
bf [80]

:[77]
push.v self.s
conv.v.i
pushenv [79]

:[78]
pushi.e 190
pop.v.i self.sprite_index

:[79]
popenv [78]
push.s "obj_lancerbattle2_event_slash_Step_0_gml_175_0"@4297
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 170
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[80]
push.v self.con
pushi.e 170
cmp.i.v EQ
bf [82]

:[81]
call.i d_ex(argc=0)
conv.v.b
not.b
b [83]

:[82]
push.e 0

:[83]
bf [87]

:[84]
push.v self.s
conv.v.i
pushenv [86]

:[85]
pushi.e 182
pop.v.i self.sprite_index

:[86]
popenv [85]
pushi.e 171
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[87]
push.v self.con
pushi.e 172
cmp.i.v EQ
bf [89]

:[88]
pushi.e 0
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_190_0"@4298
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 174
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[89]
push.v self.con
pushi.e 174
cmp.i.v EQ
bf [91]

:[90]
call.i d_ex(argc=0)
conv.v.b
not.b
b [92]

:[91]
push.e 0

:[92]
bf [96]

:[93]
pushi.e 32
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.v self.s
conv.v.i
pushenv [95]

:[94]
pushi.e 185
pop.v.i self.sprite_index

:[95]
popenv [94]
push.s "obj_lancerbattle2_event_slash_Step_0_gml_200_0"@4299
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 175
pop.v.i self.con

:[96]
push.v self.con
pushi.e 175
cmp.i.v EQ
bf [98]

:[97]
call.i d_ex(argc=0)
conv.v.b
not.b
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.s "obj_lancerbattle2_event_slash_Step_0_gml_209_0"@4300
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 176
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[101]
push.v self.con
pushi.e 176
cmp.i.v EQ
bf [103]

:[102]
call.i d_ex(argc=0)
conv.v.b
not.b
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 177
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[106]
push.v self.con
pushi.e 178
cmp.i.v EQ
bf [110]

:[107]
push.v self.s
conv.v.i
pushenv [109]

:[108]
pushi.e 190
pop.v.i self.sprite_index

:[109]
popenv [108]
pushi.e 179
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[110]
push.v self.con
pushi.e 180
cmp.i.v EQ
bf [112]

:[111]
push.s "obj_lancerbattle2_event_slash_Step_0_gml_232_0"@4301
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 181
pop.v.i self.con

:[112]
push.v self.con
pushi.e 181
cmp.i.v EQ
bf [114]

:[113]
call.i d_ex(argc=0)
conv.v.b
not.b
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
pushi.e 182
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[117]
push.v self.con
pushi.e 183
cmp.i.v EQ
bf [121]

:[118]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.puzz1
conv.v.i
pushenv [120]

:[119]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[120]
popenv [119]
pushi.e 184
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[121]
push.v self.con
pushi.e 185
cmp.i.v EQ
bf [125]

:[122]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.puzz1
conv.v.i
pushenv [124]

:[123]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[124]
popenv [123]
pushi.e 186
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[125]
push.v self.con
pushi.e 187
cmp.i.v EQ
bf [129]

:[126]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.puzz1
conv.v.i
pushenv [128]

:[127]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[128]
popenv [127]
pushi.e 188
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[129]
push.v self.con
pushi.e 189
cmp.i.v EQ
bf [135]

:[130]
call.i snd_free_all(argc=0)
popz.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 33
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.puzzwall
conv.v.i
pushenv [132]

:[131]
call.i instance_destroy(argc=0)
popz.v

:[132]
popenv [131]
push.v self.s
conv.v.i
pushenv [134]

:[133]
pushi.e 183
pop.v.i self.sprite_index

:[134]
popenv [133]
pushi.e 5
pop.v.i self.con

:[135]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [137]

:[136]
call.i d_ex(argc=0)
conv.v.b
not.b
b [138]

:[137]
push.e 0

:[138]
bf [142]

:[139]
push.v self.s
conv.v.i
pushenv [141]

:[140]
pushi.e 183
pop.v.i self.sprite_index

:[141]
popenv [140]
pushi.e 162
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.exc
pushi.e 6
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[142]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [148]

:[143]
push.v self.exc
conv.v.i
pushenv [145]

:[144]
call.i instance_destroy(argc=0)
popz.v

:[145]
popenv [144]
push.v self.s
conv.v.i
pushenv [147]

:[146]
pushi.e 6
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[147]
popenv [146]
pushi.e -5
pushi.e 0
push.v [array]global.monstermakey
pop.v.v self.y
pushi.e 218
pop.v.i self.sprite_index
pushi.e 8
pop.v.i self.con

:[148]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [153]

:[149]
pushglb.v global.encounterno
call.i scr_encountersetup(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_set(argc=3)
popz.v
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.monstermakex
pushi.e 5
add.i.v
cmp.v.v LTE
bf [153]

:[150]
pushi.e -5
pushi.e 0
push.v [array]global.monstermakex
pop.v.v self.x
pushi.e 11
pop.v.i self.con
push.v self.s
conv.v.i
pushenv [152]

:[151]
call.i scr_halt(argc=0)
popz.v

:[152]
popenv [151]

:[153]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [157]

:[154]
push.v self.s
conv.v.i
pushenv [156]

:[155]
pushi.e 185
pop.v.i self.sprite_index

:[156]
popenv [155]
pushglb.v global.encounterno
call.i scr_encountersetup(argc=1)
popz.v
pushi.e 5
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_lancerbattle2_event_slash_Step_0_gml_330_0"@4302
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_331_0"@4303
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_332_0"@4304
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_lancerbattle2_event_slash_Step_0_gml_334_0"@4305
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 12
pop.v.i self.con

:[157]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [159]

:[158]
call.i d_ex(argc=0)
conv.v.b
not.b
b [160]

:[159]
push.e 0

:[160]
bf [164]

:[161]
push.v self.diamond
conv.v.i
pushenv [163]

:[162]
pushi.e 8
pop.v.i self.hspeed

:[163]
popenv [162]
pushi.e 561
pop.v.i self.sprite_index
pushi.e 162
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.exc
pushi.e 13
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[164]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [168]

:[165]
push.v self.exc
conv.v.i
pushenv [167]

:[166]
call.i instance_destroy(argc=0)
popz.v

:[167]
popenv [166]
pushi.e 32
pop.v.i global.typer
pushi.e 12
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
push.s "obj_lancerbattle2_event_slash_Step_0_gml_354_0"@4306
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_355_0"@4307
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 15
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[168]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [170]

:[169]
call.i d_ex(argc=0)
conv.v.b
not.b
b [171]

:[170]
push.e 0

:[171]
bf [175]

:[172]
pushi.e 560
pop.v.i self.sprite_index
push.v self.s
conv.v.i
pushenv [174]

:[173]
pushi.e 185
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[174]
popenv [173]
pushi.e 16
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[175]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [179]

:[176]
push.v self.s
conv.v.i
pushenv [178]

:[177]
call.i scr_halt(argc=0)
popz.v

:[178]
popenv [177]
pushi.e 18
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[179]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [181]

:[180]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_385_0"@4308
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_386_0"@4309
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "C"@2530
conv.s.v
pushi.e 2
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerbattle2_event_slash_Step_0_gml_388_0"@4310
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_389_0"@4311
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 20
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[181]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [183]

:[182]
call.i d_ex(argc=0)
conv.v.b
not.b
b [184]

:[183]
push.e 0

:[184]
bf [186]

:[185]
pushi.e 218
pop.v.i self.sprite_index
pushi.e 21
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[186]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [188]

:[187]
pushi.e 6
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_407_0"@4312
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_408_0"@4313
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_409_0"@4314
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_410_0"@4315
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 23
pop.v.i self.con

:[188]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [190]

:[189]
call.i d_ex(argc=0)
conv.v.b
not.b
b [191]

:[190]
push.e 0

:[191]
bf [195]

:[192]
push.v self.s
conv.v.i
pushenv [194]

:[193]
pushi.e 4
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[194]
popenv [193]
pushi.e 24
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[195]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [199]

:[196]
push.v self.s
conv.v.i
pushenv [198]

:[197]
call.i scr_halt(argc=0)
popz.v

:[198]
popenv [197]
pushi.e 26
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[199]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [201]

:[200]
pushi.e 560
pop.v.i self.sprite_index
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 9
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_440_0"@4316
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_441_0"@4317
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_442_0"@4318
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_443_0"@4319
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "C"@2530
conv.s.v
pushi.e 4
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerbattle2_event_slash_Step_0_gml_445_0"@4320
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 28
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[201]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [203]

:[202]
call.i d_ex(argc=0)
conv.v.b
not.b
b [204]

:[203]
push.e 0

:[204]
bf [208]

:[205]
push.v self.s
conv.v.i
pushenv [207]

:[206]
pushi.e 182
pop.v.i self.sprite_index

:[207]
popenv [206]
pushi.e 29
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[208]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [210]

:[209]
pushi.e 1
pop.v.i global.fc
pushi.e 12
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_lancerbattle2_event_slash_Step_0_gml_462_0"@4321
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_463_0"@4322
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_464_0"@4323
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_465_0"@4324
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_466_0"@4325
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_467_0"@4326
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_468_0"@4327
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 31
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[210]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [212]

:[211]
call.i d_ex(argc=0)
conv.v.b
not.b
b [213]

:[212]
push.e 0

:[213]
bf [217]

:[214]
push.v self.s
conv.v.i
pushenv [216]

:[215]
pushi.e -2
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 182
pop.v.i self.sprite_index

:[216]
popenv [215]
push.d 30.5
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[217]
push.v self.con
push.d 31.5
cmp.d.v EQ
bf [221]

:[218]
push.v self.s
conv.v.i
pushenv [220]

:[219]
call.i scr_halt(argc=0)
popz.v

:[220]
popenv [219]
pushi.e 32
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[221]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [223]

:[222]
pushi.e 0
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_500_0"@4328
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_501_0"@4329
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 33.1
pop.v.d self.con

:[223]
push.v self.con
push.d 33.1
cmp.d.v EQ
bf [225]

:[224]
call.i d_ex(argc=0)
conv.v.b
not.b
b [226]

:[225]
push.e 0

:[226]
bf [230]

:[227]
pushi.e 561
pop.v.i self.sprite_index
push.v self.s
conv.v.i
pushenv [229]

:[228]
pushi.e 185
pop.v.i self.sprite_index

:[229]
popenv [228]
pushi.e 162
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 50
add.i.v
call.i instance_create(argc=3)
pop.v.v self.exc
push.d 32.2
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "tense.ogg"@4330
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong

:[230]
push.v self.con
push.d 33.2
cmp.d.v EQ
bf [234]

:[231]
pushi.e 560
pop.v.i self.sprite_index
push.v self.exc
conv.v.i
pushenv [233]

:[232]
call.i instance_destroy(argc=0)
popz.v

:[233]
popenv [232]
pushi.e 5
pop.v.i global.fc
pushi.e 12
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_lancerbattle2_event_slash_Step_0_gml_526_0"@4331
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_lancerbattle2_event_slash_Step_0_gml_528_0"@4332
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "C"@2530
conv.s.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerbattle2_event_slash_Step_0_gml_530_0"@4333
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_lancerbattle2_event_slash_Step_0_gml_532_0"@4334
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.d 33.3
pop.v.d self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[234]
push.v self.con
push.d 33.3
cmp.d.v EQ
bf [236]

:[235]
call.i d_ex(argc=0)
conv.v.b
not.b
b [237]

:[236]
push.e 0

:[237]
bf [243]

:[238]
push.v self.s
conv.v.i
pushenv [240]

:[239]
pushi.e 185
pop.v.i self.sprite_index

:[240]
popenv [239]
push.v self.s
conv.v.i
pushenv [242]

:[241]
push.d 0.1
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.hspeed

:[242]
popenv [241]
push.d 32.4
pop.v.d self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[243]
push.v self.con
push.d 33.4
cmp.d.v EQ
bf [247]

:[244]
push.v self.s
conv.v.i
pushenv [246]

:[245]
call.i scr_halt(argc=0)
popz.v

:[246]
popenv [245]
push.d 32.5
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[247]
push.v self.con
push.d 33.5
cmp.d.v EQ
bf [249]

:[248]
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
push.s "obj_lancerbattle2_event_slash_Step_0_gml_560_0"@4335
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerbattle2_event_slash_Step_0_gml_562_0"@4336
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 34
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[249]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [251]

:[250]
call.i d_ex(argc=0)
conv.v.b
not.b
b [252]

:[251]
push.e 0

:[252]
bf [256]

:[253]
push.v self.s
conv.v.i
pushenv [255]

:[254]
pushi.e 1
pop.v.i self.image_index

:[255]
popenv [254]
pushi.e 561
pop.v.i self.sprite_index
pushi.e 35
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 35
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[256]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [260]

:[257]
push.v self.s
conv.v.i
pushenv [259]

:[258]
call.i scr_halt(argc=0)
popz.v

:[259]
popenv [258]
pushi.e 37
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[260]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [262]

:[261]
pushi.e 560
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index
pushi.e 3
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.s "obj_lancerbattle2_event_slash_Step_0_gml_595_0"@4337
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerbattle2_event_slash_Step_0_gml_597_0"@4338
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_598_0"@4339
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 39
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[262]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [264]

:[263]
call.i d_ex(argc=0)
conv.v.b
not.b
b [265]

:[264]
push.e 0

:[265]
bf [269]

:[266]
push.v self.s
conv.v.i
pushenv [268]

:[267]
pushi.e 196
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[268]
popenv [267]
pushi.e 39
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 40
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[269]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [273]

:[270]
push.v self.s
conv.v.i
pushenv [272]

:[271]
call.i scr_halt(argc=0)
popz.v
pushi.e 183
pop.v.i self.sprite_index

:[272]
popenv [271]
pushi.e 2
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.s "obj_lancerbattle2_event_slash_Step_0_gml_627_0"@4340
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_628_0"@4341
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 42
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[273]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [275]

:[274]
call.i d_ex(argc=0)
conv.v.b
not.b
b [276]

:[275]
push.e 0

:[276]
bf [280]

:[277]
push.v self.s
conv.v.i
pushenv [279]

:[278]
pushi.e 180
pop.v.i self.sprite_index
pushi.e -3
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[279]
popenv [278]
pushi.e 43
pop.v.i self.con

:[280]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [285]

:[281]
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e -5
pushi.e 0
push.v [array]global.heromakex
pushi.e 2
add.i.v
cmp.v.v LTE
bf [285]

:[282]
push.v self.s
conv.v.i
pushenv [284]

:[283]
call.i scr_halt(argc=0)
popz.v

:[284]
popenv [283]
pushi.e 44
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[285]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [287]

:[286]
pushi.e 1
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_659_0"@4342
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 46
pop.v.i self.con

:[287]
push.v self.con
pushi.e 46
cmp.i.v EQ
bf [289]

:[288]
call.i d_ex(argc=0)
conv.v.b
not.b
b [290]

:[289]
push.e 0

:[290]
bf [294]

:[291]
call.i snd_free_all(argc=0)
popz.v
push.v self.s
conv.v.i
pushenv [293]

:[292]
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 474
pop.v.i self.sprite_index

:[293]
popenv [292]
pushi.e 99
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 47
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[294]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [298]

:[295]
push.v self.s
conv.v.i
pushenv [297]

:[296]
pushi.e 0
pop.v.i self.image_speed

:[297]
popenv [296]
push.d 48.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[298]
push.v self.con
push.d 49.1
cmp.d.v EQ
bf [300]

:[299]
push.s "vs_susie.ogg"@4343
conv.s.v
call.i snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.currentsong
pushi.e 4
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_691_0"@4344
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 50
pop.v.i self.con

:[300]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [302]

:[301]
call.i d_ex(argc=0)
conv.v.b
not.b
b [303]

:[302]
push.e 0

:[303]
bf [311]

:[304]
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]global.currentsong
call.i mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.currentsong
push.v self.s
conv.v.i
pushenv [306]

:[305]
call.i instance_destroy(argc=0)
popz.v

:[306]
popenv [305]
pushi.e 20
pop.v.i global.encounterno
pushi.e 0
pop.v.i global.specialbattle
pushi.e 0
pushi.e -5
pushi.e 9
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 51
pop.v.i self.con
pushglb.v global.encounterno
call.i scr_encountersetup(argc=1)
popz.v
pushi.e -5
pushi.e 0
push.v [array]global.monstermakex
pop.v.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.monstermakey
pop.v.v self.y
pushi.e 187
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.visible
pushi.e 202
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 640
add.i.v
call.i instance_create(argc=3)
pop.v.v self.hk
push.v self.hk
conv.v.i
pushenv [308]

:[307]
pushi.e 0
pop.v.i self.visible

:[308]
popenv [307]
pushi.e 326
pushenv [310]

:[309]
pushi.e 0
pop.v.i self.visible

:[310]
popenv [309]

:[311]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [329]

:[312]
pushi.e 475
conv.i.v
push.v 203.y
push.v 203.x
call.i scr_dark_marker(argc=3)
pop.v.v self.s
push.v self.s
conv.v.i
pushenv [314]

:[313]
call.i scr_depth(argc=0)
popz.v
pushi.e 5
pop.v.i self.image_index

:[314]
popenv [313]
pushi.e 1
pop.v.i self.visible
pushi.e 561
pop.v.i self.sprite_index
pushi.e 0
pop.v.i global.fighting
pushi.e 187
pushenv [316]

:[315]
call.i instance_destroy(argc=0)
popz.v

:[316]
popenv [315]
pushi.e 203
pushenv [318]

:[317]
call.i instance_destroy(argc=0)
popz.v

:[318]
popenv [317]
pushi.e 202
pushenv [320]

:[319]
call.i instance_destroy(argc=0)
popz.v

:[320]
popenv [319]
pushi.e 212
pushenv [322]

:[321]
call.i instance_destroy(argc=0)
popz.v

:[322]
popenv [321]
pushi.e 279
pushenv [324]

:[323]
call.i instance_destroy(argc=0)
popz.v

:[324]
popenv [323]
pushi.e 190
pushenv [326]

:[325]
call.i instance_destroy(argc=0)
popz.v

:[326]
popenv [325]
push.v self.black
conv.v.i
pushenv [328]

:[327]
call.i instance_destroy(argc=0)
popz.v

:[328]
popenv [327]
pushi.e 304
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.dm
pushi.e 1
push.v self.dm
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 0
push.v self.dm
conv.v.i
pop.v.i [stacktop]self.damage
pushi.e 54
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[329]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [331]

:[330]
pushi.e 560
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 12
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_762_0"@4347
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_763_0"@4348
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 56
pop.v.i self.con

:[331]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [333]

:[332]
call.i d_ex(argc=0)
conv.v.b
not.b
b [334]

:[333]
push.e 0

:[334]
bf [338]

:[335]
push.v self.s
conv.v.i
pushenv [337]

:[336]
pushi.e 472
pop.v.i self.sprite_index

:[337]
popenv [336]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 57
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[338]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [340]

:[339]
pushi.e 12
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.s "obj_lancerbattle2_event_slash_Step_0_gml_781_0"@4349
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_782_0"@4350
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_783_0"@4351
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 59
pop.v.i self.con

:[340]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [342]

:[341]
call.i d_ex(argc=0)
conv.v.b
not.b
b [343]

:[342]
push.e 0

:[343]
bf [345]

:[344]
pushi.e 1
pop.v.i self.image_index
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_794_0"@4352
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_795_0"@4353
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_796_0"@4354
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 60
pop.v.i self.con

:[345]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [347]

:[346]
call.i d_ex(argc=0)
conv.v.b
not.b
b [348]

:[347]
push.e 0

:[348]
bf [352]

:[349]
push.v self.s
conv.v.i
pushenv [351]

:[350]
pushi.e 185
pop.v.i self.sprite_index

:[351]
popenv [350]
pushi.e 38
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 61
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[352]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [354]

:[353]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 12
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_814_0"@4355
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerbattle2_event_slash_Step_0_gml_816_0"@4356
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_817_0"@4357
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 63
pop.v.i self.con

:[354]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [356]

:[355]
call.i d_ex(argc=0)
conv.v.b
not.b
b [357]

:[356]
push.e 0

:[357]
bf [361]

:[358]
push.v self.s
conv.v.i
pushenv [360]

:[359]
pushi.e 182
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e -2
pop.v.i self.hspeed

:[360]
popenv [359]
pushi.e 64
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[361]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [365]

:[362]
push.v self.s
conv.v.i
pushenv [364]

:[363]
call.i scr_halt(argc=0)
popz.v

:[364]
popenv [363]
pushi.e 66
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[365]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [367]

:[366]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 12
pop.v.i global.fe
pushi.e 0
pop.v.i self.image_index
push.s "obj_lancerbattle2_event_slash_Step_0_gml_849_0"@4358
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_850_0"@4359
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 68
pop.v.i self.con

:[367]
push.v self.con
pushi.e 68
cmp.i.v EQ
bf [369]

:[368]
call.i d_ex(argc=0)
conv.v.b
not.b
b [370]

:[369]
push.e 0

:[370]
bf [374]

:[371]
push.v self.s
conv.v.i
pushenv [373]

:[372]
pushi.e 6
pop.v.i self.hspeed
pushi.e 183
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[373]
popenv [372]
pushi.e 69
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[374]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [378]

:[375]
push.v self.s
conv.v.i
pushenv [377]

:[376]
call.i scr_halt(argc=0)
popz.v

:[377]
popenv [376]
pushi.e 71
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[378]
push.v self.con
pushi.e 72
cmp.i.v EQ
bf [380]

:[379]
pushi.e 0
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_878_0"@4360
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_879_0"@4361
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_880_0"@4362
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 73
pop.v.i self.con

:[380]
push.v self.con
pushi.e 73
cmp.i.v EQ
bf [382]

:[381]
call.i d_ex(argc=0)
conv.v.b
not.b
b [383]

:[382]
push.e 0

:[383]
bf [387]

:[384]
push.v self.s
conv.v.i
pushenv [386]

:[385]
pushi.e 185
pop.v.i self.sprite_index

:[386]
popenv [385]
pushi.e 1
pop.v.i self.image_index
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_892_0"@4363
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_893_0"@4364
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 74
pop.v.i self.con

:[387]
push.v self.con
pushi.e 74
cmp.i.v EQ
bf [389]

:[388]
call.i d_ex(argc=0)
conv.v.b
not.b
b [390]

:[389]
push.e 0

:[390]
bf [394]

:[391]
pushi.e 0
pop.v.i self.image_index
push.v self.s
conv.v.i
pushenv [393]

:[392]
pushi.e 183
pop.v.i self.sprite_index
pushi.e 12
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[393]
popenv [392]
pushi.e 75
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[394]
push.v self.con
pushi.e 76
cmp.i.v EQ
bf [398]

:[395]
push.v self.s
conv.v.i
pushenv [397]

:[396]
call.i scr_halt(argc=0)
popz.v

:[397]
popenv [396]
pushi.e 77
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[398]
push.v self.con
pushi.e 78
cmp.i.v EQ
bf [400]

:[399]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 13
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_925_0"@4365
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_926_0"@4366
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_927_0"@4367
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerbattle2_event_slash_Step_0_gml_929_0"@4368
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 79
pop.v.i self.con

:[400]
push.v self.con
pushi.e 79
cmp.i.v EQ
bf [402]

:[401]
call.i d_ex(argc=0)
conv.v.b
not.b
b [403]

:[402]
push.e 0

:[403]
bf [405]

:[404]
pushi.e 80
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[405]
push.v self.con
pushi.e 81
cmp.i.v EQ
bf [407]

:[406]
pushi.e 220
pop.v.i self.sprite_index
pushi.e 3
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_944_0"@4369
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_945_0"@4370
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_946_0"@4371
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_947_0"@4372
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "D"@2531
conv.s.v
pushi.e 4
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_lancerbattle2_event_slash_Step_0_gml_949_0"@4373
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerbattle2_event_slash_Step_0_gml_951_0"@4374
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 82
pop.v.i self.con

:[407]
push.v self.con
pushi.e 82
cmp.i.v EQ
bf [409]

:[408]
call.i d_ex(argc=0)
conv.v.b
not.b
b [410]

:[409]
push.e 0

:[410]
bf [412]

:[411]
pushi.e 216
pop.v.i self.sprite_index
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.hspeed
pushi.e 85
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[412]
push.v self.con
pushi.e 86
cmp.i.v EQ
bf [414]

:[413]
call.i scr_halt(argc=0)
popz.v
push.d 86.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[414]
push.v self.con
push.d 87.1
cmp.d.v EQ
bf [416]

:[415]
pushi.e 218
pop.v.i self.sprite_index
pushi.e 6
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_978_0"@4375
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 88
pop.v.i self.con

:[416]
push.v self.con
pushi.e 88
cmp.i.v EQ
bf [418]

:[417]
call.i d_ex(argc=0)
conv.v.b
not.b
b [419]

:[418]
push.e 0

:[419]
bf [423]

:[420]
push.v self.s
conv.v.i
pushenv [422]

:[421]
pushi.e 185
pop.v.i self.sprite_index

:[422]
popenv [421]
pushi.e 89
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[423]
push.v self.con
pushi.e 90
cmp.i.v EQ
bf [425]

:[424]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_995_0"@4376
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 91
pop.v.i self.con

:[425]
push.v self.con
pushi.e 91
cmp.i.v EQ
bf [427]

:[426]
call.i d_ex(argc=0)
conv.v.b
not.b
b [428]

:[427]
push.e 0

:[428]
bf [430]

:[429]
pushi.e 219
pop.v.i self.sprite_index
pushi.e 92
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[430]
push.v self.con
pushi.e 93
cmp.i.v EQ
bf [432]

:[431]
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
push.s "obj_lancerbattle2_event_slash_Step_0_gml_1012_0"@4377
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_1013_0"@4378
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_lancerbattle2_event_slash_Step_0_gml_1015_0"@4379
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_1016_0"@4380
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 94
pop.v.i self.con

:[432]
push.v self.con
pushi.e 94
cmp.i.v EQ
bf [434]

:[433]
call.i d_ex(argc=0)
conv.v.b
not.b
b [435]

:[434]
push.e 0

:[435]
bf [439]

:[436]
push.v self.s
conv.v.i
pushenv [438]

:[437]
pushi.e 183
pop.v.i self.sprite_index

:[438]
popenv [437]
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
pushi.e 3
pop.v.i global.fe
pushi.e 216
pop.v.i self.sprite_index
push.s "obj_lancerbattle2_event_slash_Step_0_gml_1028_0"@4381
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 95
pop.v.i self.con

:[439]
push.v self.con
pushi.e 95
cmp.i.v EQ
bf [441]

:[440]
call.i d_ex(argc=0)
conv.v.b
not.b
b [442]

:[441]
push.e 0

:[442]
bf [444]

:[443]
pushi.e 10
pop.v.i self.hspeed
pushi.e 96
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[444]
push.v self.con
pushi.e 97
cmp.i.v EQ
bf [448]

:[445]
push.v self.s
conv.v.i
pushenv [447]

:[446]
pushi.e 189
pop.v.i self.sprite_index

:[447]
popenv [446]
pushi.e 12
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.s "obj_lancerbattle2_event_slash_Step_0_gml_1046_0"@4382
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerbattle2_event_slash_Step_0_gml_1047_0"@4383
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 98
pop.v.i self.con

:[448]
push.v self.con
pushi.e 98
cmp.i.v EQ
bf [450]

:[449]
call.i d_ex(argc=0)
conv.v.b
not.b
b [451]

:[450]
push.e 0

:[451]
bf [455]

:[452]
push.v self.s
conv.v.i
pushenv [454]

:[453]
pushi.e 183
pop.v.i self.sprite_index
pushi.e 10
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[454]
popenv [453]
pushi.e 99
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[455]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [457]

:[456]
pushi.e 137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 101
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[457]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [end]

:[458]
pushi.e 154
pop.v.i global.plot
pushi.e 0
pop.v.i global.entrance
pushi.e 3
pop.v.i global.interact
pushi.e 139
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 105
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]