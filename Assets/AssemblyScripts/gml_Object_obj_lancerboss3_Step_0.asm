.localvar 0 arguments

:[0]
push.v self.defeated
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 99
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.con

:[5]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.defeated
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [105]

:[9]
pushi.e 4
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.i [array]global.flag
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [64]

:[13]
call.i scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [20]

:[14]
push.v self.susie_revive_count
pushi.e 1
add.i.v
pop.v.v self.susie_revive_count
push.v self.susie_revive_count
pushi.e 3
cmp.i.v GTE
bf [20]

:[15]
pushi.e 38
pushenv [17]

:[16]
pushi.e 0
push.v self.s
conv.v.i
pop.v.i [stacktop]self.visible

:[17]
popenv [16]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.monster
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstancetype
pushi.e -5
pushi.e 0
push.v [array]global.monstermakey
pushi.e -5
pushi.e 0
push.v [array]global.monstermakex
call.i instance_create(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.monsterinstance
pushi.e 0
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pop.v.i [stacktop]self.myself
pushi.e -5
pushi.e 0
push.v [array]global.monsterinstance
conv.v.i
pushenv [19]

:[18]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[19]
popenv [18]
pushi.e 40
pushi.e -5
pushi.e 0
pop.v.i [array]global.monsterhp
pushi.e 87
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.susie_revive_count

:[20]
pushi.e 1
pop.v.i self.attack_qual
pushi.e 281
pushenv [26]

:[21]
push.v self.sleeping
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 0
pop.v.i 282.attack_qual

:[26]
popenv [21]
push.v self.attack_qual
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
call.i scr_randomtarget(argc=0)
popz.v
pushi.e 1
pushi.e -5
push.v self.mytarget
conv.v.i
pop.v.i [array]global.targeted

:[28]
pushi.e 195
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [30]

:[29]
pushi.e 195
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[30]
pushi.e 50
pop.v.i global.typer
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rrrr
push.s "obj_lancerboss3_slash_Step_0_gml_56_0"@8712
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.rrrr
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_lancerboss3_slash_Step_0_gml_57_0"@8713
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
push.v self.rrrr
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
push.s "obj_lancerboss3_slash_Step_0_gml_58_0"@8714
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[34]
push.v self.rrrr
pushi.e 3
cmp.i.v EQ
bf [36]

:[35]
push.s "obj_lancerboss3_slash_Step_0_gml_59_0"@8715
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[36]
push.v self.lancer_hurt
pushi.e 0
cmp.i.v EQ
bf [38]

:[37]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
push.d 0.5
mul.d.v
cmp.v.v LTE
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 1
pop.v.i self.lancer_hurt
push.s "obj_lancerboss3_slash_Step_0_gml_64_0"@8716
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[41]
push.v self.susie_act
pushi.e 3
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_lancerboss3_slash_Step_0_gml_66_0"@8717
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[43]
push.v self.susie_act
pushi.e 9
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_lancerboss3_slash_Step_0_gml_67_0"@8718
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[45]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [54]

:[46]
push.v self.anythingcounter
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_lancerboss3_slash_Step_0_gml_70_0"@8719
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.anythingcounter
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_lancerboss3_slash_Step_0_gml_71_0"@8720
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.anythingcounter
pushi.e 3
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_lancerboss3_slash_Step_0_gml_72_0"@8721
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.anythingcounter
pushi.e 4
cmp.i.v GTE
bf [54]

:[53]
push.s "obj_lancerboss3_slash_Step_0_gml_73_0"@8722
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [63]

:[55]
push.v self.anythingcounter
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_lancerboss3_slash_Step_0_gml_77_0"@8723
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
push.v self.anythingcounter
pushi.e 2
cmp.i.v EQ
bf [59]

:[58]
push.s "obj_lancerboss3_slash_Step_0_gml_78_0"@8724
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
push.v self.anythingcounter
pushi.e 3
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_lancerboss3_slash_Step_0_gml_79_0"@8725
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
push.v self.anythingcounter
pushi.e 4
cmp.i.v GTE
bf [63]

:[62]
push.s "obj_lancerboss3_slash_Step_0_gml_80_0"@8726
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
pushi.e 0
pop.v.i self.susie_act
pushi.e 0
pop.v.i self.lancer_act
pushi.e 3
conv.i.v
push.v self.y
pushi.e 65
sub.i.v
push.v self.x
pushi.e 235
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[64]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [81]

:[68]
call.i button1_p(argc=0)
conv.v.b
bf [70]

:[69]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
push.v self.talkmax
pop.v.v self.talktimer

:[73]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [81]

:[74]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [76]

:[75]
call.i scr_moveheart(argc=0)
popz.v

:[76]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [78]

:[77]
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

:[78]
pushi.e 6
pushenv [80]

:[79]
call.i instance_destroy(argc=0)
popz.v

:[80]
popenv [79]
pushi.e 2
pop.v.i global.mnfight

:[81]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [83]

:[82]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [84]

:[83]
push.e 0

:[84]
bf [105]

:[85]
pushi.e 0
pop.v.i self.attack_qual
call.i scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
pushi.e 1
pop.v.i self.attack_qual

:[87]
pushi.e 281
pushenv [90]

:[88]
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
pushi.e 1
pop.v.i 282.attack_qual

:[90]
popenv [88]
push.v self.attack_qual
pushi.e 1
cmp.i.v EQ
bf [95]

:[91]
push.v self.attacks
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
pushi.e 201
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bike
pushi.e 0
pop.v.i self.visible
pushi.e 1
push.v self.bike
conv.v.i
pop.v.i [stacktop]self.racecon
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
pushi.e 1
pop.v.i self.attacks
b [94]

:[93]
pushi.e 201
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bike
pushi.e 0
pop.v.i self.visible
pushi.e 1
push.v self.bike
conv.v.i
pop.v.i [stacktop]self.lcon
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
pushi.e 0
pop.v.i self.attacks

:[94]
pushi.e 999
pop.v.i global.turntimer

:[95]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 1
pop.v.i self.attacked
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rr
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [97]

:[96]
push.s "obj_lancerboss3_slash_Step_0_gml_145_0"@8727
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[97]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
push.s "obj_lancerboss3_slash_Step_0_gml_146_0"@8728
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[99]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [101]

:[100]
push.s "obj_lancerboss3_slash_Step_0_gml_147_0"@8729
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[101]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [103]

:[102]
push.s "obj_lancerboss3_slash_Step_0_gml_148_0"@8730
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[103]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [105]

:[104]
push.s "obj_lancerboss3_slash_Step_0_gml_149_0"@8731
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[105]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [196]

:[106]
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
bf [108]

:[107]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
pushi.e 1
pop.v.i self.actcon
push.s "obj_lancerboss3_slash_Step_0_gml_167_0"@8732
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[111]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [113]

:[112]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
bf [137]

:[115]
pushi.e 1
pop.v.i self.actcon
push.s "obj_lancerboss3_slash_Step_0_gml_176_0"@8733
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_177_0"@8734
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.anythingcounter
pushi.e 1
cmp.i.v EQ
bf [117]

:[116]
push.s "obj_lancerboss3_slash_Step_0_gml_181_0"@8735
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_182_0"@8736
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[117]
push.v self.anythingcounter
pushi.e 2
cmp.i.v EQ
bf [119]

:[118]
push.s "obj_lancerboss3_slash_Step_0_gml_187_0"@8737
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_188_0"@8738
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[119]
push.v self.anythingcounter
pushi.e 3
cmp.i.v GTE
bf [134]

:[120]
push.s "obj_lancerboss3_slash_Step_0_gml_193_0"@8739
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_194_0"@8740
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.ears_blocked
pushi.e 2
cmp.i.v GTE
bf [122]

:[121]
push.s "obj_lancerboss3_slash_Step_0_gml_197_0"@8741
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_198_0"@8742
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[122]
pushi.e 0
pop.v.i self.attack_qual
call.i scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [124]

:[123]
pushi.e 1
pop.v.i self.attack_qual

:[124]
pushi.e 281
pushenv [127]

:[125]
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [127]

:[126]
pushi.e 1
pop.v.i 282.attack_qual

:[127]
popenv [125]
push.v self.attack_qual
pushi.e 0
cmp.i.v EQ
bf [131]

:[128]
pushi.e 20
pop.v.i self.actcon
pushi.e 234
pushenv [130]

:[129]
push.v self.ears_blocked
pushi.e 1
add.i.v
pop.v.v self.ears_blocked

:[130]
popenv [129]
b [132]

:[131]
pushi.e 10
pop.v.i self.anythingcounter

:[132]
push.v self.ears_blocked
pushi.e 3
cmp.i.v GTE
bf [134]

:[133]
pushi.e 10
pop.v.i self.anythingcounter
pushi.e 1
pop.v.i self.actcon
pushi.e 1
pop.v.i self.attack_qual

:[134]
push.v self.anythingcounter
pushi.e 4
cmp.i.v LT
bf [136]

:[135]
push.v self.anythingcounter
pushi.e 1
add.i.v
pop.v.v self.anythingcounter

:[136]
call.i scr_battletext_default(argc=0)
popz.v

:[137]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [139]

:[138]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [140]

:[139]
push.e 0

:[140]
bf [165]

:[141]
pushi.e 1
pop.v.i self.actcon
push.s "obj_lancerboss3_slash_Step_0_gml_222_0"@8743
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_224_0"@8744
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_226_0"@8745
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.anythingcounter
pushi.e 1
cmp.i.v EQ
bf [143]

:[142]
push.s "obj_lancerboss3_slash_Step_0_gml_230_0"@8746
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_232_0"@8747
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_233_0"@8748
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_235_0"@8749
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[143]
push.v self.anythingcounter
pushi.e 2
cmp.i.v EQ
bf [145]

:[144]
push.s "obj_lancerboss3_slash_Step_0_gml_240_0"@8750
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_242_0"@8751
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_243_0"@8752
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_245_0"@8753
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[145]
push.v self.anythingcounter
pushi.e 3
cmp.i.v GTE
bf [160]

:[146]
push.s "obj_lancerboss3_slash_Step_0_gml_250_0"@8754
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_252_0"@8755
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_253_0"@8756
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.ears_blocked
pushi.e 2
cmp.i.v GTE
bf [148]

:[147]
push.s "obj_lancerboss3_slash_Step_0_gml_256_0"@8757
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
push.s "obj_lancerboss3_slash_Step_0_gml_258_0"@8758
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
call.i scr_noface(argc=1)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_260_0"@8759
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[148]
pushi.e 0
pop.v.i self.attack_qual
call.i scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [150]

:[149]
pushi.e 1
pop.v.i self.attack_qual

:[150]
pushi.e 281
pushenv [153]

:[151]
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [153]

:[152]
pushi.e 1
pop.v.i 282.attack_qual

:[153]
popenv [151]
push.v self.attack_qual
pushi.e 0
cmp.i.v EQ
bf [157]

:[154]
pushi.e 20
pop.v.i self.actcon
pushi.e 234
pushenv [156]

:[155]
push.v self.ears_blocked
pushi.e 1
add.i.v
pop.v.v self.ears_blocked

:[156]
popenv [155]
b [158]

:[157]
pushi.e 10
pop.v.i self.anythingcounter

:[158]
push.v self.ears_blocked
pushi.e 3
cmp.i.v GTE
bf [160]

:[159]
pushi.e 10
pop.v.i self.anythingcounter
pushi.e 1
pop.v.i self.actcon
pushi.e 1
pop.v.i self.attack_qual

:[160]
push.v self.anythingcounter
pushi.e 4
cmp.i.v LT
bf [162]

:[161]
push.v self.anythingcounter
pushi.e 1
add.i.v
pop.v.v self.anythingcounter

:[162]
pushi.e 281
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [164]

:[163]
push.v self.anythingcounter
pop.v.v 281.anythingxcounter
pushi.e 3
pop.v.i 281.lancer_act

:[164]
call.i scr_battletext_default(argc=0)
popz.v

:[165]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [167]

:[166]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [168]

:[167]
push.e 0

:[168]
bf [172]

:[169]
pushi.e 0
pop.v.i self.actcon
push.v self.anythingcounter
pushi.e 10
cmp.i.v LT
bf [171]

:[170]
call.i scr_attackphase(argc=0)
popz.v
b [172]

:[171]
pushi.e 1
pop.v.i self.defeated
pushi.e 99
pop.v.i global.mnfight
pushi.e 99
pop.v.i global.myfight
pushi.e 1
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 249
pop.v.i [array]global.flag

:[172]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [174]

:[173]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [175]

:[174]
push.e 0

:[175]
bf [183]

:[176]
pushi.e 0
pop.v.i self.visible
pushi.e 281
pushenv [178]

:[177]
pushi.e 0
pop.v.i self.visible

:[178]
popenv [177]
call.i scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [182]

:[179]
pushi.e 38
pushenv [181]

:[180]
pushi.e 0
push.v self.s
conv.v.i
pop.v.i [stacktop]self.visible

:[181]
popenv [180]

:[182]
pushi.e 427
conv.i.v
push.v self.y
push.v self.x
call.i scr_dark_marker(argc=3)
pop.v.v self.blocklan
push.v self.depth
push.v self.blocklan
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 14
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_314_0"@8761
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
push.s "obj_lancerboss3_slash_Step_0_gml_316_0"@8762
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 21
pop.v.i self.actcon

:[183]
push.v self.actcon
pushi.e 21
cmp.i.v EQ
bf [185]

:[184]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [186]

:[185]
push.e 0

:[186]
bf [196]

:[187]
push.v self.blocklan
conv.v.i
pushenv [189]

:[188]
call.i instance_destroy(argc=0)
popz.v

:[189]
popenv [188]
pushi.e 1
pop.v.i self.visible
pushi.e 281
pushenv [191]

:[190]
pushi.e 1
pop.v.i self.visible

:[191]
popenv [190]
call.i scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [195]

:[192]
pushi.e 38
pushenv [194]

:[193]
pushi.e 1
push.v self.s
conv.v.i
pop.v.i [stacktop]self.visible

:[194]
popenv [193]

:[195]
pushi.e 1
pop.v.i self.actcon

:[196]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [198]

:[197]
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.con

:[198]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [204]

:[199]
pushi.e 281
pushenv [201]

:[200]
pushi.e 609
pop.v.i self.idlesprite

:[201]
popenv [200]
pushi.e 46
pop.v.i global.typer
pushi.e 4
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
push.s "obj_lancerboss3_slash_Step_0_gml_348_0"@8763
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_350_0"@8764
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_351_0"@8765
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_352_0"@8766
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_354_0"@8767
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_355_0"@8768
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_357_0"@8769
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 10
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_359_0"@8770
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e -5
pushi.e 249
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [203]

:[202]
push.s "obj_lancerboss3_slash_Step_0_gml_363_0"@8771
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
push.s "obj_lancerboss3_slash_Step_0_gml_365_0"@8772
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i scr_lanface(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_367_0"@8773
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_368_0"@8774
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_369_0"@8775
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_371_0"@8776
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_372_0"@8777
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_373_0"@8778
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_lancerboss3_slash_Step_0_gml_374_0"@8779
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg

:[203]
pushi.e 4
pop.v.i self.con
call.i scr_battletext(argc=0)
popz.v

:[204]
push.v self.con
pushi.e 4
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
bf [211]

:[208]
pushi.e 5
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 187
pushenv [210]

:[209]
pushi.e 0
pop.v.i self.noreturn
pushi.e 4
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[210]
popenv [209]

:[211]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [end]

:[212]
pushi.e 38
pushenv [214]

:[213]
pushi.e 1
push.v self.l
conv.v.i
pop.v.i [stacktop]self.visible

:[214]
popenv [213]
pushi.e 234
pushenv [216]

:[215]
call.i scr_monsterdefeat(argc=0)
popz.v

:[216]
popenv [215]
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[end]