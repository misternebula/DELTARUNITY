.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.defeated
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [55]

:[4]
pushi.e 4
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.i [array]global.flag
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [13]

:[8]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [13]

:[9]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[10]
call.i scr_moveheart(argc=0)
popz.v

:[11]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [13]

:[12]
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

:[13]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [47]

:[17]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [46]

:[18]
pushi.e 180
pop.v.i global.turntimer
push.v self.attacktype
pushi.e 2
cmp.i.v EQ
bf [23]

:[19]
pushi.e 233
conv.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 85
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
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
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.timepoints
pushi.e 5
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [23]

:[20]
push.v self.dc
conv.v.i
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]

:[23]
push.v self.attacktype
pushi.e 1
cmp.i.v EQ
bf [28]

:[24]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 20
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
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
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.timepoints
pushi.e 3
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [28]

:[25]
push.v self.dc
conv.v.i
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]

:[28]
push.v self.attacktype
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.v self.sleeping
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [35]

:[32]
pushi.e 276
conv.i.v
push.v 282.y
push.v 282.x
call.i instance_create(argc=3)
pop.v.v self.bike
pushi.e 282
pushenv [34]

:[33]
pushi.e 0
pop.v.i self.visible

:[34]
popenv [33]
push.v self.mytarget
push.v self.bike
conv.v.i
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.bike
conv.v.i
pop.v.v [stacktop]self.damage
pushi.e 999
pop.v.i global.turntimer

:[35]
push.v self.attacktype
pushi.e 1
add.i.v
pop.v.v self.attacktype
push.v self.attacktype
pushi.e 3
cmp.i.v GTE
bf [37]

:[36]
pushi.e 0
pop.v.i self.attacktype

:[37]
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
push.s "obj_susieenemy_slash_Step_0_gml_79_0"@8653
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_susieenemy_slash_Step_0_gml_80_0"@8654
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[39]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [41]

:[40]
push.s "obj_susieenemy_slash_Step_0_gml_81_0"@8655
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[41]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_susieenemy_slash_Step_0_gml_82_0"@8656
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[43]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_susieenemy_slash_Step_0_gml_83_0"@8657
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[45]
b [47]

:[46]
pushi.e 120
pop.v.i global.turntimer

:[47]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [55]

:[48]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [55]

:[49]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod

:[51]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [55]

:[52]
pushi.e 187
pushenv [54]

:[53]
pushi.e 1
pop.v.i self.noreturn

:[54]
popenv [53]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[55]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushi.e 2
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[57]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [59]

:[58]
pushi.e 50
pop.v.i global.typer
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
push.s "obj_susieenemy_slash_Step_0_gml_118_0"@8658
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[59]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [61]

:[60]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [62]

:[61]
push.e 0

:[62]
bf [66]

:[63]
pushi.e 15
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 187
pushenv [65]

:[64]
pushi.e 17
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[65]
popenv [64]

:[66]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [70]

:[67]
pushi.e 187
pushenv [69]

:[68]
pushi.e 0
pop.v.i self.noreturn

:[69]
popenv [68]
call.i scr_monsterdefeat(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[70]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [130]

:[71]
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
bf [73]

:[72]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [78]

:[75]
pushi.e 1
pop.v.i self.actcon
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemdf
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemdf
add.v.v
pop.v.v self._armordf
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.itemat
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.itemat
add.v.v
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.itemat
add.v.v
pop.v.v self._armorat
pushi.e -5
pushi.e 2
push.v [array]global.df
push.v self._armordf
add.v.v
call.i string(argc=1)
pop.v.v self.totaldf
pushi.e -5
pushi.e 2
push.v [array]global.at
push.v self._armorat
add.v.v
call.i string(argc=1)
pop.v.v self.totalat
pushi.e -5
pushi.e 2
push.v [array]global.maxhp
call.i string(argc=1)
pop.v.v self.totalhp
push.v self.totalhp
push.v self.totaldf
push.v self.totalat
push.s "obj_susieenemy_slash_Step_0_gml_159_0"@8663
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=4)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self._armordf
pushi.e 0
cmp.i.v GT
bf [77]

