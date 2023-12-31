.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.usable
pushi.e 0
pop.v.i self.value
pushi.e 0
pop.v.i self.itemtarget
push.s " "@24
pop.v.s self.itemnameb
push.s " "@24
pop.v.s self.itemdescb
pushbltn.v self.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [17]

:[1]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [18]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [19]

:[3]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [20]

:[4]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [21]

:[5]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [22]

:[6]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [23]

:[7]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [24]

:[8]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [25]

:[9]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [26]

:[10]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [27]

:[11]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [28]

:[12]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [29]

:[13]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [30]

:[14]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [31]

:[15]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [32]

:[16]
b [33]

:[17]
push.s " "@24
pop.v.s self.itemnameb
push.s "---"@2273
pop.v.s self.itemdescb
b [33]

:[18]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_14_0"@2289
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_15_0"@2290
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 25
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [33]

:[19]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_21_0"@2291
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_22_0"@2292
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 400
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [33]

:[20]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_28_0"@2293
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_29_0"@2294
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 0
pop.v.i self.itemtarget
pushi.e 200
pop.v.i self.value
pushi.e 0
pop.v.i self.usable
b [33]

:[21]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_35_0"@2295
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_36_0"@2296
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 1
pop.v.i self.value
pushi.e 0
pop.v.i self.usable
b [33]

:[22]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_42_0"@2297
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_43_0"@2298
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 5
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [33]

:[23]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_49_0"@2299
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_50_0"@2300
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 150
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [33]

:[24]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_56_0"@2301
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_57_0"@2302
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 5
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [33]

:[25]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_63_0"@2303
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_64_0"@2304
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 70
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [33]

:[26]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_70_0"@2305
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_71_0"@2306
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 10
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [33]

:[27]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_77_0"@2307
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_78_0"@2308
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 10
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [33]

:[28]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_84_0"@2309
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_85_0"@2310
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 70
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [33]

:[29]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_91_0"@2311
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_92_0"@2312
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 40
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [33]

:[30]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_98_0"@2313
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_99_0"@2314
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 40
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [33]

:[31]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_105_0"@2315
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_106_0"@2316
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 10
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [33]

:[32]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_112_0"@2317
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_113_0"@2318
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 50
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [33]

:[33]
popz.v

:[end]