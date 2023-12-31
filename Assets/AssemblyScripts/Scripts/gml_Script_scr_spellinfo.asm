.localvar 0 arguments

:[0]
pushi.e -1
pop.v.i self.cost
pushi.e 1
pop.v.i self.spelltarget
push.s " "@24
pop.v.s self.spellname
push.s " "@24
pop.v.s self.spellnameb
push.s " "@24
pop.v.s self.spelldescb
push.s " "@24
pop.v.s self.spelldesc
pushi.e 0
pop.v.i self.spellanim
pushi.e 0
pop.v.i self.spellusable
push.s " "@24
pop.v.s self.spelltext
pushbltn.v self.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [9]

:[1]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [10]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [11]

:[3]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [12]

:[4]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [13]

:[5]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [16]

:[6]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [17]

:[7]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [18]

:[8]
b [19]

:[9]
push.s " "@24
pop.v.s self.spellname
push.s " "@24
pop.v.s self.spellnameb
pushi.e 0
pop.v.i self.spelltarget
pushi.e -1
pop.v.i self.cost
push.s "scr_spellinfo_slash_scr_spellinfo_gml_18_0"@2173
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spelldescb
b [19]

:[10]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_21_0"@2174
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_22_0"@2175
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_23_0"@2176
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_24_0"@2177
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spelldesc
pushi.e 2
pop.v.i self.spelltarget
pushi.e 125
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [19]

:[11]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_31_0"@2178
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_32_0"@2179
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_33_0"@2180
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_34_0"@2181
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spelldesc
pushi.e 1
pop.v.i self.spelltarget
pushi.e 80
pop.v.i self.cost
pushi.e 0
pop.v.i self.usable
pushi.e 1
pop.v.i self.spellusable
b [19]

:[12]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_42_0"@2182
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_43_0"@2183
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_44_0"@2184
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_45_0"@2185
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spelldesc
pushi.e 2
pop.v.i self.spelltarget
pushi.e 40
pop.v.i self.cost
pushi.e 0
pop.v.i self.usable
pushi.e 0
pop.v.i self.spellusable
b [19]

:[13]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_52_0"@2186
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_53_0"@2187
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_54_0"@2188
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_55_0"@2189
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spelldesc
pushi.e 2
pop.v.i self.spelltarget
pushi.e 125
pop.v.i self.cost
pushi.e -5
pushi.e 2
push.v [array]global.charweapon
pushi.e 7
cmp.i.v EQ
bf [15]

:[14]
pushi.e 100
pop.v.i self.cost

:[15]
pushi.e 0
pop.v.i self.spellusable
b [19]

:[16]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_64_0"@2190
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_65_0"@2191
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_66_0"@2192
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spelldescb
push.s " "@24
pop.v.s self.spelldesc
pushi.e 2
pop.v.i self.spelltarget
pushi.e 0
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [19]

:[17]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_75_0"@2193
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_76_0"@2194
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_77_0"@2195
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spelldescb
push.s " "@24
pop.v.s self.spelldesc
pushi.e 0
pop.v.i self.spelltarget
pushi.e 0
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [19]

:[18]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_86_0"@2196
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_87_0"@2197
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_88_0"@2198
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_89_0"@2199
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.spelldesc
pushi.e 0
pop.v.i self.spelltarget
pushi.e 0
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [19]

:[19]
popz.v

:[end]