.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 21
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.secondtime

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [65]

:[3]
pushi.e 4
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.i [array]global.flag
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 99
pop.v.i self.milk_counter

:[5]
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 99
pop.v.i self.ralsei_lecture

:[7]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [24]

:[11]
call.i scr_randomtarget(argc=0)
popz.v
pushi.e 195
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [13]

:[12]
pushi.e 195
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[13]
pushi.e 1000
pop.v.i self.milkmax
push.v self.milk_counter
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
pushi.e 600
pop.v.i self.milkmax

:[15]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
push.v self.milkmax
cmp.v.v GT
bf [23]

:[16]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [18]

:[17]
pushi.e 305
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [19]

:[18]
push.e 0

:[19]
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
pushi.e 2
pop.v.i global.mnfight
pushi.e 0
pop.v.i self.rtimer
pushi.e 50
pop.v.i global.typer
pushi.e 2
pop.v.i self.talked
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.talktimer

:[24]
push.v self.talked
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
pushi.e 2
pop.v.i global.mnfight

:[26]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [57]

:[30]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [56]

:[31]
pushi.e 0
pop.v.i self.talked
pushi.e 1000
pop.v.i self.milkmax
push.v self.milk_counter
pushi.e 0
cmp.i.v GT
bf [33]

:[32]
pushi.e 600
pop.v.i self.milkmax

:[33]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
push.v self.milkmax
cmp.v.v LTE
bf [37]

:[34]
push.v self.scon
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.scon

:[36]
b [49]

:[37]
pushi.e 258
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [48]

:[38]
push.v self.attacktype
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 0
pop.v.i self.rr

:[40]
push.v self.attacktype
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 3
pop.v.i self.rr

:[42]
push.v self.attacktype
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
pushi.e 1
pop.v.i self.rr

:[44]
push.v self.attacktype
pushi.e 3
cmp.i.v EQ
bf [46]

:[45]
pushi.e 2
pop.v.i self.rr

:[46]
pushi.e 258
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
push.v self.rr
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.leapmode
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage
push.v self.attacktype
pushi.e 1
add.i.v
pop.v.v self.attacktype
push.v self.attacktype
pushi.e 3
cmp.i.v GT
bf [48]

:[47]
pushi.e 0
pop.v.i self.attacktype

:[48]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.visible
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns

:[49]
pushi.e 999
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.attacked
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.rr
push.s "obj_checkers_enemy_slash_Step_0_gml_77_0"@8139
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_checkers_enemy_slash_Step_0_gml_79_0"@8140
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[51]
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
bf [53]

:[52]
push.s "obj_checkers_enemy_slash_Step_0_gml_80_0"@8141
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[53]
push.v self.crown
pushi.e 0
cmp.i.v GT
bf [55]

:[54]
push.v self.crown
call.i string(argc=1)
push.s "obj_checkers_enemy_slash_Step_0_gml_82_0"@8142
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[55]
b [57]

:[56]
pushi.e 120
pop.v.i global.turntimer

:[57]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [65]

:[58]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [65]

:[59]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod

:[61]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [65]

:[62]
pushi.e 187
pushenv [64]

:[63]
pushi.e 1
pop.v.i self.noreturn

:[64]
popenv [63]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[65]
push.v self.scon
pushi.e 1
cmp.i.v EQ
bf [71]

:[66]
push.v self.milk_counter
pushi.e 0
cmp.i.v GT
bf [68]

:[67]
push.d 1.5
pop.v.d self.scon
b [71]

:[68]
pushi.e 6
pushenv [70]

:[69]
call.i instance_destroy(argc=0)
popz.v

:[70]
popenv [69]
push.s "obj_checkers_enemy_slash_Step_0_gml_119_0"@8143
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v
push.d 1.5
pop.v.d self.scon

:[71]
push.v self.scon
push.d 1.5
cmp.d.v EQ
bf [73]

:[72]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [74]

:[73]
push.e 0

:[74]
bf [80]

:[75]
pushi.e 70
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 6
pushenv [77]

:[76]
call.i instance_destroy(argc=0)
popz.v

:[77]
popenv [76]
push.s "obj_checkers_enemy_slash_Step_0_gml_129_0"@8144
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 999
pop.v.i global.turntimer
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 537
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
pushi.e 100
sub.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.milk
push.v self.milk
conv.v.i
pushenv [79]

:[78]
pushi.e 0
pop.v.i self.image_speed
pushi.e 4
pop.v.i self.image_xscale
pushi.e 4
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_alpha