:[76]
push.v self.totalhp
push.v self.totaldf
push.v self.totalat
push.s "obj_susieenemy_slash_Step_0_gml_162_0"@8664
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=4)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[77]
call.i scr_battletext_default(argc=0)
popz.v

:[78]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [80]

:[79]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [81]

:[80]
push.e 0

:[81]
bf [93]

:[82]
push.s "obj_susieenemy_slash_Step_0_gml_170_0"@8665
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.anythingcounter
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_susieenemy_slash_Step_0_gml_171_0"@8666
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[84]
push.v self.anythingcounter
pushi.e 2
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_susieenemy_slash_Step_0_gml_172_0"@8667
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[86]
push.v self.anythingcounter
pushi.e 3
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_susieenemy_slash_Step_0_gml_173_0"@8668
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
push.v self.anythingcounter
pushi.e 4
cmp.i.v GTE
bf [90]

:[89]
push.s "obj_susieenemy_slash_Step_0_gml_174_0"@8669
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
push.s "obj_susieenemy_slash_Step_0_gml_175_0"@8670
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.anythingcounter
pushi.e 1
cmp.i.v GTE
bf [92]

:[91]
push.s "obj_susieenemy_slash_Step_0_gml_176_0"@8671
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[92]
call.i scr_battletext_default(argc=0)
popz.v
push.v self.anythingcounter
pushi.e 1
add.i.v
pop.v.v self.anythingcounter
pushi.e 1
pop.v.i self.actcon

:[93]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [95]

:[94]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [111]

:[97]
pushi.e 234
pushenv [99]

:[98]
pushi.e 3
pop.v.i self.susie_act

:[99]
popenv [98]
pushi.e -5
pushi.e 1
push.v [array]global.batmusic
call.i snd_pause(argc=1)
popz.v
push.v self.lullabied
pushi.e 0
cmp.i.v EQ
bf [103]

:[100]
pushi.e 50
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.singy
push.v self.object_index
conv.v.i
pushenv [102]

:[101]
pushi.e 1
pop.v.i self.lullabied

:[102]
popenv [101]
b [106]

:[103]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
pop.v.v self.singy
push.v self.object_index
conv.v.i
pushenv [105]

:[104]
pushi.e 0
pop.v.i self.lullabied

:[105]
popenv [104]

:[106]
push.s "obj_susieenemy_slash_Step_0_gml_197_0"@8672
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 204
pushenv [108]

:[107]
pushi.e 0
pop.v.i self.visible

:[108]
popenv [107]
pushi.e 483
conv.i.v
push.v 204.y
push.v 204.x
call.i scr_dark_marker(argc=3)
pop.v.v self.ralsing
push.v self.ralsing
conv.v.i
pushenv [110]

:[109]
push.d 0.2
pop.v.d self.image_speed

:[110]
popenv [109]
pushi.e 0
pop.v.i self.lullatimer
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 10
pop.v.i self.actcon

:[111]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [114]

:[112]
push.v self.lullatimer
pushi.e 1
add.i.v
pop.v.v self.lullatimer
push.v self.lullatimer
pushi.e 30
cmp.i.v GTE
bf [114]

:[113]
pushi.e 11
pop.v.i self.actcon

:[114]
push.v self.actcon
pushi.e 11
cmp.i.v EQ
bf [116]

:[115]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [125]

:[118]
push.v self.ralsing
conv.v.i
pushenv [120]

:[119]
call.i instance_destroy(argc=0)
popz.v

:[120]
popenv [119]
pushi.e 204
pushenv [122]

:[121]
pushi.e 1
pop.v.i self.visible

:[122]
popenv [121]
push.v self.singy
call.i snd_stop(argc=1)
popz.v
pushi.e -5
pushi.e 1
push.v [array]global.batmusic
call.i snd_resume(argc=1)
popz.v
push.s "obj_susieenemy_slash_Step_0_gml_223_0"@8673
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [124]

:[123]
push.s "obj_susieenemy_slash_Step_0_gml_224_0"@8674
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[124]
pushi.e 607
pop.v.i self.idlesprite
pushi.e 0
pop.v.i self.sleepcounter
pushi.e 1
pop.v.i self.sleeping
push.s "obj_susieenemy_slash_Step_0_gml_228_0"@8675
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
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[125]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [127]

