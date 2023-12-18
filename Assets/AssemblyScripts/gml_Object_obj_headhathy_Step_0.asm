.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [79]

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
bf [12]

:[5]
call.i scr_randomtarget(argc=0)
popz.v
pushi.e 195
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 195
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[7]
pushi.e 226
conv.i.v
push.v self.y
push.v self.x
pushi.e 100
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.hb
pushi.e 628
conv.i.v
pushi.e 627
conv.i.v
call.i choose(argc=2)
push.v self.hb
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 522
push.v self.hb
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[9]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 523
push.v self.hb
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[11]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[12]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [30]

:[16]
pushi.e 0
pop.v.i self.rtimer
call.i button1_p(argc=0)
conv.v.b
bf [18]

:[17]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v self.talkmax
pop.v.v self.talktimer

:[21]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [25]

:[22]
pushi.e 226
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]
pushi.e 2
pop.v.i global.mnfight

:[25]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [30]

:[26]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [28]

:[27]
call.i scr_moveheart(argc=0)
popz.v

:[28]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [30]

:[29]
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

:[30]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [64]

:[34]
pushi.e 226
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [63]

:[37]
call.i scr_monsterpop(argc=0)
pop.v.v self.rr
pushi.e 180
pop.v.i global.turntimer
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
pushi.e 232
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 1
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.joker
pushi.e 0
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
b [46]

:[39]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 33
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.type
push.d 1.3
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 10
conv.i.d
div.d.v
sub.v.d
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.ratio
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
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
bf [41]

:[40]
pushi.e 233
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
b [42]

:[41]
push.e 0

:[42]
bf [46]

:[43]
push.v self.dc
conv.v.i
pushenv [45]

:[44]
call.i instance_destroy(argc=0)
popz.v

:[45]
popenv [44]

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
push.s "obj_headhathy_slash_Step_0_gml_87_0"@9115
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
push.s "obj_headhathy_slash_Step_0_gml_88_0"@9116
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
push.s "obj_headhathy_slash_Step_0_gml_89_0"@9117
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
push.s "obj_headhathy_slash_Step_0_gml_90_0"@9118
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
push.s "obj_headhathy_slash_Step_0_gml_91_0"@9119
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
push.s "obj_headhathy_slash_Step_0_gml_92_0"@9120
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
push.s "obj_headhathy_slash_Step_0_gml_93_0"@9121
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
push.s "obj_headhathy_slash_Step_0_gml_94_0"@9122
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
b [64]

:[63]
pushi.e 120
pop.v.i global.turntimer

:[64]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [79]

:[65]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [79]

:[66]
pushi.e 52
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [68]

:[67]
push.v self.firstturn
pushi.e 0
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [77]

:[70]
push.v self.checkhp1
pushi.e -5
pushi.e 1
push.v [array]global.hp
cmp.v.v LTE
bf [77]

:[71]
push.v self.checkhp2
pushi.e -5
pushi.e 2
push.v [array]global.hp
cmp.v.v LTE
bf [77]

:[72]
pushi.e 187
pushenv [74]

:[73]
pushi.e 1
pop.v.i self.noreturn

:[74]
popenv [73]
pushi.e 52
pushenv [76]

:[75]
pushi.e 15
pop.v.i self.con

:[76]
popenv [75]

:[77]
pushi.e 1
pop.v.i self.firstturn
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod

:[79]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [132]

:[80]
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
pushi.e 1
pop.v.i self.actcon
push.s "obj_headhathy_slash_Step_0_gml_135_0"@9123
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[85]
push.v self.acting
pushi.e 2
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
bf [90]

:[89]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.rr
push.s "obj_headhathy_slash_Step_0_gml_144_0"@9124
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 100
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.battlecancel
pushi.e 1
pop.v.i self.actcon

:[90]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [92]

:[91]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [103]

:[94]
pushi.e 100
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e -5
pushi.e 504
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_headhathy_slash_Step_0_gml_159_0"@9125
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
push.s "obj_headhathy_slash_Step_0_gml_161_0"@9126
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_headhathy_slash_Step_0_gml_162_0"@9127
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_164_0"@9128
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_166_0"@9129
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_168_0"@9130
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 10
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_170_0"@9131
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_headhathy_slash_Step_0_gml_171_0"@9132
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 20
pop.v.i self.actcon
pushi.e 0
pop.v.i self.acttimer