:[79]
popenv [78]
push.v self.depth
pushi.e 1
sub.i.v
push.v self.milk
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 2
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer

:[80]
push.v self.scon
pushi.e 2
cmp.i.v EQ
bf [87]

:[81]
push.v self.milk
conv.v.i
pushenv [83]

:[82]
push.v self.image_xscale
push.d 0.2
sub.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.2
sub.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[83]
popenv [82]
push.v self.milktimer
pushi.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 10
cmp.i.v GTE
bf [87]

:[84]
pushi.e 3
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer
push.v self.milk
conv.v.i
pushenv [86]

:[85]
push.d 1.4
pop.v.d self.image_alpha

:[86]
popenv [85]

:[87]
push.v self.scon
pushi.e 3
cmp.i.v EQ
bf [90]

:[88]
push.v self.milktimer
pushi.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 25
cmp.i.v GTE
bf [90]

:[89]
pushi.e 4
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer

:[90]
push.v self.scon
pushi.e 4
cmp.i.v EQ
bf [105]

:[91]
push.v self.milk
conv.v.i
pushenv [93]

:[92]
push.v self.hspeed
pushi.e 2
add.i.v
pop.v.v self.hspeed
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[93]
popenv [92]
push.v self.milktimer
pushi.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 10
cmp.i.v EQ
bf [101]

:[94]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 10
cmp.i.v LT
bf [96]

:[95]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterat
push.d 0.5
add.d.v
pop.i.v [array]global.monsterat

:[96]
pushi.e 87
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 700
pop.v.i self.milkheal
push.v self.milk_counter
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
pushi.e 300
pop.v.i self.milkheal

:[98]
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]global.monsterhp
push.v self.milkheal
add.v.v
pop.i.v [array]global.monsterhp
pushi.e 304
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstery
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterx
call.i instance_create(argc=3)
pop.v.v self.healamt
push.v self.healamt
conv.v.i
pushenv [100]

:[99]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type
pushi.e 700
pop.v.i self.damage

:[100]
popenv [99]
push.v self.milkheal
push.v self.healamt
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 293
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.hanim
push.v self.id
push.v self.hanim
conv.v.i
pop.v.v [stacktop]self.target

:[101]
push.v self.milktimer
pushi.e 15
cmp.i.v GTE
bf [105]

:[102]
push.v self.milk
conv.v.i
pushenv [104]

:[103]
call.i instance_destroy(argc=0)
popz.v

:[104]
popenv [103]
pushi.e 5
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer

:[105]
push.v self.scon
pushi.e 5
cmp.i.v EQ
bf [115]

:[106]
push.v self.milktimer
pushi.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 30
cmp.i.v GTE
bf [115]

:[107]
push.v self.milk_counter
pushi.e 0
cmp.i.v GT
bf [111]

:[108]
pushi.e 6
pushenv [110]

:[109]
call.i instance_destroy(argc=0)
popz.v

:[110]
popenv [109]
pushi.e 0
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer
pushi.e 0
pop.v.i global.turntimer
b [114]

:[111]
pushi.e 6
pushenv [113]

:[112]
call.i instance_destroy(argc=0)
popz.v

:[113]
popenv [112]
pushi.e 6
pop.v.i self.scon
push.s "obj_checkers_enemy_slash_Step_0_gml_226_0"@8149
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_228_0"@8150
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_230_0"@8151
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[114]
push.v self.milk_counter
pushi.e 1
add.i.v
pop.v.v self.milk_counter

:[115]
push.v self.scon
pushi.e 6
cmp.i.v EQ
bf [118]

:[116]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [118]

:[117]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer
pushi.e 0
pop.v.i global.turntimer

:[118]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [269]

:[119]
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
bf [121]

:[120]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [122]

:[121]
push.e 0

:[122]
bf [132]

:[123]
pushi.e 1
pop.v.i self.actcon
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
bf [127]

:[124]
push.s "obj_checkers_enemy_slash_Step_0_gml_263_0"@8152
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_264_0"@8153
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.v [array]global.actname
pushi.e 1
pushi.e -5
pushi.e 246
pop.v.i [array]global.flag
push.v self.checked
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
push.s "obj_checkers_enemy_slash_Step_0_gml_268_0"@8154
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[126]
pushi.e 1
pop.v.i self.checked
b [131]

:[127]
pushi.e -5
pushi.e 246
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [129]

