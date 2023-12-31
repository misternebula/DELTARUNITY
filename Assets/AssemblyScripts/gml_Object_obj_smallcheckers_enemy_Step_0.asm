.localvar 0 arguments

:[0]
pushi.e 186
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
push.v 186.sprite_index
pushi.e 409
cmp.i.v EQ
bf [3]

:[2]
pushi.e 3
pushi.e -5
pushi.e 211
pop.v.i [array]global.flag

:[3]
push.v 186.sprite_index
pushi.e 412
cmp.i.v EQ
bf [5]

:[4]
pushi.e 3
pushi.e -5
pushi.e 211
pop.v.i [array]global.flag

:[5]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [50]

:[6]
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
bf [8]

:[7]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
call.i scr_randomtarget(argc=0)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[11]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [22]

:[15]
pushi.e 0
pop.v.i self.rtimer
call.i button1_p(argc=0)
conv.v.b
bf [17]

:[16]
push.v self.talktimer
pushi.e 5
cmp.i.v GT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.v self.talkmax
pop.v.v self.talktimer

:[20]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [22]

:[21]
pushi.e 2
pop.v.i global.mnfight

:[22]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [35]

:[26]
pushi.e 226
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [34]

:[29]
call.i scr_monsterpop(argc=0)
pop.v.v self.rr
pushi.e 1
pop.v.i global.turntimer
push.v self.rr
pushi.e 999
cmp.i.v EQ
bf [31]

:[30]
pushi.e 232
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dc
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

:[31]
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
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_83_0"@9151
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.battlemsg

:[33]
b [35]

:[34]
pushi.e 1
pop.v.i global.turntimer

:[35]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [50]

:[36]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [50]

:[37]
pushi.e 52
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[38]
push.v self.firstturn
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [48]

:[41]
push.v self.checkhp1
pushi.e -5
pushi.e 1
push.v [array]global.hp
cmp.v.v LTE
bf [48]

:[42]
push.v self.checkhp2
pushi.e -5
pushi.e 2
push.v [array]global.hp
cmp.v.v LTE
bf [48]

:[43]
pushi.e 187
pushenv [45]

:[44]
pushi.e 1
pop.v.i self.noreturn

:[45]
popenv [44]
pushi.e 52
pushenv [47]

:[46]
pushi.e 15
pop.v.i self.con

:[47]
popenv [46]

:[48]
pushi.e 1
pop.v.i self.firstturn
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod

:[50]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [85]

:[51]
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
bf [53]

:[52]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 1
pop.v.i self.actcon
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_127_0"@9152
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_battletext_default(argc=0)
popz.v

:[56]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [58]

:[57]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_136_0"@9153
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
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_138_0"@9154
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_139_0"@9155
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_141_0"@9156
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_142_0"@9157
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
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_144_0"@9158
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_145_0"@9159
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_146_0"@9160
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_147_0"@9161
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 5
pop.v.i self.actcon
call.i scr_battletext_default(argc=0)
popz.v

:[61]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [63]

:[62]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 5
pop.v.i self.actcon
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_155_0"@9162
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
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_157_0"@9163
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_159_0"@9164
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
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_161_0"@9165
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_162_0"@9166
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_163_0"@9167
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 8
conv.i.v
pushi.e 9
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_165_0"@9168
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_167_0"@9169
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_168_0"@9170
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 14
conv.i.v
call.i scr_ralface(argc=2)
popz.v
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_170_0"@9171
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 16
conv.i.v
call.i scr_susface(argc=2)
popz.v
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_172_0"@9172
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_174_0"@9173
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstercomment
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.automiss
call.i scr_battletext_default(argc=0)
popz.v

:[66]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 0
pop.v.i self.actcon
call.i scr_attackphase(argc=0)
popz.v

:[71]
push.v self.actcon
pushi.e 5
cmp.i.v EQ
bf [73]

:[72]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [81]

:[75]
pushi.e 90
pushi.e -5
pushi.e 1
pop.v.i [array]global.battleat
pushi.e 90
pushi.e -5
pushi.e 2
pop.v.i [array]global.battleat
pushi.e 6
pop.v.i self.actcon
pushi.e 203
pushenv [78]

:[76]
pushi.e 0
pop.v.i self.attacktimer
pushi.e 1
pop.v.i self.state
pushi.e 100
pushi.e 40
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.i
pop.v.v self.points
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.faceaction
pushi.e -5
pushi.e 0
push.v [array]global.automiss
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
pushi.e 0
pop.v.i self.points

:[78]
popenv [76]
pushi.e -5
pushi.e 0
push.v [array]global.automiss
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
pushi.e 5
pop.v.i self.hspeed
pushi.e 200
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.mercymod

:[80]
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[81]
push.v self.actcon
pushi.e 7
cmp.i.v EQ
bf [85]

:[82]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_217_0"@9174
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
pushi.e 1
pushi.e -5
pushi.e 211
pop.v.i [array]global.flag
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_220_0"@9175
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 0
push.v [array]global.automiss
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
pushi.e 2
pushi.e -5
pushi.e 211
pop.v.i [array]global.flag
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_224_0"@9176
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
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_226_0"@9177
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_227_0"@9178
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[84]
call.i scr_battletext(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[85]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[86]
pushi.e 15
pop.v.i self.hspeed

:[end]