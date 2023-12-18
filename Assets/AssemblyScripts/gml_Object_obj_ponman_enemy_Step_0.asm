.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [74]

:[1]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [14]

:[5]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e 100
cmp.i.v LT
bf [7]

:[6]
call.i scr_randomtarget(argc=0)
popz.v

:[7]
pushi.e 195
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [9]

:[8]
pushi.e 195
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[9]
pushi.e 50
pop.v.i global.typer
push.s " "@24
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i scr_enemyblcon(argc=3)
pop.v.v self.g
push.v self.g
conv.v.i
push.v [stacktop]self.mywriter
conv.v.i
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
push.v self.g
conv.v.i
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[14]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [23]

:[18]
pushi.e 0
pop.v.i self.rtimer
pushi.e 5
conv.i.v
call.i scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [23]

:[19]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [21]

:[20]
call.i scr_moveheart(argc=0)
popz.v

:[21]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [23]

:[22]
pushi.e 303
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i __view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 320
add.i.v
call.i instance_create(argc=3)
popz.v

:[23]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [66]

:[27]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [65]

:[28]
pushi.e 150
pop.v.i global.turntimer
call.i scr_monsterpop(argc=0)
pop.v.v self.pontotal
pushi.e 0
pop.v.i self.i

:[29]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [36]

:[30]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.mercymod
pushi.e 100
cmp.i.v GTE
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.v self.pontotal
pushi.e 1
sub.i.v
pop.v.v self.pontotal

:[35]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [29]

:[36]
push.v self.pontotal
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
pushi.e 3
pop.v.i self.maxshot

:[38]
push.v self.pontotal
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushi.e 4
pop.v.i self.maxshot

:[40]
push.v self.pontotal
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 5
pop.v.i self.maxshot

:[42]
push.v self.pontotal
pushi.e 0
cmp.i.v LTE
bf [44]

:[43]
pushi.e 10
pop.v.i global.turntimer
pushi.e 6
pop.v.i self.maxshot

:[44]
pushi.e 0
pop.v.i self.shotcount
pushi.e 0
pop.v.i self.totalshotcount
pushi.e 1
pop.v.i self.activetimer
pushi.e 8
pop.v.i self.shotbuffer
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e 100
cmp.i.v LT
bf [46]

:[45]
pushi.e 20
pop.v.i self.eyecon

:[46]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 1
pop.v.i self.attacked
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=5)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_ponman_enemy_slash_Step_0_gml_64_0"@8344
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[48]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_ponman_enemy_slash_Step_0_gml_65_0"@8345
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[50]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_ponman_enemy_slash_Step_0_gml_66_0"@8346
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[52]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_ponman_enemy_slash_Step_0_gml_67_0"@8347
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[54]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_ponman_enemy_slash_Step_0_gml_68_0"@8348
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[56]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_ponman_enemy_slash_Step_0_gml_69_0"@8349
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[58]
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
bf [60]

:[59]
push.s "obj_ponman_enemy_slash_Step_0_gml_70_0"@8350
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[60]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymax
cmp.v.v GTE
bf [62]

:[61]
push.s "obj_ponman_enemy_slash_Step_0_gml_71_0"@8351
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstercomment
push.s "obj_ponman_enemy_slash_Step_0_gml_72_0"@8352
conv.s.v
call.i scr_84_get_lang_string(argc=1)
cmp.v.v EQ
bf [64]

:[63]
push.s "obj_ponman_enemy_slash_Step_0_gml_72_1"@8353
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
b [66]

:[65]
pushi.e 120
pop.v.i global.turntimer

:[66]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [74]

:[67]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [74]

:[68]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
pushi.e 100
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v

:[70]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [74]

:[71]
pushi.e 187
pushenv [73]

:[72]
pushi.e 1
pop.v.i self.noreturn

:[73]
popenv [72]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[74]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [140]

:[75]
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
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
pushi.e 1
pop.v.i self.actcon
push.s "obj_ponman_enemy_slash_Step_0_gml_106_0"@8354
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[80]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [82]

:[81]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
push.s "obj_ponman_enemy_slash_Step_0_gml_114_0"@8355
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.sleeping
pushi.e 100
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[85]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [87]

:[86]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [101]