:[128]
push.s "obj_checkers_enemy_slash_Step_0_gml_277_0"@8155
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_278_0"@8156
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [130]

:[129]
push.s "obj_checkers_enemy_slash_Step_0_gml_282_0"@8157
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_283_0"@8158
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[130]
pushi.e 1
pop.v.i self.checked

:[131]
call.i scr_battletext_default(argc=0)
popz.v

:[132]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [134]

:[133]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [135]

:[134]
push.e 0

:[135]
bf [145]

:[136]
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
bf [138]

:[137]
push.v self.crown
pushi.e 15
add.i.v
pop.v.v self.crown

:[138]
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [140]

:[139]
push.v self.crown
pushi.e 18
add.i.v
pop.v.v self.crown

:[140]
push.s "obj_checkers_enemy_slash_Step_0_gml_296_0"@8159
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 202
pushenv [142]

:[141]
pushi.e 0
pop.v.i self.visible

:[142]
popenv [141]
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.charaction
pushi.e 446
conv.i.v
push.v 202.y
push.v 202.x
call.i scr_dark_marker(argc=3)
pop.v.v self.bowkris
push.v self.bowkris
conv.v.i
pushenv [144]

:[143]
call.i scr_oflash(argc=0)
popz.v
call.i scr_afterimage(argc=0)
pop.v.v self.a
pushi.e 5
push.v self.a
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.depth
pushi.e 1
add.i.v
push.v self.a
conv.v.i
pop.v.v [stacktop]self.depth

:[144]
popenv [143]
pushi.e 97
conv.i.v
call.i snd_play(argc=1)
popz.v
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 20
pop.v.i self.actcon

:[145]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [147]

:[146]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [148]

:[147]
push.e 0

:[148]
bf [167]

:[149]
pushi.e 0
pop.v.i self.visible
pushi.e 549
conv.i.v
push.v self.y
push.v self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.bowcheck
push.v self.bowcheck
conv.v.i
pushenv [151]

:[150]
push.d 0.334
pop.v.d self.image_speed

:[151]
popenv [150]
pushi.e 0
pop.v.i global.fc
pushi.e 4
pop.v.i global.typer
push.s "obj_checkers_enemy_slash_Step_0_gml_327_0"@8162
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.ralsei_lecture
pushi.e 0
cmp.i.v EQ
bf [153]

:[152]
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
b [154]

:[153]
push.e 0

:[154]
bf [156]

:[155]
push.s "obj_checkers_enemy_slash_Step_0_gml_330_0"@8163
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_332_0"@8164
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_333_0"@8165
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_334_0"@8166
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_336_0"@8167
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_337_0"@8168
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_339_0"@8169
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.ralsei_lecture

:[156]
push.v self.thrown
pushi.e 0
cmp.i.v EQ
bf [158]

:[157]
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
b [159]

:[158]
push.e 0

:[159]
bf [166]

:[160]
push.v self.bowcounter
pushi.e 0
cmp.i.v EQ
bf [162]

:[161]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.s "obj_checkers_enemy_slash_Step_0_gml_349_0"@8170
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_350_0"@8171
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_352_0"@8172
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[162]
push.v self.bowcounter
pushi.e 1
cmp.i.v EQ
bf [164]

:[163]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.s "obj_checkers_enemy_slash_Step_0_gml_359_0"@8173
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_360_0"@8174
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_362_0"@8175
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[164]
push.v self.bowcounter
pushi.e 2
cmp.i.v EQ
bf [166]

:[165]
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.s "obj_checkers_enemy_slash_Step_0_gml_369_0"@8176
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_370_0"@8177
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_372_0"@8178
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[166]
push.v self.bowcounter
pushi.e 1
add.i.v
pop.v.v self.bowcounter
call.i scr_battletext(argc=0)
popz.v
pushi.e 21
pop.v.i self.actcon

:[167]
push.v self.actcon
pushi.e 21
cmp.i.v EQ
bf [169]

:[168]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [170]

:[169]
push.e 0

:[170]
bf [178]

:[171]
push.v self.bowkris
conv.v.i
pushenv [173]

:[172]
call.i instance_destroy(argc=0)
popz.v

:[173]
popenv [172]
push.v self.bowcheck
conv.v.i
pushenv [175]

:[174]
call.i instance_destroy(argc=0)
popz.v

:[175]
popenv [174]
pushi.e 1
pop.v.i self.visible
pushi.e 202
pushenv [177]

:[176]
pushi.e 1
pop.v.i self.visible

