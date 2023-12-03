.localvar 0 arguments

:[0]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_1_0"@86
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [10]

:[1]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [11]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [12]

:[3]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [13]

:[4]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [14]

:[5]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [15]

:[6]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [18]

:[7]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [19]

:[8]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [20]

:[9]
b [21]

:[10]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_5_0"@87
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [21]

:[11]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_8_0"@88
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [21]

:[12]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_11_0"@89
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [21]

:[13]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_14_0"@90
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [21]

:[14]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_17_0"@91
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_litemdesc_slash_scr_litemdesc_gml_18_0"@92
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [21]

:[15]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_21_0"@93
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
call.i scr_itemcheck(argc=1)
conv.v.b
bf [17]

:[16]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_25_0"@95
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_litemdesc_slash_scr_litemdesc_gml_26_0"@96
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[17]
b [21]

:[18]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_30_0"@97
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [21]

:[19]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_33_0"@98
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [21]

:[20]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_36_0"@99
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [21]

:[21]
popz.v

:[end]