:[96]
pushi.e -5
pushi.e 504
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_headhathy_slash_Step_0_gml_179_0"@9133
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
push.s "obj_headhathy_slash_Step_0_gml_181_0"@9134
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_183_0"@9135
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_headhathy_slash_Step_0_gml_184_0"@9136
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_headhathy_slash_Step_0_gml_185_0"@9137
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_headhathy_slash_Step_0_gml_186_0"@9138
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 22
pop.v.i self.actcon

:[98]
pushi.e -5
pushi.e 504
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [100]

:[99]
push.s "obj_headhathy_slash_Step_0_gml_192_0"@9139
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_194_0"@9140
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 25
pop.v.i self.actcon

:[100]
pushi.e -5
pushi.e 504
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [102]

:[101]
push.s "obj_headhathy_slash_Step_0_gml_200_0"@9141
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
call.i scr_mercyadd(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 1
conv.i.v
call.i scr_mercyadd(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 2
conv.i.v
call.i scr_mercyadd(argc=2)
popz.v

:[102]
pushi.e -5
pushi.e 504
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
call.i scr_battletext_default(argc=0)
popz.v

:[103]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [106]

:[105]
push.e 0

:[106]
bf [109]

:[107]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v
push.v self.delete
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
call.i instance_destroy(argc=0)
popz.v

:[109]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [111]

:[110]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [112]

:[111]
push.e 0

:[112]
bf [115]

:[113]
pushi.e -5
pushi.e 0
push.v [array]global.batmusic
call.i snd_pause(argc=1)
popz.v
push.v self.acttimer
pushi.e 1
add.i.v
pop.v.v self.acttimer
push.v self.acttimer
pushi.e 60
cmp.i.v GTE
bf [115]

:[114]
pushi.e 21
pop.v.i self.actcon

:[115]
push.v self.actcon
pushi.e 21
cmp.i.v EQ
bf [117]

:[116]
pushi.e 2
pop.v.i global.fe
push.s "obj_headhathy_slash_Step_0_gml_241_0"@9142
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_headhathy_slash_Step_0_gml_242_0"@9143
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_battletext(argc=0)
popz.v
pushi.e 22
pop.v.i self.actcon

:[117]
push.v self.actcon
pushi.e 22
cmp.i.v EQ
bf [119]

:[118]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [120]

:[119]
push.e 0

:[120]
bf [124]

:[121]
pushi.e -5
pushi.e 0
push.v [array]global.batmusic
call.i snd_resume(argc=1)
popz.v
pushi.e 6
pop.v.i self.hspeed
push.s "obj_headhathy_slash_Step_0_gml_251_0"@9144
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_253_0"@9145
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 504
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [123]

:[122]
push.s "obj_headhathy_slash_Step_0_gml_256_0"@9146
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
push.s "obj_headhathy_slash_Step_0_gml_258_0"@9147
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_260_0"@9148
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[123]
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.delete
pushi.e 23
pop.v.i self.actcon
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster

:[124]
push.v self.actcon
pushi.e 23
cmp.i.v EQ
bf [127]

:[125]
push.v self.x
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i __view_get(argc=2)
pushi.e 640
add.i.v
cmp.v.v GTE
bf [127]

:[126]
pushi.e 1
pop.v.i self.actcon

:[127]
push.v self.actcon
pushi.e 25
cmp.i.v EQ
bf [129]

:[128]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [130]

:[129]
push.e 0

:[130]
bf [132]

:[131]
push.s "obj_headhathy_slash_Step_0_gml_276_0"@9149
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
call.i scr_mercyadd(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 1
conv.i.v
call.i scr_mercyadd(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 2
conv.i.v
call.i scr_mercyadd(argc=2)
popz.v
pushi.e 1
pop.v.i self.actcon

:[132]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[133]
pushi.e 15
pop.v.i self.hspeed

:[end]