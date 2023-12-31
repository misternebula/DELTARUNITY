.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v self.spell
pushbltn.v self.argument1
pop.v.v self.caster
pushi.e -5
pushbltn.v self.argument1
conv.v.i
push.v [array]global.chartarget
pop.v.v self.star
push.s " "@24
pop.v.s self.spelltext
push.v self.spell
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [24]

:[1]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [25]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [26]

:[3]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [27]

:[4]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [33]

:[5]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [34]

:[6]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [35]

:[7]
dup.v 0
pushi.e 100
cmp.i.v EQ
bt [36]

:[8]
dup.v 0
pushi.e 201
cmp.i.v EQ
bt [43]

:[9]
dup.v 0
pushi.e 202
cmp.i.v EQ
bt [44]

:[10]
dup.v 0
pushi.e 203
cmp.i.v EQ
bt [45]

:[11]
dup.v 0
pushi.e 204
cmp.i.v EQ
bt [59]

:[12]
dup.v 0
pushi.e 205
cmp.i.v EQ
bt [87]

:[13]
dup.v 0
pushi.e 206
cmp.i.v EQ
bt [88]

:[14]
dup.v 0
pushi.e 207
cmp.i.v EQ
bt [89]

:[15]
dup.v 0
pushi.e 208
cmp.i.v EQ
bt [90]

:[16]
dup.v 0
pushi.e 209
cmp.i.v EQ
bt [91]

:[17]
dup.v 0
pushi.e 210
cmp.i.v EQ
bt [92]

:[18]
dup.v 0
pushi.e 211
cmp.i.v EQ
bt [93]

:[19]
dup.v 0
pushi.e 212
cmp.i.v EQ
bt [94]

:[20]
dup.v 0
pushi.e 213
cmp.i.v EQ
bt [95]

:[21]
dup.v 0
pushi.e 214
cmp.i.v EQ
bt [96]

:[22]
dup.v 0
pushi.e 215
cmp.i.v EQ
bt [97]

:[23]
b [98]

:[24]
b [98]

:[25]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_14_0"@2219
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[26]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_18_0"@2220
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[27]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_23_0"@2221
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_retarget_spell(argc=0)
popz.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [32]

:[28]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
b [32]

:[30]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_33_0"@2222
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.mercymod
pushi.e 100
cmp.i.v GTE
bf [32]

:[31]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_36_0"@2223
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
b [98]

:[33]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_43_0"@2224
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[34]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_47_0"@2225
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[35]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_51_0"@2226
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[36]
pushi.e 0
pop.v.i self.cancelattack
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monstername
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_58_0"@2227
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_retarget_spell(argc=0)
popz.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.mercymod
pushi.e 100
cmp.i.v GTE
bf [38]

:[37]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monstername
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_62_0"@2228
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [40]

:[38]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monstername
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_66_0"@2229
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]global.monstername
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_69_0"@2230
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_70_0"@2231
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[40]
push.v self.cancelattack
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_73_0"@2232
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
b [98]

:[43]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_78_0"@2233
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[44]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_82_0"@2234
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[45]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_86_0"@2235
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_87_0"@2236
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.spec_shard
pushi.e 0
pop.v.i self._en

:[46]
push.v self._en
pushi.e 3
cmp.i.v LT
bf [51]

:[47]
pushi.e 0
pushi.e -1
push.v self._en
conv.v.i
pop.v.i [array]self.shardtest
pushi.e -5
push.v self._en
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [50]

:[48]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]global.monstertype
pushi.e 5
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
pop.v.i self.spec_shard
pushi.e 1
pushi.e -1
push.v self._en
conv.v.i
pop.v.i [array]self.shardtest
pushi.e 200
pushi.e -5
push.v self._en
conv.v.i
pop.v.i [array]global.mercymod

:[50]
push.v self._en
pushi.e 1
add.i.v
pop.v.v self._en
b [46]

:[51]
push.v self.spec_shard
pushi.e 0
cmp.i.v GT
bf [58]

:[52]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushbltn.v self.argument1
conv.v.i
chkindex.e
add.i.i
push.v [array]global.bmenucoord
call.i scr_itemshift(argc=2)
popz.v
push.s ""@2240
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_109_0"@2241
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self._j

:[53]
push.v self._j
pushi.e 3
cmp.i.v LT
bf [57]

:[54]
pushi.e -1
push.v self._j
conv.v.i
push.v [array]self.shardtest
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.msg
pushi.e -5
push.v self._j
conv.v.i
push.v [array]global.monstername
push.s "scr_spelltext_slash_scr_spelltext_gml_112_0"@2243
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
add.v.v
pop.i.v [array]global.msg