:[126]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [128]

:[127]
push.e 0

:[128]
bf [130]

:[129]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v

:[130]
push.v self.pacifycon
pushi.e 0
cmp.i.v GT
bf [135]

:[131]
pushi.e 999
pop.v.i global.spelldelay
pushi.e 300
pushenv [134]

:[132]
push.v self.spelltimer
pushi.e 30
cmp.i.v GT
bf [134]

:[133]
pushi.e 30
pop.v.i self.spelltimer

:[134]
popenv [132]

:[135]
push.v self.pacifycon
pushi.e 1
cmp.i.v EQ
bf [140]

:[136]
push.v 300.spelltimer
pushi.e 15
cmp.i.v GTE
bf [140]

:[137]
pushi.e 0
pop.v.i self.pacifytimer
pushi.e 2
pop.v.i self.pacifycon
pushi.e 282
pushenv [139]

:[138]
pushi.e 0
pop.v.i self.visible

:[139]
popenv [138]
pushi.e 426
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 40
sub.i.v
call.i scr_dark_marker(argc=3)
pop.v.v self.temp_l
push.v self.depth
pushi.e 2
sub.i.v
push.v self.temp_l
conv.v.i
pop.v.v [stacktop]self.depth

:[140]
push.v self.pacifycon
pushi.e 2
cmp.i.v EQ
bf [144]

:[141]
pushi.e 110
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.temp_l
conv.v.i
pushenv [143]

:[142]
call.i scr_oflash(argc=0)
pop.v.v self.o
push.i 16711680
push.v self.o
conv.v.i
pop.v.i [stacktop]self.flashcolor

:[143]
popenv [142]
pushi.e 3
pop.v.i self.pacifycon

:[144]
push.v self.pacifycon
pushi.e 3
cmp.i.v EQ
bf [160]

:[145]
push.v self.pacifytimer
pushi.e 1
add.i.v
pop.v.v self.pacifytimer
push.v self.pacifytimer
pushi.e 30
cmp.i.v GTE
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
bf [160]

:[149]
push.v self.temp_l
conv.v.i
pushenv [151]

:[150]
call.i instance_destroy(argc=0)
popz.v

:[151]
popenv [150]
pushi.e 282
pushenv [153]

:[152]
pushi.e 1
pop.v.i self.visible

:[153]
popenv [152]
pushi.e 4
pop.v.i self.pacifycon
pushi.e 234
pushenv [155]

:[154]
pushi.e 9
pop.v.i self.susie_act

:[155]
popenv [154]
push.s "obj_susieenemy_slash_Step_0_gml_283_0"@8679
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_susieenemy_slash_Step_0_gml_285_0"@8680
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_susieenemy_slash_Step_0_gml_287_0"@8681
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.tirespare
pushi.e 1
cmp.i.v EQ
bf [157]

:[156]
push.s "obj_susieenemy_slash_Step_0_gml_290_0"@8682
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_susieenemy_slash_Step_0_gml_291_0"@8683
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_susieenemy_slash_Step_0_gml_292_0"@8684
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_susieenemy_slash_Step_0_gml_293_0"@8685
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_susieenemy_slash_Step_0_gml_294_0"@8686
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[157]
push.v self.tirespare
pushi.e 2
cmp.i.v GTE
bf [159]

:[158]
push.s "obj_susieenemy_slash_Step_0_gml_298_0"@8687
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_susieenemy_slash_Step_0_gml_299_0"@8688
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[159]
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 5
pop.v.i self.pacifycon
push.v self.tirespare
pushi.e 1
add.i.v
pop.v.v self.tirespare

:[160]
push.v self.pacifycon
pushi.e 5
cmp.i.v EQ
bf [162]

:[161]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [163]

:[162]
push.e 0

:[163]
bf [end]

:[164]
pushi.e 20
pop.v.i global.spelldelay
pushi.e 300
pushenv [166]

:[165]
pushi.e 18
pop.v.i self.spelltimer

:[166]
popenv [165]
pushi.e 0
pop.v.i self.pacifycon

:[end]