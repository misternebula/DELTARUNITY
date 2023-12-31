.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 235
cmp.i.v GTE
bf [2]

:[1]
pushbltn.v self.argument1
call.i string(argc=1)
push.s "scr_kingface_slash_scr_kingface_gml_3_0"@2491
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushbltn.v self.argument0
conv.v.i
pop.v.v [array]global.msg
b [end]

:[2]
pushbltn.v self.argument1
call.i string(argc=1)
push.s "scr_kingface_slash_scr_kingface_gml_7_0"@2492
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushbltn.v self.argument0
conv.v.i
pop.v.v [array]global.msg

:[end]