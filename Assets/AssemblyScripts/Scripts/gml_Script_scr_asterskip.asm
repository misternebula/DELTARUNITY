.localvar 0 arguments

:[0]
push.v self.aster
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.autoaster
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.length
pushi.e 2
add.i.v
pop.v.v self.length
push.v self.i
push.v self.mystring
push.s "scr_asterskip_slash_scr_asterskip_gml_4_0"@133
conv.s.v
call.i scr_84_get_lang_string(argc=1)
call.i string_insert(argc=3)
pop.v.v self.mystring

:[5]
push.v self.aster
pushi.e 2
cmp.i.v EQ
bf [end]

:[6]
pushi.e 1
pop.v.i self.aster

:[end]