:[177]
popenv [176]
pushi.e 1
pop.v.i self.actcon

:[178]
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
bf [192]

:[179]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [181]

:[180]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [182]

:[181]
push.e 0

:[182]
bf [192]

:[183]
push.v self.crown
pushi.e 20
add.i.v
pop.v.v self.crown
push.s "obj_checkers_enemy_slash_Step_0_gml_398_0"@8179
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 202
pushenv [185]

:[184]
pushi.e 0
pop.v.i self.visible

:[185]
popenv [184]
pushi.e 204
pushenv [187]

:[186]
pushi.e 0
pop.v.i self.visible

:[187]
popenv [186]
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.charaction
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.charaction
pushi.e 446
conv.i.v
push.v 202.y
push.v 202.x
call.i scr_dark_marker(argc=3)
pop.v.v self.bowkris
push.v self.bowkris
conv.v.i
pushenv [189]

:[188]
call.i scr_oflash(argc=0)
popz.v
call.i scr_afterimage(argc=0)
pop.v.v self.a
pushi.e 5
push.v self.a
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.depth
pushi.e 1
add.i.v
push.v self.a
conv.v.i
pop.v.v [stacktop]self.depth

:[189]
popenv [188]
pushi.e 486
conv.i.v
push.v 204.y
push.v 204.x
call.i scr_dark_marker(argc=3)
pop.v.v self.bowral
push.v self.bowral
conv.v.i
pushenv [191]

:[190]
call.i scr_oflash(argc=0)
popz.v
call.i scr_afterimage(argc=0)
pop.v.v self.a
pushi.e 5
push.v self.a
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.depth
pushi.e 1
add.i.v
push.v self.a
conv.v.i
pop.v.v [stacktop]self.depth

:[191]
popenv [190]
pushi.e 97
conv.i.v
call.i snd_play(argc=1)
popz.v
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 30
pop.v.i self.actcon

:[192]
push.v self.actcon
pushi.e 30
cmp.i.v EQ
bf [194]

:[193]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [195]

:[194]
push.e 0

:[195]
bf [204]

:[196]
pushi.e 0
pop.v.i self.visible
pushi.e 549
conv.i.v
push.v self.y
push.v self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.bowcheck
push.v self.bowcheck
conv.v.i
pushenv [198]

:[197]
push.d 0.5
pop.v.d self.image_speed

:[198]
popenv [197]
push.s "obj_checkers_enemy_slash_Step_0_gml_442_0"@8181
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.ralsei_lecture
pushi.e 0
cmp.i.v EQ
bf [200]

:[199]
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
b [201]

:[200]
push.e 0

:[201]
bf [203]

:[202]
push.s "obj_checkers_enemy_slash_Step_0_gml_445_0"@8182
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_447_0"@8183
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_448_0"@8184
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_449_0"@8185
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_451_0"@8186
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_452_0"@8187
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_454_0"@8188
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.ralsei_lecture

:[203]
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 31
pop.v.i self.actcon

:[204]
push.v self.actcon
pushi.e 31
cmp.i.v EQ
bf [206]

:[205]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [207]

:[206]
push.e 0

:[207]
bf [219]

:[208]
push.v self.bowral
conv.v.i
pushenv [210]

:[209]
call.i instance_destroy(argc=0)
popz.v

:[210]
popenv [209]
push.v self.bowkris
conv.v.i
pushenv [212]

:[211]
call.i instance_destroy(argc=0)
popz.v

:[212]
popenv [211]
push.v self.bowcheck
conv.v.i
pushenv [214]

:[213]
call.i instance_destroy(argc=0)
popz.v

:[214]
popenv [213]
pushi.e 1
pop.v.i self.visible
pushi.e 204
pushenv [216]

:[215]
pushi.e 1
pop.v.i self.visible

:[216]
popenv [215]
pushi.e 202
pushenv [218]

:[217]
pushi.e 1
pop.v.i self.visible

:[218]
popenv [217]
pushi.e 1
pop.v.i self.actcon

:[219]
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [235]

:[220]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [222]

:[221]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [223]

:[222]
push.e 0

:[223]
bf [235]

:[224]
push.v self.thrown
pushi.e 1
cmp.i.v EQ
bf [228]

:[225]
push.v self.trsus
conv.v.i
pushenv [227]

:[226]
call.i instance_destroy(argc=0)
popz.v

:[227]
popenv [226]
pushi.e 2
pop.v.i self.thrown

