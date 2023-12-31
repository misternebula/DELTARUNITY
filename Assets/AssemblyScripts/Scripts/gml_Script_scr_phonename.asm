.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
push.s " "@24
pushi.e -5
push.v self.i
conv.v.i
pop.v.s [array]global.phonename
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [end]

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.phone
pop.v.v self.itemid
push.v self.itemid
dup.v 0
pushi.e 201
cmp.i.v EQ
bt [8]

:[6]
dup.v 0
pushi.e 202
cmp.i.v EQ
bt [9]

:[7]
b [12]

:[8]
push.s "scr_phonename_slash_scr_phonename_gml_17_0"@28
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.phonename
b [12]

:[9]
push.s "scr_phonename_slash_scr_phonename_gml_20_0"@30
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.phonename
pushi.e -5
pushi.e 274
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [11]

:[10]
push.s "scr_phonename_slash_scr_phonename_gml_21_0"@32
conv.s.v
call.i scr_84_get_lang_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.phonename

:[11]
b [12]

:[12]
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[end]