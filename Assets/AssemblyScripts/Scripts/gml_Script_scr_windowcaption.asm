.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 10
push.v [array]global.tempflag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "scr_windowcaption_slash_scr_windowcaption_gml_1_0"@1573
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i window_set_caption(argc=1)
popz.v
b [end]

:[2]
pushbltn.v self.argument0
call.i window_set_caption(argc=1)
popz.v

:[end]