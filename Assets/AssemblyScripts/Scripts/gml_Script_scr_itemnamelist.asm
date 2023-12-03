.localvar 0 arguments

:[0]
push.v self.itemid
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
pushi.e -5
push.v self.i
conv.v.i
pop.v.s [array]global.itemname
b [33]

:[18]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_8_0"@2338
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[19]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_11_0"@2339
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[20]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_14_0"@2340
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[21]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_17_0"@2341
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[22]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_20_0"@2342
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[23]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_23_0"@2343
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[24]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_26_0"@2344
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[25]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_29_0"@2345
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[26]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_32_0"@2346
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[27]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_35_0"@2347
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[28]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_38_0"@2348
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[29]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_41_0"@2349
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[30]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_44_0"@2350
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[31]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_47_0"@2351
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[32]
push.s "scr_itemnamelist_slash_scr_itemnamelist_gml_50_0"@2352
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.itemname
b [33]

:[33]
popz.v

:[end]