:[89]
pushi.e -5
pushi.e 1
push.v [array]global.batmusic
call.i snd_pause(argc=1)
popz.v
push.v self.lullabied
pushi.e 0
cmp.i.v EQ
bf [93]

:[90]
pushi.e 50
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.singy
push.v self.object_index
conv.v.i
pushenv [92]

:[91]
pushi.e 1
pop.v.i self.lullabied

:[92]
popenv [91]
b [96]

:[93]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.singy
push.v self.object_index
conv.v.i
pushenv [95]

:[94]
pushi.e 0
pop.v.i self.lullabied

:[95]
popenv [94]

:[96]
push.s "obj_ponman_enemy_slash_Step_0_gml_134_0"@8357
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 204
pushenv [98]

:[97]
pushi.e 0
pop.v.i self.visible

:[98]
popenv [97]
pushi.e 483
conv.i.v
push.v 204.y
push.v 204.x
call.i scr_dark_marker(argc=3)
pop.v.v self.ralsing
push.v self.ralsing
conv.v.i
pushenv [100]

:[99]
push.d 0.2
pop.v.d self.image_speed

:[100]
popenv [99]
pushi.e 0
pop.v.i self.lullatimer
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 10
pop.v.i self.actcon

:[101]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [103]

:[102]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [104]

:[103]
push.e 0

:[104]
bf [111]

:[105]
pushi.e 1
pop.v.i self.actcon
push.s "obj_ponman_enemy_slash_Step_0_gml_150_0"@8360
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [107]

:[106]
push.s "obj_ponman_enemy_slash_Step_0_gml_152_0"@8361
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[107]
pushi.e 0
pop.v.i self.i

:[108]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [110]

:[109]
push.s "obj_ponman_enemy_slash_Step_0_gml_155_0"@8362
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.monstercomment
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.automiss
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [108]

:[110]
call.i scr_battletext_default(argc=0)
popz.v

:[111]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [113]

:[112]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [114]

:[113]
push.e 0

:[114]
bf [116]

:[115]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v

:[116]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [119]

:[117]
push.v self.lullatimer
pushi.e 1
add.i.v
pop.v.v self.lullatimer
push.v self.lullatimer
pushi.e 30
cmp.i.v GTE
bf [119]

:[118]
pushi.e 11
pop.v.i self.actcon

:[119]
push.v self.actcon
pushi.e 11
cmp.i.v EQ
bf [121]

:[120]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [122]

:[121]
push.e 0

:[122]
bf [140]

:[123]
push.v self.ralsing
conv.v.i
pushenv [125]

:[124]
call.i instance_destroy(argc=0)
popz.v

:[125]
popenv [124]
pushi.e 204
pushenv [127]

:[126]
pushi.e 1
pop.v.i self.visible

:[127]
popenv [126]
push.v self.singy
call.i snd_stop(argc=1)
popz.v
pushi.e -5
pushi.e 1
push.v [array]global.batmusic
call.i snd_resume(argc=1)
popz.v
push.s "obj_ponman_enemy_slash_Step_0_gml_186_0"@8363
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [129]

:[128]
pushi.e 2
conv.i.v
call.i scr_havechar(argc=1)
conv.v.b
b [130]

:[129]
push.e 0

:[130]
bf [137]

:[131]
pushi.e 0
pop.v.i self.dx

:[132]
push.v self.dx
pushi.e 3
cmp.i.v LT
bf [137]

:[133]
pushi.e -5
push.v self.dx
conv.v.i
push.v [array]global.char
pushi.e 2
cmp.i.v EQ
bf [136]

:[134]
pushi.e -5
push.v self.dx
conv.v.i
push.v [array]global.charcond
pushi.e 5
cmp.i.v NEQ
bf [136]

:[135]
pushi.e 5
pushi.e -5
push.v self.dx
conv.v.i
pop.v.i [array]global.charcond
pushi.e 9
pushi.e -5
push.v self.dx
conv.v.i
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
push.v self.dx
conv.v.i
pop.v.i [array]global.charmove
push.s "obj_ponman_enemy_slash_Step_0_gml_198_0"@8364
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[136]
push.v self.dx
pushi.e 1
add.i.v
pop.v.v self.dx
b [132]

:[137]
pushi.e 1
pop.v.i self.sleeping
pushi.e 100
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
pushi.e 234
pushenv [139]

