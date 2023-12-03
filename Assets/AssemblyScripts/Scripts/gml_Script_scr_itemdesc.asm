.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [end]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.item
pop.v.v self.itemid
push.v self.itemid
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [19]

:[3]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [20]

:[4]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [21]

:[5]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [22]

:[6]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [23]

:[7]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [24]

:[8]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [25]

:[9]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [26]

:[10]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [27]

:[11]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [28]

:[12]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [29]

:[13]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [30]

:[14]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [31]

:[15]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [32]

:[16]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [33]

:[17]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [34]

:[18]
b [35]

:[19]
push.s "---"@2273
pushi.e -1
push.v self.i
conv.v.i
pop.v.s [array]self.itemdesc
b [35]

:[20]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_11_0"@2320
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[21]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_14_0"@2321
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[22]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_17_0"@2322
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[23]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_20_0"@2323
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[24]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_23_0"@2324
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[25]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_26_0"@2325
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[26]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_29_0"@2326
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[27]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_32_0"@2327
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[28]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_35_0"@2328
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[29]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_38_0"@2329
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[30]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_41_0"@2330
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[31]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_44_0"@2331
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[32]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_47_0"@2332
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[33]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_50_0"@2333
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[34]
push.s "scr_itemdesc_slash_scr_itemdesc_gml_53_0"@2334
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [35]

:[35]
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]