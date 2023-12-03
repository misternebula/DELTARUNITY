.localvar 0 arguments

:[0]
pushbltn.v self.argument0
call.i scr_lrecover(argc=1)
popz.v
push.v self.recovered
pushi.e -5
pushi.e 8
pop.v.v [array]global.item
push.v self.maxedout
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 9999
pushi.e -5
pushi.e 8
pop.v.i [array]global.item

:[2]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.msg
push.s "scr_lrecoitem_slash_scr_lrecoitem_gml_11_0"@104
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pop.i.v [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.item
pushi.e 999
cmp.i.v LT
bf [4]

:[3]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.msg
pushi.e -5
pushi.e 8
push.v [array]global.item
call.i string(argc=1)
push.s "scr_lrecoitem_slash_scr_lrecoitem_gml_14_0"@106
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i scr_84_get_subst_string(argc=2)
add.v.v
pop.i.v [array]global.msg
b [5]

:[4]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.msg
push.s "scr_lrecoitem_slash_scr_lrecoitem_gml_16_0"@108
conv.s.v
call.i scr_84_get_lang_string(argc=1)
add.v.v
pop.i.v [array]global.msg

:[5]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@37
conv.s.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i script_execute(argc=5)
popz.v

:[end]