:[138]
push.s "obj_ponman_enemy_slash_Step_0_gml_208_0"@8365
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstercomment
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterstatus

:[139]
popenv [138]
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[140]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [142]

:[141]
pushi.e 15
pop.v.i self.hspeed

:[142]
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
pushi.e 999
pop.v.i self.eyecon

:[144]
push.v self.eyecon
pushi.e 0
cmp.i.v EQ
bf [155]

:[145]
pushi.e 180
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
add.v.i
pop.v.v self.eye_angle
push.v self.eye_radius
pushi.e 8
cmp.i.v LT
bf [147]

:[146]
push.v self.eye_radius
pushi.e 2
add.i.v
pop.v.v self.eye_radius
b [148]

:[147]
pushi.e 8
pop.v.i self.eye_radius

:[148]
push.v self.addup
pushi.e 0
cmp.i.v EQ
bf [150]

:[149]
pushi.e 1
pop.v.i self.image_index
b [151]

:[150]
pushi.e 3
pop.v.i self.image_index

:[151]
push.v self.eye_angle
pushi.e 200
cmp.i.v GT
bf [153]

:[152]
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.addup

:[153]
push.v self.eye_angle
pushi.e 160
cmp.i.v LT
bf [155]

:[154]
pushi.e 2
pop.v.i self.image_index
pushi.e 0
pop.v.i self.addup

:[155]
push.v self.eyecon
pushi.e 10
cmp.i.v EQ
bf [162]

:[156]
pushi.e 0
pop.v.i self.activetimer
pushi.e 210
pushenv [158]

:[157]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[158]
popenv [157]
pushi.e 0
pop.v.i self.image_index
push.v self.eye_radius
push.d 0.7
mul.d.v
pop.v.v self.eye_radius
push.v self.eye_radius
call.i abs(argc=1)
push.d 0.5
cmp.d.v LT
bf [160]

:[159]
pushi.e 0
pop.v.i self.eye_radius
pushi.e 0
pop.v.i self.eye_angle

:[160]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [162]

:[161]
pushi.e 0
pop.v.i self.eyecon

:[162]
push.v self.eyecon
pushi.e 20
cmp.i.v EQ
bf [205]

:[163]
push.v self.spinspeed
pushi.e 10
cmp.i.v LT
bf [165]

:[164]
push.v self.spinspeed
pushi.e 1
add.i.v
pop.v.v self.spinspeed

:[165]
push.v self.pontotal
pushi.e 1
cmp.i.v GT
bf [167]

:[166]
push.v self.siner
push.v self.spinspeed
pushi.e 8
conv.i.d
div.d.v
add.v.v
pop.v.v self.siner
b [168]

:[167]
push.v self.siner
push.v self.spinspeed
pushi.e 20
conv.i.d
div.d.v
add.v.v
pop.v.v self.siner

:[168]
pushi.e 180
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
pop.v.v self.eye_angle
push.v self.eye_radius
pushi.e 8
cmp.i.v LT
bf [170]

:[169]
push.v self.eye_radius
pushi.e 1
add.i.v
pop.v.v self.eye_radius

:[170]
push.v self.grandbuffer
pushi.e 1
sub.i.v
pop.v.v self.grandbuffer
pushi.e 305
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [172]

:[171]
push.v 305.y
pushi.e 8
add.i.v
push.v 305.x
pushi.e 8
add.i.v
push.v self.eyey
pushi.e 32
add.i.v
push.v self.y
add.v.v
push.v self.eyex
pushi.e 28
add.i.v
push.v self.x
add.v.v
call.i point_direction(argc=4)
pop.v.v self.x_angle
b [173]

:[172]
pushi.e 0
pop.v.i self.x_angle

:[173]
push.v self.x_angle
push.v self.eye_angle
sub.v.v
call.i abs(argc=1)
pushi.e 25
cmp.i.v LT
bf [176]

:[174]
push.v self.eye_angle
pushi.e 120
cmp.i.v GTE
bf [176]

:[175]
push.v self.eye_angle
pushi.e 240
cmp.i.v LTE
b [177]

:[176]
push.e 0

:[177]
bf [201]

:[178]
push.v self.shotbuffer
pushi.e 0
cmp.i.v LT
bf [181]