:[56]
push.v self._j
pushi.e 1
add.i.v
pop.v.v self._j
b [53]

:[57]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.msg
push.s "/"@357
add.s.v
pop.i.v [array]global.msg

:[58]
b [98]

:[59]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_122_0"@2244
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_123_0"@2245
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.spec_shard
pushi.e 0
pop.v.i self._en

:[60]
push.v self._en
pushi.e 3
cmp.i.v LT
bf [75]

:[61]
pushi.e 0
pushi.e -1
push.v self._en
conv.v.i
pop.v.i [array]self.shardtest
pushi.e -5
push.v self._en
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [74]

:[62]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]global.monstertype
pushi.e 5
cmp.i.v EQ
bf [64]

:[63]
pushi.e 1
pop.v.i self.spec_shard
pushi.e 1
pushi.e -1
push.v self._en
conv.v.i
pop.v.i [array]self.shardtest
pushi.e 1
pushi.e -5
push.v self._en
conv.v.i
pop.v.i [array]global.monsterstatus
push.s "scr_spelltext_slash_scr_spelltext_gml_135_0"@2246
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self._en
conv.v.i
pop.v.v [array]global.monstercomment

:[64]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]global.monstertype
pushi.e 6
cmp.i.v EQ
bf [66]

:[65]
pushi.e 1
pop.v.i self.spec_shard
pushi.e 2
pushi.e -1
push.v self._en
conv.v.i
pop.v.i [array]self.shardtest

:[66]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]global.monstertype
pushi.e 7
cmp.i.v EQ
bt [68]

:[67]
pushi.e -5
push.v self._en
conv.v.i
push.v [array]global.monstertype
pushi.e 16
cmp.i.v EQ
b [69]

:[68]
push.e 1

:[69]
bf [74]

:[70]
pushi.e 1
pop.v.i self.spec_shard
pushi.e 3
pushi.e -1
push.v self._en
conv.v.i
pop.v.i [array]self.shardtest
pushi.e -5
push.v self._en
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [73]

:[71]
pushi.e 1
pop.v.i self.battlecancel
push.v self.manual
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
pushi.e 1
pop.v.i self.manual
pushi.e 50
conv.i.v
push.v self.myself
call.i scr_mercyadd(argc=2)
popz.v

:[73]
popenv [71]

:[74]
push.v self._en
pushi.e 1
add.i.v
pop.v.v self._en
b [60]

:[75]
push.v self.spec_shard
pushi.e 0
cmp.i.v GT
bf [86]

:[76]
push.s ""@2240
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushi.e 0
pop.v.i self._j

:[77]
push.v self._j
pushi.e 3
cmp.i.v LT
bf [85]

:[78]
pushi.e -1
push.v self._j
conv.v.i
push.v [array]self.shardtest
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.msg
pushi.e -5
push.v self._j
conv.v.i
push.v [array]global.monstername
push.s "scr_spelltext_slash_scr_spelltext_gml_168_0"@2250
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
add.v.v
pop.i.v [array]global.msg

:[80]
pushi.e -1
push.v self._j
conv.v.i
push.v [array]self.shardtest
pushi.e 2
cmp.i.v EQ
bf [82]

:[81]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.msg
pushi.e -5
push.v self._j
conv.v.i
push.v [array]global.monstername
push.s "scr_spelltext_slash_scr_spelltext_gml_169_0"@2251
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
add.v.v
pop.i.v [array]global.msg

:[82]
pushi.e -1
push.v self._j
conv.v.i
push.v [array]self.shardtest
pushi.e 3
cmp.i.v EQ
bf [84]

:[83]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.msg
pushi.e -5
push.v self._j
conv.v.i
push.v [array]global.monstername
push.s "scr_spelltext_slash_scr_spelltext_gml_170_0"@2252
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
add.v.v
pop.i.v [array]global.msg

:[84]
push.v self._j
pushi.e 1
add.i.v
pop.v.v self._j
b [77]

:[85]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.msg
push.s "scr_spelltext_slash_scr_spelltext_gml_172_0"@2253
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pop.i.v [array]global.msg

:[86]
b [98]

:[87]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_179_0"@2254
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[88]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_183_0"@2255
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[89]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_187_0"@2256
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[90]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_191_0"@2257
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[91]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_194_0"@2258
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[92]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_197_0"@2259
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[93]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_200_0"@2260
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[94]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_203_0"@2261
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[95]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_206_0"@2262
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[96]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_209_0"@2263
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[97]
pushi.e -5
pushi.e -5
push.v self.caster
conv.v.i
push.v [array]global.char
conv.v.i
push.v [array]global.charname
push.s "scr_spelltext_slash_scr_spelltext_gml_212_0"@2264
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [98]

:[98]
popz.v

:[end]