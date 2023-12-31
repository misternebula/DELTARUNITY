.localvar 0 arguments

:[0]
push.s "scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_2_0"@1694
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [4]

:[1]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [5]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [6]

:[3]
b [7]

:[4]
push.s "scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_6_0"@1695
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [7]

:[5]
push.s "scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_9_0"@1696
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [7]

:[6]
push.s "scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_12_0"@1697
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [7]

:[7]
popz.v

:[end]