:[179]
push.v self.shotcount
pushi.e 3
cmp.i.v LT
bf [181]

:[180]
push.v self.totalshotcount
push.v self.maxshot
cmp.v.v LT
b [182]

:[181]
push.e 0

:[182]
bf [201]

:[183]
push.v self.shotcount
pushi.e 1
add.i.v
pop.v.v self.shotcount
push.v self.pontotal
pushi.e 2
cmp.i.v EQ
bf [185]

:[184]
push.v self.shotcount
pushi.e 1
add.i.v
pop.v.v self.shotcount

:[185]
push.v self.pontotal
pushi.e 3
cmp.i.v EQ
bf [187]

:[186]
push.v self.shotcount
pushi.e 1
add.i.v
pop.v.v self.shotcount

:[187]
push.v self.shotcount
pushi.e 3
cmp.i.v GTE
bf [194]

:[188]
push.v self.totalshotcount
pushi.e 1
add.i.v
pop.v.v self.totalshotcount
pushi.e 0
pop.v.i self.shotcount
push.v self.pontotal
pushi.e 1
cmp.i.v EQ
bf [190]

:[189]
pushi.e 10
pop.v.i self.shotbuffer

:[190]
push.v self.pontotal
pushi.e 2
cmp.i.v EQ
bf [192]

:[191]
pushi.e 13
pop.v.i self.shotbuffer

:[192]
push.v self.pontotal
pushi.e 3
cmp.i.v EQ
bf [194]

:[193]
pushi.e 22
pop.v.i self.shotbuffer

:[194]
push.v self.totalshotcount
push.v self.maxshot
cmp.v.v GTE
bf [196]

:[195]
pushi.e 1
pop.v.i self.maxtimer

:[196]
pushi.e 95
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 210
conv.i.v
push.v self.eyey
pushi.e 32
add.i.v
push.v self.y
add.v.v
push.v self.eyex
pushi.e 28
add.i.v
push.v self.x
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bul
pushi.e 2
push.v self.bul
conv.v.i
pop.v.i [stacktop]self.speed
push.d 2.5
push.v self.bul
conv.v.i
pop.v.d [stacktop]self.timepoints
push.v self.mytarget
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.damage
push.d -0.11
push.v self.bul
conv.v.i
pop.v.d [stacktop]self.friction
push.v self.pontotal
pushi.e 1
cmp.i.v EQ
bf [198]

:[197]
push.d -0.12
push.v self.bul
conv.v.i
pop.v.d [stacktop]self.friction

:[198]
push.v self.eye_angle
push.v self.bul
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.bul
conv.v.i
pushenv [200]

:[199]
pushi.e 416
pop.v.i self.sprite_index
push.v self.direction
pop.v.v self.image_angle

:[200]
popenv [199]

:[201]
push.v self.maxtimer
pushi.e 0
cmp.i.v GT
bf [203]

:[202]
push.v self.maxtimer
pushi.e 1
add.i.v
pop.v.v self.maxtimer

:[203]
pushglb.v global.turntimer
pushi.e 10
cmp.i.v LT
bf [205]

:[204]
pushi.e 10
pop.v.i self.eyecon

:[205]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.shotbuffer
pushi.e 1
sub.i.v
pop.v.v self.shotbuffer
push.v self.becomesleep
pushi.e 1
cmp.i.v EQ
bf [207]

:[206]
pushi.e 999
pop.v.i self.eyecon
pushi.e 1
pop.v.i self.sleeping
pushi.e 0
pop.v.i self.becomesleep
pushi.e 5
pop.v.i self.sleep_index

:[207]
push.v self.eye_angle
pushi.e 0
cmp.i.v LT
bf [209]

:[208]
push.v self.eye_angle
pushi.e 360
add.i.v
pop.v.v self.eye_angle

:[209]
push.v self.eye_angle
pushi.e 360
cmp.i.v GT
bf [211]

:[210]
push.v self.eye_angle
pushi.e 360
sub.i.v
pop.v.v self.eye_angle

:[211]
push.v self.eye_angle
push.v self.eye_radius
call.i lengthdir_x(argc=2)
pop.v.v self.eyex
push.v self.eye_angle
push.v self.eye_radius
call.i lengthdir_y(argc=2)
pop.v.v self.eyey

:[end]