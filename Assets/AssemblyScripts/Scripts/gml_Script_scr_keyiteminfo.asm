.localvar 0 arguments

:[0]
push.s "---"@2273
pop.v.s self.tempkeyitemdesc
push.s " "@24
pop.v.s self.tempkeyitemname
pushi.e 0
pop.v.i self.tempkeyitemusable
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
bt [14]

:[6]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [15]

:[7]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [16]

:[8]
b [17]

:[9]
push.s "---"@2273
pop.v.s self.tempkeyitemdesc
push.s " "@24
pop.v.s self.tempkeyitemname
b [17]

:[10]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_13_0"@2274
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_14_0"@2275
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemname
pushi.e 1
pop.v.i self.tempkeyitemusable
b [17]

:[11]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_18_0"@2276
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_19_0"@2277
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemname
pushi.e 1
pop.v.i self.tempkeyitemusable
b [17]

:[12]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_23_0"@2278
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_24_0"@2279
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemname
b [17]

:[13]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_27_0"@2280
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_28_0"@2281
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemname
b [17]

:[14]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_31_0"@2282
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_32_0"@2283
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemname
b [17]

:[15]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_35_0"@2284
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_36_0"@2285
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemname
b [17]

:[16]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_39_0"@2286
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_40_0"@2287
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.tempkeyitemname
b [17]

:[17]
popz.v

:[end]