:[228]
push.v self.thrown
pushi.e 0
cmp.i.v GT
bf [234]

:[229]
push.s "obj_checkers_enemy_slash_Step_0_gml_487_0"@8190
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.v [array]global.actname
push.s "obj_checkers_enemy_slash_Step_0_gml_489_0"@8191
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e 6
conv.i.v
call.i scr_get_input_name(argc=1)
add.v.v
push.s "obj_checkers_enemy_slash_Step_0_gml_489_1"@8192
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.becomeflash
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 90
pop.v.i self.actcon
pushi.e 257
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 256
conv.i.v
push.v 203.y
push.v 203.x
call.i instance_create(argc=3)
pop.v.v self.throwsus
pushi.e 0
pop.v.i self.visible
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.charaction
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.faceaction
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.charaction
pushi.e 203
pushenv [231]

:[230]
pushi.e 0
pop.v.i self.visible

:[231]
popenv [230]
pushi.e 204
pushenv [233]

:[232]
pushi.e 0
pop.v.i self.visible

:[233]
popenv [232]
pushi.e 34
conv.i.v
call.i snd_play(argc=1)
popz.v
b [235]

:[234]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_checkers_enemy_slash_Step_0_gml_510_0"@8194
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_512_0"@8195
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_513_0"@8196
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_515_0"@8197
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_516_0"@8198
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_518_0"@8199
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 10
pop.v.i self.actcon
call.i scr_battletext(argc=0)
popz.v

:[235]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [237]

:[236]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [238]

:[237]
push.e 0

:[238]
bf [244]

:[239]
pushi.e 1
pop.v.i self.actcon
push.s "obj_checkers_enemy_slash_Step_0_gml_531_0"@8200
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_532_0"@8201
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.warned
pushi.e 1
cmp.i.v EQ
bf [241]

:[240]
push.s "obj_checkers_enemy_slash_Step_0_gml_535_0"@8202
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_536_0"@8203
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[241]
push.v self.warned
pushi.e 2
cmp.i.v EQ
bf [243]

:[242]
push.s "obj_checkers_enemy_slash_Step_0_gml_540_0"@8204
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_541_0"@8205
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_542_0"@8206
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.battleat
push.d 1.5
mul.d.v
pop.i.v [array]global.battleat

:[243]
push.v self.warned
pushi.e 1
add.i.v
pop.v.v self.warned
call.i scr_battletext_default(argc=0)
popz.v

:[244]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [246]

:[245]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [247]

:[246]
push.e 0

:[247]
bf [251]

:[248]
pushi.e 0
pop.v.i self.actcon
push.v self.crown
pushi.e 100
cmp.i.v GTE
bf [250]

:[249]
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
pushi.e 50
pop.v.i self.actcon
b [251]

:[250]
call.i scr_attackphase(argc=0)
popz.v

:[251]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [253]

:[252]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [254]

:[253]
push.e 0

:[254]
bf [260]

:[255]
pushi.e 11
pop.v.i self.actcon
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 203
pushenv [257]

:[256]
pushi.e 0
pop.v.i self.visible

:[257]
popenv [256]
pushi.e 204
pushenv [259]

:[258]
pushi.e 0
pop.v.i self.visible

:[259]
popenv [258]
pushi.e 1
pop.v.i self.thrown
pushi.e 480
conv.i.v
push.v 203.y
push.v 203.x
call.i scr_dark_marker(argc=3)
pop.v.v self.trsus
pushi.e 34
conv.i.v
call.i snd_play(argc=1)
popz.v

:[260]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [262]

:[261]
pushi.e 7
pop.v.i global.fe
push.s "obj_checkers_enemy_slash_Step_0_gml_578_0"@8207
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_579_0"@8208
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_battletext(argc=0)
popz.v
pushi.e 13
pop.v.i self.actcon

:[262]
push.v self.actcon
pushi.e 13
cmp.i.v EQ
bf [264]

:[263]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [265]

:[264]
push.e 0

:[265]
bf [267]

:[266]
pushi.e 0
pop.v.i self.actcon

:[267]
push.v self.actcon
pushi.e 50
cmp.i.v EQ
bf [269]

:[268]
pushi.e 0
pop.v.i self.visible
call.i snd_free_all(argc=0)
popz.v
pushi.e 254
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.animtest
pushi.e 544
push.v self.animtest
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.animtest
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.animtest
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.animtest
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 51
pop.v.i self.actcon

:[269]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[270]
pushi.e 15
pop.v.i self.hspeed

:[end]