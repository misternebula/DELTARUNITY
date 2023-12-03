.localvar 0 arguments

:[0]
pushbltn.v self.argument1
call.i string(argc=1)
push.s "scr_lanface_slash_scr_lanface_gml_1_0"@2490
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
pushi.e -5
pushbltn.v self.argument0
conv.v.i
pop.v.v [array]global.msg

:[end]