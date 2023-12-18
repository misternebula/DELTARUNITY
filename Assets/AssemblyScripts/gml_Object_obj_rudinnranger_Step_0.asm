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
bf [31]

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
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_rudinnranger_slash_Step_0_gml_11_0"@8056
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_rudinnranger_slash_Step_0_gml_12_0"@8057
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_rudinnranger_slash_Step_0_gml_13_0"@8058
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_rudinnranger_slash_Step_0_gml_14_0"@8059
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_rudinnranger_slash_Step_0_gml_17_0"@8060
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [30]

:[18]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bt [20]

:[19]
push.v self.rr
pushi.e 1
cmp.i.v EQ
b [21]

:[20]
push.e 1

:[21]
bf [23]

:[22]
push.s "obj_rudinnranger_slash_Step_0_gml_21_0"@8061
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[23]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bt [25]

:[24]
push.v self.rr
pushi.e 3
cmp.i.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [28]

:[27]
push.s "obj_rudinnranger_slash_Step_0_gml_22_0"@8062
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
push.v self.complimented
pushi.e 2
cmp.i.v GTE
bf [30]

:[29]
push.s "obj_rudinnranger_slash_Step_0_gml_25_0"@8063
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[31]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [40]

:[35]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [40]

:[36]
pushi.e 209
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [38]

:[37]
call.i scr_moveheart(argc=0)
popz.v

:[38]
pushi.e 303
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [40]

:[39]
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

:[40]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [66]

:[44]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [65]

:[45]
push.v self.object_index
call.i instance_number(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 99
cmp.i.v EQ
bf [47]

:[46]
pushi.e 233
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 1
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
pushi.e 1
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.ratio
b [48]

:[47]
pushi.e 0
pop.v.i self.visible
pushi.e 249
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
pushi.e 60
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.inv
push.v self.mytarget
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.target
pushi.e 6
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.grazepoints
pushi.e 2
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.timepoints
pushi.e 0
push.v self.dc
conv.v.i
pop.v.i [stacktop]self.active
push.v self.id
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.creator
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterat
pushi.e 5
mul.i.v
push.v self.dc
conv.v.i
pop.v.v [stacktop]self.damage

:[48]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 180
pop.v.i global.turntimer
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
bf [50]

:[49]
push.s "obj_rudinnranger_slash_Step_0_gml_81_0"@8064
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[50]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_rudinnranger_slash_Step_0_gml_82_0"@8065
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[52]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_rudinnranger_slash_Step_0_gml_83_0"@8066
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[54]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_rudinnranger_slash_Step_0_gml_84_0"@8067
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[56]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_rudinnranger_slash_Step_0_gml_85_0"@8068
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[58]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_rudinnranger_slash_Step_0_gml_86_0"@8069
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[60]
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
bf [62]

:[61]
push.s "obj_rudinnranger_slash_Step_0_gml_87_0"@8070
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[62]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.mercymax
cmp.v.v GTE
bf [64]

:[63]
push.s "obj_rudinnranger_slash_Step_0_gml_88_0"@8071
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
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod

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
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
pushi.e 2
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[76]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [78]

:[77]
pushi.e 50
pop.v.i global.typer
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod
push.s "obj_rudinnranger_slash_Step_0_gml_122_0"@8072
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

:[78]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [80]

:[79]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [81]

:[80]
push.e 0

:[81]
bf [85]

:[82]
pushi.e 15
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 187
pushenv [84]

:[83]
pushi.e 17
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[84]
popenv [83]

:[85]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [89]

:[86]
pushi.e 187
pushenv [88]

:[87]
pushi.e 0
pop.v.i self.noreturn

:[88]
popenv [87]
call.i scr_monsterdefeat(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[89]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [143]

:[90]
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
bf [92]

:[91]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
pushi.e 1
pop.v.i self.actcon
push.s "obj_rudinnranger_slash_Step_0_gml_158_0"@8073
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[95]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [97]

:[96]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [98]

:[97]
push.e 0

:[98]
bf [100]

:[99]
push.s "obj_rudinnranger_slash_Step_0_gml_167_0"@8074
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_rudinnranger_slash_Step_0_gml_168_0"@8075
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_rudinnranger_slash_Step_0_gml_169_0"@8076
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
pushi.e 50
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[100]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [102]

:[101]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [103]

:[102]
push.e 0

:[103]
bf [116]

:[104]
push.s "obj_rudinnranger_slash_Step_0_gml_181_0"@8077
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
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.rrr
push.v self.rrr
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_rudinnranger_slash_Step_0_gml_184_0"@8079
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[106]
push.v self.rrr
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_rudinnranger_slash_Step_0_gml_185_0"@8080
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[108]
push.v self.rrr
pushi.e 2
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_rudinnranger_slash_Step_0_gml_186_0"@8081
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[110]
pushi.e -5
pushi.e 503
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [112]

:[111]
push.s "obj_rudinnranger_slash_Step_0_gml_190_0"@8082
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
push.s "obj_rudinnranger_slash_Step_0_gml_192_0"@8083
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_rudinnranger_slash_Step_0_gml_193_0"@8084
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
push.s "obj_rudinnranger_slash_Step_0_gml_195_0"@8085
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_rudinnranger_slash_Step_0_gml_196_0"@8086
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
push.s "obj_rudinnranger_slash_Step_0_gml_198_0"@8087
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_rudinnranger_slash_Step_0_gml_199_0"@8088
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 503
pop.v.i [array]global.flag

:[112]
push.v self.complimented
pushi.e 1
cmp.i.v GTE
bf [114]

:[113]
push.s "obj_rudinnranger_slash_Step_0_gml_205_0"@8089
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
push.s "obj_rudinnranger_slash_Step_0_gml_207_0"@8090
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
pop.v.i self.complimented

:[114]
call.i scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
push.v self.complimented
pushi.e 0
cmp.i.v EQ
bf [116]

:[115]
pushi.e 1
pop.v.i self.complimented

:[116]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [119]

:[118]
push.e 0

:[119]
bf [123]

:[120]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [122]

:[121]
pushi.e 100
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v

:[122]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v

:[123]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [125]

:[124]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
pushi.e 50
pop.v.i global.typer
push.s "obj_rudinnranger_slash_Step_0_gml_235_0"@8091
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
pushi.e 11
pop.v.i self.actcon

:[128]
push.v self.actcon
pushi.e 11
cmp.i.v EQ
bf [130]

:[129]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [131]

:[130]
push.e 0

:[131]
bf [133]

:[132]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
push.s "obj_rudinnranger_slash_Step_0_gml_245_0"@8092
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext(argc=0)
popz.v
pushi.e 12
pop.v.i self.actcon

:[133]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [135]

:[134]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [138]

:[137]
pushi.e 50
pop.v.i global.typer
push.s "obj_rudinnranger_slash_Step_0_gml_253_0"@8093
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_rudinnranger_slash_Step_0_gml_254_0"@8094
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i scr_enemyblcon(argc=3)
popz.v
pushi.e 14
pop.v.i self.actcon

:[138]
push.v self.actcon
pushi.e 14
cmp.i.v EQ
bf [140]

:[139]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [141]

:[140]
push.e 0

:[141]
bf [143]

:[142]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.s "obj_rudinnranger_slash_Step_0_gml_264_0"@8095
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext(argc=0)
popz.v
pushi.e 1
pop.v.i self.nexttry
pushi.e 1
pop.v.i self.actcon

:[143]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[144]
pushi.e 15
pop.v.i self.hspeed

:[end]